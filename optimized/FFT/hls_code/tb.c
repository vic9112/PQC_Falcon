#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <time.h>
#include <math.h>

#include "header.h"
#include "tb_data.h"

/*
void test_FFT(void)
{
	fpr fft_out[1024];
	int error_cnt = 0;
	FFT(FFT_in);
    for(int i = 0; i<1024;++i)
        if(round(FFT_in[i] * 1000000) != round(FFT_out[i] * 1000000)) {
            printf("%d cal = %.17f, cor = %.17f \n", i, FFT_in[i], FFT_out[i]);
            error_cnt += 1;
        }
    printf("\n \n");
    if (error_cnt == 0) printf("Passed!!\n");
    else				printf("Failed!!\n");
    printf("Test Finished \n");
}
*/
/*
void test_NTT(void) {
	uint16_t *ntt_in1, *ntt_in2, *ntt_out1;
	ntt_in1 = (uint16_t *)NTT_in;
	uint16_t tmp[1024];
	ntt_out1 = (uint16_t *) tmp;

	int error_cnt = 0;

	NTT(ntt_in1);

	for (int j = 0; j < 1024; j++) {
		if (ntt_in1[j] != NTT_out[j]) {
			printf("Error at %d", j);
			error_cnt += 1;
		}
	}
	printf("\n\n");
	if (error_cnt == 0) printf("Passed!!");
	else				printf("Failed!!");
	printf("\n\n");
}
*/


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


void test_index(int t, int m) {
	int hm, ht;
	hm = m >> 1;
	ht = t >> 1;
	int gm_or[256];
	int gm_op[256];
	int in_or[256];
	int in_op[256];

	int or_in = 0;
	int op_in = 0;

	int error_cnt = 0;
	//printf("Original");

	SECTION: for (int k = 0, i = 0; k < hm; k++, i += t) {
	#pragma HLS UNROLL factor=4
			int j, j2;
			j2 = i + ht;
			int gm_re, gm_im;
			gm_re = ((m + k) << 1) + 0;
			gm_im = ((m + k) << 1) + 1;
			BUTTERFLY: for (j = i; j < j2; j++) {
				//printf("gm %d, index %d \n", k, j);
				gm_or[or_in] = gm_re;
				in_or[or_in] = j;
				or_in += 1;
			}
	}

	for (int n = 0; n < 256; n++) {
		int gm_re_new, gm_im_new;
		unsigned short in = n + ((n / ht) * ht);
		unsigned short in_gm = n / ht;
		gm_re_new = ((m + in_gm) << 1) + 0;
		gm_im_new = ((m + in_gm) << 1) + 1;
		gm_op[n] = gm_re_new;
		in_op[n] = in;
		/*
		if ((in + 1) % ht == 0) {
			in += ht + 1;
			in_gm += 1;
		} else {
			in += 1;
		}
		*/
	}

	for (int g = 0; g < 256; g++) {
		if (gm_op[g] != gm_or[g]) {
			printf("%d GM not equal \n", g);
			error_cnt += 1;
		}
		if (in_op[g] != in_or[g]) {
			printf("%d index not equal \n", g);
			error_cnt += 1;
		}
	}

	if (error_cnt == 0) printf("t = %d, m = %d passed\n", t, m);
	else				printf("t = %d, m = %d failed\n", t, m);

}

void test_gm(void) {
	//for (int i = 0; i < 1024; i++) {
		//if (gm_re_tab[i] != fpr_gm_tab[(i << 1) + 0]) printf("%d not equal", i);
		//if (gm_im_tab[i] != fpr_gm_tab[(i << 1) + 1]) printf("%d not equal", i);
	//}
}


int
main(void) {

	// test_python_h();
	// test_FFT();
	// test_NTT();
	// test_gm();
	test_iFFT();
	// test_FFT_skeleton();
/*
	test_index(512, 2);
	test_index(256, 4);
	test_index(128, 8);
	test_index(64, 16);
	test_index(32, 32);
	test_index(16, 64);
	test_index(8, 128);
	test_index(4, 256);
	test_index(2, 512);
*/
	return 0;
}
