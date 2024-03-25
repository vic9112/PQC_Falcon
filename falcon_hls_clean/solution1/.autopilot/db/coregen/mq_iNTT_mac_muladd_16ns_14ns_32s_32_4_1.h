// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __mq_iNTT_mac_muladd_16ns_14ns_32s_32_4_1__HH__
#define __mq_iNTT_mac_muladd_16ns_14ns_32s_32_4_1__HH__
#include "mq_iNTT_mac_muladd_16ns_14ns_32s_32_4_1_DSP48_2.h"
#include <systemc>

template<
    int ID,
    int NUM_STAGE,
    int din0_WIDTH,
    int din1_WIDTH,
    int din2_WIDTH,
    int dout_WIDTH>
SC_MODULE(mq_iNTT_mac_muladd_16ns_14ns_32s_32_4_1) {
    sc_core::sc_in_clk clk;
    sc_core::sc_in<sc_dt::sc_logic> reset;
    sc_core::sc_in<sc_dt::sc_logic> ce;
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_in< sc_dt::sc_lv<din1_WIDTH> >   din1;
    sc_core::sc_in< sc_dt::sc_lv<din2_WIDTH> >   din2;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    mq_iNTT_mac_muladd_16ns_14ns_32s_32_4_1_DSP48_2 mq_iNTT_mac_muladd_16ns_14ns_32s_32_4_1_DSP48_2_U;

    SC_CTOR(mq_iNTT_mac_muladd_16ns_14ns_32s_32_4_1):  mq_iNTT_mac_muladd_16ns_14ns_32s_32_4_1_DSP48_2_U ("mq_iNTT_mac_muladd_16ns_14ns_32s_32_4_1_DSP48_2_U") {
        mq_iNTT_mac_muladd_16ns_14ns_32s_32_4_1_DSP48_2_U.clk(clk);
        mq_iNTT_mac_muladd_16ns_14ns_32s_32_4_1_DSP48_2_U.rst(reset);
        mq_iNTT_mac_muladd_16ns_14ns_32s_32_4_1_DSP48_2_U.ce(ce);
        mq_iNTT_mac_muladd_16ns_14ns_32s_32_4_1_DSP48_2_U.in0(din0);
        mq_iNTT_mac_muladd_16ns_14ns_32s_32_4_1_DSP48_2_U.in1(din1);
        mq_iNTT_mac_muladd_16ns_14ns_32s_32_4_1_DSP48_2_U.in2(din2);
        mq_iNTT_mac_muladd_16ns_14ns_32s_32_4_1_DSP48_2_U.dout(dout);

    }

};

#endif //
