#include "header.h"

/*=========================================================================/
/  Combine FFT/iFFT/NTT/iNTT in one hardware and share their memory usage  /
/=========================================================================*/

void fiFFNTT(memcell in[SIZE], bool mode, bool inverse) {
#pragma HLS INTERFACE m_axi port=in bundle=gmem0 offset=slave depth=1024
#pragma HLS INTERFACE s_axilite port=mode
#pragma HLS INTERFACE s_axilite port=inverse
#pragma HLS INTERFACE s_axilite port=return
	// Local in-place sharing buffer
	memcell inplace_buf[SIZE];
	in_copy(in, inplace_buf, mode);
	stages(inplace_buf, inplace_buf, mode, inverse);
	out_copy(inplace_buf, in, mode, inverse);
}


void in_copy(memcell in_buf[SIZE], memcell out_buf[SIZE], bool mode) {
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
#pragma HLS INLINE off
	u32 tmp1, tmp2;
	u32 ni = 64;
	OUTMEMCPY: for (int j = 0; j < SIZE; j++) {
	#pragma HLS PIPELINE II=1
		if (mode == fft_req) {
			if (inverse) {
				out_buf[j].f = d_shift(in_buf[j].f, -9);
			} else {
				out_buf[j].f = in_buf[j].f;
			}
		} else {
			if (inverse) {
				monty_mul(&tmp2, in_buf[j].u16.n0, ni);
				out_buf[j].u16.n0 = (u16)tmp2;
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

void PE(memcell in[SIZE], memcell out[SIZE], u16 in_t, u16 in_m, bool mode, bool inverse) {
#pragma HLS DEPENDENCE dependent=false type=inter variable=in
#pragma HLS DEPENDENCE dependent=false type=inter variable=out
//====================== Operators ========================//
#pragma HLS ALLOCATION function instances=adder      limit=5
#pragma HLS ALLOCATION function instances=multiplier limit=1
//=========================================================//
#pragma HLS INLINE off
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
	// Variables of NTT
	u32 gm;
	u32 u, v, w;
	u32 tmp1, tmp2;
	memcell uu, vv, tmp64;
	BUTTERFLY: for (int n = 0; n < 512; n++) {
#pragma HLS PIPELINE II=3
		const unsigned short i = n + ((n / index_const) * index_const);
		const unsigned short i_gm = n / index_const;
		const unsigned short ix = i + t, iy = i + t + hn;
		const unsigned short f1 = i, f2 = i + hn, f3 = i + ht, f4 = i + ht + hn;
		if (inverse) {
			gm_re =        gm_re_tab[(hm + i_gm)];
			gm_im = negate(gm_im_tab[(hm + i_gm)]); // negation
			gm    = iGMb[hm + i_gm];
		} else {
			gm_re = gm_re_tab[(m + i_gm)];
			gm_im = gm_im_tab[(m + i_gm)];
			gm    = GMb[m + i_gm];
		}
		if (mode == fft_req) {
			x_re = in[f1].f;
			x_im = in[f2].f;
			////////////// iFFT ////////////////
			if (inverse) {
				tmp_re = in[ix].f;
				tmp_im = in[iy].f;
				out[f1].f = uint2double(adder(double2uint(x_re), double2uint(tmp_re), 0));
				out[f2].f = uint2double(adder(double2uint(x_im), double2uint(tmp_im), 0));
				x_re      = uint2double(adder(double2uint(x_re), double2uint(negate(tmp_re)), 0));
				x_im      = uint2double(adder(double2uint(x_im), double2uint(negate(tmp_im)), 0));
				// Set the mul variable
				tmp_re = x_re;
				tmp_im = x_im;
			////////////// FFT /////////////////
			} else {
				tmp_re = in[f3].f;
				tmp_im = in[f4].f;
			}
		} else {
			////////////// iNTT ////////////////
			if (inverse) {
				uu.u32.m1 = in[f1].u16.n0; // i
				uu.u32.m0 = in[f1].u16.n0;
				vv.u32.m1 = in[ix].u16.n0; // i + t
				vv.u32.m0 = in[ix].u16.n0;
				tmp64.u = adder(uu.u, vv.u, true);
				out[f1].u16.n0 = tmp64.u32.m1;
				w = tmp64.u32.m0;
			} else {
				u = in[f1].u16.n0;
				v = in[f3].u16.n0;
				w = v;
			}
		}
		if (mode == fft_req) {
			// Complex Multiplication
			fpr sub_y = uint2double(adder(double2uint(gm_re), double2uint(negate(gm_im)), 0));
			fpr add_y = uint2double(adder(double2uint(gm_re), double2uint(gm_im), 0));
			fpr sub_x = uint2double(adder(double2uint(tmp_re), double2uint(negate(tmp_im)), 0));
			fpr mul1  = uint2double(multiplier(double2uint(tmp_re), double2uint(sub_y), 0));
			fpr mul2  = uint2double(multiplier(double2uint(tmp_im), double2uint(add_y), 0));
			fpr mul3  = uint2double(multiplier(double2uint(gm_im), double2uint(sub_x), 0));
			tmp_re1   = uint2double(adder(double2uint(mul1), double2uint(mul3), 0));
			tmp_im1   = uint2double(adder(double2uint(mul2), double2uint(mul3), 0));
		} else {
			// Montgomery Multiplication
			memcell tmp_a, tmp_b, tmp_c;
			tmp_a.u32.m1 = w;
			tmp_b.u32.m1 = gm;
			tmp_c.u = multiplier(tmp_a.u, tmp_b.u, true);
			u32 utmp2 = tmp_c.u32.m1;
			u32 utmp1 = tmp_c.u32.m0;
			utmp2 = (utmp2 + utmp1) >> 16;
			utmp2 -= Q;
			utmp2 += Q & -(utmp2 >> 31);
			v = utmp2;
		}
		if (mode == fft_req) {
			////////////// iFFT ////////////////
			if (inverse) {
				out[ix].f = tmp_re1;
				out[iy].f = tmp_im1;
			} else {
			////////////// FFT /////////////////
				y_re = tmp_re1;
				y_im = tmp_im1;
				out[f1].f = uint2double(adder(double2uint(x_re), double2uint(y_re), 0));
				out[f2].f = uint2double(adder(double2uint(x_im), double2uint(y_im), 0));
				out[f3].f = uint2double(adder(double2uint(x_re), double2uint(negate(y_re)), 0));
				out[f4].f = uint2double(adder(double2uint(x_im), double2uint(negate(y_im)), 0));
			}
			if (n == 255) break; // FFT iteration 256 times
		} else {
			if (inverse) {
				out[ix].u16.n0 = (u16)v;
			} else {
				uu.u32.m1 = u;
				uu.u32.m0 = u;
				vv.u32.m1 = v;
				vv.u32.m0 = v;
				tmp64.u = adder(uu.u, vv.u, true);
				out[f1].u16.n0 = (u16)tmp64.u32.m1;
				out[f3].u16.n0 = (u16)tmp64.u32.m0;

			}
		}
	}
}

void monty_mul(u32 *z, u32 x, u32 y) {
#pragma HLS INLINE off
    u32 tmp1, tmp2;
    tmp2 = x * y;
    tmp1 = ((tmp2 * Q0I) & 0xFFFF) * Q;
    tmp2 = (tmp2 + tmp1) >> 16;
    if (tmp2 >= Q) {
        tmp2 -= Q;
    }
    if (tmp2 >= Q) {
        tmp2 -= Q;
    }
    *z = tmp2;
}



//============================================================================//
// if req, do two 32-bit operation: [a1, a2] + [b1, b2] = [a1 + b1, a1 - b1]  //
//============================================================================//
u64 adder(u64 a, u64 b, bool req) {
#pragma HLS INLINE off
    memcell sum;
    memcell tmp1, tmp2;

    if (req) {
    	tmp1.u = a;
    	tmp2.u = b;
    	sum.u32.m1 = (tmp1.u32.m1 + tmp2.u32.m1 - 12289);
    	sum.u32.m0 = (tmp1.u32.m0 - tmp2.u32.m0);
    	// sum.u = ((((a >> 32) + (b >> 32)) - 12289) << 32) | ((a - b) & 0x00000000ffffffff);
    	sum.u32.m1 += 12289 & -(sum.u32.m1 >> 31);
    	sum.u32.m0 += 12289 & -(sum.u32.m0 >> 31);
    } else {
    	sum.u = double2uint(uint2double(a) + uint2double(b));
    }
    return sum.u;
}

//============================================================================//
// if req, do two 32-bit operation: [a1 * a2, (a1 * a2 * Q0I) & 0xFFFF * Q]   //
//============================================================================//
u64 multiplier(u64 a, u64 b, bool req) {
#pragma HLS INLINE off
	memcell product;
	memcell tmp1, tmp2;
	u32 tmp;
	if (req) {
		tmp1.u = a;
		tmp2.u = b;
		tmp = tmp1.u32.m1 * tmp2.u32.m1;
		product.u32.m1 = tmp;
		product.u32.m0 = (((tmp * Q0I) & 0xFFFF) * Q);
	} else {
		product.u = double2uint(uint2double(a) * uint2double(b));
	}
	return product.u;
}

inline fpr uint2double(u64 u) {
#pragma HLS INLINE
    return *(fpr *)&u;
}

inline u64 double2uint(fpr f) {
#pragma HLS INLINE
    return *(u64 *)&f;
}

inline fpr negate(fpr input) {
#pragma HLS INLINE
	union {
		fpr f;
		u64 i;
	} converter;

	converter.f = input;
	ap_uint<64> tmp = converter.i;
	tmp[63] = (~tmp[63]);
	converter.i = tmp;

	return converter.f;
}


inline fpr d_shift(fpr num, int shift) {
#pragma HLS INLINE
	union {
		fpr f;
		u64 bits;
	} value;
	value.f = num;
	// The exponent is in bits 52-62
	u64 exponentMask = 0x7FF0000000000000;
	int exponent = (value.bits & exponentMask) >> 52;
	// Adjust the exponent and handle underflow/overflow
	exponent += shift;
	if (exponent < 0) exponent = 0;
	if (exponent > 2047) exponent = 2047;

	value.bits = (value.bits & ~exponentMask) | ((u64)exponent << 52);

	return value.f;
}





