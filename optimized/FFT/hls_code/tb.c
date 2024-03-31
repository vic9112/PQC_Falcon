#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>
#include <math.h>

#include "header.h"
#include "tb_data.h"


void test_FFT(void)
{
	fpr fft_out[1024];
	FFT(FFT_in);
    for(int i = 0; i<1024;++i)
            if(FFT_in[i] != FFT_out[i])
            printf("%d cal = %lf, cor = %lf \n", i, FFT_in[i], FFT_out[i]);
        printf("\n \n");
    printf("Test Finished \n");
}



int
main(void) {

	test_FFT();
	return 0;
}
