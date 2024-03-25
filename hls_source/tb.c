#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>
#include <math.h>

#include "header.h"
#include "tb_data.h"


/*
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
*/


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
