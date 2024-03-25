#include "header.h"

void FFT(fpr f[1024], unsigned logn) {
#pragma HLS INTERFACE m_axi port=f bundle=gmem0 offset=slave depth=1024
#pragma HLS INTERFACE s_axilite port=logn
#pragma HLS INTERFACE s_axilite port=return

#pragma HLS INLINE recursive
#pragma HLS DATAFLOW

	/*
	 * FFT algorithm in bit-reversal order uses the following
	 * iterative algorithm:
	 *
	 *   t = N
	 *   for m = 1; m < N; m *= 2:
	 *       ht = t/2
	 *       for i1 = 0; i1 < m; i1 ++:
	 *           j1 = i1 * t
	 *           s = GM[m + i1]
	 *           for j = j1; j < (j1 + ht); j ++:
	 *               x = f[j]
	 *               y = s * f[j + ht]
	 *               f[j] = x + y
	 *               f[j + ht] = x - y
	 *       t = ht
	 *
	 * GM[k] contains w^rev(k) for primitive root w = exp(i*pi/N).
	 *
	 * In the description above, f[] is supposed to contain complex
	 * numbers. In our in-memory representation, the real and
	 * imaginary parts of f[k] are in array slots k and k+N/2.
	 *
	 * We only keep the first half of the complex numbers. We can
	 * see that after the first iteration, the first and second halves
	 * of the array of complex numbers have separate lives, so we
	 * simply ignore the second part.
	 */

	unsigned u;
	size_t t, n, hn, m;

	/*
	 * First iteration: compute f[j] + i * f[j+N/2] for all j < N/2
	 * (because GM[1] = w^rev(1) = w^(N/2) = i).
	 * In our chosen representation, this is a no-op: everything is
	 * already where it should be.
	 */

	/*
	 * Subsequent iterations are truncated to use only the first
	 * half of values.
	 */
	n = (size_t) 1 << logn;
	hn = n >> 1;
	t = hn;

	for (u = 1, m = 2; u < logn; u++, m <<= 1) {
#pragma HLS LOOP_TRIPCOUNT max=9
		size_t ht, hm, i1, j1;

		ht = t >> 1;
		hm = m >> 1;
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
				/* Multiply the real part and imaginary part */
				y_re = (tmp_re * s_re) - (tmp_im * s_im);
				y_im = (tmp_re * s_im) + (s_re * tmp_im);
				/* Add the real part and imaginary part */
				f[j]      = x_re + y_re;
				f[j + hn] = x_im + y_im;
				/* minus the real part and imaginary part */
				f[j + ht] 	   = x_re - y_re;
				f[j + ht + hn] = x_im - y_im;
			}
		}
		t = ht;
	}
}
