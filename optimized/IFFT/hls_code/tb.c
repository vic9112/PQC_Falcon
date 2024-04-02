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


int
main(void)
{



	iFFT_stub(FFT_out);
	int fo, fi;
	for (int i = 0; i < 1024; ++i) {
		fo = round(FFT_out[i] * 100000);
		fi = round(FFT_in[i] * 100000);
		if (fo != fi) {
			printf("%4d cal = %15f, cor = %15f \n", i, FFT_out[i], FFT_in[i]);
		} else {
			printf("%4d pass cal = %15f, cor = %15f \n", i, FFT_out[i], FFT_in[i]);
		}
	}
	printf("Test Finished \n");


	return 0;
}
