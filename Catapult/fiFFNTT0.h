#pragma once 
#include "header.h"
#include <mc_scverify.h>
#include "Out_state.h"
#include "PE.h"
#include "In_copy.h"

#pragma hls_design top
class fiFFNTT{
	//stage stage_inst;
	PE PE_inst;
    In_copy In_copy_inst;
	Out_state Out_state_inst;
	ac_channel<bool> mode_out0;
	ac_channel<bool> mode_out1;
	ac_channel<bool> mode_out2;
	ac_channel<bool> mode_out3;
	ac_channel<bool> mode_out4;
	ac_channel<bool> mode_out5;
	ac_channel<bool> mode_out6;
	ac_channel<bool> mode_out7;
	ac_channel<bool> mode_out8;
	ac_channel<bool> mode_out9;
	ac_channel<bool> mode_out10;
	public:
	fiFFNTT(){}
	#pragma hls_design interface
	void CCS_BLOCK(run)(ac_channel<Stream1> &in1,
						ac_channel<bool> &mode,
						bool &inverse,
						ac_channel<Stream1>&out1,
						Stream1 line_buf0[1024],
						Stream1 line_buf1[1024])
	{  
        In_copy_inst.run(in1,line_buf0,mode,mode_out0);
		PE_inst.run(line_buf0, line_buf1, 1024, 1,mode_out0,mode_out1, inverse);
		PE_inst.run(line_buf1, line_buf0, 512, 2, mode_out1,mode_out2, inverse);
		PE_inst.run(line_buf0, line_buf1, 256, 4, mode_out2,mode_out2, inverse);
		PE_inst.run(line_buf1, line_buf0, 128, 8, mode_out3,mode_out4, inverse);
		PE_inst.run(line_buf0, line_buf1, 64, 16, mode_out4,mode_out5, inverse);
		PE_inst.run(line_buf1, line_buf0, 32, 32, mode_out5,mode_out6, inverse);
		PE_inst.run(line_buf0, line_buf1, 16, 64, mode_out6,mode_out7, inverse);
		PE_inst.run(line_buf1, line_buf0, 8, 128, mode_out7,mode_out8, inverse);
		PE_inst.run(line_buf0, line_buf1, 4, 256, mode_out8,mode_out9, inverse);
		PE_inst.run(line_buf1, line_buf0, 2, 512, mode_out9,mode_out10,inverse);
		//stage_inst.run(line_buf0, line_buf1,mode_out1, inverse,mode_out2);
        Out_state_inst.run(line_buf0,mode_out10,inverse,out1);
	}	
};


