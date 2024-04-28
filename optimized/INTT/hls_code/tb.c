#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <time.h>
#include <math.h>

#include "header.h"
#include "tb_data.h"



void test_iNTT(void) {
	uint16_t *intt_in1, *intt_in2, *intt_out1;
	intt_in1 = (uint16_t *) iNTT_in;
	uint16_t tmp[1024];
	intt_out1 = (uint16_t *) tmp;

	int error_cnt = 0;

	iNTT(intt_in1);

	for (int j = 0; j < 1024; j++) {
		if (intt_in1[j] != iNTT_out[j]) {
			//printf("Error at %d\n", j);
			printf("%d %d \n", intt_in1[j], iNTT_out[j]);
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
	
	test_iNTT();
	
	return 0;
}
