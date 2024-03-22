// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
// control
// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read/COR)
//        bit 7  - auto_restart (Read/Write)
//        bit 9  - interrupt (Read)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0 - enable ap_done interrupt (Read/Write)
//        bit 1 - enable ap_ready interrupt (Read/Write)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/COR)
//        bit 0 - ap_done (Read/COR)
//        bit 1 - ap_ready (Read/COR)
//        others - reserved
// 0x10 : Data signal of f_out
//        bit 31~0 - f_out[31:0] (Read/Write)
// 0x14 : Data signal of f_out
//        bit 31~0 - f_out[63:32] (Read/Write)
// 0x18 : reserved
// 0x1c : Data signal of g_out
//        bit 31~0 - g_out[31:0] (Read/Write)
// 0x20 : Data signal of g_out
//        bit 31~0 - g_out[63:32] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of F_upper_out
//        bit 31~0 - F_upper_out[31:0] (Read/Write)
// 0x2c : Data signal of F_upper_out
//        bit 31~0 - F_upper_out[63:32] (Read/Write)
// 0x30 : reserved
// 0x34 : Data signal of G_upper_out
//        bit 31~0 - G_upper_out[31:0] (Read/Write)
// 0x38 : Data signal of G_upper_out
//        bit 31~0 - G_upper_out[63:32] (Read/Write)
// 0x3c : reserved
// 0x40 : Data signal of h_out
//        bit 31~0 - h_out[31:0] (Read/Write)
// 0x44 : Data signal of h_out
//        bit 31~0 - h_out[63:32] (Read/Write)
// 0x48 : reserved
// 0x4c : Data signal of seed
//        bit 31~0 - seed[31:0] (Read/Write)
// 0x50 : Data signal of seed
//        bit 31~0 - seed[63:32] (Read/Write)
// 0x54 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XKEYGEN_CONTROL_ADDR_AP_CTRL          0x00
#define XKEYGEN_CONTROL_ADDR_GIE              0x04
#define XKEYGEN_CONTROL_ADDR_IER              0x08
#define XKEYGEN_CONTROL_ADDR_ISR              0x0c
#define XKEYGEN_CONTROL_ADDR_F_OUT_DATA       0x10
#define XKEYGEN_CONTROL_BITS_F_OUT_DATA       64
#define XKEYGEN_CONTROL_ADDR_G_OUT_DATA       0x1c
#define XKEYGEN_CONTROL_BITS_G_OUT_DATA       64
#define XKEYGEN_CONTROL_ADDR_F_UPPER_OUT_DATA 0x28
#define XKEYGEN_CONTROL_BITS_F_UPPER_OUT_DATA 64
#define XKEYGEN_CONTROL_ADDR_G_UPPER_OUT_DATA 0x34
#define XKEYGEN_CONTROL_BITS_G_UPPER_OUT_DATA 64
#define XKEYGEN_CONTROL_ADDR_H_OUT_DATA       0x40
#define XKEYGEN_CONTROL_BITS_H_OUT_DATA       64
#define XKEYGEN_CONTROL_ADDR_SEED_DATA        0x4c
#define XKEYGEN_CONTROL_BITS_SEED_DATA        64

