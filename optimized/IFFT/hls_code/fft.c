#include "header.h"



/*
 * Compute the inverse FFT in-place: the source array should contain the
 * FFT representation of a real polynomial (N/2 elements); the resulting
 * real polynomial (N coefficients of type 'fpr') is written over the
 * array.
 *
 * 'logn' MUST lie between 1 and 10 (inclusive).
 */


void iFFT_stub(fpr f[1024]/*, unsigned logn*/) {
#pragma HLS INTERFACE m_axi port=f bundle=gmem0 offset=slave depth=1024
#pragma HLS INTERFACE s_axilite port=return

#pragma HLS dataflow

	size_t u, n, hn, t, m, i;

	fpr Stage_R[2][512], Stage_I[2][512];
#pragma HLS array_partition variable=Stage_R dim=1 complete
#pragma HLS array_partition variable=Stage_I dim=1 complete



		n = (size_t) 1 << 10;
		t = 1;
		m = n;
		hn = n >> 1;
		u = 10;
		memcpy(Stage_R[0], f, hn * 8);
		memcpy(Stage_I[0], f + hn, hn * 8);
		for (u, i = 1; u > 1; u--, ++i) {
#pragma HLS unroll

			size_t hm, dt;
			hm = m >> 1;
			dt = t << 1;

			iFFT_stage(Stage_R[(i - 1) % 2], Stage_I[(i - 1) % 2],
					Stage_R[i % 2], Stage_I[i % 2], hn, dt, t, hm);
			t = dt;
			m = hm;

		}

			fpr ni;

			ni = fpr_p2_tab[10];
			for (u = 0; u < n / 2; u++) {
				f[u] = fpr_mul(Stage_R[(i - 1) % 2][u], ni);
				f[u + hn] = fpr_mul(Stage_I[(i - 1) % 2][u], ni);
			}

}

void iFFT_stage(fpr in_r[], fpr in_i[], fpr out_r[], fpr out_i[], int hn,
		int dt, int t, int hm) {
	loop2: for (int i1 = 0, j1 = 0; j1 < hn; i1++, j1 += dt) {

		size_t j, j2;

		j2 = j1 + t;
		fpr s_re, s_im;

		s_re = fpr_gm_tab[((hm + i1) << 1) + 0];
		s_im = fpr_neg(fpr_gm_tab[((hm + i1) << 1) + 1]);

		loop3: for (j = j1; j < j2; j++) {
#pragma HLS pipeline
#pragma HLS LOOP_TRIPCOUNT max=1
			out_r[j] = in_r[j] + in_r[j + t];
			out_i[j] = in_i[j] + in_i[j + t];
			fpr temp_R = in_r[j] - in_r[j + t];
			fpr temp_I = in_i[j] - in_i[j + t];
			out_r[j + t] = temp_R * s_re - temp_I * s_im;
			out_i[j + t] = temp_I * s_re + temp_R * s_im;
		}
	}
}



