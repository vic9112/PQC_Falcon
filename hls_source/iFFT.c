#include "header.h"

void iFFT(fpr *f, unsigned logn) {
#pragma HLS INTERFACE m_axi port=f bundle=gmem0 offset=slave depth=1024
#pragma HLS INTERFACE s_axilite port=logn
#pragma HLS INTERFACE s_axilite port=return

#pragma HLS INLINE recursive
#pragma HLS DATAFLOW
	/*
	 * Inverse FFT algorithm in bit-reversal order uses the following
	 * iterative algorithm:
	 *
	 *   t = 1
	 *   for m = N; m > 1; m /= 2:
	 *       hm = m/2
	 *       dt = t*2
	 *       for i1 = 0; i1 < hm; i1 ++:
	 *           j1 = i1 * dt
	 *           s = iGM[hm + i1]
	 *           for j = j1; j < (j1 + t); j ++:
	 *               x = f[j]
	 *               y = f[j + t]
	 *               f[j] = x + y
	 *               f[j + t] = s * (x - y)
	 *       t = dt
	 *   for i1 = 0; i1 < N; i1 ++:
	 *       f[i1] = f[i1] / N
	 *
	 * iGM[k] contains (1/w)^rev(k) for primitive root w = exp(i*pi/N)
	 * (actually, iGM[k] = 1/GM[k] = conj(GM[k])).
	 *
	 * In the main loop (not counting the final division loop), in
	 * all iterations except the last, the first and second half of f[]
	 * (as an array of complex numbers) are separate. In our chosen
	 * representation, we do not keep the second half.
	 *
	 * The last iteration recombines the recomputed half with the
	 * implicit half, and should yield only real numbers since the
	 * target polynomial is real; moreover, s = i at that step.
	 * Thus, when considering x and y:
	 *    y = conj(x) since the final f[j] must be real
	 *    Therefore, f[j] is filled with 2*Re(x), and f[j + t] is
	 *    filled with 2*Im(x).
	 * But we already have Re(x) and Im(x) in array slots j and j+t
	 * in our chosen representation. That last iteration is thus a
	 * simple doubling of the values in all the array.
	 *
	 * We make the last iteration a no-op by tweaking the final
	 * division into a division by N/2, not N.
	 */
	size_t u, n, hn, t, m;

	n = (size_t) 1 << logn;
	t = 1;
	m = n;
	hn = n >> 1;
	for (u = logn; u > 1; u--) {
#pragma HLS LOOP_TRIPCOUNT min=0 max=1
		size_t hm, dt, i1, j1;

		hm = m >> 1;
		dt = t << 1;
		for (i1 = 0, j1 = 0; j1 < hn; i1++, j1 += dt) {
#pragma HLS LOOP_TRIPCOUNT min=0 max=1
			size_t j, j2;

			j2 = j1 + t;
			fpr s_re, s_im;

			s_re = fpr_gm_tab[((hm + i1) << 1) + 0];
			s_im = -(fpr_gm_tab[((hm + i1) << 1) + 1]); // negation
			for (j = j1; j < j2; j++) {
#pragma HLS LOOP_TRIPCOUNT min=0 max=2305
#pragma HLS PIPELINE II=28
				fpr x_re, x_im, y_re, y_im;
				fpr tmp_re, tmp_im;

				tmp_re = f[j];		// x_re
				tmp_im = f[j + hn]; // x_im
				y_re = f[j + t];
				y_im = f[j + t + hn];
				/* Add the real part and imaginary part */
				f[j]      = tmp_re + y_re;
				f[j + hn] = tmp_im + y_im;
				/* sub the real part and imaginary part */
				x_re = tmp_re - y_re;
				x_im = tmp_im - y_im;
				/* Multiply the real part and imaginary part */
				f[j + t]      = (x_re * s_re) - (x_im * s_im);
				f[j + t + hn] = (x_re * s_im) + (x_im * s_re);
			}
		}
		t = dt;
		m = hm;
	}

	/*
	 * Last iteration is a no-op, provided that we divide by N/2
	 * instead of N. We need to make a special case for logn = 0.
	 */
	if (logn > 0) {
		fpr ni;
		ni = fpr_p2_tab[logn];
		for (u = 0; u < n; u++) {
#pragma HLS PIPELINE II=18
			f[u] = f[u] * ni;
		}
	}
}
