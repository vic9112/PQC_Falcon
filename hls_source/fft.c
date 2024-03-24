#include "header.h"

/*
 * Addition of two complex numbers (d = a + b).
 */

void FPC_ADD(fpr *d_re, fpr *d_im, fpr a_re, fpr a_im, fpr b_re, fpr b_im) {

	fpr fpct_re, fpct_im;
	fpct_re = fpr_add(a_re, b_re);
	fpct_im = fpr_add(a_im, b_im);
	*d_re = fpct_re;
	*d_im = fpct_im;
}

// #define FPC_ADD(d_re, d_im, a_re, a_im, b_re, b_im)   do { \
// 		fpr fpct_re, fpct_im; \
// 		fpct_re = fpr_add(a_re, b_re); \
// 		fpct_im = fpr_add(a_im, b_im); \
// 		(d_re) = fpct_re; \
// 		(d_im) = fpct_im; \
// 	} while (0)

/*
 * Subtraction of two complex numbers (d = a - b).
 */
void FPC_SUB(fpr *d_re, fpr *d_im, fpr a_re, fpr a_im, fpr b_re, fpr b_im) {

	fpr fpct_re, fpct_im;
	fpct_re = fpr_sub(a_re, b_re);
	fpct_im = fpr_sub(a_im, b_im);
	*d_re = fpct_re;
	*d_im = fpct_im;
}

// #define FPC_SUB(d_re, d_im, a_re, a_im, b_re, b_im)   do { \
// 		fpr fpct_re, fpct_im; \
// 		fpct_re = fpr_sub(a_re, b_re); \
// 		fpct_im = fpr_sub(a_im, b_im); \
// 		(d_re) = fpct_re; \
// 		(d_im) = fpct_im; \
// 	} while (0)

/*
 * Multplication of two complex numbers (d = a * b).
 */

void FPC_MUL(fpr *d_re, fpr *d_im, fpr a_re, fpr a_im, fpr b_re, fpr b_im) {

	fpr fpct_a_re, fpct_a_im;
	fpr fpct_b_re, fpct_b_im;
	fpr fpct_d_re, fpct_d_im;
	fpr test1, test2;
	fpct_a_re = (a_re);
	fpct_a_im = (a_im);
	fpct_b_re = (b_re);
	fpct_b_im = (b_im);
	test1 = fpr_mul(fpct_a_re, fpct_b_re);
	test2 = fpr_mul(fpct_a_im, fpct_b_im);
	fpct_d_re = fpr_sub(test1, test2);
	test1 = fpr_mul(fpct_a_re, fpct_b_im);
	test2 = fpr_mul(fpct_a_im, fpct_b_re);
	fpct_d_im = fpr_add(test1, test2);
	(*d_re) = fpct_d_re;
	(*d_im) = fpct_d_im;
}

// #define FPC_MUL(d_re, d_im, a_re, a_im, b_re, b_im)   do { \
// 		fpr fpct_a_re, fpct_a_im; \
// 		fpr fpct_b_re, fpct_b_im; \
// 		fpr fpct_d_re, fpct_d_im; \
// 		fpr test1, test2; \
// 		fpct_a_re = (a_re); \
// 		fpct_a_im = (a_im); \
// 		fpct_b_re = (b_re); \
// 		fpct_b_im = (b_im); \
// 		test1 = fpr_mul(fpct_a_re, fpct_b_re); \
// 		test2 = fpr_mul(fpct_a_im, fpct_b_im); \
// 		fpct_d_re = fpr_sub( \
// 			test1, \
// 			test2); \
// 		test1 = fpr_mul(fpct_a_re, fpct_b_im); \
// 		test2 = fpr_mul(fpct_a_im, fpct_b_re); \
// 		fpct_d_im = fpr_add( \
// 			test1, \
// 			test2); \
// 		(d_re) = fpct_d_re; \
// 		(d_im) = fpct_d_im; \
// 	} while (0)

/*
 * Squaring of a complex number (d = a * a).
 */
void FPC_SQR(fpr *d_re, fpr *d_im, fpr a_re, fpr a_im) {

	fpr fpct_a_re, fpct_a_im;
	fpr fpct_d_re, fpct_d_im;
	fpct_a_re = (a_re);
	fpct_a_im = (a_im);
	fpct_d_re = fpr_sub(fpr_sqr(fpct_a_re), fpr_sqr(fpct_a_im));
	fpct_d_im = fpr_double(fpr_mul(fpct_a_re, fpct_a_im));
	(*d_re) = fpct_d_re;
	(*d_im) = fpct_d_im;
}

// #define FPC_SQR(d_re, d_im, a_re, a_im)   do { \
// 		fpr fpct_a_re, fpct_a_im; \
// 		fpr fpct_d_re, fpct_d_im; \
// 		fpct_a_re = (a_re); \
// 		fpct_a_im = (a_im); \
// 		fpct_d_re = fpr_sub(fpr_sqr(fpct_a_re), fpr_sqr(fpct_a_im)); \
// 		fpct_d_im = fpr_double(fpr_mul(fpct_a_re, fpct_a_im)); \
// 		(d_re) = fpct_d_re; \
// 		(d_im) = fpct_d_im; \
// 	} while (0)

/*
 * Inversion of a complex number (d = 1 / a).
 */
void FPC_INV(fpr *d_re, fpr *d_im, fpr a_re, fpr a_im) {

	fpr fpct_a_re, fpct_a_im;
	fpr fpct_d_re, fpct_d_im;
	fpr fpct_m;
	fpct_a_re = (a_re);
	fpct_a_im = (a_im);
	fpct_m = fpr_add(fpr_sqr(fpct_a_re), fpr_sqr(fpct_a_im));
	fpct_m = fpr_inv(fpct_m);
	fpct_d_re = fpr_mul(fpct_a_re, fpct_m);
	fpct_d_im = fpr_mul(fpr_neg(fpct_a_im), fpct_m);
	(*d_re) = fpct_d_re;
	(*d_im) = fpct_d_im;
}

// #define FPC_INV(d_re, d_im, a_re, a_im)   do { \
// 		fpr fpct_a_re, fpct_a_im; \
// 		fpr fpct_d_re, fpct_d_im; \
// 		fpr fpct_m; \
// 		fpct_a_re = (a_re); \
// 		fpct_a_im = (a_im); \
// 		fpct_m = fpr_add(fpr_sqr(fpct_a_re), fpr_sqr(fpct_a_im)); \
// 		fpct_m = fpr_inv(fpct_m); \
// 		fpct_d_re = fpr_mul(fpct_a_re, fpct_m); \
// 		fpct_d_im = fpr_mul(fpr_neg(fpct_a_im), fpct_m); \
// 		(d_re) = fpct_d_re; \
// 		(d_im) = fpct_d_im; \
// 	} while (0)

/*
 * Division of complex numbers (d = a / b).
 */
void FPC_DIV(fpr *d_re, fpr *d_im, fpr a_re, fpr a_im, fpr b_re, fpr b_im) {

	fpr fpct_a_re, fpct_a_im;
	fpr fpct_b_re, fpct_b_im;
	fpr fpct_d_re, fpct_d_im;
	fpr fpct_m;
	fpct_a_re = (a_re);
	fpct_a_im = (a_im);
	fpct_b_re = (b_re);
	fpct_b_im = (b_im);
	fpct_m = fpr_add(fpr_sqr(fpct_b_re), fpr_sqr(fpct_b_im));
	fpct_m = fpr_inv(fpct_m);
	fpct_b_re = fpr_mul(fpct_b_re, fpct_m);
	fpct_b_im = fpr_mul(fpr_neg(fpct_b_im), fpct_m);
	fpct_d_re = fpr_sub(fpr_mul(fpct_a_re, fpct_b_re),
			fpr_mul(fpct_a_im, fpct_b_im));
	fpct_d_im = fpr_add(fpr_mul(fpct_a_re, fpct_b_im),
			fpr_mul(fpct_a_im, fpct_b_re));
	(*d_re) = fpct_d_re;
	(*d_im) = fpct_d_im;
}

// #define FPC_DIV(d_re, d_im, a_re, a_im, b_re, b_im)   do { \
// 		fpr fpct_a_re, fpct_a_im; \
// 		fpr fpct_b_re, fpct_b_im; \
// 		fpr fpct_d_re, fpct_d_im; \
// 		fpr fpct_m; \
// 		fpct_a_re = (a_re); \
// 		fpct_a_im = (a_im); \
// 		fpct_b_re = (b_re); \
// 		fpct_b_im = (b_im); \
// 		fpct_m = fpr_add(fpr_sqr(fpct_b_re), fpr_sqr(fpct_b_im)); \
// 		fpct_m = fpr_inv(fpct_m); \
// 		fpct_b_re = fpr_mul(fpct_b_re, fpct_m); \
// 		fpct_b_im = fpr_mul(fpr_neg(fpct_b_im), fpct_m); \
// 		fpct_d_re = fpr_sub( \
// 			fpr_mul(fpct_a_re, fpct_b_re), \
// 			fpr_mul(fpct_a_im, fpct_b_im)); \
// 		fpct_d_im = fpr_add( \
// 			fpr_mul(fpct_a_re, fpct_b_im), \
// 			fpr_mul(fpct_a_im, fpct_b_re)); \
// 		(d_re) = fpct_d_re; \
// 		(d_im) = fpct_d_im; \
// 	} while (0)

/* ==================================================================== */
/*
 * FFT (falcon-fft.c).
 *
 * A real polynomial is represented as an array of N 'fpr' elements.
 * The FFT representation of a real polynomial contains N/2 complex
 * elements; each is stored as two real numbers, for the real and
 * imaginary parts, respectively. See falcon-fft.c for details on the
 * internal representation.
 */

/*
 * Given f and g (in FFT representation), compute 1/(f*adj(f)+g*adj(g))
 * (also in FFT representation). Since the result is auto-adjoint, all its
 * coordinates in FFT representation are real; as such, only the first N/2
 * values of d[] are filled (the imaginary parts are skipped).
 *
 * Array d MUST NOT overlap with either a or b.
 */
void poly_invnorm2_fft(fpr *d, const fpr *a, const fpr *b, unsigned logn) {

	size_t n, hn, u;
	// logn = 10;
	n = (size_t) 1 << logn;
	hn = n >> 1;
	fpr a_re, a_im;
	fpr b_re, b_im;

	for (u = 0; u < hn; u++) {
#pragma HLS LOOP_TRIPCOUNT max=102
		a_re = a[u];
		a_im = a[u + hn];
		b_re = b[u];
		b_im = b[u + hn];
		d[u] = fpr_inv(
				fpr_add(fpr_add(fpr_sqr(a_re), fpr_sqr(a_im)),
						fpr_add(fpr_sqr(b_re), fpr_sqr(b_im))));
	}
}

/*
 * Divide polynomial a by polynomial b, where b is autoadjoint. Both
 * a and b are in FFT representation. Since b is autoadjoint, all its
 * FFT coefficients are real, and the array b contains only N/2 elements.
 * a and b MUST NOT overlap.
 */
void poly_div_autoadj_fft(fpr *a, const fpr *b, unsigned logn) {
	size_t n, hn, u;

	n = (size_t) 1 << logn;
	hn = n >> 1;
	for (u = 0; u < hn; u++) {
#pragma HLS LOOP_TRIPCOUNT max=102
		fpr ib;

		ib = fpr_inv(b[u]);
		a[u] = fpr_mul(a[u], ib);
		a[u + hn] = fpr_mul(a[u + hn], ib);
	}
}

void poly_LDL_fft(const fpr *g00, fpr *g01, fpr *g11, unsigned logn) {
	size_t n, hn, u;

	n = (size_t) 1 << logn;
	hn = n >> 1;
	for (u = 0; u < hn; u++) {
#pragma HLS LOOP_TRIPCOUNT max=102
		fpr g00_re, g00_im, g01_re, g01_im, g11_re, g11_im;
		fpr mu_re, mu_im;

		g00_re = g00[u];
		g00_im = g00[u + hn];
		g01_re = g01[u];
		g01_im = g01[u + hn];
		g11_re = g11[u];
		g11_im = g11[u + hn];
		FPC_DIV(&mu_re, &mu_im, g01_re, g01_im, g00_re, g00_im);
		FPC_MUL(&g01_re, &g01_im, mu_re, mu_im, g01_re, fpr_neg(g01_im));
		FPC_SUB(&g11[u], &g11[u + hn], g11_re, g11_im, g01_re, g01_im);
		g01[u] = mu_re;
		g01[u + hn] = fpr_neg(mu_im);
	}
}

/*
 * Perform an LDL decomposition of an auto-adjoint matrix G, in FFT
 * representation. This is identical to poly_LDL_fft() except that
 * g00, g01 and g11 are unmodified; the outputs d11 and l10 are written
 * in two other separate buffers provided as extra parameters.
 */
void poly_LDLmv_fft(fpr *d11, fpr *l10, const fpr *g00, const fpr *g01,
		const fpr *g11, unsigned logn) {
	size_t n, hn, u;

	n = (size_t) 1 << logn;
	hn = n >> 1;
	for (u = 0; u < hn; u++) {
#pragma HLS LOOP_TRIPCOUNT max=102
		fpr g00_re, g00_im, g01_re, g01_im, g11_re, g11_im;
		fpr mu_re, mu_im;

		g00_re = g00[u];
		g00_im = g00[u + hn];
		g01_re = g01[u];
		g01_im = g01[u + hn];
		g11_re = g11[u];
		g11_im = g11[u + hn];
		FPC_DIV(&mu_re, &mu_im, g01_re, g01_im, g00_re, g00_im);
		FPC_MUL(&g01_re, &g01_im, mu_re, mu_im, g01_re, fpr_neg(g01_im));
		FPC_SUB(&d11[u], &d11[u + hn], g11_re, g11_im, g01_re, g01_im);
		l10[u] = mu_re;
		l10[u + hn] = fpr_neg(mu_im);
	}
}
/*
 * Multiply polynomial a with the adjoint of polynomial b. a and b MUST NOT
 * overlap. This function works only in FFT representation.
 */
void poly_muladj_fft(fpr *a, const fpr *b, unsigned logn) {
	size_t n, hn, u;

	n = (size_t) 1 << logn;
	hn = n >> 1;
	for (u = 0; u < hn; u++) {
#pragma HLS LOOP_TRIPCOUNT max=102
		fpr a_re, a_im, b_re, b_im;

		a_re = a[u];
		a_im = a[u + hn];
		b_re = b[u];
		b_im = fpr_neg(b[u + hn]);
		FPC_MUL(&a[u], &a[u + hn], a_re, a_im, b_re, b_im);
	}
}
/*
 * Multiply polynomial with its own adjoint. This function works only in FFT
 * representation.
 */
void poly_mulselfadj_fft(fpr *a, unsigned logn) {
	/*
	 * Since each coefficient is multiplied with its own conjugate,
	 * the result contains only real values.
	 */
	size_t n, hn, u;
	// logn = 10; 					// only for the example
	n = (size_t) 1 << logn;
	hn = n >> 1;
	for (u = 0; u < hn; u++) {
#pragma HLS LOOP_TRIPCOUNT max=102
		fpr a_re, a_im;

		a_re = a[u];
		a_im = a[u + hn];
		a[u] = fpr_add(fpr_sqr(a_re), fpr_sqr(a_im));
		a[u + hn] = fpr_zero;
	}
}

/*
 * Apply "merge" operation on two polynomials in FFT representation:
 * given f0 and f1, polynomials moduo X^(N/2)+1, this function computes
 * f = f0(x^2) + x*f1(x^2), in FFT representation modulo X^N+1.
 * f MUST NOT overlap with either f0 or f1.
 */
void poly_merge_fft(fpr *f, const fpr *f0, const fpr *f1, unsigned logn) {
	size_t n, hn, qn, u;
	n = (size_t) 1 << logn;
	hn = n >> 1;
	qn = hn >> 1;

	/*
	 * An extra copy to handle the special case logn = 1.
	 */
	f[0] = f0[0];
	f[hn] = f1[0];

	for (u = 0; u < qn; u++) {
#pragma HLS LOOP_TRIPCOUNT max=56
		fpr a_re, a_im, b_re, b_im;
		fpr t_re, t_im;

		a_re = f0[u];
		a_im = f0[u + qn];
		FPC_MUL(&b_re, &b_im, f1[u], f1[u + qn],
				fpr_gm_tab[((u + hn) << 1) + 0],
				fpr_gm_tab[((u + hn) << 1) + 1]);
		FPC_ADD(&t_re, &t_im, a_re, a_im, b_re, b_im);
		f[(u << 1) + 0] = t_re;
		f[(u << 1) + 0 + hn] = t_im;
		FPC_SUB(&t_re, &t_im, a_re, a_im, b_re, b_im);
		f[(u << 1) + 1] = t_re;
		f[(u << 1) + 1 + hn] = t_im;
	}
}

/*
 * Apply "split" operation on a polynomial in FFT representation:
 * f = f0(x^2) + x*f1(x^2), for half-size polynomials f0 and f1
 * (polynomials modulo X^(N/2)+1). f0, f1 and f MUST NOT overlap.
 */
void poly_split_fft(fpr *f0, fpr *f1, const fpr *f, unsigned logn) {
	/*
	 * The FFT representation we use is in bit-reversed order
	 * (element i contains f(w^(rev(i))), where rev() is the
	 * bit-reversal function over the ring degree. This changes
	 * indexes with regards to the Falcon specification.
	 */
	size_t n, hn, qn, u;

	n = (size_t) 1 << logn; //1024
	hn = n >> 1; //512
	qn = hn >> 1; //256

	/*
	 * We process complex values by pairs. For logn = 1, there is only
	 * one complex value (the other one is the implicit conjugate),
	 * so we add the two lines below because the loop will be
	 * skipped.
	 */
	f0[0] = f[0];
	f1[0] = f[hn];

	for (u = 0; u < qn; u++) {
#pragma HLS LOOP_TRIPCOUNT max=56
		fpr a_re, a_im, b_re, b_im;
		fpr t_re, t_im;

		a_re = f[(u << 1) + 0];
		a_im = f[(u << 1) + 0 + hn];
		b_re = f[(u << 1) + 1];
		b_im = f[(u << 1) + 1 + hn];

		FPC_ADD(&t_re, &t_im, a_re, a_im, b_re, b_im);
		f0[u] = fpr_half(t_re);
		f0[u + qn] = fpr_half(t_im);

		FPC_SUB(&t_re, &t_im, a_re, a_im, b_re, b_im);
		FPC_MUL(&t_re, &t_im, t_re, t_im, fpr_gm_tab[((u + hn) << 1) + 0],
				fpr_neg(fpr_gm_tab[((u + hn) << 1) + 1]));
		f1[u] = fpr_half(t_re);
		f1[u + qn] = fpr_half(t_im);
	}
}

/*
 * Negate polynomial a. This function works in both normal and FFT
 * representations.
 */
void poly_neg(fpr *a, unsigned logn) {
	size_t n, u;

	n = (size_t) 1 << logn;
	for (u = 0; u < n; u++) {
#pragma HLS LOOP_TRIPCOUNT max=186
		a[u] = fpr_neg(a[u]);
	}
}

/*
 * Subtract polynomial b from polynomial a. a and b MUST NOT overlap. This
 * function works in both normal and FFT representations.
 */
void poly_sub(fpr *a, const fpr *b, unsigned logn) {
	size_t n, u;

	n = (size_t) 1 << logn;
	for (u = 0; u < n; u++) {
#pragma HLS LOOP_TRIPCOUNT max=186
		a[u] = fpr_sub(a[u], b[u]);
	}
}
/*
 * Given F, G, f and g (in FFT representation), compute F*adj(f)+G*adj(g)
 * (also in FFT representation). Destination d MUST NOT overlap with
 * any of the source arrays.
 */
void poly_add_muladj_fft(fpr *d, const fpr *F, const fpr *G, const fpr *f,
		const fpr *g, unsigned logn) {
	size_t n, hn, u;

	n = (size_t) 1 << logn;
	hn = n >> 1;
	for (u = 0; u < hn; u++) {
#pragma HLS LOOP_TRIPCOUNT max=102
		fpr F_re, F_im, G_re, G_im;
		fpr f_re, f_im, g_re, g_im;
		fpr a_re, a_im, b_re, b_im;

		F_re = F[u];
		F_im = F[u + hn];
		G_re = G[u];
		G_im = G[u + hn];
		f_re = f[u];
		f_im = f[u + hn];
		g_re = g[u];
		g_im = g[u + hn];

		FPC_MUL(&a_re, &a_im, F_re, F_im, f_re, fpr_neg(f_im));
		FPC_MUL(&b_re, &b_im, G_re, G_im, g_re, fpr_neg(g_im));
		d[u] = fpr_add(a_re, b_re);
		d[u + hn] = fpr_add(a_im, b_im);
	}
}

/*
 * Multiply polynomial a with polynomial b. a and b MUST NOT overlap.
 * This function works only in FFT representation.
 */
void poly_mul_fft(fpr *a, const fpr *b, unsigned logn) {
	size_t n, hn, u;
//#pragma HLS array_partition variable=a type=block factor=2
	n = (size_t) 1 << logn;
	hn = n >> 1;
	for (u = 0; u < hn; u++) {
#pragma HLS LOOP_TRIPCOUNT max=102
		fpr a_re, a_im, b_re, b_im;

		a_re = a[u];
		a_im = a[u + hn];
		b_re = b[u];
		b_im = b[u + hn];
		FPC_MUL(&a[u], &a[u + hn], a_re, a_im, b_re, b_im);
	}
}

/*
 * Add polynomial b to polynomial a. a and b MUST NOT overlap. This
 * function works in both normal and FFT representations.
 */
void poly_add(fpr *a, const fpr *b, unsigned logn) {

	size_t n, u;

	n = (size_t) 1 << logn;
	for (u = 0; u < n; u++) {
#pragma HLS LOOP_TRIPCOUNT max=186
		a[u] = fpr_add(a[u], b[u]);
	}
}

/*
 * Compute adjoint of polynomial a. This function works only in FFT
 * representation.
 */
void poly_adj_fft(fpr *a, unsigned logn) {
	size_t n, u;

	n = (size_t) 1 << logn;
	for (u = (n >> 1); u < n; u++) {
#pragma HLS LOOP_TRIPCOUNT max=186
		a[u] = fpr_neg(a[u]);
	}
}

/*
 * Multiply polynomial with a real constant. This function works in both
 * normal and FFT representations.
 */
void poly_mulconst(fpr a[1024], fpr x, unsigned logn) {

	size_t n, u;

	n = (size_t) 1 << logn;

	for (u = 0; u < n; u++) {
#pragma HLS LOOP_TRIPCOUNT max=186
		a[u] = fpr_mul(a[u], x);
	}
}

/*
 * Multiply polynomial a by polynomial b, where b is autoadjoint. Both
 * a and b are in FFT representation. Since b is autoadjoint, all its
 * FFT coefficients are real, and the array b contains only N/2 elements.
 * a and b MUST NOT overlap.
 */
void poly_mul_autoadj_fft(fpr *a, const fpr *b, unsigned logn) {

	size_t n, hn, u;

	n = (size_t) 1 << logn;
	hn = n >> 1;
	for (u = 0; u < hn; u++) {
#pragma HLS LOOP_TRIPCOUNT max=102
		a[u] = fpr_mul(a[u], b[u]);
		a[u + hn] = fpr_mul(a[u + hn], b[u]);
	}
}

void FFT_top(fpr f[1024]) {

	FFT(f, 10);
	FFT(f, 9);
	FFT(f, 8);
	FFT(f, 7);
	FFT(f, 6);
	FFT(f, 5);
	FFT(f, 4);
	FFT(f, 3);
	FFT(f, 2);
	FFT(f, 1);

}

void FFT_stub(fpr f[1024], unsigned logn) {
#pragma HLS INTERFACE m_axi port=f bundle=gmem0 offset=slave depth=1024
#pragma HLS INTERFACE s_axilite port=return

#pragma HLS dataflow
	fpr Stage_R[2][512], Stage_I[2][512];
#pragma HLS array_partition variable=Stage_R dim=1 complete
#pragma HLS array_partition variable=Stage_I dim=1 complete

	unsigned u;
	size_t t, n, hn, m;

	switch (logn) {
	case 10:

		logn = 10;

		n = (size_t) 1 << logn;
		hn = n >> 1;
		t = hn;

		memcpy(Stage_R[0], f, hn * 8);
		memcpy(Stage_I[0], f + hn, hn * 8);

		for (u = 1, m = 2; u < logn; u++, m <<= 1) {
#pragma HLS unroll

			size_t ht, hm, i1, j1;

			ht = t >> 1;
			hm = m >> 1;
			FFT_stage(Stage_R[(u - 1) % 2], Stage_I[(u - 1) % 2],
					Stage_R[u % 2], Stage_I[u % 2], hm, ht, t, m);
			t = ht;
		}
		memcpy(f, Stage_R[(u - 1) % 2], hn * 8);
		memcpy(f + hn, Stage_I[(u - 1) % 2], hn * 8);
		break;
	case 9:

		logn = 9;

		n = (size_t) 1 << logn;
		hn = n >> 1;
		t = hn;

		memcpy(Stage_R[0], f, hn * 8);
		memcpy(Stage_I[0], f + hn, hn * 8);

		for (u = 1, m = 2; u < logn; u++, m <<= 1) {
#pragma HLS unroll

			size_t ht, hm, i1, j1;

			ht = t >> 1;
			hm = m >> 1;
			FFT_stage(Stage_R[(u - 1) % 2], Stage_I[(u - 1) % 2],
					Stage_R[u % 2], Stage_I[u % 2], hm, ht, t, m);
			t = ht;
		}
		memcpy(f, Stage_R[(u - 1) % 2], hn * 8);
		memcpy(f + hn, Stage_I[(u - 1) % 2], hn * 8);
		break;
	case 8:

		logn = 8;

		n = (size_t) 1 << logn;
		hn = n >> 1;
		t = hn;

		memcpy(Stage_R[0], f, hn * 8);
		memcpy(Stage_I[0], f + hn, hn * 8);

		for (u = 1, m = 2; u < logn; u++, m <<= 1) {
#pragma HLS unroll

			size_t ht, hm, i1, j1;

			ht = t >> 1;
			hm = m >> 1;
			FFT_stage(Stage_R[(u - 1) % 2], Stage_I[(u - 1) % 2],
					Stage_R[u % 2], Stage_I[u % 2], hm, ht, t, m);
			t = ht;
		}
		memcpy(f, Stage_R[(u - 1) % 2], hn * 8);
		memcpy(f + hn, Stage_I[(u - 1) % 2], hn * 8);
		break;
	case 7:

		logn = 7;

		n = (size_t) 1 << logn;
		hn = n >> 1;
		t = hn;

		memcpy(Stage_R[0], f, hn * 8);
		memcpy(Stage_I[0], f + hn, hn * 8);

		for (u = 1, m = 2; u < logn; u++, m <<= 1) {
#pragma HLS unroll

			size_t ht, hm, i1, j1;

			ht = t >> 1;
			hm = m >> 1;
			FFT_stage(Stage_R[(u - 1) % 2], Stage_I[(u - 1) % 2],
					Stage_R[u % 2], Stage_I[u % 2], hm, ht, t, m);
			t = ht;
		}
		memcpy(f, Stage_R[(u - 1) % 2], hn * 8);
		memcpy(f + hn, Stage_I[(u - 1) % 2], hn * 8);
		break;
	case 6:

		logn = 6;

		n = (size_t) 1 << logn;
		hn = n >> 1;
		t = hn;

		memcpy(Stage_R[0], f, hn * 8);
		memcpy(Stage_I[0], f + hn, hn * 8);

		for (u = 1, m = 2; u < logn; u++, m <<= 1) {
#pragma HLS unroll

			size_t ht, hm, i1, j1;

			ht = t >> 1;
			hm = m >> 1;
			FFT_stage(Stage_R[(u - 1) % 2], Stage_I[(u - 1) % 2],
					Stage_R[u % 2], Stage_I[u % 2], hm, ht, t, m);
			t = ht;
		}
		memcpy(f, Stage_R[(u - 1) % 2], hn * 8);
		memcpy(f + hn, Stage_I[(u - 1) % 2], hn * 8);
		break;
	case 5:

		logn = 5;

		n = (size_t) 1 << logn;
		hn = n >> 1;
		t = hn;

		memcpy(Stage_R[0], f, hn * 8);
		memcpy(Stage_I[0], f + hn, hn * 8);

		for (u = 1, m = 2; u < logn; u++, m <<= 1) {
#pragma HLS unroll

			size_t ht, hm, i1, j1;

			ht = t >> 1;
			hm = m >> 1;
			FFT_stage(Stage_R[(u - 1) % 2], Stage_I[(u - 1) % 2],
					Stage_R[u % 2], Stage_I[u % 2], hm, ht, t, m);
			t = ht;
		}
		memcpy(f, Stage_R[(u - 1) % 2], hn * 8);
		memcpy(f + hn, Stage_I[(u - 1) % 2], hn * 8);
		break;
	case 4:

		logn = 4;

		n = (size_t) 1 << logn;
		hn = n >> 1;
		t = hn;

		memcpy(Stage_R[0], f, hn * 8);
		memcpy(Stage_I[0], f + hn, hn * 8);

		for (u = 1, m = 2; u < logn; u++, m <<= 1) {
#pragma HLS unroll

			size_t ht, hm, i1, j1;

			ht = t >> 1;
			hm = m >> 1;
			FFT_stage(Stage_R[(u - 1) % 2], Stage_I[(u - 1) % 2],
					Stage_R[u % 2], Stage_I[u % 2], hm, ht, t, m);
			t = ht;
		}
		memcpy(f, Stage_R[(u - 1) % 2], hn * 8);
		memcpy(f + hn, Stage_I[(u - 1) % 2], hn * 8);
		break;
	case 3:

		logn = 3;

		n = (size_t) 1 << logn;
		hn = n >> 1;
		t = hn;

		memcpy(Stage_R[0], f, hn * 8);
		memcpy(Stage_I[0], f + hn, hn * 8);

		for (u = 1, m = 2; u < logn; u++, m <<= 1) {
#pragma HLS unroll

			size_t ht, hm, i1, j1;

			ht = t >> 1;
			hm = m >> 1;
			FFT_stage(Stage_R[(u - 1) % 2], Stage_I[(u - 1) % 2],
					Stage_R[u % 2], Stage_I[u % 2], hm, ht, t, m);
			t = ht;
		}
		memcpy(f, Stage_R[(u - 1) % 2], hn * 8);
		memcpy(f + hn, Stage_I[(u - 1) % 2], hn * 8);
		break;
	case 2:

		logn = 2;

		n = (size_t) 1 << logn;
		hn = n >> 1;
		t = hn;

		memcpy(Stage_R[0], f, hn * 8);
		memcpy(Stage_I[0], f + hn, hn * 8);

		for (u = 1, m = 2; u < logn; u++, m <<= 1) {
#pragma HLS unroll

			size_t ht, hm, i1, j1;

			ht = t >> 1;
			hm = m >> 1;
			FFT_stage(Stage_R[(u - 1) % 2], Stage_I[(u - 1) % 2],
					Stage_R[u % 2], Stage_I[u % 2], hm, ht, t, m);
			t = ht;
		}
		memcpy(f, Stage_R[(u - 1) % 2], hn * 8);
		memcpy(f + hn, Stage_I[(u - 1) % 2], hn * 8);
		break;
	case 1:

		logn = 1;

		n = (size_t) 1 << logn;
		hn = n >> 1;
		t = hn;

		memcpy(Stage_R[0], f, hn * 8);
		memcpy(Stage_I[0], f + hn, hn * 8);

		for (u = 1, m = 2; u < logn; u++, m <<= 1) {
#pragma HLS unroll

			size_t ht, hm, i1, j1;

			ht = t >> 1;
			hm = m >> 1;
			FFT_stage(Stage_R[(u - 1) % 2], Stage_I[(u - 1) % 2],
					Stage_R[u % 2], Stage_I[u % 2], hm, ht, t, m);
			t = ht;
		}
		memcpy(f, Stage_R[(u - 1) % 2], hn * 8);
		memcpy(f + hn, Stage_I[(u - 1) % 2], hn * 8);
		break;
	default:
		return;
	}
}

void FFT_stage(fpr in_r[], fpr in_i[], fpr out_r[], fpr out_i[], int hm, int ht,
		int t, int m) {
	loop2: for (int i1 = 0, j1 = 0; i1 < hm; i1++, j1 += t) {
		size_t j, j2;

		j2 = j1 + ht;
		fpr s_re, s_im;

		s_re = fpr_gm_tab[((m + i1) << 1) + 0];
		s_im = fpr_gm_tab[((m + i1) << 1) + 1];

		loop3: for (j = j1; j < j2; j++) {
#pragma HLS pipeline
#pragma HLS LOOP_TRIPCOUNT max=1
			fpr temp_R = in_r[j + ht] * s_re - in_i[j + ht] * s_im;
			fpr temp_I = in_i[j + ht] * s_re + in_r[j + ht] * s_im;
			out_r[j + ht] = in_r[j] - temp_R;
			out_i[j + ht] = in_i[j] - temp_I;
			out_r[j] = in_r[j] + temp_R;
			out_i[j] = in_i[j] + temp_I;
		}
	}
}

/*
 * Compute FFT in-place: the source array should contain a real
 * polynomial (N coefficients); its storage area is reused to store
 * the FFT representation of that polynomial (N/2 complex numbers).
 *
 * 'logn' MUST lie between 1 and 10 (inclusive).
 */
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

				x_re = f[j];
				x_im = f[j + hn];
				y_re = f[j + ht];
				y_im = f[j + ht + hn];
				FPC_MUL(&y_re, &y_im, y_re, y_im, s_re, s_im);
				FPC_ADD(&f[j], &f[j + hn], x_re, x_im, y_re, y_im);
				FPC_SUB(&f[j + ht], &f[j + ht + hn], x_re, x_im, y_re, y_im);
			}
		}
		t = ht;
	}
}

/*
 * Compute the inverse FFT in-place: the source array should contain the
 * FFT representation of a real polynomial (N/2 elements); the resulting
 * real polynomial (N coefficients of type 'fpr') is written over the
 * array.
 *
 * 'logn' MUST lie between 1 and 10 (inclusive).
 */
void iFFT_top(fpr f[1024]) {
// #pragma HLS INTERFACE m_axi port=f bundle=gmem0 offset=slave depth=1024
// #pragma HLS INTERFACE s_axilite port=return

// iFFT_streaming(f, 10);
// iFFT_streaming(f, 9);
// iFFT_streaming(f, 8);
// iFFT_streaming(f, 7);
// iFFT_streaming(f, 6);
// iFFT_streaming(f, 5);
// iFFT_streaming(f, 4);
// iFFT_streaming(f, 3);
// iFFT_streaming(f, 2);
// iFFT_streaming(f, 1);

	iFFT(f, 10);
	iFFT(f, 9);
	iFFT(f, 8);
	iFFT(f, 7);
	iFFT(f, 6);
	iFFT(f, 5);
	iFFT(f, 4);
	iFFT(f, 3);
	iFFT(f, 2);
	iFFT(f, 1);

}

void iFFT_stub(fpr f[1024], unsigned logn) {
// #pragma HLS INTERFACE m_axi port=f bundle=gmem0 offset=slave depth=1024
// #pragma HLS INTERFACE s_axilite port=return

#pragma HLS dataflow

	size_t u, n, hn, t, m, i;

	fpr Stage_R[2][512], Stage_I[2][512];
#pragma HLS array_partition variable=Stage_R dim=1 complete
#pragma HLS array_partition variable=Stage_I dim=1 complete

	switch (logn) {
	case 10:
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

		if (logn > 0) {
			fpr ni;

			ni = fpr_p2_tab[logn];
			for (u = 0; u < n / 2; u++) {
				f[u] = fpr_mul(Stage_R[(i - 1) % 2][u], ni);
				f[u + hn] = fpr_mul(Stage_I[(i - 1) % 2][u], ni);
			}
		}

		break;
	case 9:
		n = (size_t) 1 << 9;
		t = 1;
		m = n;
		hn = n >> 1;
		u = 9;

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

		if (logn > 0) {
			fpr ni;

			ni = fpr_p2_tab[logn];
			for (u = 0; u < n / 2; u++) {
				f[u] = fpr_mul(Stage_R[(i - 1) % 2][u], ni);
				f[u + hn] = fpr_mul(Stage_I[(i - 1) % 2][u], ni);
			}
		}

		break;
	case 8:
		n = (size_t) 1 << 8;
		t = 1;
		m = n;
		hn = n >> 1;
		u = 8;

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

		if (logn > 0) {
			fpr ni;

			ni = fpr_p2_tab[logn];
			for (u = 0; u < n / 2; u++) {
				f[u] = fpr_mul(Stage_R[(i - 1) % 2][u], ni);
				f[u + hn] = fpr_mul(Stage_I[(i - 1) % 2][u], ni);
			}
		}

		break;
	case 7:
		n = (size_t) 1 << 7;
		t = 1;
		m = n;
		hn = n >> 1;
		u = 7;

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

		if (logn > 0) {
			fpr ni;

			ni = fpr_p2_tab[logn];
			for (u = 0; u < n / 2; u++) {
				f[u] = fpr_mul(Stage_R[(i - 1) % 2][u], ni);
				f[u + hn] = fpr_mul(Stage_I[(i - 1) % 2][u], ni);
			}
		}

		break;
	case 6:
		n = (size_t) 1 << 6;
		t = 1;
		m = n;
		hn = n >> 1;
		u = 6;

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

		if (logn > 0) {
			fpr ni;

			ni = fpr_p2_tab[logn];
			for (u = 0; u < n / 2; u++) {
				f[u] = fpr_mul(Stage_R[(i - 1) % 2][u], ni);
				f[u + hn] = fpr_mul(Stage_I[(i - 1) % 2][u], ni);
			}
		}

		break;
	case 5:
		n = (size_t) 1 << 5;
		t = 1;
		m = n;
		hn = n >> 1;
		u = 5;

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

		if (logn > 0) {
			fpr ni;

			ni = fpr_p2_tab[logn];
			for (u = 0; u < n / 2; u++) {
				f[u] = fpr_mul(Stage_R[(i - 1) % 2][u], ni);
				f[u + hn] = fpr_mul(Stage_I[(i - 1) % 2][u], ni);
			}
		}

		break;
	case 4:
		n = (size_t) 1 << 4;
		t = 1;
		m = n;
		hn = n >> 1;
		u = 4;

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

		if (logn > 0) {
			fpr ni;

			ni = fpr_p2_tab[logn];
			for (u = 0; u < n / 2; u++) {
				f[u] = fpr_mul(Stage_R[(i - 1) % 2][u], ni);
				f[u + hn] = fpr_mul(Stage_I[(i - 1) % 2][u], ni);
			}
		}

		break;
	case 3:
		n = (size_t) 1 << 3;
		t = 1;
		m = n;
		hn = n >> 1;
		u = 3;

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

		if (logn > 0) {
			fpr ni;

			ni = fpr_p2_tab[logn];
			for (u = 0; u < n / 2; u++) {
				f[u] = fpr_mul(Stage_R[(i - 1) % 2][u], ni);
				f[u + hn] = fpr_mul(Stage_I[(i - 1) % 2][u], ni);
			}
		}

		break;
	case 2:
		n = (size_t) 1 << 2;
		t = 1;
		m = n;
		hn = n >> 1;
		u = 2;

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

		if (logn > 0) {
			fpr ni;

			ni = fpr_p2_tab[logn];
			for (u = 0; u < n / 2; u++) {
				f[u] = fpr_mul(Stage_R[(i - 1) % 2][u], ni);
				f[u + hn] = fpr_mul(Stage_I[(i - 1) % 2][u], ni);
			}
		}

		break;
	case 1:
		n = (size_t) 1 << 1;
		t = 1;
		m = n;
		hn = n >> 1;
		u = 1;

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

		if (logn > 0) {
			fpr ni;

			ni = fpr_p2_tab[logn];
			for (u = 0; u < n / 2; u++) {
				f[u] = fpr_mul(Stage_R[(i - 1) % 2][u], ni);
				f[u + hn] = fpr_mul(Stage_I[(i - 1) % 2][u], ni);
			}
		}

		break;
	default:
		return;
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
			s_im = fpr_neg(fpr_gm_tab[((hm + i1) << 1) + 1]);
			for (j = j1; j < j2; j++) {
#pragma HLS LOOP_TRIPCOUNT min=0 max=2305
#pragma HLS PIPELINE II=28
				fpr x_re, x_im, y_re, y_im;

				x_re = f[j];
				x_im = f[j + hn];
				y_re = f[j + t];
				y_im = f[j + t + hn];
				FPC_ADD(&f[j], &f[j + hn], x_re, x_im, y_re, y_im);
				FPC_SUB(&x_re, &x_im, x_re, x_im, y_re, y_im);
				FPC_MUL(&f[j + t], &f[j + t + hn], x_re, x_im, s_re, s_im);
			}
		}
		t = dt;
		m = hm;
	}

	/*
	 * Last iteration is a no-op, provided that we divide by N/2
	 * instead of N. We need to make a special case for logn = 0.
	 */
	//if (logn > 0) {
	fpr ni;
	ni = fpr_p2_tab[logn];
	for (u = 0; u < n; u++) {
#pragma HLS PIPELINE II=18
		f[u] = fpr_mul(f[u], ni);
	}
	//}
}

