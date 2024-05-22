#pragma once 
#include "header.h"
#include <mc_scverify.h>

class Out_state{
	public:
	Out_state() {}
 	#pragma hls_design interface 
 	void CCS_BLOCK(run) (Stream1 line_buf0[1024],ac_channel<bool> &mode_in,bool &inverse ,ac_channel<Stream1> &out1){
		Stream1 out_data;
		bool mode;
		mode=mode_in.read();
		u16 logn=10;
		u32 tmp1,tmp2,tmp3;
		for(int x=0;x<1024;x++){
                  	if(mode==1 and inverse==1){
					   out_data.f=line_buf0[x].f* 0.00195312500;
					   out1.write(out_data);
					}
					else if(mode==3 and inverse==1){
						monty_mul(&tmp3,line_buf0[x].u,64);
						line_buf0[x].u=(u16)tmp3;
						out1.write(line_buf0[x]);
					}
					else{
						out1.write(line_buf0[x]);
					}
			}
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
