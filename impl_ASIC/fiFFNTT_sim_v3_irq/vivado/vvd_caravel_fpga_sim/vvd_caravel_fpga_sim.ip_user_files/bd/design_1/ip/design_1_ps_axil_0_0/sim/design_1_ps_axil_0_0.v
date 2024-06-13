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


// IP VLNV: xilinx.com:module_ref:ps_axil:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_ps_axil_0_0 (
  s_axi_araddr,
  s_axi_arready,
  s_axi_arvalid,
  s_axi_awaddr,
  s_axi_awready,
  s_axi_awvalid,
  s_axi_bready,
  s_axi_bresp,
  s_axi_bvalid,
  s_axi_rdata,
  s_axi_rready,
  s_axi_rresp,
  s_axi_rvalid,
  s_axi_wdata,
  s_axi_wready,
  s_axi_wstrb,
  s_axi_wvalid,
  aa_mb_irq,
  is_ioclk,
  caravel_mprj_out,
  caravel_mprj_in,
  ladma_mm_araddr,
  ladma_mm_arburst,
  ladma_mm_arcache,
  ladma_mm_arid,
  ladma_mm_arlen,
  ladma_mm_arlock,
  ladma_mm_arprot,
  ladma_mm_arqos,
  ladma_mm_arready,
  ladma_mm_arregion,
  ladma_mm_arsize,
  ladma_mm_aruser,
  ladma_mm_arvalid,
  ladma_mm_awaddr,
  ladma_mm_awburst,
  ladma_mm_awcache,
  ladma_mm_awid,
  ladma_mm_awlen,
  ladma_mm_awlock,
  ladma_mm_awprot,
  ladma_mm_awqos,
  ladma_mm_awready,
  ladma_mm_awregion,
  ladma_mm_awsize,
  ladma_mm_awuser,
  ladma_mm_awvalid,
  ladma_mm_bid,
  ladma_mm_bready,
  ladma_mm_bresp,
  ladma_mm_buser,
  ladma_mm_bvalid,
  ladma_mm_rdata,
  ladma_mm_rid,
  ladma_mm_rlast,
  ladma_mm_rready,
  ladma_mm_rresp,
  ladma_mm_ruser,
  ladma_mm_rvalid,
  ladma_mm_wdata,
  ladma_mm_wlast,
  ladma_mm_wready,
  ladma_mm_wstrb,
  ladma_mm_wuser,
  ladma_mm_wvalid,
  ladma_s_araddr,
  ladma_s_arready,
  ladma_s_arvalid,
  ladma_s_awaddr,
  ladma_s_awready,
  ladma_s_awvalid,
  ladma_s_bready,
  ladma_s_bresp,
  ladma_s_bvalid,
  ladma_s_rdata,
  ladma_s_rready,
  ladma_s_rresp,
  ladma_s_rvalid,
  ladma_s_wdata,
  ladma_s_wready,
  ladma_s_wstrb,
  ladma_s_wvalid,
  ladma_interrupt,
  updma_si_tdata,
  updma_si_tstrb,
  updma_si_tkeep,
  updma_si_tlast,
  updma_si_tvalid,
  updma_si_tuser,
  updma_si_tready,
  updma_so_tdata,
  updma_so_tstrb,
  updma_so_tkeep,
  updma_so_tlast,
  updma_so_tvalid,
  updma_so_tuser,
  updma_so_tready,
  qspi_io0_i,
  qspi_io1_o,
  qspi_sck_i,
  qspi_ss_i,
  axi_clk,
  axi_reset_n,
  axi_clk_m,
  axi_reset_m_n,
  axi_clk_usdi,
  axi_reset_usdi_n,
  axi_clk_udso,
  axi_reset_udso_n,
  axis_clk,
  axis_rst_n
);

(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARADDR" *)
input wire [31 : 0] s_axi_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARREADY" *)
output wire s_axi_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARVALID" *)
input wire s_axi_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWADDR" *)
input wire [31 : 0] s_axi_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWREADY" *)
output wire s_axi_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWVALID" *)
input wire s_axi_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BREADY" *)
input wire s_axi_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BRESP" *)
output wire [1 : 0] s_axi_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BVALID" *)
output wire s_axi_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *)
output wire [31 : 0] s_axi_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RREADY" *)
input wire s_axi_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RRESP" *)
output wire [1 : 0] s_axi_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RVALID" *)
output wire s_axi_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WDATA" *)
input wire [31 : 0] s_axi_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WREADY" *)
output wire s_axi_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WSTRB" *)
input wire [3 : 0] s_axi_wstrb;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 5000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, \
RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WVALID" *)
input wire s_axi_wvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aa_mb_irq, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 aa_mb_irq INTERRUPT" *)
output wire aa_mb_irq;
input wire is_ioclk;
output wire [37 : 0] caravel_mprj_out;
input wire [37 : 0] caravel_mprj_in;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ladma_mm ARADDR" *)
output wire [63 : 0] ladma_mm_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ladma_mm ARBURST" *)
output wire [1 : 0] ladma_mm_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ladma_mm ARCACHE" *)
output wire [3 : 0] ladma_mm_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ladma_mm ARID" *)
output wire [0 : 0] ladma_mm_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ladma_mm ARLEN" *)
output wire [7 : 0] ladma_mm_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ladma_mm ARLOCK" *)
output wire [1 : 0] ladma_mm_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ladma_mm ARPROT" *)
output wire [2 : 0] ladma_mm_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ladma_mm ARQOS" *)
output wire [3 : 0] ladma_mm_arqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ladma_mm ARREADY" *)
input wire ladma_mm_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ladma_mm ARREGION" *)
output wire [3 : 0] ladma_mm_arregion;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ladma_mm ARSIZE" *)
output wire [2 : 0] ladma_mm_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ladma_mm ARUSER" *)
output wire [0 : 0] ladma_mm_aruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ladma_mm ARVALID" *)
output wire ladma_mm_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ladma_mm AWADDR" *)
output wire [63 : 0] ladma_mm_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ladma_mm AWBURST" *)
output wire [1 : 0] ladma_mm_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ladma_mm AWCACHE" *)
output wire [3 : 0] ladma_mm_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ladma_mm AWID" *)
output wire [0 : 0] ladma_mm_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ladma_mm AWLEN" *)
output wire [7 : 0] ladma_mm_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ladma_mm AWLOCK" *)
output wire [1 : 0] ladma_mm_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ladma_mm AWPROT" *)
output wire [2 : 0] ladma_mm_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ladma_mm AWQOS" *)
output wire [3 : 0] ladma_mm_awqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ladma_mm AWREADY" *)
input wire ladma_mm_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ladma_mm AWREGION" *)
output wire [3 : 0] ladma_mm_awregion;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ladma_mm AWSIZE" *)
output wire [2 : 0] ladma_mm_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ladma_mm AWUSER" *)
output wire [0 : 0] ladma_mm_awuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ladma_mm AWVALID" *)
output wire ladma_mm_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ladma_mm BID" *)
input wire [0 : 0] ladma_mm_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ladma_mm BREADY" *)
output wire ladma_mm_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ladma_mm BRESP" *)
input wire [1 : 0] ladma_mm_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ladma_mm BUSER" *)
input wire [0 : 0] ladma_mm_buser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ladma_mm BVALID" *)
input wire ladma_mm_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ladma_mm RDATA" *)
input wire [31 : 0] ladma_mm_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ladma_mm RID" *)
input wire [0 : 0] ladma_mm_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ladma_mm RLAST" *)
input wire ladma_mm_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ladma_mm RREADY" *)
output wire ladma_mm_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ladma_mm RRESP" *)
input wire [1 : 0] ladma_mm_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ladma_mm RUSER" *)
input wire [0 : 0] ladma_mm_ruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ladma_mm RVALID" *)
input wire ladma_mm_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ladma_mm WDATA" *)
output wire [31 : 0] ladma_mm_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ladma_mm WLAST" *)
output wire ladma_mm_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ladma_mm WREADY" *)
input wire ladma_mm_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ladma_mm WSTRB" *)
output wire [3 : 0] ladma_mm_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ladma_mm WUSER" *)
output wire [0 : 0] ladma_mm_wuser;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ladma_mm, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 5000000, ID_WIDTH 1, ADDR_WIDTH 64, AWUSER_WIDTH 1, ARUSER_WIDTH 1, WUSER_WIDTH 1, RUSER_WIDTH 1, BUSER_WIDTH 1, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1,\
 RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ladma_mm WVALID" *)
output wire ladma_mm_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ladma_s ARADDR" *)
input wire [31 : 0] ladma_s_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ladma_s ARREADY" *)
output wire ladma_s_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ladma_s ARVALID" *)
input wire ladma_s_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ladma_s AWADDR" *)
input wire [31 : 0] ladma_s_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ladma_s AWREADY" *)
output wire ladma_s_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ladma_s AWVALID" *)
input wire ladma_s_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ladma_s BREADY" *)
input wire ladma_s_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ladma_s BRESP" *)
output wire [1 : 0] ladma_s_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ladma_s BVALID" *)
output wire ladma_s_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ladma_s RDATA" *)
output wire [31 : 0] ladma_s_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ladma_s RREADY" *)
input wire ladma_s_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ladma_s RRESP" *)
output wire [1 : 0] ladma_s_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ladma_s RVALID" *)
output wire ladma_s_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ladma_s WDATA" *)
input wire [31 : 0] ladma_s_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ladma_s WREADY" *)
output wire ladma_s_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ladma_s WSTRB" *)
input wire [3 : 0] ladma_s_wstrb;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ladma_s, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 5000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1\
, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ladma_s WVALID" *)
input wire ladma_s_wvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ladma_interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 ladma_interrupt INTERRUPT" *)
output wire ladma_interrupt;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 updma_si TDATA" *)
input wire [31 : 0] updma_si_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 updma_si TSTRB" *)
input wire [3 : 0] updma_si_tstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 updma_si TKEEP" *)
input wire [3 : 0] updma_si_tkeep;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 updma_si TLAST" *)
input wire updma_si_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 updma_si TVALID" *)
input wire updma_si_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 updma_si TUSER" *)
input wire [6 : 0] updma_si_tuser;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME updma_si, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 7, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 5000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 updma_si TREADY" *)
output wire updma_si_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 updma_so TDATA" *)
output wire [31 : 0] updma_so_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 updma_so TSTRB" *)
output wire [3 : 0] updma_so_tstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 updma_so TKEEP" *)
output wire [3 : 0] updma_so_tkeep;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 updma_so TLAST" *)
output wire updma_so_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 updma_so TVALID" *)
output wire updma_so_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 updma_so TUSER" *)
output wire [6 : 0] updma_so_tuser;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME updma_so, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 7, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 5000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 updma_so TREADY" *)
input wire updma_so_tready;
input wire qspi_io0_i;
output wire qspi_io1_o;
input wire qspi_sck_i;
input wire qspi_ss_i;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axi_clk, ASSOCIATED_BUSIF s_axi, ASSOCIATED_RESET axi_reset_n, FREQ_HZ 5000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 axi_clk CLK" *)
input wire axi_clk;
input wire axi_reset_n;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axi_clk_m, ASSOCIATED_BUSIF ladma_mm, ASSOCIATED_RESET axi_reset_m_n, FREQ_HZ 5000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 axi_clk_m CLK" *)
input wire axi_clk_m;
input wire axi_reset_m_n;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axi_clk_udsi, ASSOCIATED_BUSIF updma_si, ASSOCIATED_RESET axis_rst_n, FREQ_HZ 5000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 axi_clk_udsi CLK" *)
input wire axi_clk_usdi;
input wire axi_reset_usdi_n;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axi_clk_udso, ASSOCIATED_BUSIF updma_so, ASSOCIATED_RESET axis_rst_n, FREQ_HZ 5000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 axi_clk_udso CLK" *)
input wire axi_clk_udso;
input wire axi_reset_udso_n;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axis_clk, ASSOCIATED_BUSIF ladma_s, ASSOCIATED_RESET axis_rst_n, FREQ_HZ 5000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 axis_clk CLK" *)
input wire axis_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axis_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 axis_rst_n RST" *)
input wire axis_rst_n;

  ps_axil inst (
    .s_axi_araddr(s_axi_araddr),
    .s_axi_arready(s_axi_arready),
    .s_axi_arvalid(s_axi_arvalid),
    .s_axi_awaddr(s_axi_awaddr),
    .s_axi_awready(s_axi_awready),
    .s_axi_awvalid(s_axi_awvalid),
    .s_axi_bready(s_axi_bready),
    .s_axi_bresp(s_axi_bresp),
    .s_axi_bvalid(s_axi_bvalid),
    .s_axi_rdata(s_axi_rdata),
    .s_axi_rready(s_axi_rready),
    .s_axi_rresp(s_axi_rresp),
    .s_axi_rvalid(s_axi_rvalid),
    .s_axi_wdata(s_axi_wdata),
    .s_axi_wready(s_axi_wready),
    .s_axi_wstrb(s_axi_wstrb),
    .s_axi_wvalid(s_axi_wvalid),
    .aa_mb_irq(aa_mb_irq),
    .is_ioclk(is_ioclk),
    .caravel_mprj_out(caravel_mprj_out),
    .caravel_mprj_in(caravel_mprj_in),
    .ladma_mm_araddr(ladma_mm_araddr),
    .ladma_mm_arburst(ladma_mm_arburst),
    .ladma_mm_arcache(ladma_mm_arcache),
    .ladma_mm_arid(ladma_mm_arid),
    .ladma_mm_arlen(ladma_mm_arlen),
    .ladma_mm_arlock(ladma_mm_arlock),
    .ladma_mm_arprot(ladma_mm_arprot),
    .ladma_mm_arqos(ladma_mm_arqos),
    .ladma_mm_arready(ladma_mm_arready),
    .ladma_mm_arregion(ladma_mm_arregion),
    .ladma_mm_arsize(ladma_mm_arsize),
    .ladma_mm_aruser(ladma_mm_aruser),
    .ladma_mm_arvalid(ladma_mm_arvalid),
    .ladma_mm_awaddr(ladma_mm_awaddr),
    .ladma_mm_awburst(ladma_mm_awburst),
    .ladma_mm_awcache(ladma_mm_awcache),
    .ladma_mm_awid(ladma_mm_awid),
    .ladma_mm_awlen(ladma_mm_awlen),
    .ladma_mm_awlock(ladma_mm_awlock),
    .ladma_mm_awprot(ladma_mm_awprot),
    .ladma_mm_awqos(ladma_mm_awqos),
    .ladma_mm_awready(ladma_mm_awready),
    .ladma_mm_awregion(ladma_mm_awregion),
    .ladma_mm_awsize(ladma_mm_awsize),
    .ladma_mm_awuser(ladma_mm_awuser),
    .ladma_mm_awvalid(ladma_mm_awvalid),
    .ladma_mm_bid(ladma_mm_bid),
    .ladma_mm_bready(ladma_mm_bready),
    .ladma_mm_bresp(ladma_mm_bresp),
    .ladma_mm_buser(ladma_mm_buser),
    .ladma_mm_bvalid(ladma_mm_bvalid),
    .ladma_mm_rdata(ladma_mm_rdata),
    .ladma_mm_rid(ladma_mm_rid),
    .ladma_mm_rlast(ladma_mm_rlast),
    .ladma_mm_rready(ladma_mm_rready),
    .ladma_mm_rresp(ladma_mm_rresp),
    .ladma_mm_ruser(ladma_mm_ruser),
    .ladma_mm_rvalid(ladma_mm_rvalid),
    .ladma_mm_wdata(ladma_mm_wdata),
    .ladma_mm_wlast(ladma_mm_wlast),
    .ladma_mm_wready(ladma_mm_wready),
    .ladma_mm_wstrb(ladma_mm_wstrb),
    .ladma_mm_wuser(ladma_mm_wuser),
    .ladma_mm_wvalid(ladma_mm_wvalid),
    .ladma_s_araddr(ladma_s_araddr),
    .ladma_s_arready(ladma_s_arready),
    .ladma_s_arvalid(ladma_s_arvalid),
    .ladma_s_awaddr(ladma_s_awaddr),
    .ladma_s_awready(ladma_s_awready),
    .ladma_s_awvalid(ladma_s_awvalid),
    .ladma_s_bready(ladma_s_bready),
    .ladma_s_bresp(ladma_s_bresp),
    .ladma_s_bvalid(ladma_s_bvalid),
    .ladma_s_rdata(ladma_s_rdata),
    .ladma_s_rready(ladma_s_rready),
    .ladma_s_rresp(ladma_s_rresp),
    .ladma_s_rvalid(ladma_s_rvalid),
    .ladma_s_wdata(ladma_s_wdata),
    .ladma_s_wready(ladma_s_wready),
    .ladma_s_wstrb(ladma_s_wstrb),
    .ladma_s_wvalid(ladma_s_wvalid),
    .ladma_interrupt(ladma_interrupt),
    .updma_si_tdata(updma_si_tdata),
    .updma_si_tstrb(updma_si_tstrb),
    .updma_si_tkeep(updma_si_tkeep),
    .updma_si_tlast(updma_si_tlast),
    .updma_si_tvalid(updma_si_tvalid),
    .updma_si_tuser(updma_si_tuser),
    .updma_si_tready(updma_si_tready),
    .updma_so_tdata(updma_so_tdata),
    .updma_so_tstrb(updma_so_tstrb),
    .updma_so_tkeep(updma_so_tkeep),
    .updma_so_tlast(updma_so_tlast),
    .updma_so_tvalid(updma_so_tvalid),
    .updma_so_tuser(updma_so_tuser),
    .updma_so_tready(updma_so_tready),
    .qspi_io0_i(qspi_io0_i),
    .qspi_io1_o(qspi_io1_o),
    .qspi_sck_i(qspi_sck_i),
    .qspi_ss_i(qspi_ss_i),
    .axi_clk(axi_clk),
    .axi_reset_n(axi_reset_n),
    .axi_clk_m(axi_clk_m),
    .axi_reset_m_n(axi_reset_m_n),
    .axi_clk_usdi(axi_clk_usdi),
    .axi_reset_usdi_n(axi_reset_usdi_n),
    .axi_clk_udso(axi_clk_udso),
    .axi_reset_udso_n(axi_reset_udso_n),
    .axis_clk(axis_clk),
    .axis_rst_n(axis_rst_n)
  );
endmodule
