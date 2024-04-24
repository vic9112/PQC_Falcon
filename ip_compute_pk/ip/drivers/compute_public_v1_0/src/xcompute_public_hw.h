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
// 0x10 : Data signal of ap_return
//        bit 31~0 - ap_return[31:0] (Read)
// 0x18 : Data signal of h
//        bit 31~0 - h[31:0] (Read/Write)
// 0x1c : Data signal of h
//        bit 31~0 - h[63:32] (Read/Write)
// 0x20 : reserved
// 0x24 : Data signal of f
//        bit 31~0 - f[31:0] (Read/Write)
// 0x28 : Data signal of f
//        bit 31~0 - f[63:32] (Read/Write)
// 0x2c : reserved
// 0x30 : Data signal of g
//        bit 31~0 - g[31:0] (Read/Write)
// 0x34 : Data signal of g
//        bit 31~0 - g[63:32] (Read/Write)
// 0x38 : reserved
// 0x3c : Data signal of logn
//        bit 31~0 - logn[31:0] (Read/Write)
// 0x40 : reserved
// 0x44 : Data signal of tmp
//        bit 31~0 - tmp[31:0] (Read/Write)
// 0x48 : Data signal of tmp
//        bit 31~0 - tmp[63:32] (Read/Write)
// 0x4c : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XCOMPUTE_PUBLIC_CONTROL_ADDR_AP_CTRL   0x00
#define XCOMPUTE_PUBLIC_CONTROL_ADDR_GIE       0x04
#define XCOMPUTE_PUBLIC_CONTROL_ADDR_IER       0x08
#define XCOMPUTE_PUBLIC_CONTROL_ADDR_ISR       0x0c
#define XCOMPUTE_PUBLIC_CONTROL_ADDR_AP_RETURN 0x10
#define XCOMPUTE_PUBLIC_CONTROL_BITS_AP_RETURN 32
#define XCOMPUTE_PUBLIC_CONTROL_ADDR_H_DATA    0x18
#define XCOMPUTE_PUBLIC_CONTROL_BITS_H_DATA    64
#define XCOMPUTE_PUBLIC_CONTROL_ADDR_F_DATA    0x24
#define XCOMPUTE_PUBLIC_CONTROL_BITS_F_DATA    64
#define XCOMPUTE_PUBLIC_CONTROL_ADDR_G_DATA    0x30
#define XCOMPUTE_PUBLIC_CONTROL_BITS_G_DATA    64
#define XCOMPUTE_PUBLIC_CONTROL_ADDR_LOGN_DATA 0x3c
#define XCOMPUTE_PUBLIC_CONTROL_BITS_LOGN_DATA 32
#define XCOMPUTE_PUBLIC_CONTROL_ADDR_TMP_DATA  0x44
#define XCOMPUTE_PUBLIC_CONTROL_BITS_TMP_DATA  64

