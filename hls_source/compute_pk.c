#include "header.h"

#define Q     12289
#define Q0I   12287
#define R      4091
#define R2    10952

int compute_public(uint16_t *h, const int8_t *f, const int8_t *g, unsigned logn, uint8_t *tmp)
{
#pragma HLS INTERFACE m_axi
#pragma HLS INTERFACE m_axi port=h bundle=gmem0 offset=slave depth=1024
#pragma HLS INTERFACE m_axi port=f bundle=gmem0 offset=slave depth=1024
#pragma HLS INTERFACE m_axi port=g bundle=gmem0 offset=slave depth=1024
#pragma HLS INTERFACE s_axilite port=logn
#pragma HLS INTERFACE m_axi port=tmp bundle=gmem0 offset=slave depth=1024
#pragma HLS INTERFACE s_axilite port=return

	size_t u, n;
	uint16_t *tt;
	uint32_t tmp1;
	uint32_t tmp2;

	n = (size_t)1 << logn;
	tt = (uint16_t *)tmp;
	for (u = 0; u < n; u ++) {
		//tt[u] = (uint16_t)mq_conv_small(f[u]);
		tmp1 = (uint32_t)f[u];
		tmp1 += Q & -(tmp1 >> 31);
		tt[u] = (uint16_t)(tmp1);
		//h[u] = (uint16_t)mq_conv_small(g[u]);
		tmp1 = (uint32_t)g[u];
		tmp1 += Q & -(tmp1 >> 31);
		h[u] = (uint16_t)(tmp1);
	}
	mq_NTT(h, logn);
	mq_NTT(tt, logn);
	for (u = 0; u < n; u ++) {
		if (tt[u] == 0) {
			return 0;
		}
		//h[u] = (uint16_t)mq_div_12289(h[u], tt[u]);
		uint32_t y0, y1, y2, y3, y4, y5, y6, y7, y8, y9;
		uint32_t y10, y11, y12, y13, y14, y15, y16, y17, y18;

		//y0 = mq_montymul(tt[u], R2);
		tmp1 = tt[u] * R2;
		tmp2 = ((tmp1 * Q0I) & 0xFFFF) * Q;
		tmp1 = (tmp1 + tmp2) >> 16;
		tmp1 -= Q;
		tmp1 += Q & -(tmp1 >> 31);
		y0 = (uint32_t)(tmp1);
		
		//y1 = mq_montysqr(y0);
		tmp1 = y0 * y0;
		tmp2 = ((tmp1 * Q0I) & 0xFFFF) * Q;
		tmp1 = (tmp1 + tmp2) >> 16;
		tmp1 -= Q;
		tmp1 += Q & -(tmp1 >> 31);
		y1 = (uint32_t)(tmp1);
		
		//y2 = mq_montymul(y1, y0);
		tmp1 = y1 * y0;
		tmp2 = ((tmp1 * Q0I) & 0xFFFF) * Q;
		tmp1 = (tmp1 + tmp2) >> 16;
		tmp1 -= Q;
		tmp1 += Q & -(tmp1 >> 31);
		y2 = (uint32_t)(tmp1);
		
		
		//y3 = mq_montymul(y2, y1);
		tmp1 = y2 * y1;
		tmp2 = ((tmp1 * Q0I) & 0xFFFF) * Q;
		tmp1 = (tmp1 + tmp2) >> 16;
		tmp1 -= Q;
		tmp1 += Q & -(tmp1 >> 31);
		y3 = (uint32_t)(tmp1);
		
		//y4 = mq_montysqr(y3);
		tmp1 = y3 * y3;
		tmp2 = ((tmp1 * Q0I) & 0xFFFF) * Q;
		tmp1 = (tmp1 + tmp2) >> 16;
		tmp1 -= Q;
		tmp1 += Q & -(tmp1 >> 31);
		y4 = (uint32_t)(tmp1);
		
		//y5 = mq_montysqr(y4);
		tmp1 = y4 * y4;
		tmp2 = ((tmp1 * Q0I) & 0xFFFF) * Q;
		tmp1 = (tmp1 + tmp2) >> 16;
		tmp1 -= Q;
		tmp1 += Q & -(tmp1 >> 31);
		y5 = (uint32_t)(tmp1);
		
		
		//y6 = mq_montysqr(y5);
		tmp1 = y5 * y5;
		tmp2 = ((tmp1 * Q0I) & 0xFFFF) * Q;
		tmp1 = (tmp1 + tmp2) >> 16;
		tmp1 -= Q;
		tmp1 += Q & -(tmp1 >> 31);
		y6 = (uint32_t)(tmp1);
		
		//y7 = mq_montysqr(y6);
		tmp1 = y6 * y6;
		tmp2 = ((tmp1 * Q0I) & 0xFFFF) * Q;
		tmp1 = (tmp1 + tmp2) >> 16;
		tmp1 -= Q;
		tmp1 += Q & -(tmp1 >> 31);
		y7 = (uint32_t)(tmp1);
		
		//y8 = mq_montysqr(y7);
		tmp1 = y7 * y7;
		tmp2 = ((tmp1 * Q0I) & 0xFFFF) * Q;
		tmp1 = (tmp1 + tmp2) >> 16;
		tmp1 -= Q;
		tmp1 += Q & -(tmp1 >> 31);
		y8 = (uint32_t)(tmp1);
		
		//y9 = mq_montymul(y8, y2);
		tmp1 = y8 * y2;
		tmp2 = ((tmp1 * Q0I) & 0xFFFF) * Q;
		tmp1 = (tmp1 + tmp2) >> 16;
		tmp1 -= Q;
		tmp1 += Q & -(tmp1 >> 31);
		y9 = (uint32_t)(tmp1);
		
		//y10 = mq_montymul(y9, y8);
		tmp1 = y9 * y8;
		tmp2 = ((tmp1 * Q0I) & 0xFFFF) * Q;
		tmp1 = (tmp1 + tmp2) >> 16;
		tmp1 -= Q;
		tmp1 += Q & -(tmp1 >> 31);
		y10 = (uint32_t)(tmp1);
		
		//y11 = mq_montysqr(y10);
		tmp1 = y10 * y10;
		tmp2 = ((tmp1 * Q0I) & 0xFFFF) * Q;
		tmp1 = (tmp1 + tmp2) >> 16;
		tmp1 -= Q;
		tmp1 += Q & -(tmp1 >> 31);
		y11 = (uint32_t)(tmp1);
		
		//y12 = mq_montysqr(y11);
		tmp1 = y11 * y11;
		tmp2 = ((tmp1 * Q0I) & 0xFFFF) * Q;
		tmp1 = (tmp1 + tmp2) >> 16;
		tmp1 -= Q;
		tmp1 += Q & -(tmp1 >> 31);
		y12 = (uint32_t)(tmp1);
		
		//y13 = mq_montymul(y12, y9);
		tmp1 = y12 * y9;
		tmp2 = ((tmp1 * Q0I) & 0xFFFF) * Q;
		tmp1 = (tmp1 + tmp2) >> 16;
		tmp1 -= Q;
		tmp1 += Q & -(tmp1 >> 31);
		y13 = (uint32_t)(tmp1);
		
		//y14 = mq_montysqr(y13);
		tmp1 = y13 * y13;
		tmp2 = ((tmp1 * Q0I) & 0xFFFF) * Q;
		tmp1 = (tmp1 + tmp2) >> 16;
		tmp1 -= Q;
		tmp1 += Q & -(tmp1 >> 31);
		y14 = (uint32_t)(tmp1);
		
		//y15 = mq_montysqr(y14);
		tmp1 = y14 * y14;
		tmp2 = ((tmp1 * Q0I) & 0xFFFF) * Q;
		tmp1 = (tmp1 + tmp2) >> 16;
		tmp1 -= Q;
		tmp1 += Q & -(tmp1 >> 31);
		y15 = (uint32_t)(tmp1);
		
		//y16 = mq_montymul(y15, y10);
		tmp1 = y15 * y10;
		tmp2 = ((tmp1 * Q0I) & 0xFFFF) * Q;
		tmp1 = (tmp1 + tmp2) >> 16;
		tmp1 -= Q;
		tmp1 += Q & -(tmp1 >> 31);
		y16 = (uint32_t)(tmp1);
		
		//y17 = mq_montysqr(y16);
		tmp1 = y16 * y16;
		tmp2 = ((tmp1 * Q0I) & 0xFFFF) * Q;
		tmp1 = (tmp1 + tmp2) >> 16;
		tmp1 -= Q;
		tmp1 += Q & -(tmp1 >> 31);
		y17 = (uint32_t)(tmp1);
		
		//y18 = mq_montymul(y17, y0);
		tmp1 = y17 * y0;
		tmp2 = ((tmp1 * Q0I) & 0xFFFF) * Q;
		tmp1 = (tmp1 + tmp2) >> 16;
		tmp1 -= Q;
		tmp1 += Q & -(tmp1 >> 31);
		y18 = (uint32_t)(tmp1);

	
		//h[u] = (mq_montymul(y18, h[u]));
		tmp1 = y18 * h[u];
		tmp2 = ((tmp1 * Q0I) & 0xFFFF) * Q;
		tmp1 = (tmp1 + tmp2) >> 16;
		tmp1 -= Q;
		tmp1 += Q & -(tmp1 >> 31);
		h[u] = (uint32_t)(tmp1);

	}
	mq_iNTT(h, logn);
	return 1;
}
