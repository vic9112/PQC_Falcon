/*
 * Encoding/decoding of keys and signatures.
 *
 * ==========================(LICENSE BEGIN)============================
 *
 * Copyright (c) 2017-2019  Falcon Project
 *
 * Permission is hereby granted, free of charge, to any person obtaining
 * a copy of this software and associated documentation files (the
 * "Software"), to deal in the Software without restriction, including
 * without limitation the rights to use, copy, modify, merge, publish,
 * distribute, sublicense, and/or sell copies of the Software, and to
 * permit persons to whom the Software is furnished to do so, subject to
 * the following conditions:
 *
 * The above copyright notice and this permission notice shall be
 * included in all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
 * EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
 * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
 * IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
 * CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
 * TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
 * SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 *
 * ===========================(LICENSE END)=============================
 *
 * @author   Thomas Pornin <thomas.pornin@nccgroup.com>
 */

#include "header.h"

/* see inner.h */
size_t
modq_encode(
	void *out, size_t max_out_len,
	const uint16_t *x, unsigned logn)
{
	size_t n, out_len, u;
	uint8_t *buf;
	uint32_t acc;
	int acc_len;

	n = (size_t)1 << logn;
	for (u = 0; u < n; u ++) {
		if (x[u] >= 12289) {
			return 0;
		}
	}
	out_len = ((n * 14) + 7) >> 3;
	if (out == NULL) {
		return out_len;
	}
	if (out_len > max_out_len) {
		return 0;
	}
	buf = out;
	acc = 0;
	acc_len = 0;
	for (u = 0; u < n; u ++) {
		acc = (acc << 14) | x[u];
		acc_len += 14;
		while (acc_len >= 8) {
			acc_len -= 8;
			*buf ++ = (uint8_t)(acc >> acc_len);
		}
	}
	if (acc_len > 0) {
		*buf = (uint8_t)(acc << (8 - acc_len));
	}
	return out_len;
}

/* see inner.h */
size_t
modq_decode(
	uint16_t *x, unsigned logn,
	const void *in, size_t max_in_len)
{
	size_t n, in_len, u;
	const uint8_t *buf;
	uint32_t acc;
	int acc_len;

	n = (size_t)1 << logn;
	in_len = ((n * 14) + 7) >> 3;
	if (in_len > max_in_len) {
		return 0;
	}
	buf = in;
	acc = 0;
	acc_len = 0;
	u = 0;
	while (u < n) {
		acc = (acc << 8) | (*buf ++);
		acc_len += 8;
		if (acc_len >= 14) {
			unsigned w;

			acc_len -= 14;
			w = (acc >> acc_len) & 0x3FFF;
			if (w >= 12289) {
				return 0;
			}
			x[u ++] = (uint16_t)w;
		}
	}
	if ((acc & (((uint32_t)1 << acc_len) - 1)) != 0) {
		return 0;
	}
	return in_len;
}

/* see inner.h */
size_t
trim_i16_encode(
	void *out, size_t max_out_len,
	const int16_t *x, unsigned logn, unsigned bits)
{
	size_t n, u, out_len;
	int minv, maxv;
	uint8_t *buf;
	uint32_t acc, mask;
	unsigned acc_len;

	n = (size_t)1 << logn;
	maxv = (1 << (bits - 1)) - 1;
	minv = -maxv;
	for (u = 0; u < n; u ++) {
		if (x[u] < minv || x[u] > maxv) {
			return 0;
		}
	}
	out_len = ((n * bits) + 7) >> 3;
	if (out == NULL) {
		return out_len;
	}
	if (out_len > max_out_len) {
		return 0;
	}
	buf = out;
	acc = 0;
	acc_len = 0;
	mask = ((uint32_t)1 << bits) - 1;
	for (u = 0; u < n; u ++) {
		acc = (acc << bits) | ((uint16_t)x[u] & mask);
		acc_len += bits;
		while (acc_len >= 8) {
			acc_len -= 8;
			*buf ++ = (uint8_t)(acc >> acc_len);
		}
	}
	if (acc_len > 0) {
		*buf ++ = (uint8_t)(acc << (8 - acc_len));
	}
	return out_len;
}

/* see inner.h */
size_t
trim_i16_decode(
	int16_t *x, unsigned logn, unsigned bits,
	const void *in, size_t max_in_len)
{
	size_t n, in_len;
	const uint8_t *buf;
	size_t u;
	uint32_t acc, mask1, mask2;
	unsigned acc_len;

	n = (size_t)1 << logn;
	in_len = ((n * bits) + 7) >> 3;
	if (in_len > max_in_len) {
		return 0;
	}
	buf = in;
	u = 0;
	acc = 0;
	acc_len = 0;
	mask1 = ((uint32_t)1 << bits) - 1;
	mask2 = (uint32_t)1 << (bits - 1);
	while (u < n) {
		acc = (acc << 8) | *buf ++;
		acc_len += 8;
		while (acc_len >= bits && u < n) {
			uint32_t w;

			acc_len -= bits;
			w = (acc >> acc_len) & mask1;
			w |= -(w & mask2);
			if (w == -mask2) {
				/*
				 * The -2^(bits-1) value is forbidden.
				 */
				return 0;
			}
			w |= -(w & mask2);
			x[u ++] = (int16_t)*(int32_t *)&w;
		}
	}
	if ((acc & (((uint32_t)1 << acc_len) - 1)) != 0) {
		/*
		 * Extra bits in the last byte must be zero.
		 */
		return 0;
	}
	return in_len;
}

/* see inner.h */
size_t
trim_i8_encode(
	void *out, size_t max_out_len,
	const int8_t *x, unsigned logn, unsigned bits)
{
	size_t n, u, out_len;
	int minv, maxv;
	uint8_t *buf;
	uint32_t acc, mask;
	unsigned acc_len;

	n = (size_t)1 << logn;
	maxv = (1 << (bits - 1)) - 1;
	minv = -maxv;
	for (u = 0; u < n; u ++) {
		if (x[u] < minv || x[u] > maxv) {
			return 0;
		}
	}
	out_len = ((n * bits) + 7) >> 3;
	if (out == NULL) {
		return out_len;
	}
	if (out_len > max_out_len) {
		return 0;
	}
	buf = out;
	acc = 0;
	acc_len = 0;
	mask = ((uint32_t)1 << bits) - 1;
	for (u = 0; u < n; u ++) {
		acc = (acc << bits) | ((uint8_t)x[u] & mask);
		acc_len += bits;
		while (acc_len >= 8) {
			acc_len -= 8;
			*buf ++ = (uint8_t)(acc >> acc_len);
		}
	}
	if (acc_len > 0) {
		*buf ++ = (uint8_t)(acc << (8 - acc_len));
	}
	return out_len;
}

/* see inner.h */
size_t
trim_i8_decode(
	int8_t *x, unsigned logn, unsigned bits,
	const void *in, size_t max_in_len)
{
	size_t n, in_len;
	const uint8_t *buf;
	size_t u;
	uint32_t acc, mask1, mask2;
	unsigned acc_len;

	n = (size_t)1 << logn;
	in_len = ((n * bits) + 7) >> 3;
	if (in_len > max_in_len) {
		return 0;
	}
	buf = in;
	u = 0;
	acc = 0;
	acc_len = 0;
	mask1 = ((uint32_t)1 << bits) - 1;
	mask2 = (uint32_t)1 << (bits - 1);
	while (u < n) {
		acc = (acc << 8) | *buf ++;
		acc_len += 8;
		while (acc_len >= bits && u < n) {
			uint32_t w;

			acc_len -= bits;
			w = (acc >> acc_len) & mask1;
			w |= -(w & mask2);
			if (w == -mask2) {
				/*
				 * The -2^(bits-1) value is forbidden.
				 */
				return 0;
			}
			x[u ++] = (int8_t)*(int32_t *)&w;
		}
	}
	if ((acc & (((uint32_t)1 << acc_len) - 1)) != 0) {
		/*
		 * Extra bits in the last byte must be zero.
		 */
		return 0;
	}
	return in_len;
}

/* see inner.h */
size_t
comp_encode(
	void *out, size_t max_out_len,
	const int16_t *x, unsigned logn)
{
	uint8_t *buf;
	size_t n, u, v;
	uint32_t acc;
	unsigned acc_len;

	n = (size_t)1 << logn;
	buf = out;

	/*
	 * Make sure that all values are within the -2047..+2047 range.
	 */
	for (u = 0; u < n; u ++) {
		if (x[u] < -2047 || x[u] > +2047) {
			return 0;
		}
	}

	acc = 0;
	acc_len = 0;
	v = 0;
	for (u = 0; u < n; u ++) {
		int t;
		unsigned w;

		/*
		 * Get sign and absolute value of next integer; push the
		 * sign bit.
		 */
		acc <<= 1;
		t = x[u];
		if (t < 0) {
			t = -t;
			acc |= 1;
		}
		w = (unsigned)t;

		/*
		 * Push the low 7 bits of the absolute value.
		 */
		acc <<= 7;
		acc |= w & 127u;
		w >>= 7;

		/*
		 * We pushed exactly 8 bits.
		 */
		acc_len += 8;

		/*
		 * Push as many zeros as necessary, then a one. Since the
		 * absolute value is at most 2047, w can only range up to
		 * 15 at this point, thus we will add at most 16 bits
		 * here. With the 8 bits above and possibly up to 7 bits
		 * from previous iterations, we may go up to 31 bits, which
		 * will fit in the accumulator, which is an uint32_t.
		 */
		acc <<= (w + 1);
		acc |= 1;
		acc_len += w + 1;

		/*
		 * Produce all full bytes.
		 */
		while (acc_len >= 8) {
			acc_len -= 8;
			if (buf != NULL) {
				if (v >= max_out_len) {
					return 0;
				}
				buf[v] = (uint8_t)(acc >> acc_len);
			}
			v ++;
		}
	}

	/*
	 * Flush remaining bits (if any).
	 */
	if (acc_len > 0) {
		if (buf != NULL) {
			if (v >= max_out_len) {
				return 0;
			}
			buf[v] = (uint8_t)(acc << (8 - acc_len));
		}
		v ++;
	}

	return v;
}

/* see inner.h */
size_t
comp_decode(
	int16_t *x, unsigned logn,
	const void *in, size_t max_in_len)
{
	const uint8_t *buf;
	size_t n, u, v;
	uint32_t acc;
	unsigned acc_len;

	n = (size_t)1 << logn;
	buf = in;
	acc = 0;
	acc_len = 0;
	v = 0;
	for (u = 0; u < n; u ++) {
		unsigned b, s, m;

		/*
		 * Get next eight bits: sign and low seven bits of the
		 * absolute value.
		 */
		if (v >= max_in_len) {
			return 0;
		}
		acc = (acc << 8) | (uint32_t)buf[v ++];
		b = acc >> acc_len;
		s = b & 128;
		m = b & 127;

		/*
		 * Get next bits until a 1 is reached.
		 */
		for (;;) {
			if (acc_len == 0) {
				if (v >= max_in_len) {
					return 0;
				}
				acc = (acc << 8) | (uint32_t)buf[v ++];
				acc_len = 8;
			}
			acc_len --;
			if (((acc >> acc_len) & 1) != 0) {
				break;
			}
			m += 128;
			if (m > 2047) {
				return 0;
			}
		}

		/*
		 * "-0" is forbidden.
		 */
		if (s && m == 0) {
			return 0;
		}

		x[u] = (int16_t)(s ? -(int)m : (int)m);
	}

	/*
	 * Unused bits in the last byte must be zero.
	 */
	if ((acc & ((1u << acc_len) - 1u)) != 0) {
		return 0;
	}

	return v;
}
