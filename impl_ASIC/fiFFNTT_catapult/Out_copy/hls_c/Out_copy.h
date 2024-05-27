#pragma once


#include <ac_int.h>
#include <ac_math.h>
#include <ac_fixed.h>
#include <ac_float.h>
#include <ac_channel.h>
//#include <ac_ieee_float.h>
//typedef   ac_fixed<54,2,true> fpr;
typedef   ac_ieee_float<binary64> fpr;
typedef   ac_int<16, false> u16;
typedef   ac_int<32, false> u32;
struct Stream1{
    fpr f;
	u16 u;
};

  const int Q   = 12289;
  const int Q0I = 12287;
  const int R   = 4091;
  const int R2  = 10952;
#include <mc_scverify.h>
/*=========================================================================/
/  Combine FFT/iFFT/NTT/iNTT in one hardware and share their memory usage  /
/=========================================================================*/
#pragma hls_design top
class Out_state{
	public:
	Out_state() {}
 	#pragma hls_design interface 
 	void CCS_BLOCK(run) (ac_channel<bool> &ap_start,ac_channel<bool> &ap_done,ac_channel<Stream1> &out1,u16 &mode ,Stream1 line_buf0[1024]){
		Stream1 out_data;
		u16 logn=10;
		u32 tmp1,tmp2,tmp3;
        bool start;
        start=ap_start.read();
		for(int x=0;x<1024;x++){

                  	if(mode==1){
					   out_data.f=line_buf0[x].f* 0.00195312500;
					   out1.write(out_data);
					}
					else if (mode==0) {
					   out1.write(line_buf0[x]);
					}
					else if(mode==3){
						monty_mul(&tmp3,line_buf0[x].u,64);
						line_buf0[x].u=(u16)tmp3;
						out1.write(line_buf0[x]);
					}
					else{
						out1.write(line_buf0[x]);
					}

			}
            ap_done.write(1);
 }
 private:
    void monty_mul(u32 *z ,u32 x, u32 y){
		u32 tmp1, tmp2;
	    tmp2 = x * y;
	    tmp1 = ((tmp2 * Q0I) & 0xFFFF) * Q;
	    tmp2 = (tmp2 + tmp1) >> 16;
	    tmp2 -= Q;
	    tmp2 += Q & -(tmp2 >> 31);
	    *z = tmp2;
	}



};