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
#define SIZE 1024
#define SIZE2 512
#define FACTOR 4

void fft_10_stages(fpr in_r[SIZE2], fpr in_i[SIZE2], fpr out_r[SIZE2], fpr out_i[SIZE2]);
void fft_stage(fpr in_r[SIZE2], fpr in_i[SIZE2], fpr out_r[SIZE2], fpr out_i[SIZE2], unsigned short int t, unsigned short int m);

void FFT(fpr f[SIZE]) {
//#pragma HLS INTERFACE m_axi port=f bundle=gmem0 offset=slave depth=1024
#pragma HLS INTERFACE s_axilite port=f
#pragma HLS INTERFACE s_axilite port=return
	// n for logn
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
	const unsigned short factor = FACTOR;
	/* Array Partition */
	fpr stage0_r[SIZE2], stage0_i[SIZE2];
	fpr stage1_r[SIZE2], stage1_i[SIZE2];
/*
	fpr stage2_r[SIZE2], stage2_i[SIZE2];
	fpr stage3_r[SIZE2], stage3_i[SIZE2];
	fpr stage4_r[SIZE2], stage4_i[SIZE2];
	fpr stage5_r[SIZE2], stage5_i[SIZE2];
	fpr stage6_r[SIZE2], stage6_i[SIZE2];
	fpr stage7_r[SIZE2], stage7_i[SIZE2];
*/
#pragma HLS ARRAY_PARTITION variable=stage0_r type=cyclic factor=factor
#pragma HLS ARRAY_PARTITION variable=stage0_i type=cyclic factor=factor
#pragma HLS ARRAY_PARTITION variable=stage1_r type=cyclic factor=factor
#pragma HLS ARRAY_PARTITION variable=stage1_i type=cyclic factor=factor
/*
#pragma HLS ARRAY_PARTITION variable=stage2_r type=cyclic factor=factor
#pragma HLS ARRAY_PARTITION variable=stage2_i type=cyclic factor=factor
#pragma HLS ARRAY_PARTITION variable=stage3_r type=cyclic factor=factor
#pragma HLS ARRAY_PARTITION variable=stage3_i type=cyclic factor=factor
#pragma HLS ARRAY_PARTITION variable=stage4_r type=cyclic factor=factor
#pragma HLS ARRAY_PARTITION variable=stage4_i type=cyclic factor=factor
#pragma HLS ARRAY_PARTITION variable=stage5_r type=cyclic factor=factor
#pragma HLS ARRAY_PARTITION variable=stage5_i type=cyclic factor=factor
#pragma HLS ARRAY_PARTITION variable=stage6_r type=cyclic factor=factor
#pragma HLS ARRAY_PARTITION variable=stage6_i type=cyclic factor=factor
#pragma HLS ARRAY_PARTITION variable=stage7_r type=cyclic factor=factor
#pragma HLS ARRAY_PARTITION variable=stage7_i type=cyclic factor=factor
#pragma HLS ARRAY_PARTITION variable=out_r    type=cyclic factor=factor
#pragma HLS ARRAY_PARTITION variable=out_i    type=cyclic factor=factor
*/
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
	int i    = 0;
	int i_gm = 0;
	SECTION: for (int n = 0; n < 256; n++) {
#pragma HLS UNROLL factor=4
#pragma HLS PIPELINE II=35
		gm_re = fpr_gm_tab[((m + i_gm) << 1) + 0];
		gm_im = fpr_gm_tab[((m + i_gm) << 1) + 1];
		x_re = in_r[i];
		x_im = in_i[i];
		tmp_re = in_r[i + ht];
		tmp_im = in_i[i + ht];
		/* Mul */
		y_re = (tmp_re * gm_re) - (tmp_im * gm_im);
		y_im = (tmp_re * gm_im) + (tmp_im * gm_re);\
		/* Add */
		out_r[i] = x_re + y_re;
		out_i[i] = x_im + y_im;
		/* Sub */
		out_r[i + ht] = x_re - y_re;
		out_i[i + ht] = x_im - y_im;
		/* Index */
		if ((i + 1) % ht == 0) {
			i += ht + 1;
			i_gm += 1;
		} else {
			i += 1;
		}
	}
}



