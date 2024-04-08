#include "header.h"

/*=========================================================================/
/  Combine FFT/iFFT/NTT/iNTT in one hardware and share their memory usage  /
/=========================================================================*/

void fiFFNTT(memcell in[SIZE],memcell in2[SIZE], bool mode, bool inverse,bool fn_adj,bool fn_mul) {
#pragma HLS INTERFACE m_axi port=in bundle=gmem0 offset=slave depth=1024
#pragma HLS INTERFACE m_axi port=in2 bundle=gmem0 offset=slave depth=1024
#pragma HLS INTERFACE s_axilite port=mode
#pragma HLS INTERFACE s_axilite port=inverse
#pragma HLS INTERFACE s_axilite port=return
#pragma HLS ALLOCATION function instances=stages limit=2
#pragma HLS ALLOCATION function instances=in_copy limit=2
#pragma HLS ALLOCATION function instances=out_copy limit=2
//#pragma HLS DATAFLOW
	// Local share buffer
	memcell  in_buf[SIZE];
	memcell  in_buf2[SIZE];
	memcell out_buf[SIZE];
	memcell out_buf2[SIZE];
#pragma HLS ARRAY_PARTITION variable=in_buf type=cyclic
#pragma HLS ARRAY_PARTITION variable=in_buf2 type=cyclic
#pragma HLS ARRAY_PARTITION variable=out_buf type=cyclic
#pragma HLS ARRAY_PARTITION variable=out_buf2 type=cyclic
#pragma HLS INLINE off

   if(fn_adj){
    //////// adj_fft //////
	in_copy(in, in_buf, 1);
	stages(in_buf, out_buf, 1, 0);

	for(int j=512;j<1024;j++){
   // #pragma HLS UNROLL
		out_buf[j].f=-out_buf[j].f;
	}
	stages(out_buf, in_buf, 1, 1);
	out_copy(in_buf, in, 1, 1);}
   else if (fn_mul) {
     	in_copy(in, in_buf, 1);
	    in_copy(in2, in_buf2, 1);
	    stages(in_buf, out_buf, 1, 0);
	    stages(in_buf2, out_buf2, 1, 0);
	    for (int k = 0; k < 512; k++)
		in_buf[k].f = multiplier(out_buf[k].f,out_buf2[k].f)-multiplier(out_buf[k+512].f,out_buf2[k+512].f);
	    for (int l = 512; l< 1024; l++)
		in_buf[l].f = multiplier(out_buf[l].f,out_buf2[l-512].f)+multiplier(out_buf[l-512].f,out_buf2[l].f);
	    stages(in_buf, out_buf2, 1, 1);
	    out_copy(out_buf2, in, 1, 1);
   }
   else{
		in_copy(in, in_buf, mode);
		stages(in_buf, out_buf, mode, inverse);
		out_copy(out_buf, in, mode, inverse);
   }



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
	unsigned short logn = 10;
	uint32_t ni = R;
	uint32_t tmp1, tmp2, tmp3;
	niCONST: for (int i = SIZE; i > 1; i >>= 1) {
		ni += Q & -(ni & 1);
		ni = (ni >> 1);
	}
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
				out[i].f      = x_re + tmp_re;
				out[i + hn].f = x_im + tmp_im;
				// Sub //
				x_re -= tmp_re;
				x_im -= tmp_im;
				// Set the mul variable
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
				out[i].f      = x_re + y_re;
				out[i + hn].f = x_im + y_im;
				// Sub //
				out[i + ht].f      = x_re - y_re;
				out[i + ht + hn].f = x_im - y_im;
			}
			if (n == 255) break; // FFT iteration 256 times
		} else {
			////////////// NTT /////////////////
			if (inverse) {
				u = in[i].u16.n0;
				v = in[i + t].u16.n0;
				// Add //
				tmp1 = u + v - Q;
				tmp1 += Q & -(tmp1 >> 31);
				out[i].u16.n0 = (uint16_t)tmp1;
				// Sub //
				tmp1 = u - v;
				tmp1 += Q & -(tmp1 >> 31);
				w = tmp1;
			} else {
				u = in[i].u16.n0;
				v = in[i + ht].u16.n0;
				w = v;
			}
			monty_mul(&v, w, gm);
			if (inverse) {
				out[i + t].u16.n0 = (uint16_t)v;
			} else {
				//a[j] = (uint16_t)my_mq_add(u, v);
				tmp1 = u + v - Q;
				tmp1 += Q & -(tmp1 >> 31);
				out[i].u16.n0 = (uint16_t)tmp1;
				//a[j + ht] = (uint16_t)my_mq_sub(u, v);
				tmp1 = u - v;
				tmp1 += Q & -(tmp1 >> 31);
				out[i + ht].u16.n0 = (uint16_t)tmp1;
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


