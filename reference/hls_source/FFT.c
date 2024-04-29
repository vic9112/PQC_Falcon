#include "header.h"

void FFT(fpr f[1024], unsigned logn) {
#pragma HLS INTERFACE m_axi port=f bundle=gmem0 offset=slave depth=1024
#pragma HLS INTERFACE s_axilite port=logn
#pragma HLS INTERFACE s_axilite port=return

#pragma HLS INLINE recursive
#pragma HLS DATAFLOW



	unsigned u;
	size_t t, n, hn, m;

	n = (size_t) 1 << logn;  // 1024
	hn = n >> 1;			 // 1024/2 = 512
	t = hn;					 // t = 512: initial

	// 10 stages
	// m * 2 in every stage
	// Stage 0: u = 1, m = 2
	// Stage 1: u = 2, m = 4
	// Stage 2: u = 3, m = 8
	// Stage 3: u = 4, m = 16
	// ....
	// Stage 8: u = 9, m = 512
	for (u = 1, m = 2; u < logn; u++, m <<= 1) {
#pragma HLS LOOP_TRIPCOUNT max=9
		size_t ht, hm, i1, j1;

		ht = t >> 1;  // half-length / 2 => offset of y
		hm = m >> 1;  // m / 2
		for (i1 = 0, j1 = 0; i1 < hm; i1++, j1 += t) {
#pragma HLS LOOP_TRIPCOUNT max=56
			size_t j, j2;
			j2 = j1 + ht;
			fpr s_re, s_im;

			s_re = fpr_gm_tab[((m + i1) << 1) + 0];
			s_im = fpr_gm_tab[((m + i1) << 1) + 1];

			for (j = j1; j < j2; j++) {
#pragma HLS LOOP_TRIPCOUNT max=56
#pragma HLS PIPELINE II=32
				fpr x_re, x_im, y_re, y_im;
				fpr tmp_re, tmp_im;

				x_re = f[j];
				x_im = f[j + hn];
				tmp_re = f[j + ht];
				tmp_im = f[j + ht + hn];
				y_re = (tmp_re * s_re) - (tmp_im * s_im);
				y_im = (tmp_re * s_im) + (s_re * tmp_im);
				f[j]      = x_re + y_re;
				f[j + hn] = x_im + y_im;
				f[j + ht] 	   = x_re - y_re;
				f[j + ht + hn] = x_im - y_im;
			}
		}
		t = ht;
	}
}

