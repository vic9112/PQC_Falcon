#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <time.h>
#include <math.h>

#include "header.h"
#include "tb_data.h"



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



int
main(void) {
	
	test_NTT();
	
	return 0;
}
