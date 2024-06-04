// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Mon May 27 07:29:50 2024
// Host        : ubuntu2004 running 64-bit Ubuntu 20.04.6 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_ps_axil_0_0_stub.v
// Design      : design_1_ps_axil_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ps_axil,Vivado 2022.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(s_axi_araddr, s_axi_arready, s_axi_arvalid, 
  s_axi_awaddr, s_axi_awready, s_axi_awvalid, s_axi_bready, s_axi_bresp, s_axi_bvalid, 
  s_axi_rdata, s_axi_rready, s_axi_rresp, s_axi_rvalid, s_axi_wdata, s_axi_wready, s_axi_wstrb, 
  s_axi_wvalid, aa_mb_irq, is_ioclk, caravel_mprj_out, caravel_mprj_in, ladma_mm_araddr, 
  ladma_mm_arburst, ladma_mm_arcache, ladma_mm_arid, ladma_mm_arlen, ladma_mm_arlock, 
  ladma_mm_arprot, ladma_mm_arqos, ladma_mm_arready, ladma_mm_arregion, ladma_mm_arsize, 
  ladma_mm_aruser, ladma_mm_arvalid, ladma_mm_awaddr, ladma_mm_awburst, ladma_mm_awcache, 
  ladma_mm_awid, ladma_mm_awlen, ladma_mm_awlock, ladma_mm_awprot, ladma_mm_awqos, 
  ladma_mm_awready, ladma_mm_awregion, ladma_mm_awsize, ladma_mm_awuser, ladma_mm_awvalid, 
  ladma_mm_bid, ladma_mm_bready, ladma_mm_bresp, ladma_mm_buser, ladma_mm_bvalid, 
  ladma_mm_rdata, ladma_mm_rid, ladma_mm_rlast, ladma_mm_rready, ladma_mm_rresp, 
  ladma_mm_ruser, ladma_mm_rvalid, ladma_mm_wdata, ladma_mm_wlast, ladma_mm_wready, 
  ladma_mm_wstrb, ladma_mm_wuser, ladma_mm_wvalid, ladma_s_araddr, ladma_s_arready, 
  ladma_s_arvalid, ladma_s_awaddr, ladma_s_awready, ladma_s_awvalid, ladma_s_bready, 
  ladma_s_bresp, ladma_s_bvalid, ladma_s_rdata, ladma_s_rready, ladma_s_rresp, 
  ladma_s_rvalid, ladma_s_wdata, ladma_s_wready, ladma_s_wstrb, ladma_s_wvalid, 
  ladma_interrupt, updma_si_tdata, updma_si_tstrb, updma_si_tkeep, updma_si_tlast, 
  updma_si_tvalid, updma_si_tuser, updma_si_tready, updma_so_tdata, updma_so_tstrb, 
  updma_so_tkeep, updma_so_tlast, updma_so_tvalid, updma_so_tuser, updma_so_tready, 
  qspi_io0_i, qspi_io1_o, qspi_sck_i, qspi_ss_i, axi_clk, axi_reset_n, axi_clk_m, axi_reset_m_n, 
  axi_clk_usdi, axi_reset_usdi_n, axi_clk_udso, axi_reset_udso_n, axis_clk, axis_rst_n)
/* synthesis syn_black_box black_box_pad_pin="s_axi_araddr[31:0],s_axi_arready,s_axi_arvalid,s_axi_awaddr[31:0],s_axi_awready,s_axi_awvalid,s_axi_bready,s_axi_bresp[1:0],s_axi_bvalid,s_axi_rdata[31:0],s_axi_rready,s_axi_rresp[1:0],s_axi_rvalid,s_axi_wdata[31:0],s_axi_wready,s_axi_wstrb[3:0],s_axi_wvalid,aa_mb_irq,is_ioclk,caravel_mprj_out[37:0],caravel_mprj_in[37:0],ladma_mm_araddr[63:0],ladma_mm_arburst[1:0],ladma_mm_arcache[3:0],ladma_mm_arid[0:0],ladma_mm_arlen[7:0],ladma_mm_arlock[1:0],ladma_mm_arprot[2:0],ladma_mm_arqos[3:0],ladma_mm_arready,ladma_mm_arregion[3:0],ladma_mm_arsize[2:0],ladma_mm_aruser[0:0],ladma_mm_arvalid,ladma_mm_awaddr[63:0],ladma_mm_awburst[1:0],ladma_mm_awcache[3:0],ladma_mm_awid[0:0],ladma_mm_awlen[7:0],ladma_mm_awlock[1:0],ladma_mm_awprot[2:0],ladma_mm_awqos[3:0],ladma_mm_awready,ladma_mm_awregion[3:0],ladma_mm_awsize[2:0],ladma_mm_awuser[0:0],ladma_mm_awvalid,ladma_mm_bid[0:0],ladma_mm_bready,ladma_mm_bresp[1:0],ladma_mm_buser[0:0],ladma_mm_bvalid,ladma_mm_rdata[31:0],ladma_mm_rid[0:0],ladma_mm_rlast,ladma_mm_rready,ladma_mm_rresp[1:0],ladma_mm_ruser[0:0],ladma_mm_rvalid,ladma_mm_wdata[31:0],ladma_mm_wlast,ladma_mm_wready,ladma_mm_wstrb[3:0],ladma_mm_wuser[0:0],ladma_mm_wvalid,ladma_s_araddr[31:0],ladma_s_arready,ladma_s_arvalid,ladma_s_awaddr[31:0],ladma_s_awready,ladma_s_awvalid,ladma_s_bready,ladma_s_bresp[1:0],ladma_s_bvalid,ladma_s_rdata[31:0],ladma_s_rready,ladma_s_rresp[1:0],ladma_s_rvalid,ladma_s_wdata[31:0],ladma_s_wready,ladma_s_wstrb[3:0],ladma_s_wvalid,ladma_interrupt,updma_si_tdata[31:0],updma_si_tstrb[3:0],updma_si_tkeep[3:0],updma_si_tlast,updma_si_tvalid,updma_si_tuser[6:0],updma_si_tready,updma_so_tdata[31:0],updma_so_tstrb[3:0],updma_so_tkeep[3:0],updma_so_tlast,updma_so_tvalid,updma_so_tuser[6:0],updma_so_tready,qspi_io0_i,qspi_io1_o,qspi_sck_i,qspi_ss_i,axi_clk,axi_reset_n,axi_clk_m,axi_reset_m_n,axi_clk_usdi,axi_reset_usdi_n,axi_clk_udso,axi_reset_udso_n,axis_clk,axis_rst_n" */;
  input [31:0]s_axi_araddr;
  output s_axi_arready;
  input s_axi_arvalid;
  input [31:0]s_axi_awaddr;
  output s_axi_awready;
  input s_axi_awvalid;
  input s_axi_bready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  output [31:0]s_axi_rdata;
  input s_axi_rready;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input [31:0]s_axi_wdata;
  output s_axi_wready;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output aa_mb_irq;
  input is_ioclk;
  output [37:0]caravel_mprj_out;
  input [37:0]caravel_mprj_in;
  output [63:0]ladma_mm_araddr;
  output [1:0]ladma_mm_arburst;
  output [3:0]ladma_mm_arcache;
  output [0:0]ladma_mm_arid;
  output [7:0]ladma_mm_arlen;
  output [1:0]ladma_mm_arlock;
  output [2:0]ladma_mm_arprot;
  output [3:0]ladma_mm_arqos;
  input ladma_mm_arready;
  output [3:0]ladma_mm_arregion;
  output [2:0]ladma_mm_arsize;
  output [0:0]ladma_mm_aruser;
  output ladma_mm_arvalid;
  output [63:0]ladma_mm_awaddr;
  output [1:0]ladma_mm_awburst;
  output [3:0]ladma_mm_awcache;
  output [0:0]ladma_mm_awid;
  output [7:0]ladma_mm_awlen;
  output [1:0]ladma_mm_awlock;
  output [2:0]ladma_mm_awprot;
  output [3:0]ladma_mm_awqos;
  input ladma_mm_awready;
  output [3:0]ladma_mm_awregion;
  output [2:0]ladma_mm_awsize;
  output [0:0]ladma_mm_awuser;
  output ladma_mm_awvalid;
  input [0:0]ladma_mm_bid;
  output ladma_mm_bready;
  input [1:0]ladma_mm_bresp;
  input [0:0]ladma_mm_buser;
  input ladma_mm_bvalid;
  input [31:0]ladma_mm_rdata;
  input [0:0]ladma_mm_rid;
  input ladma_mm_rlast;
  output ladma_mm_rready;
  input [1:0]ladma_mm_rresp;
  input [0:0]ladma_mm_ruser;
  input ladma_mm_rvalid;
  output [31:0]ladma_mm_wdata;
  output ladma_mm_wlast;
  input ladma_mm_wready;
  output [3:0]ladma_mm_wstrb;
  output [0:0]ladma_mm_wuser;
  output ladma_mm_wvalid;
  input [31:0]ladma_s_araddr;
  output ladma_s_arready;
  input ladma_s_arvalid;
  input [31:0]ladma_s_awaddr;
  output ladma_s_awready;
  input ladma_s_awvalid;
  input ladma_s_bready;
  output [1:0]ladma_s_bresp;
  output ladma_s_bvalid;
  output [31:0]ladma_s_rdata;
  input ladma_s_rready;
  output [1:0]ladma_s_rresp;
  output ladma_s_rvalid;
  input [31:0]ladma_s_wdata;
  output ladma_s_wready;
  input [3:0]ladma_s_wstrb;
  input ladma_s_wvalid;
  output ladma_interrupt;
  input [31:0]updma_si_tdata;
  input [3:0]updma_si_tstrb;
  input [3:0]updma_si_tkeep;
  input updma_si_tlast;
  input updma_si_tvalid;
  input [6:0]updma_si_tuser;
  output updma_si_tready;
  output [31:0]updma_so_tdata;
  output [3:0]updma_so_tstrb;
  output [3:0]updma_so_tkeep;
  output updma_so_tlast;
  output updma_so_tvalid;
  output [6:0]updma_so_tuser;
  input updma_so_tready;
  input qspi_io0_i;
  output qspi_io1_o;
  input qspi_sck_i;
  input qspi_ss_i;
  input axi_clk;
  input axi_reset_n;
  input axi_clk_m;
  input axi_reset_m_n;
  input axi_clk_usdi;
  input axi_reset_usdi_n;
  input axi_clk_udso;
  input axi_reset_udso_n;
  input axis_clk;
  input axis_rst_n;
endmodule
