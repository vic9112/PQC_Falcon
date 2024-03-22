// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __keygen_ama_submuladd_1ns_16ns_14ns_22ns_30_4_1__HH__
#define __keygen_ama_submuladd_1ns_16ns_14ns_22ns_30_4_1__HH__
#include "keygen_ama_submuladd_1ns_16ns_14ns_22ns_30_4_1_DSP48_9.h"
#include <systemc>

template<
    int ID,
    int NUM_STAGE,
    int din0_WIDTH,
    int din1_WIDTH,
    int din2_WIDTH,
    int din3_WIDTH,
    int dout_WIDTH>
SC_MODULE(keygen_ama_submuladd_1ns_16ns_14ns_22ns_30_4_1) {
    sc_core::sc_in_clk clk;
    sc_core::sc_in<sc_dt::sc_logic> reset;
    sc_core::sc_in<sc_dt::sc_logic> ce;
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_in< sc_dt::sc_lv<din1_WIDTH> >   din1;
    sc_core::sc_in< sc_dt::sc_lv<din2_WIDTH> >   din2;
    sc_core::sc_in< sc_dt::sc_lv<din3_WIDTH> >   din3;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    keygen_ama_submuladd_1ns_16ns_14ns_22ns_30_4_1_DSP48_9 keygen_ama_submuladd_1ns_16ns_14ns_22ns_30_4_1_DSP48_9_U;

    SC_CTOR(keygen_ama_submuladd_1ns_16ns_14ns_22ns_30_4_1):  keygen_ama_submuladd_1ns_16ns_14ns_22ns_30_4_1_DSP48_9_U ("keygen_ama_submuladd_1ns_16ns_14ns_22ns_30_4_1_DSP48_9_U") {
        keygen_ama_submuladd_1ns_16ns_14ns_22ns_30_4_1_DSP48_9_U.clk(clk);
        keygen_ama_submuladd_1ns_16ns_14ns_22ns_30_4_1_DSP48_9_U.rst(reset);
        keygen_ama_submuladd_1ns_16ns_14ns_22ns_30_4_1_DSP48_9_U.ce(ce);
        keygen_ama_submuladd_1ns_16ns_14ns_22ns_30_4_1_DSP48_9_U.in0(din0);
        keygen_ama_submuladd_1ns_16ns_14ns_22ns_30_4_1_DSP48_9_U.in1(din1);
        keygen_ama_submuladd_1ns_16ns_14ns_22ns_30_4_1_DSP48_9_U.in2(din2);
        keygen_ama_submuladd_1ns_16ns_14ns_22ns_30_4_1_DSP48_9_U.in3(din3);
        keygen_ama_submuladd_1ns_16ns_14ns_22ns_30_4_1_DSP48_9_U.dout(dout);

    }

};

#endif //
