// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __mq_iNTT_mul_mul_16s_14ns_16_4_1__HH__
#define __mq_iNTT_mul_mul_16s_14ns_16_4_1__HH__
#include "mq_iNTT_mul_mul_16s_14ns_16_4_1_DSP48_1.h"
#include <systemc>

template<
    int ID,
    int NUM_STAGE,
    int din0_WIDTH,
    int din1_WIDTH,
    int dout_WIDTH>
SC_MODULE(mq_iNTT_mul_mul_16s_14ns_16_4_1) {
    sc_core::sc_in_clk clk;
    sc_core::sc_in<sc_dt::sc_logic> reset;
    sc_core::sc_in<sc_dt::sc_logic> ce;
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_in< sc_dt::sc_lv<din1_WIDTH> >   din1;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    mq_iNTT_mul_mul_16s_14ns_16_4_1_DSP48_1 mq_iNTT_mul_mul_16s_14ns_16_4_1_DSP48_1_U;

    SC_CTOR(mq_iNTT_mul_mul_16s_14ns_16_4_1):  mq_iNTT_mul_mul_16s_14ns_16_4_1_DSP48_1_U ("mq_iNTT_mul_mul_16s_14ns_16_4_1_DSP48_1_U") {
        mq_iNTT_mul_mul_16s_14ns_16_4_1_DSP48_1_U.clk(clk);
        mq_iNTT_mul_mul_16s_14ns_16_4_1_DSP48_1_U.rst(reset);
        mq_iNTT_mul_mul_16s_14ns_16_4_1_DSP48_1_U.ce(ce);
        mq_iNTT_mul_mul_16s_14ns_16_4_1_DSP48_1_U.a(din0);
        mq_iNTT_mul_mul_16s_14ns_16_4_1_DSP48_1_U.b(din1);
        mq_iNTT_mul_mul_16s_14ns_16_4_1_DSP48_1_U.p(dout);

    }

};

#endif //
