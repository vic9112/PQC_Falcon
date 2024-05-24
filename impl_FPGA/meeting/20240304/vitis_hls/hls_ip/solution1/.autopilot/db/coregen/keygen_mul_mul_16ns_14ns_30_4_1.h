// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __keygen_mul_mul_16ns_14ns_30_4_1__HH__
#define __keygen_mul_mul_16ns_14ns_30_4_1__HH__
#include "keygen_mul_mul_16ns_14ns_30_4_1_DSP48_0.h"
#include <systemc>

template<
    int ID,
    int NUM_STAGE,
    int din0_WIDTH,
    int din1_WIDTH,
    int dout_WIDTH>
SC_MODULE(keygen_mul_mul_16ns_14ns_30_4_1) {
    sc_core::sc_in_clk clk;
    sc_core::sc_in<sc_dt::sc_logic> reset;
    sc_core::sc_in<sc_dt::sc_logic> ce;
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_in< sc_dt::sc_lv<din1_WIDTH> >   din1;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    keygen_mul_mul_16ns_14ns_30_4_1_DSP48_0 keygen_mul_mul_16ns_14ns_30_4_1_DSP48_0_U;

    SC_CTOR(keygen_mul_mul_16ns_14ns_30_4_1):  keygen_mul_mul_16ns_14ns_30_4_1_DSP48_0_U ("keygen_mul_mul_16ns_14ns_30_4_1_DSP48_0_U") {
        keygen_mul_mul_16ns_14ns_30_4_1_DSP48_0_U.clk(clk);
        keygen_mul_mul_16ns_14ns_30_4_1_DSP48_0_U.rst(reset);
        keygen_mul_mul_16ns_14ns_30_4_1_DSP48_0_U.ce(ce);
        keygen_mul_mul_16ns_14ns_30_4_1_DSP48_0_U.a(din0);
        keygen_mul_mul_16ns_14ns_30_4_1_DSP48_0_U.b(din1);
        keygen_mul_mul_16ns_14ns_30_4_1_DSP48_0_U.p(dout);

    }

};

#endif //
