// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================

extern "C" void AESL_WRAP_userdma (
hls::stream<struct ap_axis<32, 0, 0, 0 > > (&inStreamTop),
volatile void* s2m_buf_sts,
char s2m_sts_clear,
int s2m_len,
char s2m_enb_clrsts,
volatile void* s2mbuf,
volatile void* s2m_err,
int Img_width,
volatile void* m2sbuf,
volatile void* m2s_buf_sts,
char m2s_sts_clear,
int m2s_len,
char m2s_enb_clrsts,
hls::stream<struct ap_axis<32, 0, 0, 0 > > (&outStreamTop));
