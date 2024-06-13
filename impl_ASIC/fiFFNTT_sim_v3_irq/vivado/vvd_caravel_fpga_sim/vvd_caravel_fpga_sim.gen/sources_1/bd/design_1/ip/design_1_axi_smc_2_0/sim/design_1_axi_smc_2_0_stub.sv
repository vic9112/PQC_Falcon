// (c) Copyright 1995-2024 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


//------------------------------------------------------------------------------------
// Filename:    design_1_axi_smc_2_0_stub.sv
// Description: This HDL file is intended to be used with following simulators only:
//
//   Vivado Simulator (XSim)
//   Cadence Xcelium Simulator
//
//------------------------------------------------------------------------------------
`timescale 1ps/1ps

`ifdef XILINX_SIMULATOR

`ifndef XILINX_SIMULATOR_BITASBOOL
`define XILINX_SIMULATOR_BITASBOOL
typedef bit bit_as_bool;
`endif

(* SC_MODULE_EXPORT *)
module design_1_axi_smc_2_0 (
  input bit_as_bool aclk,
  input bit_as_bool aresetn,
  input bit [63 : 0] S00_AXI_araddr,
  input bit [7 : 0] S00_AXI_arlen,
  input bit [2 : 0] S00_AXI_arsize,
  input bit [1 : 0] S00_AXI_arburst,
  input bit [0 : 0] S00_AXI_arlock,
  input bit [3 : 0] S00_AXI_arcache,
  input bit [2 : 0] S00_AXI_arprot,
  input bit [3 : 0] S00_AXI_arqos,
  input bit_as_bool S00_AXI_arvalid,
  output bit_as_bool S00_AXI_arready,
  output bit [63 : 0] S00_AXI_rdata,
  output bit [1 : 0] S00_AXI_rresp,
  output bit_as_bool S00_AXI_rlast,
  output bit_as_bool S00_AXI_rvalid,
  input bit_as_bool S00_AXI_rready,
  output bit [31 : 0] M00_AXI_araddr,
  output bit [7 : 0] M00_AXI_arlen,
  output bit [2 : 0] M00_AXI_arsize,
  output bit [1 : 0] M00_AXI_arburst,
  output bit [0 : 0] M00_AXI_arlock,
  output bit [3 : 0] M00_AXI_arcache,
  output bit [2 : 0] M00_AXI_arprot,
  output bit [3 : 0] M00_AXI_arqos,
  output bit_as_bool M00_AXI_arvalid,
  input bit_as_bool M00_AXI_arready,
  input bit [31 : 0] M00_AXI_rdata,
  input bit [1 : 0] M00_AXI_rresp,
  input bit_as_bool M00_AXI_rlast,
  input bit_as_bool M00_AXI_rvalid,
  output bit_as_bool M00_AXI_rready
);
endmodule
`endif

`ifdef XCELIUM
(* XMSC_MODULE_EXPORT *)
module design_1_axi_smc_2_0 (aclk,aresetn,S00_AXI_araddr,S00_AXI_arlen,S00_AXI_arsize,S00_AXI_arburst,S00_AXI_arlock,S00_AXI_arcache,S00_AXI_arprot,S00_AXI_arqos,S00_AXI_arvalid,S00_AXI_arready,S00_AXI_rdata,S00_AXI_rresp,S00_AXI_rlast,S00_AXI_rvalid,S00_AXI_rready,M00_AXI_araddr,M00_AXI_arlen,M00_AXI_arsize,M00_AXI_arburst,M00_AXI_arlock,M00_AXI_arcache,M00_AXI_arprot,M00_AXI_arqos,M00_AXI_arvalid,M00_AXI_arready,M00_AXI_rdata,M00_AXI_rresp,M00_AXI_rlast,M00_AXI_rvalid,M00_AXI_rready)
(* integer foreign = "SystemC";
*);
  input bit aclk;
  input bit aresetn;
  input bit [63 : 0] S00_AXI_araddr;
  input bit [7 : 0] S00_AXI_arlen;
  input bit [2 : 0] S00_AXI_arsize;
  input bit [1 : 0] S00_AXI_arburst;
  input bit [0 : 0] S00_AXI_arlock;
  input bit [3 : 0] S00_AXI_arcache;
  input bit [2 : 0] S00_AXI_arprot;
  input bit [3 : 0] S00_AXI_arqos;
  input bit S00_AXI_arvalid;
  output wire S00_AXI_arready;
  output wire [63 : 0] S00_AXI_rdata;
  output wire [1 : 0] S00_AXI_rresp;
  output wire S00_AXI_rlast;
  output wire S00_AXI_rvalid;
  input bit S00_AXI_rready;
  output wire [31 : 0] M00_AXI_araddr;
  output wire [7 : 0] M00_AXI_arlen;
  output wire [2 : 0] M00_AXI_arsize;
  output wire [1 : 0] M00_AXI_arburst;
  output wire [0 : 0] M00_AXI_arlock;
  output wire [3 : 0] M00_AXI_arcache;
  output wire [2 : 0] M00_AXI_arprot;
  output wire [3 : 0] M00_AXI_arqos;
  output wire M00_AXI_arvalid;
  input bit M00_AXI_arready;
  input bit [31 : 0] M00_AXI_rdata;
  input bit [1 : 0] M00_AXI_rresp;
  input bit M00_AXI_rlast;
  input bit M00_AXI_rvalid;
  output wire M00_AXI_rready;
endmodule
`endif
