#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <time.h>
#include <math.h>

#include "header.h"
#include "tb_data.h"



void test_iNTT(void) {
	int error_cnt = 0;

	iNTT(iNTT_in);

	for (int j = 0; j < 1024; j++) {
		if (iNTT_in[j] != iNTT_out[j]) {
			printf("%d %d \n", iNTT_in[j], iNTT_out[j]);
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
