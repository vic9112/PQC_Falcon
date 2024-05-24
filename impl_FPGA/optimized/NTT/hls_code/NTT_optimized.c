#include "header.h"

//void NTT(uint16_t *a_in, uint16_t *a_out) {
void NTT(uint16_t *a) {
#pragma HLS INTERFACE mode=m_axi port=a offset=slave depth=1024
//#pragma HLS INTERFACE axis port=a_in  register_mode=both depth=1024
//#pragma HLS INTERFACE axis port=a_out register_mode=both depth=1024
#pragma HLS INTERFACE s_axilite port=return

#pragma HLS DATAFLOW
	uint16_t in_buf[SIZE], out_buf[SIZE];

	memcpy(in_buf, a, SIZE * sizeof(uint16_t));

	ntt_10_stages(in_buf, out_buf);

	memcpy(a, out_buf, SIZE * sizeof(uint16_t));
}

void ntt_10_stages(uint16_t in_buf[SIZE], uint16_t out_buf[SIZE]) {
	const unsigned short factor = FACTOR;
	uint16_t stage0[SIZE], stage1[SIZE];
#pragma HLS INLINE off
	ntt_stage(in_buf, stage0, 1024, 1);
	ntt_stage(stage0, stage1, 512,  2);
	ntt_stage(stage1, stage0, 256,  4);
	ntt_stage(stage0, stage1, 128,  8);
	ntt_stage(stage1, stage0, 64,  16);
	ntt_stage(stage0, stage1, 32,  32);
	ntt_stage(stage1, stage0, 16,  64);
	ntt_stage(stage0, stage1, 8,  128);
	ntt_stage(stage1, stage0, 4,  256);
	ntt_stage(stage0, out_buf, 2, 512);
}

void ntt_stage(uint16_t in_buf[SIZE], uint16_t out_buf[SIZE], unsigned short t, unsigned short m) {
#pragma HLS DEPENDENCE dependent=false type=inter variable=out_buf
	unsigned short ht = t >> 1;
	uint32_t gm;
	uint32_t u, v;
	uint32_t tmp1, tmp2;
	for (int n = 0; n < 512; n++) {
#pragma HLS PIPELINE II=1
#pragma HLS INLINE
		unsigned short i = n + ((n / ht) * ht);
		unsigned short i_gm = n / ht;
		gm = GMb[m + i_gm];

		u = in_buf[i];
		//v = my_mq_montymul(a[j + ht], s);
		tmp2 = in_buf[i + ht] * gm;
		tmp1 = ((tmp2 * Q0I) & 0xFFFF) * Q;
		tmp2 = (tmp2 + tmp1) >> 16;
		tmp2 -= Q;
		tmp2 += Q & -(tmp2 >> 31);
		v = (uint32_t)tmp2;

		//a[j] = (uint16_t)my_mq_add(u, v);
		tmp1 = u + v - Q;
		tmp1 += Q & -(tmp1 >> 31);
		out_buf[i] = (uint16_t)tmp1;

		//a[j + ht] = (uint16_t)my_mq_sub(u, v);
		tmp1 = u - v;
		tmp1 += Q & -(tmp1 >> 31);
		out_buf[i + ht] = (uint16_t)tmp1;
	}

}
