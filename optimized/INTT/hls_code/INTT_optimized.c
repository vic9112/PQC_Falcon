#include "header.h"

void iNTT(uint16_t *a) {
#pragma HLS INTERFACE mode=m_axi port=a offset=slave depth=1024
#pragma HLS INTERFACE s_axilite port=return

#pragma HLS DATAFLOW
	uint16_t in_buf[SIZE], out_buf[SIZE];

	memcpy(in_buf, a, SIZE * sizeof(uint16_t));

	intt_10_stages(in_buf, out_buf);

	memcpy(a, out_buf, SIZE * sizeof(uint16_t));
}

void intt_10_stages(uint16_t in_buf[SIZE], uint16_t out_buf[SIZE]) {
	const unsigned short factor = FACTOR;
	uint16_t stage0[SIZE], stage1[SIZE];
#pragma HLS INLINE off
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

	uint32_t ni = 4091;
	for (int i = SIZE; i > 1; i >>= 1) {
		ni += Q & -(ni & 1);
		ni = (ni >> 1);
	}
	uint32_t tmp1, tmp2;
	for (int j = 0; j < SIZE; j++) {
		tmp2 = stage1[j] * ni;
		tmp1 = ((tmp2 * Q0I) & 0xFFFF) * Q;
		tmp2 = (tmp2 + tmp1) >> 16;
		tmp2 -= Q;
		tmp2 += Q & -(tmp2 >> 31);
		out_buf[j] = tmp2;
	}

}

void intt_stage(uint16_t in_buf[SIZE], uint16_t out_buf[SIZE], unsigned short t, unsigned short m) {
#pragma HLS DEPENDENCE dependent=false type=inter variable=out_buf
	unsigned short ht = t >> 1;
	unsigned short hm = m >> 1;
	uint32_t gm;
	uint32_t u, v;
	uint32_t tmp1, tmp2;
	for (int n = 0; n < 512; n++) {
#pragma HLS PIPELINE II=1
#pragma HLS INLINE
		unsigned short i = n + ((n / t) * t);
		unsigned short i_gm = n / t;
		gm = iGMb[hm + i_gm];

		u = in_buf[i];
		v = in_buf[i + t];
		
		//a[j] = (uint16_t)my_mq_add(u, v);
		tmp1 = u + v - Q;
		tmp1 += Q & -(tmp1 >> 31);
		out_buf[i] = (uint16_t)tmp1;
		
		//a[j + ht] = (uint16_t)my_mq_sub(u, v);
		tmp1 = u - v;
		tmp1 += Q & -(tmp1 >> 31);
		
		//v = my_mq_montymul(a[j + ht], s);
		tmp2 = tmp1 * gm;
		tmp1 = ((tmp2 * Q0I) & 0xFFFF) * Q;
		tmp2 = (tmp2 + tmp1) >> 16;
		tmp2 -= Q;
		tmp2 += Q & -(tmp2 >> 31);
		out_buf[i + t] = (uint32_t)tmp2;

	}

}
