#include "header.h"

/*=========================================================================/
/  Combine FFT/iFFT/NTT/iNTT in one hardware and share their memory usage  /
/=========================================================================*/

void fiFFNTT(memcell in[SIZE], bool mode, bool inverse) {
#pragma HLS INTERFACE m_axi port=in bundle=gmem0 offset=slave depth=1024
#pragma HLS INTERFACE s_axilite port=mode
#pragma HLS INTERFACE s_axilite port=inverse
#pragma HLS INTERFACE s_axilite port=return
#pragma HLS INLINE off
	// Local in-place sharing buffer
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
#pragma HLS DEPENDENCE dependent=false type=inter variable=in_buf
#pragma HLS DEPENDENCE dependent=false type=inter variable=out_buf
#pragma HLS INLINE off
	unsigned short logn = 10;
	u32 ni = 64;
	u32 tmp1, tmp2, tmp3;
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
				monty_mul(&tmp3, in_buf[j].u16.n0, ni);
				out_buf[j].u16.n0 = (u16)tmp3;
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
	BUTTERFLY: for (int n = 0; n < 512; n++) {
#pragma HLS PIPELINE II=2
		unsigned short i = n + ((n / index_const) * index_const);
		unsigned short i_gm = n / index_const;
		// Gm constant of FFT
		if (inverse) {
			gm_re =        gm_re_tab[(hm + i_gm)];
			gm_im = negate(gm_im_tab[(hm + i_gm)]); // negation
			gm = iGMb[hm + i_gm];
		} else {
			gm_re = gm_re_tab[(m + i_gm)];
			gm_im = gm_im_tab[(m + i_gm)];
			gm = GMb[m + i_gm];
		}
		// Gm constant of NTT
		if (mode == fft_req) {
			x_re = in[i].f;
			x_im = in[i + hn].f;
			////////////// iFFT ////////////////
			if (inverse) {
				tmp_re = in[i + t].f;
				tmp_im = in[i + t + hn].f;
				// Add //
				out[i].f      = d_add(x_re, tmp_re);
				out[i + hn].f = d_add(x_im, tmp_im);
				// Sub //
				x_re = d_add(x_re, negate(tmp_re));
				x_im = d_add(x_im, negate(tmp_im));
				// Set the mul variable
				tmp_re = x_re;
				tmp_im = x_im;
			////////////// FFT /////////////////
			} else {
				tmp_re = in[i + ht].f;
				tmp_im = in[i + ht + hn].f;
			}
		} else {
			////////////// iNTT ////////////////
			if (inverse) {
				u = in[i].u16.n0;
				v = in[i + t].u16.n0;
				// Add //
				tmp1 = u_add(u, v) - Q;
				tmp1 += Q & -(tmp1 >> 31);
				out[i].u16.n0 = (u16)tmp1;
				// Sub //
				tmp1 = u_add(u, -v);
				tmp1 += Q & -(tmp1 >> 31);
				w = tmp1;
			} else {
			////////////// NTT /////////////////
				u = in[i].u16.n0;
				v = in[i + ht].u16.n0;
				w = v;
			}
		}
		if (mode == fft_req) complex_mul(&tmp_re1, &tmp_im1, tmp_re, tmp_im, gm_re, gm_im); // should share the same complex_mul
		else 				 monty_mul(&v, w, gm);
		if (mode == fft_req) {
			////////////// iFFT ////////////////
			if (inverse) {
				out[i + t].f      = tmp_re1;
				out[i + t + hn].f = tmp_im1;
			} else {
			////////////// FFT /////////////////
				y_re = tmp_re1;
				y_im = tmp_im1;
				// Add //
				out[i].f      = d_add(x_re, y_re);
				out[i + hn].f = d_add(x_im, y_im);
				// Sub //
				out[i + ht].f      = d_add(x_re, negate(y_re));
				out[i + ht + hn].f = d_add(x_im, negate(y_im));
			}
			if (n == 255) break; // FFT iteration 256 times
		} else {
			if (inverse) {
			////////////// iNTT /////////////////
				out[i + t].u16.n0 = (u16)v;
			} else {
			////////////// NTT /////////////////
				// Add //
				tmp1 = u_add(u, v) - Q;
				tmp1 += Q & -(tmp1 >> 31);
				out[i].u16.n0 = (u16)tmp1;
				// Sub //
				tmp1 = u_add(u, -v);
				tmp1 += Q & -(tmp1 >> 31);
				out[i + ht].u16.n0 = (u16)tmp1;
			}
		}
	}
}

void complex_mul(fpr *z_re, fpr *z_im, fpr x_re, fpr x_im, fpr y_re, fpr y_im) {
#pragma HLS INLINE off
	// 2 Adders 4 Multiplier
	// z_re = (x_re * y_re) - (x_im * y_im);
	// z_im = (x_re * y_im) + (x_im * y_re);
	// Rewrite as:
	// 5 Adders 3 Multiplier
	// z_re = x_re * (y_re - y_im) + [[[y_im * (x_re - x_im)]]];
	// z_im = x_im * (y_re + y_im) + [[[y_im * (x_re - x_im)]]];

	fpr sub_y = d_add(y_re, negate(y_im));
	fpr add_y = d_add(y_re, y_im);
	fpr sub_x = d_add(x_re, negate(x_im));
	fpr mul1 = d_mul(x_re, sub_y);
	fpr mul2 = d_mul(x_im, add_y);
	fpr mul3 = d_mul(y_im, sub_x);
	*z_re = d_add(mul1, mul3);
	*z_im = d_add(mul2, mul3);
}

void monty_mul(u32 *z, u32 x, u32 y) {
#pragma HLS INLINE off
	u32 tmp1, tmp2;
	tmp2 = u_mul(x, y);
	tmp1 = ((tmp2 * Q0I) & 0xFFFF) * Q;
	tmp2 = u_add(tmp2, tmp1) >> 16;
	tmp2 -= Q;
	tmp2 += Q & -(tmp2 >> 31);
	*z = tmp2;
}

fpr d_mul(fpr a, fpr b) {
	return (a * b);
}

fpr d_add(fpr a, fpr b) {
	return (a + b);
}

u32 u_mul(u32 a, u32 b) {
	return (a * b);
}

u32 u_add(u32 a, u32 b) {
	return (a + b);
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

/*
cell mul64(cell a, cell b, bool req) {
#pragma HLS ALLOCATION function instances=mul limit=1
#pragma HLS INLINE off
	fixed64 fixed_a;
    fixed64 fixed_b;
    cell result;
    if (req) {
    	fixed_a = fixed64(a.u); // Assuming direct initialization scales correctly.
    	fixed_b = fixed64(b.u);
    } else {
        fixed_a = a.f;
        fixed_b = b.f;
    }
    // Perform fixed-point multiplication of mantissa
    fixed64 product = mul(fixed_a, fixed_b);

    if (req == uint32_req) {
    	u32 product_uint = product.to_uint();
    	result.u = product_uint;
    } else {
        // Store the double multiplication result in result.f
        result.f = static_cast<fpr>(product);
    }
    return result;
}

fixed64 mul(fixed64 a, fixed64 b) {
	return (a * b);
}
*/




