// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Version: 2022.1
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module top_u_mul (
        ap_ready,
        a,
        ap_return
);


output   ap_ready;
input  [15:0] a;
output  [21:0] ap_return;

assign ap_ready = 1'b1;

assign ap_return = {{a}, {6'd0}};

endmodule //top_u_mul
