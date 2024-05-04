#include "header.h"
/*=========================================================================/
/  Combine FFT/iFFT/NTT/iNTT in one hardware and share their memory usage  /
/=========================================================================*/

void fiFFNTT(memcell in[SIZE], bool mode, bool inverse) {
#pragma HLS INTERFACE m_axi port=in bundle=gmem0 offset=slave depth=1024
#pragma HLS INTERFACE s_axilite port=mode
#pragma HLS INTERFACE s_axilite port=inverse
#pragma HLS INTERFACE s_axilite port=return
#pragma HLS ALLOCATION function instances=stages limit=2
#pragma HLS ALLOCATION function instances=in_copy limit=2
#pragma HLS ALLOCATION function instances=out_copy limit=2
#pragma HLS INLINE off

	memcell inplace_buf[SIZE];

	in_copy(in, inplace_buf, mode);
	stages(inplace_buf, inplace_buf, mode, inverse);
	out_copy(inplace_buf, in, mode, inverse);
}


void in_copy(memcell in_buf[SIZE], memcell out_buf[SIZE], bool mode) {
#pragma HLS DEPENDENCE dependent=false type=inter variable=in_buf
#pragma HLS DEPENDENCE dependent=false type=inter variable=out_buf
#pragma HLS INLINE off
	INMEMCPY: for (int i = 0; i < SIZE; i++) {
	#pragma HLS PIPELINE II=1
		if (mode == fft_req)
			out_buf[i].f 	  = in_buf[i].f;
		else
			out_buf[i].u16.n0 = in_buf[i].u16.n0;
	}
}

void out_copy(memcell in_buf[SIZE], memcell out_buf[SIZE], bool mode, bool inverse) {
#pragma HLS DEPENDENCE  dependent=false type=inter variable=in_buf
#pragma HLS DEPENDENCE  dependent=false type=inter variable=out_buf
#pragma HLS INLINE off
	unsigned short logn = 10;
	u32 ni = 64;
	u32 tmp1, tmp2, tmp3;
	OUTMEMCPY: for (int j = 0; j < SIZE; j++) {
	#pragma HLS PIPELINE II=1
		if (mode == fft_req) {
			if (inverse) {
				out_buf[j].f = double_shifter(in_buf[j].f,-9);
			} else {
				out_buf[j].f = in_buf[j].f;
			}
		} else {
			if (inverse) {
				monty_mul(&tmp3, in_buf[j].u16.n0, ni);
				out_buf[j].u16.n0 = (uint16_t)tmp3;
			} else {
				out_buf[j].u16.n0 = in_buf[j].u16.n0;
			}
		}
	}
}

void stages(memcell in[SIZE], memcell out[SIZE], bool mode, bool inverse) {
	memcell stage0[SIZE], stage1[SIZE];
#pragma HLS DEPENDENCE dependent=false type=inter variable=stage0
#pragma HLS DEPENDENCE dependent=false type=inter variable=stage1
#pragma HLS INLINE off

	if (mode == ntt_req) {
		PE(    in, stage1, 1024, 1, mode, inverse);
		PE(stage1, stage0,  512, 2, mode, inverse);
	} else {
		PE(    in, stage0,  512, 2, mode, inverse);
	}
	PE(stage0, stage1, 256, 4, mode, inverse);
	PE(stage1, stage0, 128, 8, mode, inverse);
	PE(stage0, stage1, 64, 16, mode, inverse);
	PE(stage1, stage0, 32, 32, mode, inverse);
	PE(stage0, stage1, 16, 64, mode, inverse);
	PE(stage1, stage0, 8, 128, mode, inverse);
	PE(stage0, stage1, 4, 256, mode, inverse);
	PE(stage1,    out, 2, 512, mode, inverse);

}

void PE(memcell in[SIZE], memcell out[SIZE], unsigned short int in_t, unsigned short int in_m, bool mode, bool inverse) {
#pragma HLS DEPENDENCE dependent=false type=inter variable=in
#pragma HLS DEPENDENCE dependent=false type=inter variable=out
#pragma HLS ALLOCATION function instances=adder limit=1
	unsigned short int t, m;
	if (inverse) {
		if (mode == ntt_req) {
			t = in_m;
			m = in_t;
		} else {
			t = in_m >> 1;
			m = in_t << 1;
		}
	} else {
		t = in_t;
		m = in_m;
	}
	unsigned short int ht = t >> 1; // ht: half t: section size
	unsigned short int dt = t << 1; // dt: double t
	unsigned short int hm = m >> 1; // hm: half m
	unsigned short int hn = SIZE2;  // 512
	unsigned short int index_const;
	if (inverse) index_const = t;
	else		 index_const = ht;
	// Variables of FFT
	fpr gm_re, gm_im;
	fpr x_re, x_im, y_re, y_im, tmp_re, tmp_im, tmp_re1, tmp_im1, tmp_re2, tmp_im2;
	fpr mul;
	// Variables of NTT
	uint32_t gm;
	uint32_t u, v, w;
	uint32_t tmp1, tmp2;

	memcell uu, vv, tmp64;
	BUTTERFLY: for (int n = 0; n < 512; n++) {
#pragma HLS PIPELINE II=2
		unsigned short i = n + ((n / index_const) * index_const);
		unsigned short i_gm = n / index_const;
		// Gm constant of FFT
		if (inverse) {
			gm_re =  gm_re_tab[(hm + i_gm)];
			gm_im = -gm_im_tab[(hm + i_gm)]; // negation
			gm = iGMb[hm + i_gm];
		} else {
			gm_re = gm_re_tab[(m + i_gm)];
			gm_im = gm_im_tab[(m + i_gm)];
			gm = GMb[m + i_gm];
		}
		// Gm constant of NTT
		if (mode == fft_req) {
			x_re   = in[i].f;
			x_im   = in[i + hn].f;
			////////////// iFFT ////////////////
			if (inverse) {
				tmp_re = in[i + t].f;
				tmp_im = in[i + t + hn].f;
				// Add //
				out[i].f      = float64_to_double(adder(double_to_float64(x_re), double_to_float64(tmp_re), 0));
				out[i + hn].f = float64_to_double(adder(double_to_float64(x_im), double_to_float64(tmp_im), 0));
				// Sub //
				x_re = float64_to_double(adder(double_to_float64(x_re), double_to_float64(Negate(tmp_re)), 0));
				x_im = float64_to_double(adder(double_to_float64(x_im), double_to_float64(Negate(tmp_im)), 0));
				tmp_re = x_re;
				tmp_im = x_im;
			////////////// FFT /////////////////
			} else {
				tmp_re = in[i + ht].f;
				tmp_im = in[i + ht + hn].f;
			}
			complex_mul(&tmp_re1, &tmp_im1, tmp_re, tmp_im, gm_re, gm_im); // should share the same complex_mul
			if (inverse) {
				out[i + t].f      = tmp_re1;
				out[i + t + hn].f = tmp_im1;
			} else {
				y_re = tmp_re1;
				y_im = tmp_im1;
				// Add //
				out[i].f      = float64_to_double(adder(double_to_float64(x_re), double_to_float64(y_re), 0));
				out[i + hn].f = float64_to_double(adder(double_to_float64(x_im), double_to_float64(y_im), 0));
				// Sub //
				out[i + ht].f      = float64_to_double(adder(double_to_float64(x_re), double_to_float64(Negate(y_re)), 0));
				out[i + ht + hn].f = float64_to_double(adder(double_to_float64(x_im), double_to_float64(Negate(y_im)), 0));
			}
			if (n == 255) break; // FFT iteration 256 times
		} else {
			////////////// NTT /////////////////
			if (inverse) {
				uu.u32.m1 = in[i].u16.n0;
				uu.u32.m0 = in[i].u16.n0;

				vv.u32.m1 = in[i + t].u16.n0;
				vv.u32.m0 = in[i + t].u16.n0;

				tmp64.u64 = adder(uu.u64, vv.u64, 1);
				out[i].u16.n0 = tmp64.u32.m1;
				w = tmp64.u32.m0;
			} else {
				u = in[i].u16.n0;
				v = in[i + ht].u16.n0;
				w = v;
			}
			monty_mul(&v, w, gm);
			if (inverse) {
				out[i + t].u16.n0 = (uint16_t)v;
			} else {

				uu.u32.m1 = u;
				uu.u32.m0 = u;

				vv.u32.m1 = v;
				vv.u32.m0 = v;

				tmp64.u64 = adder(uu.u64, vv.u64, 1);
				out[i].u16.n0 = tmp64.u32.m1;
				out[i + ht].u16.n0 = tmp64.u32.m0;

			}
		}
	}
}

void complex_mul(fpr *z_re, fpr *z_im, fpr x_re, fpr x_im, fpr y_re, fpr y_im) {
#pragma HLS INLINE off
	// z_re = (x_re * y_re) - (x_im * y_im);
	// z_im = (x_re * y_im) + (x_im * y_re);
	// Rewrite as:
	// z_re = x_re * (y_re - y_im) + y_im * (x_re - x_im);
	// z_im = x_im * (y_re + y_im) + y_im * (x_re - x_im);

	fpr sub_y = y_re - y_im;
	fpr add_y = y_re + y_im;
	fpr sub_x = x_re - x_im;
	fpr mul1 = multiplier(x_re, sub_y);
	fpr mul2 = multiplier(x_im, add_y);
	fpr mul3 = multiplier(y_im, sub_x);
	*z_re = mul1 + mul3;
	*z_im = mul2 + mul3;
}

void monty_mul(uint32_t *z, uint32_t x, uint32_t y) {
#pragma HLS INLINE off
	uint32_t tmp1, tmp2;
	tmp2 = x * y;
	tmp1 = ((tmp2 * Q0I) & 0xFFFF) * Q;
	tmp2 = (tmp2 + tmp1) >> 16;
	tmp2 -= Q;
	tmp2 += Q & -(tmp2 >> 31);
	*z = tmp2;
}

fpr multiplier(fpr a, fpr b) {
	return (a * b);
}


fpr double_shifter(fpr num, int shift) {
	union {
		fpr f;
		uint64_t bits;
	} value;
	value.f = num;
	// The exponent is in bits 52-62
	uint64_t exponentMask = 0x7FF0000000000000;
	int exponent = (value.bits & exponentMask) >> 52;
	// Adjust the exponent and handle underflow/overflow
	exponent += shift;
	if (exponent < 0) exponent = 0;
	if (exponent > 2047) exponent = 2047;

	value.bits = (value.bits & ~exponentMask) | ((uint64_t)exponent << 52);

	return value.f;
}

inline double Negate(double input){
	union {
		double fp_data;
		uint64_t int_data;
	}converter;
	converter.fp_data =input;
	ap_uint<64> tmp = converter.int_data;
	tmp[63]=(~tmp[63]);
	converter.int_data=tmp;
	return converter.fp_data;
}

// if req, do two 32-bit operation: [a1, a2] + [b1, b2] = [a1 + b1, a1 - b1]

uint64_t adder(uint64_t a, uint64_t b, int req)
{
#pragma HLS INLINE off
    memcell sum;

    if (req) {
    	sum.u64 = ((((a >> 32) + (b >> 32)) - 12289 )<< 32) + ((a - b) & (0x00000000ffffffff));
    	sum.u32.m1 += 12289 & -(sum.u32.m1 >> 31);
    	sum.u32.m0 += 12289 & -(sum.u32.m0 >> 31);
    } else {
    	sum.u64 = double_to_float64(float64_to_double(a) + float64_to_double(b));
    }

    return sum.u64;
}

inline fpr float64_to_double(uint64_t f)
{
    return *(fpr *)&f;
}

inline uint64_t double_to_float64(double d)
{
    return *(uint64_t *)&d;
}


