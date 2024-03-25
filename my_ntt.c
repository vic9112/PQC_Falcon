#include "header.h"

#define Q     12289
#define Q0I   12287
#define R      4091
#define R2    10952

void
mq_NTT(uint16_t *a, unsigned logn)
{
	size_t n, t, m;

	n = (size_t)1 << logn;
	t = n;
	for (m = 1; m < n; m <<= 1) {
		size_t ht, i, j1;

		ht = t >> 1;
		for (i = 0, j1 = 0; i < m; i ++, j1 += t) {
			size_t j, j2;
			uint32_t s;

			s = GMb[m + i];
			j2 = j1 + ht;
			for (j = j1; j < j2; j ++) {
				uint32_t u, v;

				u = a[j];
				v = mq_montymul(a[j + ht], s);
				a[j] = (uint16_t)mq_add(u, v);
				a[j + ht] = (uint16_t)mq_sub(u, v);
			}
		}
		t = ht;
	}
}

uint32_t
mq_montymul(uint32_t x, uint32_t y)
{
	uint32_t z, w;

	z = x * y;
	w = ((z * Q0I) & 0xFFFF) * Q;

	z = (z + w) >> 16;

	z -= Q;
	z += Q & -(z >> 31);
	return z;
}

uint32_t
mq_add(uint32_t x, uint32_t y)
{
	uint32_t d;

	d = x + y - Q;
	d += Q & -(d >> 31);
	return d;
}

uint32_t
mq_sub(uint32_t x, uint32_t y)
{

	uint32_t d;

	d = x - y;
	d += Q & -(d >> 31);
	return d;
}
