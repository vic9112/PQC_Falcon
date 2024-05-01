#include "header.h"

void iNTT(uint16_t a[SIZE]) {
#pragma HLS INTERFACE m_axi port=a offset=slave depth=1024
#pragma HLS INTERFACE s_axilite port=return

	uint16_t in_buf[SIZE], out_buf[SIZE];
	uint16_t stage0[SIZE], stage1[SIZE];

	memcpy(in_buf, a, SIZE * sizeof(uint16_t));

	intt_stage(in_buf, stage0, 1, 1024);
	intt_stage(stage0, stage1, 2,  512);
	intt_stage(stage1, stage0, 4,  256);
	intt_stage(stage0, stage1, 8,  128);
	intt_stage(stage1, stage0, 16,  64);
	intt_stage(stage0, stage1, 32,  32);
	intt_stage(stage1, stage0, 64,  16);
	intt_stage(stage0, stage1, 128,  8);
	intt_stage(stage1, stage0, 256,  4);
	intt_stage(stage0, stage1,512,  2);

	out_copy(a, stage1);

}

void intt_stage(uint16_t in_buf[SIZE], uint16_t out_buf[SIZE], unsigned short t, unsigned short m) {
#pragma HLS DEPENDENCE  dependent=false type=inter variable=out_buf
#pragma HLS DEPENDENCE  dependent=false type=inter variable=in_buf
#pragma HLS INLINE off
	unsigned short ht = t >> 1;
	unsigned short hm = m >> 1;
	uint32_t gm;
	uint32_t u, v, w;
	uint32_t tmp1, tmp2;
	size_t n;
	for (n = 0; n < 512; n++) {
	#pragma HLS PIPELINE II=1
	#pragma HLS INLINE off
		unsigned short i = n + ((n / t) * t);
		unsigned short i_gm = n / t;
		gm = iGMb[hm + i_gm];

		u = in_buf[i];
		v = in_buf[i + t];
		
		tmp1 = u + v - Q;
		tmp1 += Q & -(tmp1 >> 31);
		out_buf[i] = (uint16_t)tmp1;
		
		tmp1 = u - v;
		tmp1 += Q & -(tmp1 >> 31);
		w = tmp1;
		
		tmp2 = w * gm;
		tmp1 = ((tmp2 * Q0I) & 0xFFFF) * Q;
		tmp2 = (tmp2 + tmp1) >> 16;
		tmp2 -= Q;
		tmp2 += Q & -(tmp2 >> 31);
		out_buf[i + t] = (uint32_t)tmp2;
	}

}

void out_copy(uint16_t out_buf[SIZE],uint16_t in_buf[SIZE]) {
#pragma HLS INLINE off
	unsigned short logn = 10;
	uint32_t ni = 4091;
	uint32_t tmp1, tmp2;
	size_t i, j;

	for (i = SIZE; i > 1; i >>= 1) {
	#pragma HLS inline off
		ni += Q & -(ni & 1);
		ni = (ni >> 1);
	}

	for (j = 0; j < SIZE; j++) {
	#pragma HLS inline off
		tmp2 = in_buf[j] * ni;
		tmp1 = ((tmp2 * Q0I) & 0xFFFF) * Q;
		tmp2 = (tmp2 + tmp1) >> 16;
		tmp2 -= Q;
		tmp2 += Q & -(tmp2 >> 31);
		out_buf[j] = tmp2;
	}
}


