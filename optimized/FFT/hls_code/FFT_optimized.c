/*
 FFT - Fast-Fourier-Transform is any method to compute
 the same results as DFT in O(nlogn) operations.

 1. Bit-Reversed Ordering: It ensures that data points
 	that are coherently related in the frequency domain
 	are placed closer together in memory, which optimizes
 	memory access patterns and enhances cache performance

 2. In-Place Computation: Reordering the input data allows
 	for in-place computation of the FFT. In-place computation
 	means that the FFT algorithm can overwrite the input data
 	with intermediate results and the final output without
 	requiring additional memory allocation.

 3. Correct Ordering of Output: By performing bit-reversed
 	swapping on the input data, the output frequency domain
 	data will be in the correct order at the end of the
 	computation. This ensures that the resulting FFT output
 	corresponds to the correct frequency bins, making it
 	easier to interpret and utilize for further processing.
*/
#include "header.h"


void FFT(fpr f[SIZE]) {
//void FFT(stream_t *f_in, stream_t *f_out) {
#pragma HLS INTERFACE m_axi port=f bundle=gmem0 offset=slave depth=1024
//#pragma HLS INTERFACE axis port=f_in register both depth=1024
//#pragma HLS INTERFACE axis port=f_out register both depth=1024
#pragma HLS INTERFACE s_axilite port=return

	// Create local buffer
	fpr  in_buf_r[SIZE2],  in_buf_i[SIZE2];
	fpr out_buf_r[SIZE2], out_buf_i[SIZE2];

	// Copy input into buffer
	memcpy(in_buf_r, f,         SIZE2 * sizeof(fpr));
	memcpy(in_buf_i, f + SIZE2, SIZE2 * sizeof(fpr));

	fft_10_stages(in_buf_r, in_buf_i, out_buf_r, out_buf_i);

	// Copy buffer into output
	memcpy(f,         out_buf_r, SIZE2 * sizeof(fpr));
	memcpy(f + SIZE2, out_buf_i, SIZE2 * sizeof(fpr));

}

void fft_10_stages(fpr in_r[SIZE2], fpr in_i[SIZE2], fpr out_r[SIZE2], fpr out_i[SIZE2]) {
	/* Array Partition */
	fpr stage0_r[SIZE2], stage0_i[SIZE2];
	fpr stage1_r[SIZE2], stage1_i[SIZE2];
//#pragma HLS ARRAY_PARTITION variable=stage0_r type=block
//#pragma HLS ARRAY_PARTITION variable=stage0_i type=block
//#pragma HLS ARRAY_PARTITION variable=stage1_r type=block
//#pragma HLS ARRAY_PARTITION variable=stage1_i type=block
#pragma HLS INLINE off
	fft_stage(    in_r,     in_i, stage0_r, stage0_i, 512, 2);
	fft_stage(stage0_r, stage0_i, stage1_r, stage1_i, 256, 4);
	fft_stage(stage1_r, stage1_i, stage0_r, stage0_i, 128, 8);
	fft_stage(stage0_r, stage0_i, stage1_r, stage1_i, 64, 16);
	fft_stage(stage1_r, stage1_i, stage0_r, stage0_i, 32, 32);
	fft_stage(stage0_r, stage0_i, stage1_r, stage1_i, 16, 64);
	fft_stage(stage1_r, stage1_i, stage0_r, stage0_i, 8, 128);
	fft_stage(stage0_r, stage0_i, stage1_r, stage1_i, 4, 256);
	fft_stage(stage1_r, stage1_i,    out_r,    out_i, 2, 512);

}

void fft_stage(fpr in_r[SIZE2], fpr in_i[SIZE2], fpr out_r[SIZE2], fpr out_i[SIZE2], unsigned short int t, unsigned short int m) {
#pragma HLS DEPENDENCE dependent=false type=inter variable=out_r
#pragma HLS DEPENDENCE dependent=false type=inter variable=out_i
	unsigned short int ht = t >> 1; // ht: half t: section size
	unsigned short int hm = m >> 1; // hm: half m

	fpr gm_re, gm_im;
	fpr x_re, x_im, y_re, y_im, tmp_re, tmp_im;
	fpr mul;

	SECTION: for (int n = 0; n < 256; n++) {
//#pragma HLS UNROLL factor=2
#pragma HLS PIPELINE II=1
//#pragma HLS INLINE
		unsigned short i = n + ((n / ht) * ht);
		unsigned short i_gm = n / ht;
		gm_re = gm_re_tab[(m + i_gm)];
		gm_im = gm_im_tab[(m + i_gm)];
		x_re = in_r[i];
		x_im = in_i[i];
		tmp_re = in_r[i + ht];
		tmp_im = in_i[i + ht];
		/* Mul */
		complex_mul(&y_re, &y_im, tmp_re, tmp_im, gm_re, gm_im);
		/* Add */
		out_r[i] = x_re + y_re;
		out_i[i] = x_im + y_im;
		/* Sub */
		out_r[i + ht] = x_re - y_re;
		out_i[i + ht] = x_im - y_im;
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



