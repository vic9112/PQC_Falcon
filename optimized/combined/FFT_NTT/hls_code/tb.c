#include <stdint.h>
#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <inttypes.h>
#include <stdbool.h>
#include <math.h>
#include <time.h>
#include <math.h>

#include "header.h"
#include "tb_data.h"


void test_combine(void) {
	fpr 	 fft_out[SIZE];
	uint16_t ntt_out[SIZE];
	memcell  in[SIZE];
	int error_cnt = 0;
	for (int i = 0; i < SIZE; i++)
		in[i].f = FFT_in[i];
	FFT_NTT(in, fft_req);
	for (int j = 0; j < SIZE; j++)
		fft_out[j] = in[j].f;


	for (int k = 0; k < SIZE; k++)
		in[k].u16.n0 = NTT_in[k];
	FFT_NTT(in, ntt_req);
	for (int l = 0; l < SIZE; l++)
		ntt_out[l] = in[l].u16.n0;

	for (int m = 0; m < 1024; m++) {
		if (ntt_out[m] != NTT_out[m]) {
			printf("NTT error at %d \n", m);
		error_cnt += 1;
		}
		if(round(fft_out[m] * 1000000) != round(FFT_out[m] * 1000000)) {
		    printf("FFT error at %d cal = %.17f, cor = %.17f \n", m, fft_out[m], FFT_out[m]);
		    error_cnt += 1;
		}
	}

	printf("\n\n");
	if (error_cnt == 0) printf("Passed!!");
	else				printf("Failed!!");
	printf("\n\n");

}


int
main(void) {

	test_combine();

	return 0;
}
