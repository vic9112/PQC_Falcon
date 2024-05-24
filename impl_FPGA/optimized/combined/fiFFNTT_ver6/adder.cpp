#include "header.h"
/*=========================================================================/
/  shared adder															   /
/=========================================================================*/

uint64_t adder(uint64_t a, uint64_t b, int req)
{
#pragma HLS INLINE off
    int16_t lo_exp = (((a)>>52)&0x7ff);
    int16_t hi_exp = (((b)>>52)&0x7ff);
    int16_t diff_exp = lo_exp - hi_exp;
    uint64_t hi_sign;
    uint64_t rem, ans;
    uint64_t lo_mant, hi_mant;
    memcell sum;


    if (req) {
    	sum.u64 = ((((a >> 32) + (b >> 32)) - 12289 )<< 32) + ((a - b) & (0x00000000ffffffff));
    	sum.u32.m1 += 12289 & -(sum.u32.m1 >> 31);
    	sum.u32.m0 += 12289 & -(sum.u32.m0 >> 31);
    	ans = sum.u64;
    }
    else
    {
    if (diff_exp == 0)
    {
	if (hi_exp == 0x7ff)
	{
	    // infinity or NaN
	    if ( ((a|b) & 0x000fffffffffffff) == 0)
	    {
		// two times infinity (mantissa==0)
		if (a != b) // already equal except the sign
		{
		    // infinity minus infinity raises an error
		    // raise_exception(F64_EXC_INVALID_OP);
		    ans = 0xffffffffffffffff;
		}
		else
			ans = a;
	    }
	    if ( ((a&b) & 0x0008000000000000) == 0)
		// one of the two NaNs is signalling
		// (highest bit of the mantissa==0)
		// raise_exception(F64_EXC_INVALID_OP);
	    ans = (a>b) ? a : b;
		// return greater mantissa
	}

	// same exponent
	hi_mant = ((a)&0x000fffffffffffff);
	lo_mant = ((b)&0x000fffffffffffff);
	hi_sign = a & 0x8000000000000000;

	if (((a ^ b) & 0x8000000000000000) == 0)
	{
	    // both numbers have the same sign -> addition

	    if (hi_exp==0x7fe)
		// by the addition the exponent is increased by 1
		// and then it is too big
		ans = hi_sign | 0x7ff0000000000000;

	    // nothing to do if both numbers are subnormal
	    if (hi_exp != 0)
	    {
		rem = (hi_mant ^ lo_mant) << 63;
		hi_mant = ((hi_mant>>1) | 0x0010000000000000) + (hi_mant & lo_mant & 1);
		lo_mant = lo_mant >> 1;
		hi_exp++;
	    }
	}
	else
	{
	    // not the same sign
	}
    }
    else
    {
	if (diff_exp > 0)
	{
	    int16_t h=hi_exp; hi_exp=lo_exp; lo_exp=h;
		// exchange hi_exp and lo_exp
	    lo_mant = ((b)&0x000fffffffffffff);
	    hi_mant = ((a)&0x000fffffffffffff);
	    hi_sign = a;

	}
	else // (diff_exp < 0)
	{
	    diff_exp = -diff_exp;
	    lo_mant = ((a)&0x000fffffffffffff);
	    hi_mant = ((b)&0x000fffffffffffff);
	    hi_sign = b;
	}
	// temporarily the lower bits of hi_sign are not masked out,
	// in order to return the correct value in the case of an exception

	if (hi_exp == 0x7ff)	        	// infinity or NaN
	{
	    if (((hi_mant & 0x8000000000000)==0) && (hi_mant!=0))
	        // signalling NaN
	        //raise_exception(F64_EXC_INVALID_OP);
	    ans = hi_sign;
	}
	if (diff_exp > 53)			// lo much too low
	{
	    if (lo_exp!=0 || lo_mant!=0)
		//raise_exception(F64_EXC_INEXACT);
    	    ans = hi_sign;
	}

	// from now on, only the sign of hi_sign is needed
	hi_sign &= 0x8000000000000000;

	if (lo_exp == 0)
	    // lo subnormal
    	    diff_exp--;
	else
	    // insert implicit 1
    	    lo_mant |= 0x10000000000000;

	rem = (diff_exp==0) ? 0 : lo_mant << (64-diff_exp);
	    // correction, if diff_exp==0 (only possible if lo_exp==0)
	    // because (lo_mant << 64) == (lo_mant << 0) != 0 on intel platforms

	lo_mant >>= diff_exp;
	hi_mant |= 0x10000000000000;
    }




    if (((a ^ b) & 0x8000000000000000) == 0)
    {
	// same sign
	// simplifies the normalisation, but overflow checks are needed
	sum.i64 = hi_mant + lo_mant;

	if (hi_exp != 0)
	{
	    // both numbers are subnormal. Therefore simple adding is enough.
	    // If there is an overflow, i.e. the sum.i64 is normal, bit 52 of the
	    // result is set, which means that the exponent is 1 and not 0.
	    // Hence the conversion from subnormal to normal works
	    // automatically, only the sign has to be added.
	    if (sum.i64 < 0x20000000000000)			// no bit overflow
	    {
		if (rem == 0x8000000000000000)
		    sum.i64 = (sum.i64+1) & (~1);    		// round to even
		else if (rem > 0x8000000000000000)
		    sum.i64++;				// round up
		// else round down (nothing to do)

		hi_exp--;
	    }
	    else					// 1 bit overflow
	    {
		if (hi_exp>=0x7fe)
		    ans = hi_sign | 0x7ff0000000000000;	// infinity

		if ((sum.i64&1) == 0)
		    sum.i64 = sum.i64>>1;			// round down
		else if (rem == 0)
		    sum.i64 = ((sum.i64>>1)+1) & (~1);    	// round to even
		else
		    sum.i64 = (sum.i64>>1) + 1;			// round up

// alternate formulation:
//		if (((sum.i64&1)!=0) && rem == 0)
//		    sum.i64 = ((sum.i64>>1) + 1) & (~1);		// round up to even
//		else
//		    sum.i64 = (sum.i64>>1) + (sum.i64&1);			// round to nearest

// another alternate formulation:
//		sum.i64 = ((sum.i64>>1) + (sum.i64&1)) & ((rem==0 && ((sum.i64&1)!=0)) ? (~1) : (~0));		// round to nearest or even
	    }
	}
    }
    else
    {
	    // not the same sign
	    sum.i64 = hi_mant - lo_mant;

	    // only possible, if exponents are equal
	    if (sum.i64 < 0)
	    {
	        hi_sign ^= 0x8000000000000000;
		sum.i64 = -sum.i64;
	    }
	    else if (sum.i64 == 0)
	    {
//	    	if (float64_rounding_mode == F64_ROUND_DOWN)
//		    return 0x8000000000000000;
//	   	else
		    ans = 0;
	    }

	    // Only for subbormal numbers the exponent need not be decreased.
	    // This can alos only happen, if exponents are equal.
	    if (hi_exp > 0)
		hi_exp--;

	    // normalise mantissa
	    while (sum.i64 < 0x10000000000000)
	    {
		if (hi_exp==0)
		    // result is subnormal
		    ans = hi_sign | sum.i64;
		sum.i64 = (sum.i64<<1) - (rem>>63);
		rem <<= 1;
		hi_exp--;
	    }

	    if (rem == 0x8000000000000000)
    		sum.i64 = sum.i64 & (~1);    		// round to even
	    else if (rem > 0x8000000000000000)
    		sum.i64--;				// round down
	    // else round up (nothing to do)
    }
    // Now the leading 1 must be masked out. But it is more efficient to
    // decrement the exponent by 1 and then add the implicit 1.
    // The decrementation as already been done earlier.
    ans = hi_sign | (((uint64_t)hi_exp<<52) + sum.i64);
    }
    return ans;
}
