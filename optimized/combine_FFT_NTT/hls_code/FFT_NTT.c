#include "header.h"

/*===============================================================/
/  Combine FFT/NTT in one hardware and share their memory usage  /
/===============================================================*/

void FFT_NTT(memcell in[SIZE], bool mode) {
#pragma HLS INTERFACE m_axi port=in bundle=gmem0 offset=slave depth=1024
#pragma HLS INTERFACE s_axilite port=mode
#pragma HLS INTERFACE s_axilite port=return

	// Local share buffer
	memcell  in_buf[SIZE];
	memcell out_buf[SIZE];
#pragma HLS INLINE off

	in_copy(in, in_buf, mode);
	combine_stages(in_buf, out_buf, mode);
	out_copy(out_buf, in, mode);

}


void in_copy(memcell in_buf[SIZE], memcell out_buf[SIZE], bool mode) {
	INMEMCPY: for (int i = 0; i < SIZE; i++) {
	#pragma HLS PIPELINE II=1
		if (mode == fft_req)
			out_buf[i].f      = in_buf[i].f;
		else
			out_buf[i].u16.n0 = in_buf[i].u16.n0;
	}
}

void out_copy(memcell in_buf[SIZE], memcell out_buf[SIZE], bool mode) {
	OUTMEMCPY: for (int j = 0; j < SIZE; j++) {
	#pragma HLS PIPELINE II=2
		if (mode == fft_req)
			out_buf[j].f      = in_buf[j].f;
		else
			out_buf[j].u16.n0 = in_buf[j].u16.n0;
	}
}

void combine_stages(memcell in[SIZE], memcell out[SIZE], bool mode) {
	memcell stage0[SIZE], stage1[SIZE];
#pragma HLS DEPENDENCE dependent=false type=inter variable=stage0
#pragma HLS DEPENDENCE dependent=false type=inter variable=stage1
#pragma HLS INLINE off

	if (mode == ntt_req) {
		stage(    in, stage1, 1024, 1, mode);
		stage(stage1, stage0,  512, 2, mode);
	} else {
		stage(    in, stage0,  512, 2, mode);
	}
	stage(stage0, stage1, 256, 4, mode);//stage(stage1, stage0, 256,  4);
	stage(stage1, stage0, 128, 8, mode);//stage(stage0, stage1, 128,  8);
	stage(stage0, stage1, 64, 16, mode);//stage(stage1, stage0, 64,  16);
	stage(stage1, stage0, 32, 32, mode);//stage(stage0, stage1, 32,  32);
	stage(stage0, stage1, 16, 64, mode);//stage(stage1, stage0, 16,  64);
	stage(stage1, stage0, 8, 128, mode);//stage(stage0, stage1, 8,  128);
	stage(stage0, stage1, 4, 256, mode);//stage(stage1, stage0, 4,  256);
	stage(stage1,    out, 2, 512, mode);//stage(stage0, out_buf, 2, 512);

}

void stage(memcell in[SIZE], memcell out[SIZE], unsigned short int t, unsigned short int m, bool mode) {
#pragma HLS DEPENDENCE dependent=false type=inter variable=in
#pragma HLS DEPENDENCE dependent=false type=inter variable=out
	unsigned short int ht = t >> 1; // ht: half t: section size
	unsigned short int hm = m >> 1; // hm: half m
	unsigned short int hn = SIZE2;  // 512
	// Variables of FFT
	fpr gm_re, gm_im;
	fpr x_re, x_im, y_re, y_im, tmp_re, tmp_im;
	fpr mul;
	// Variables of NTT
	uint32_t gm;
	uint32_t u, v;
	uint32_t tmp1, tmp2;
	SECTION: for (int n = 0; n < 512; n++) {
#pragma HLS PIPELINE II=2
#pragma HLS INLINE off
		unsigned short i = n + ((n / ht) * ht);
		unsigned short i_gm = n / ht;
		// Gm constant of FFT
		gm_re = gm_re_tab[(m + i_gm)];
		gm_im = gm_im_tab[(m + i_gm)];
		// Gm constant of NTT
		gm = GMb[m + i_gm];
		if (mode == fft_req) {
			////////////// FFT /////////////////
			x_re   = in[i].f;
			x_im   = in[i + hn].f;
			tmp_re = in[i + ht].f;
			tmp_im = in[i + ht + hn].f;
			// Mul //
			complex_mul(&y_re, &y_im, tmp_re, tmp_im, gm_re, gm_im);
			// Add //
			out[i].f      = x_re + y_re;
			out[i + hn].f = x_im + y_im;
			// Sub //
			out[i + ht].f      = x_re - y_re;
			out[i + ht + hn].f = x_im - y_im;
			if (n == 255) break; // FFT iteration 256 times
		} else {
			////////////// NTT /////////////////
			u = in[i].u16.n0;
			//v = my_mq_montymul(a[j + ht], s);
			tmp2 = in[i + ht].u16.n0 * gm;
			tmp1 = ((tmp2 * Q0I) & 0xFFFF) * Q;
			tmp2 = (tmp2 + tmp1) >> 16;
			tmp2 -= Q;
			tmp2 += Q & -(tmp2 >> 31);
			v = (uint32_t)tmp2;
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

void complex_mul(fpr *z_re, fpr *z_im, fpr x_re, fpr x_im, fpr y_re, fpr y_im) {
#pragma HLS INLINE off
	//*z_re = (x_re * y_re) - (x_im * y_im);
	//*z_im = (x_re * y_im) + (x_im * y_re);
	// Rewrite as:
	//*z_re = x_re * (y_re - y_im) + y_im * (x_re - x_im);
	//*z_im = x_im * (y_re + y_im) + y_im * (x_re - x_im);

	fpr sub_y = y_re - y_im;
	fpr add_y = y_re + y_im;
	fpr sub_x = x_re - x_im;
	fpr mul1 = multiplier(x_re, sub_y);
	fpr mul2 = multiplier(x_im, add_y);
	fpr mul3 = multiplier(y_im, sub_x);
	*z_re = mul1 + mul3;
	*z_im = mul2 + mul3;

}

fpr multiplier(fpr a, fpr b) {
	return (a * b);
}



