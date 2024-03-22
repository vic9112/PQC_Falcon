// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __keygen_am_addmul_15s_17s_14ns_32_4_1__HH__
#define __keygen_am_addmul_15s_17s_14ns_32_4_1__HH__
#include "keygen_am_addmul_15s_17s_14ns_32_4_1_DSP48_8.h"
#include <systemc>

template<
    int ID,
    int NUM_STAGE,
    int din0_WIDTH,
    int din1_WIDTH,
    int din2_WIDTH,
    int dout_WIDTH>
SC_MODULE(keygen_am_addmul_15s_17s_14ns_32_4_1) {
    sc_core::sc_in_clk clk;
    sc_core::sc_in<sc_dt::sc_logic> reset;
    sc_core::sc_in<sc_dt::sc_logic> ce;
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_in< sc_dt::sc_lv<din1_WIDTH> >   din1;
    sc_core::sc_in< sc_dt::sc_lv<din2_WIDTH> >   din2;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    keygen_am_addmul_15s_17s_14ns_32_4_1_DSP48_8 keygen_am_addmul_15s_17s_14ns_32_4_1_DSP48_8_U;

    SC_CTOR(keygen_am_addmul_15s_17s_14ns_32_4_1):  keygen_am_addmul_15s_17s_14ns_32_4_1_DSP48_8_U ("keygen_am_addmul_15s_17s_14ns_32_4_1_DSP48_8_U") {
        keygen_am_addmul_15s_17s_14ns_32_4_1_DSP48_8_U.clk(clk);
        keygen_am_addmul_15s_17s_14ns_32_4_1_DSP48_8_U.rst(reset);
        keygen_am_addmul_15s_17s_14ns_32_4_1_DSP48_8_U.ce(ce);
        keygen_am_addmul_15s_17s_14ns_32_4_1_DSP48_8_U.in0(din0);
        keygen_am_addmul_15s_17s_14ns_32_4_1_DSP48_8_U.in1(din1);
        keygen_am_addmul_15s_17s_14ns_32_4_1_DSP48_8_U.in2(din2);
        keygen_am_addmul_15s_17s_14ns_32_4_1_DSP48_8_U.dout(dout);

    }

};

#endif //
