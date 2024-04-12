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


void test_iFFT(void) {
	fpr 	 fft_out[SIZE];
	fpr      ifft_out[SIZE];
	memcell  in_fft[SIZE];
	memcell  in_ifft[SIZE];
	int error_cnt = 0;
	for (int i = 0; i < SIZE; i++)
		in_fft[i].f = FFT_in[i];
	fiFFNTT(in_fft, fft_req, 0); // FFT
	for (int j = 0; j < SIZE; j++)
		fft_out[j] = in_fft[j].f;

	for (int k = 0; k < SIZE; k++)
		in_ifft[k].f = fft_out[k];
	fiFFNTT(in_ifft, fft_req, 1); // iFFT
	for (int l = 0; l < SIZE; l++)
		ifft_out[l] = in_ifft[l].f;

	fpr fft, ifft, golden_fft, golden_ifft;
	int round_factor = 10000;
	for (int m = 0; m < 1024; m++) {
		ifft = round(ifft_out[m] * round_factor);
		fft  = round(fft_out[m] * round_factor);
		golden_fft  = round(FFT_out[m] * round_factor);
		golden_ifft = round(FFT_in[m] * round_factor);
		if (fft != golden_fft) {
			printf("%4d cal = %15f, cor = %15f \n", m, fft, golden_fft);
			error_cnt += 1;
		}
		if (ifft != golden_ifft) {
			printf("%4d cal = %15f, cor = %15f \n", m, ifft, golden_ifft);
			error_cnt += 1;
		}
	}
	printf("\n=====================================\n");
	if (error_cnt == 0) printf("FFT/iFFT Passed!!!");
	else                printf("FFT/iFFT Failed!!!");
	printf("\n=====================================\n");
}

void test_iNTT(void) {
	fpr 	 ntt_out[SIZE];
	fpr      intt_out[SIZE];
	memcell  in_ntt[SIZE];
	memcell  in_intt[SIZE];
	int error_cnt = 0;
	for (int i = 0; i < SIZE; i++)
		in_ntt[i].u16.n0 = NTT_in[i];
	fiFFNTT(in_ntt, ntt_req, 0); // NTT
	for (int j = 0; j < SIZE; j++)
		ntt_out[j] = in_ntt[j].u16.n0;

	for (int k = 0; k < SIZE; k++)
		in_intt[k].u16.n0 = ntt_out[k];
	fiFFNTT(in_intt, ntt_req, 1); // iNTT
	for (int l = 0; l < SIZE; l++)
		intt_out[l] = in_intt[l].u16.n0;

	uint16_t ntt, intt, golden_ntt, golden_intt;
	int round_factor = 100000;
	for (int m = 0; m < 1024; m++) {
		intt = intt_out[m];
		ntt  = ntt_out[m];
		golden_ntt  = NTT_out[m];
		golden_intt = NTT_in[m];
		if (ntt != golden_ntt) {
			printf("%4d cal = %d, cor = %d \n", m, ntt, golden_ntt);
			error_cnt += 1;
		}
		if (intt != golden_intt) {
			printf("%4d cal = %d, cor = %d \n", m, intt, golden_intt);
			error_cnt += 1;
		}
	}
	printf("\n=====================================\n");
	if (error_cnt == 0) printf("NTT/iNTT Passed!!!");
	else                printf("NTT/iNTT Failed!!!");
	printf("\n=====================================\n");
}



int
main(void) {

	test_iFFT();
	test_iNTT();

	return 0;
}



