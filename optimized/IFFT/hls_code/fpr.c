/*
 * Floating-point operations.
 *
 * This file implements the non-inline functions declared in
 * fpr.h, as well as the constants for FFT / iFFT.
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


fpr FPR(double v)
{

	return v;
}


fpr fpr_of(int64_t i)
{
	#pragma HLS inline off
	return (double)i;
}


int64_t fpr_rint(fpr x)
{
	/*
	 * We do not want to use llrint() since it might be not
	 * constant-time.
	 *
	 * Suppose that x >= 0. If x >= 2^52, then it is already an
	 * integer. Otherwise, if x < 2^52, then computing x+2^52 will
	 * yield a value that will be rounded to the nearest integer
	 * with exactly the right rules (round-to-nearest-even).
	 *
	 * In order to have constant-time processing, we must do the
	 * computation for both x >= 0 and x < 0 cases, and use a
	 * cast to an integer to access the sign and select the proper
	 * value. Such casts also allow us to find out if |x| < 2^52.
	 */
	int64_t sx, tx, rp, rn, m;
	uint32_t ub;

	sx = (int64_t)(x - 1.0);
	tx = (int64_t)x;
	rp = (int64_t)(x + 4503599627370496.0) - 4503599627370496;
	rn = (int64_t)(x - 4503599627370496.0) + 4503599627370496;

	/*
	 * If tx >= 2^52 or tx < -2^52, then result is tx.
	 * Otherwise, if sx >= 0, then result is rp.
	 * Otherwise, result is rn. We use the fact that when x is
	 * close to 0 (|x| <= 0.25) then both rp and rn are correct;
	 * and if x is not close to 0, then trunc(x-1.0) yields the
	 * appropriate sign.
	 */

	/*
	 * Clamp rp to zero if tx < 0.
	 * Clamp rn to zero if tx >= 0.
	 */
	m = sx >> 63;
	rn &= m;
	rp &= ~m;

	/*
	 * Get the 12 upper bits of tx; if they are not all zeros or
	 * all ones, then tx >= 2^52 or tx < -2^52, and we clamp both
	 * rp and rn to zero. Otherwise, we clamp tx to zero.
	 */
	ub = (uint32_t)((uint64_t)tx >> 52);
	m = -(int64_t)((((ub + 1) & 0xFFF) - 2) >> 31);
	rp &= m;
	rn &= m;
	tx &= ~m;

	/*
	 * Only one of tx, rn or rp (at most) can be non-zero at this
	 * point.
	 */
	return tx | rn | rp;
}

int64_t fpr_floor(fpr x)
{
	#pragma HLS inline off
	int64_t r;

	/*
	 * The cast performs a trunc() (rounding toward 0) and thus is
	 * wrong by 1 for most negative values. The correction below is
	 * constant-time as long as the compiler turns the
	 * floating-point conversion result into a 0/1 integer without a
	 * conditional branch or another non-constant-time construction.
	 * This should hold on all modern architectures with an FPU (and
	 * if it is false on a given arch, then chances are that the FPU
	 * itself is not constant-time, making the point moot).
	 */
	r = (int64_t)x;
	return r - (x < (double)r);
}

int64_t fpr_trunc(fpr x)
{
	return (int64_t)x;
}

fpr fpr_add(fpr x, fpr y)
{
	return (x + y);
}

fpr fpr_sub(fpr x, fpr y)
{
	return (x - y);
}

fpr fpr_neg(fpr x)
{
	return (-x);
}

fpr fpr_half(fpr x)
{
	return (x * 0.5);
}

fpr fpr_double(fpr x)
{
	return (x + x);
}

fpr fpr_mul(fpr x, fpr y)
{
	return (x * y);
}

fpr fpr_sqr(fpr x)
{
	return (x * x);
}

fpr fpr_inv(fpr x)
{
	return (1.0 / x);
}

fpr fpr_div(fpr x, fpr y)
{
	return (x / y);
}


fpr fpr_sqrt(fpr x)
{
	return (sqrt(x));
}

int fpr_lt(fpr x, fpr y)
{
	return x < y;
}

uint64_t fpr_expm_p63(fpr x, fpr ccs)
{
	/*
	 * Polynomial approximation of exp(-x) is taken from FACCT:
	 *   https://eprint.iacr.org/2018/1234
	 * Specifically, values are extracted from the implementation
	 * referenced from the FACCT article, and available at:
	 *   https://github.com/raykzhao/gaussian
	 * Tests over more than 24 billions of random inputs in the
	 * 0..log(2) range have never shown a deviation larger than
	 * 2^(-50) from the true mathematical value.
	 */


	/*
	 * Normal implementation uses Horner's method, which minimizes
	 * the number of operations.
	 */

	double d, y;

	d = x;
	y = 0.000000002073772366009083061987;
	y = 0.000000025299506379442070029551 - y * d;
	y = 0.000000275607356160477811864927 - y * d;
	y = 0.000002755586350219122514855659 - y * d;
	y = 0.000024801566833585381209939524 - y * d;
	y = 0.000198412739277311890541063977 - y * d;
	y = 0.001388888894063186997887560103 - y * d;
	y = 0.008333333327800835146903501993 - y * d;
	y = 0.041666666666110491190622155955 - y * d;
	y = 0.166666666666984014666397229121 - y * d;
	y = 0.500000000000019206858326015208 - y * d;
	y = 0.999999999999994892974086724280 - y * d;
	y = 1.000000000000000000000000000000 - y * d;
	y *= ccs;
	return (uint64_t)(y * fpr_ptwo63);

}

// #define fpr_gm_tab   Zf(fpr_gm_tab)
// extern const fpr fpr_gm_tab[];

// #define fpr_p2_tab   Zf(fpr_p2_tab)
// extern const fpr fpr_p2_tab[];
