#pragma once 
#include "header.h"
#include <mc_scverify.h>
class In_copy{
public:
	In_copy(){}
	#pragma hls_design interface
    void CCS_BLOCK(run) (ac_channel<Stream1> &in_data, Stream1 line_buf0[1024],ac_channel<bool> &mode_in,ac_channel<bool> &mode_out) {
		bool mode;
		mode=mode_in.read();
		for(int x=0;x<1024;x++){
			    line_buf0[x]=in_data.read();
		}
		mode_out.write(mode);
	}
};
