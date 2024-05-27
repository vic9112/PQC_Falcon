#pragma once 
#include <ac_int.h>
#include <ac_math.h>
#include <ac_fixed.h>
#include <ac_float.h>
#include <ac_channel.h>
#include <mc_scverify.h>
#pragma hls_design top
class In_copy{
public:
	In_copy(){}
	#pragma hls_design interface
    void CCS_BLOCK(run) (ac_channel<ac_int<32, false>> &in_data, ac_int<64, false>qin[1024],ac_channel<bool> &ap_done,ac_channel<bool> &ap_start,bool &mode) {
	bool start;
	start=ap_start.read();
	ac_int<64, false>tmp1;
	for (int x=0;x<1024;x++){
		if(mode){
		ac_int<32, false> tmp;
		tmp =in_data.read();
		tmp1.set_slc(0,tmp);
		qin[x]=tmp1;}
		else {
        ac_int<32, false> tmp;
		tmp =in_data.read();
		tmp1.set_slc(0,tmp);
		tmp =in_data.read();
		tmp1.set_slc(32,tmp);
		qin[x]=tmp1;
		}
	}
	ap_done.write(1);
	}
};
