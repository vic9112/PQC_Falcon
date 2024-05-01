#include "header.h"

/*=========================================================================/
/  Combine FFT/iFFT/NTT/iNTT in one hardware and share their memory usage  /
/=========================================================================*/

void iNTT(uint16_t a[SIZE]) {
#pragma HLS INTERFACE m_axi port=a offset=slave depth=1024
#pragma HLS INTERFACE s_axilite port=return

	// Local share buffer
	uint16_t  in_buf[SIZE];
	uint16_t out_buf[SIZE];
#pragma HLS INLINE off

	in_copy(a, in_buf);
	stages(in_buf, out_buf);
	out_copy(out_buf, a);

}


void in_copy(uint16_t in_buf[SIZE], uint16_t out_buf[SIZE]) {
#pragma HLS INLINE off
	INMEMCPY: for (int i = 0; i < SIZE; i++) {
	#pragma HLS PIPELINE II=1
		out_buf[i] = in_buf[i];
	}
}

void out_copy(uint16_t in_buf[SIZE], uint16_t out_buf[SIZE]) {
#pragma HLS INLINE off
	unsigned short logn = 10;
	uint32_t ni = 4091;
	uint32_t tmp1, tmp2, tmp3;
	niCONST: for (int i = SIZE; i > 1; i >>= 1) {
		ni += Q & -(ni & 1);
		ni = (ni >> 1);
	}
	OUTMEMCPY: for (int j = 0; j < SIZE; j++) {
	#pragma HLS PIPELINE II=3
		monty_mul(&tmp3, in_buf[j], ni);
		out_buf[j] = (uint16_t)tmp3;
	}
}

void stages(uint16_t in[SIZE], uint16_t out[SIZE]) {
	uint16_t stage0[SIZE], stage1[SIZE];
#pragma HLS DEPENDENCE dependent=false type=inter variable=stage0
#pragma HLS DEPENDENCE dependent=false type=inter variable=stage1
#pragma HLS INLINE off

	PE(in    , stage1, 1,1024);
	PE(stage1, stage0, 2, 512);
	PE(stage0, stage1, 4, 256);
	PE(stage1, stage0, 8, 128);
	PE(stage0, stage1, 16, 64);
	PE(stage1, stage0, 32, 32);
	PE(stage0, stage1, 64, 16);
	PE(stage1, stage0, 128, 8);
	PE(stage0, stage1, 256, 4);
	PE(stage1,    out, 512, 2);
}

void PE(uint16_t in[SIZE], uint16_t out[SIZE], unsigned short int t, unsigned short int m) {
#pragma HLS DEPENDENCE dependent=false type=inter variable=in
#pragma HLS DEPENDENCE dependent=false type=inter variable=out
	unsigned short int ht = t >> 1; // ht: half t: section size
	unsigned short int hm = m >> 1; // hm: half m
	// Variables of NTT
	uint32_t gm;
	uint32_t u, v, w;
	uint32_t tmp1, tmp2;
	BUTTERFLY: for (int n = 0; n < 512; n++) {
#pragma HLS PIPELINE II=2
		unsigned short i = n + ((n / t) * t);
		unsigned short i_gm = n / t;
		gm = iGMb[hm + i_gm];
		u = in[i];
		v = in[i + t];
		// Add //
		tmp1 = u + v - Q;
		tmp1 += Q & -(tmp1 >> 31);
		out[i] = (uint16_t)tmp1;
		// Sub //
		tmp1 = u - v;
		tmp1 += Q & -(tmp1 >> 31);
		w = tmp1;
		monty_mul(&v, w, gm);
		out[i + t] = (uint16_t)v;
	}
}

void monty_mul(uint32_t *z, uint32_t x, uint32_t y) {
#pragma HLS INLINE off
	uint32_t tmp1, tmp2;
	tmp2 = x * y;
	tmp1 = ((tmp2 * Q0I) & 0xFFFF) * Q;
	tmp2 = (tmp2 + tmp1) >> 16;
	tmp2 -= Q;
	tmp2 += Q & -(tmp2 >> 31);
	*z = tmp2;
}


