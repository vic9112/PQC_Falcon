// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================

extern "C" void AESL_WRAP_userdma (
hls::stream<struct ap_axis<32, 0, 0, 0 > > (&inStreamTop),
hls::stream<struct ap_axis<32, 0, 0, 0 > > (&outStreamTop),
char kernel_mode,
volatile void* s2m_buf_sts,
volatile void* m2s_buf_sts,
volatile void* s2mbuf,
volatile void* m2sbuf,
volatile void* s2m_err);
