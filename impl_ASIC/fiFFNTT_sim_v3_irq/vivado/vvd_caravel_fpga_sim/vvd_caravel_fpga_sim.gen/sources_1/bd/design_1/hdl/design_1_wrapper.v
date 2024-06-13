//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
//Date        : Thu Jun 13 14:35:13 2024
//Host        : ubuntu2004 running 64-bit Ubuntu 20.04.4 LTS
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (resetb_0,
    sys_clock,
    sys_reset);
  input resetb_0;
  input sys_clock;
  input sys_reset;

  wire resetb_0;
  wire sys_clock;
  wire sys_reset;

  design_1 design_1_i
       (.resetb_0(resetb_0),
        .sys_clock(sys_clock),
        .sys_reset(sys_reset));
endmodule
