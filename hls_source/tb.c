#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>
#include <math.h>

#include "header.h"
#include "tb_data.h"

static void *
xmalloc(size_t len)
{
	void *buf;

	if (len == 0) {
		return NULL;
	}
	buf = malloc(len);
	if (buf == NULL) {
		fprintf(stderr, "memory allocation error\n");
		exit(EXIT_FAILURE);
	}
	return buf;
}

static void
xfree(void *buf)
{
	if (buf != NULL) {
		free(buf);
	}
}

static void
check_eq(const void *a, const void *b, size_t len, const char *banner)
{
	size_t u;

	if (memcmp(a, b, len) == 0) {
		return;
	}
	fprintf(stderr, "%s: wrong value:\n", banner);
	fprintf(stderr, "a: ");
	for (u = 0; u < len; u ++) {
		fprintf(stderr, "%02x", ((const unsigned char *)a)[u]);
	}
	fprintf(stderr, "\n");
	fprintf(stderr, "b: ");
	for (u = 0; u < len; u ++) {
		fprintf(stderr, "%02x", ((const unsigned char *)b)[u]);
	}
	fprintf(stderr, "\n");
	exit(EXIT_FAILURE);
}

static void test_python_h(void){
	int8_t f[1024], g[1024];
	uint16_t h[1024];
	int i;
    for (i = 0; i<1024;++i){
    	f[i]=py_f[i];
    	g[i]=py_g[i];
    }

	uint8_t tmp2[4*1024];

    printf("compute_pk test data from python\n");
	if (!compute_public(h,f, g, 10, tmp2)) {
	}

    int cnt=0;
	for(i = 0; i<1024;++i){
           if(h[i]!=py_h[i]){ printf("cal = %d, cor = %d \n", h[i], py_h[i]);
           cnt=cnt+1;
           }
		}
	if(cnt==0)printf("pass\n");

}

static void
test_sign_self(const int8_t *f, const int8_t *g,
	const int8_t *F, const int8_t *G, const uint16_t *h_src,
	unsigned logn, uint8_t *tmp)
{
	int i;
	size_t n;
	inner_shake256_context rng;
	char buf[20];
	uint16_t *h, *hm, *hm2;
	int16_t *sig;
	uint8_t *tt;
	fpr *expanded_key;

	n = (size_t)1 << logn;
	h = (uint16_t *)tmp;
	hm = h + n;
	sig = (int16_t *)(hm + n);
	hm2 = (uint16_t *)sig;
	tt = (uint8_t *)(sig + n);
	if (logn == 1) {
		tt += 4;
	}

	memcpy(h, h_src, n * sizeof *h);
	to_ntt_monty(h, logn);

	/* sprintf(buf, "sign %u", logn); */
	memcpy(buf, "sign 0", 7);
	buf[5] = '0' + logn;

	i_shake256_init(&rng);
	i_shake256_inject(&rng, (uint8_t *)buf, strlen(buf));
	i_shake256_flip(&rng);


	// for (i = 0; i < 100; i ++) {
	// 	uint8_t msg[50];  /* nonce + plain */
	// 	inner_shake256_context sc, sc2;
	// 	size_t u;

	// 	i_shake256_extract(&rng, msg, sizeof msg);

	// 	i_shake256_init(&sc);
	// 	i_shake256_inject(&sc, msg, sizeof msg);
	// 	i_shake256_flip(&sc);
	// 	sc2 = sc;
	// 	hash_to_point_vartime(&sc, hm, logn);
	// 	hash_to_point_ct(&sc2, hm2, logn, tt);
	// 	for (u = 0; u < n; u ++) {
	// 		if (hm2[u] != hm[u]) {
	// 			fprintf(stderr, "hash_to_point() mismatch\n");
	// 			exit(EXIT_FAILURE);
	// 		}
	// 	}
	// 	sign_dyn(sig, &rng, f, g, F, G, hm, logn, tt);
	// 	if (!verify_raw(hm, sig, h, logn, tt)) {
	// 		fprintf(stderr, "self signature (dyn) not verified\n");
	// 		exit(EXIT_FAILURE);
	// 	}

	// 	if (i % 10 == 0) {
	// 		printf(".");
	// 		fflush(stdout);
	// 	}
	// }

	expanded_key = (fpr *)tt;
	tt = (uint8_t *)expanded_key + (8 * logn + 40) * n;
	expand_privkey(expanded_key, f, g, F, G);

		// for(int k = 0; k<15360; ++k)
		// // for(int k = 0; k<7168; ++k)
		// 	if(k % 30 == 0)
		// 		printf("%lf, \n ", expanded_key[k]);
		// 	else
		// 		printf("%lf, ", expanded_key[k]);
		// printf("\n \n");
	
	for (i = 0; i < 1; i ++) {
		uint8_t msg[50];  /* nonce + plain */
		inner_shake256_context sc;


		i_shake256_init(&sc);
		i_shake256_inject(&sc, msg, sizeof msg);
		i_shake256_flip(&sc);

		uint16_t hmtest [1024];
		hash_to_point_vartime(&sc, hm, logn);
		sign_tree(sig, expanded_key, hmtest, msg, seed_nist);

		printf("sig  \n");
		for(int k = 0; k<1024; ++k)
			if(k % 30 == 0)
				printf("%d, \n ", sig[k]);
			else
				printf("%d, ", sig[k]);
		printf("\n \n");

		if (!verify_raw(hmtest, sig, h, logn, tt)) {
			fprintf(stderr, "self signature (dyn) not verified\n");
			exit(EXIT_FAILURE);
		}

		if (i % 10 == 0) {
			printf(".");
			fflush(stdout);
		}
	}

	printf(" ");
	fflush(stdout);
}

void test_keygen_inner(unsigned logn, uint8_t *tmp)
{
	size_t n;
	int8_t *f, *g, *F, *G;
	uint16_t *h, *hm, *h2;
	int16_t *sig, *s1;
	uint8_t *tt;
	// int i;
	// inner_shake256_context rng;
	// char buf[20];

	// printf("[%u]", logn);
	// fflush(stdout);

	// /* sprintf(buf, "keygen %u", logn); */
	// memcpy(buf, "keygen 0", 9);
	// buf[7] = '0' + logn;

	// printf("strlen(buf) = %d \n", strlen(buf));
	// i_shake256_init(&rng);
	// i_shake256_inject(&rng, (uint8_t *)buf, strlen(buf));
	// i_shake256_flip(&rng);




	// printf("f  \n");
	// for(int i = 0; i<25;++i)
	// 	if(i % 30 == 0)
	// 		printf("%ld, \n ", rng.st.A[i]);
	// 	else
	// 		printf("%ld, ", rng.st.A[i]);
	// printf("\n \n");


	// printf("dbuf  \n");
	// for(int i = 0; i<200;++i)
	// 	if(i % 30 == 0)
	// 		printf("%d, \n ", rng.st.dbuf[i]);
	// 	else
	// 		printf("%d, ", rng.st.dbuf[i]);
	// printf("\n \n");




	n = (size_t)1 << logn;
	f = (int8_t *)tmp;
	g = f + n;
	F = g + n;
	G = F + n;
	h = (uint16_t *)(G + n);
	h2 = h + n;
	hm = h2 + n;
	sig = (int16_t *)(hm + n);
	s1 = sig + n;
	tt = (uint8_t *)(s1 + n);
	if (logn == 1) {
			tt += 4;
		}

	uint32_t out_number[100];

    keygen(f, g, F, G, h, seed_nist_key);

	int i = 0;

	// printf("f  \n");
	// for(i = 0; i<1024;++i)
	// 	if(i % 30 == 0)
	// 		printf("%d, \n ", g[i]);
	// 	else
	// 		printf("%d, ", g[i]);
	// printf("\n \n");

	// printf("g  \n");
	// for(i = 0; i<1024;++i)
	// 	if(i % 30 == 0)
	// 		printf("%d, \n ", g[i]);
	// 	else
	// 		printf("%d, ", g[i]);
	// printf("\n \n");

	// 			printf("F  \n");
	// for(i = 0; i<1024;++i)
	// 	if(i % 30 == 0)
	// 		printf("%d, \n ", F[i]);
	// 	else
	// 		printf("%d, ", F[i]);
	// printf("\n \n");
	// 			printf("G  \n");
	// for(i = 0; i<1024;++i)
	// 	if(i % 30 == 0)
	// 		printf("%d, \n ", G[i]);
	// 	else
	// 		printf("%d, ", G[i]);
	// printf("\n \n");
	// 			printf("h  \n");
	// for(i = 0; i<1024;++i)
	// 	if(i % 30 == 0)
	// 		printf("%d, \n ", h[i]);
	// 	else
	// 		printf("%d, ", h[i]);
	// printf("\n \n");

	for(i = 0; i<1024;++i)
		if(f[i] != f_nist[i]){
            printf("%d cal = %d, cor = %d", i, f[i], f_nist[i]);
			// break;
		}
	printf("f correct \n \n");

	for(i = 0; i<1024;++i)
		if(g[i] != g_nist[i])
            printf("%d cal = %d, cor = %d", i, g[i], g_nist[i]);
	printf("g correct \n \n");

	for(i = 0; i<1024;++i)
		if(G[i] != G_nist[i]){
            printf("%d cal = %d, cor = %d", i, G[i], G_nist[i]);
			// break;
		}
	printf("G correct \n \n");

	for(i = 0; i<1024;++i)
		if(F[i] != F_nist[i]){
            printf("%d cal = %d, cor = %d", i, F[i], F_nist[i]);
			// break;
		}
	printf("F correct \n \n");

	for(i = 0; i<1024;++i)
		//if(h[i] != h_nist[i]){
            printf(" cal = %d, cor = %d\n", h[i], h_nist[i]);
			// break;
		//}
	printf("h correct \n \n");


	// for(i = 0; i<100;++i)
	// printf("out number = %d \n", out_number[i]);

}

static void
test_keygen(void)
{
	uint8_t *tmp;
	size_t tlen;
	unsigned logn;

	printf("Test keygen: ");
	fflush(stdout);
	tlen = 90112;
	tmp = xmalloc(tlen);
	// for (logn = 1; logn <= 10; logn ++) {
		test_keygen_inner(10, tmp);
	// }
	xfree(tmp);
	printf("done.\n");
	fflush(stdout);
}


static void
test_sign(void)
{
	uint8_t *tmp;
	size_t tlen;

	printf("Test sign: ");
	fflush(stdout);

	tlen = 178176;
	tmp = xmalloc(tlen);

	// test_sign_self(ntru_f_16, ntru_g_16, ntru_F_16, ntru_G_16,
	// 	ntru_h_16, 4, tmp);
	// test_sign_self(ntru_f_512, ntru_g_512, ntru_F_512, ntru_G_512,
	// 	ntru_h_512, 9, tmp);
	test_sign_self(ntru_f_1024, ntru_g_1024, ntru_F_1024, ntru_G_1024,
		ntru_h_1024, 10, tmp);

	xfree(tmp);

	printf("done.\n");
	fflush(stdout);
}

void test_expand_key(void)
{
	// (8*logn+40)*2^logn == 15360
	fpr expanded_key[15360];
	expand_privkey(expanded_key, ntru_f_1024, ntru_g_1024, ntru_F_1024, ntru_G_1024);
}

void test_FFT(void)
{

	FFT(FFT_in,10);
    for(int i = 0; i<1024;++i)
            if(FFT_in[i] != FFT_out[i])
            printf("%d cal = %lf, cor = %lf ", i, FFT_in[i], FFT_out[i]);
        printf("\n \n");
    printf("Test Finished \n");

}

void test_iFFT(void) {
	iFFT(FFT_out, 10);
	int fo, fi;
	for (int i = 0; i < 1024; ++i) {
		fo = round(FFT_out[i] * 100000);
		fi = round(FFT_in[i] * 100000);
		if (fo != fi) {
			printf("%4d cal = %15f, cor = %15f \n", i, FFT_out[i], FFT_in[i]);
		} else {
			printf("%4d pass\n", i);
		}
	}
	printf("Test Finished \n");
}


void test_bug(void)
{
	double in = -1.23;
	double out;
	double out2;

	int32_t out_int;

	bug(&in, &out, &out2, &out_int);

	printf("double in = %lf \n", in);	
	printf("double out = %lf \n", out);	
	printf("double out2 = %lf \n", out2);	

	printf("int out = %d \n", out_int);	
}

static void
test_vrfy(void)
{
	uint8_t *tmp;
	size_t tlen;

	printf("Test verify: ");
	fflush(stdout);
	tlen = 8192;
	tmp = xmalloc(tlen);


	// test_vrfy_inner(9, ntru_h_512, KAT_SIG_512);
	test_vrfy_inner(ntru_h_1024, KAT_SIG_1024_sig, KAT_SIG_1024_msg, KAT_SIG_1024_nonce);

	xfree(tmp);
	printf("done.\n");
	fflush(stdout);
}

int
main(void)
{


	// test_SHAKE256();
	// test_codec();
	// test_vrfy();
	// test_RNG();
	// test_FP_block();
	// test_poly();
	// test_gaussian0_sampler();
	// test_sampler();
	// test_sign();
	// expand_privkey()
	// test_keygen();
	// test_python_h();
	// fpr f[1024];
	// for (int i = 0; i < 1024; i++)
	// {
	// 	f[i] = 1;
	// }
	// iFFT(f, 10);
	// test_external_API();
	// test_nist_KAT(9, "a57400cbaee7109358859a56c735a3cf048a9da2");
	// test_nist_KAT(10, "affdeb3aa83bf9a2039fa9c17d65fd3e3b9828e2");
	/* test_speed(); */
	// test_FFT();
	test_iFFT();
	// test_expand_key();
	// test_bug();

	return 0;
}
