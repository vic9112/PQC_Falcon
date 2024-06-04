// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Mon May 27 09:41:18 2024
// Host        : ubuntu2004 running 64-bit Ubuntu 20.04.6 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_userdma_0_0_stub.v
// Design      : design_1_userdma_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "userdma,Vivado 2022.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(s_axi_control_AWADDR, 
  s_axi_control_AWVALID, s_axi_control_AWREADY, s_axi_control_WDATA, s_axi_control_WSTRB, 
  s_axi_control_WVALID, s_axi_control_WREADY, s_axi_control_BRESP, s_axi_control_BVALID, 
  s_axi_control_BREADY, s_axi_control_ARADDR, s_axi_control_ARVALID, 
  s_axi_control_ARREADY, s_axi_control_RDATA, s_axi_control_RRESP, s_axi_control_RVALID, 
  s_axi_control_RREADY, ap_clk, ap_rst_n, interrupt, m_axi_gmem0_AWADDR, m_axi_gmem0_AWLEN, 
  m_axi_gmem0_AWSIZE, m_axi_gmem0_AWBURST, m_axi_gmem0_AWLOCK, m_axi_gmem0_AWREGION, 
  m_axi_gmem0_AWCACHE, m_axi_gmem0_AWPROT, m_axi_gmem0_AWQOS, m_axi_gmem0_AWVALID, 
  m_axi_gmem0_AWREADY, m_axi_gmem0_WDATA, m_axi_gmem0_WSTRB, m_axi_gmem0_WLAST, 
  m_axi_gmem0_WVALID, m_axi_gmem0_WREADY, m_axi_gmem0_BRESP, m_axi_gmem0_BVALID, 
  m_axi_gmem0_BREADY, m_axi_gmem0_ARADDR, m_axi_gmem0_ARLEN, m_axi_gmem0_ARSIZE, 
  m_axi_gmem0_ARBURST, m_axi_gmem0_ARLOCK, m_axi_gmem0_ARREGION, m_axi_gmem0_ARCACHE, 
  m_axi_gmem0_ARPROT, m_axi_gmem0_ARQOS, m_axi_gmem0_ARVALID, m_axi_gmem0_ARREADY, 
  m_axi_gmem0_RDATA, m_axi_gmem0_RRESP, m_axi_gmem0_RLAST, m_axi_gmem0_RVALID, 
  m_axi_gmem0_RREADY, m_axi_gmem1_AWADDR, m_axi_gmem1_AWLEN, m_axi_gmem1_AWSIZE, 
  m_axi_gmem1_AWBURST, m_axi_gmem1_AWLOCK, m_axi_gmem1_AWREGION, m_axi_gmem1_AWCACHE, 
  m_axi_gmem1_AWPROT, m_axi_gmem1_AWQOS, m_axi_gmem1_AWVALID, m_axi_gmem1_AWREADY, 
  m_axi_gmem1_WDATA, m_axi_gmem1_WSTRB, m_axi_gmem1_WLAST, m_axi_gmem1_WVALID, 
  m_axi_gmem1_WREADY, m_axi_gmem1_BRESP, m_axi_gmem1_BVALID, m_axi_gmem1_BREADY, 
  m_axi_gmem1_ARADDR, m_axi_gmem1_ARLEN, m_axi_gmem1_ARSIZE, m_axi_gmem1_ARBURST, 
  m_axi_gmem1_ARLOCK, m_axi_gmem1_ARREGION, m_axi_gmem1_ARCACHE, m_axi_gmem1_ARPROT, 
  m_axi_gmem1_ARQOS, m_axi_gmem1_ARVALID, m_axi_gmem1_ARREADY, m_axi_gmem1_RDATA, 
  m_axi_gmem1_RRESP, m_axi_gmem1_RLAST, m_axi_gmem1_RVALID, m_axi_gmem1_RREADY, 
  inStreamTop_TVALID, inStreamTop_TREADY, inStreamTop_TDATA, inStreamTop_TKEEP, 
  inStreamTop_TSTRB, inStreamTop_TUSER, inStreamTop_TLAST, outStreamTop_TVALID, 
  outStreamTop_TREADY, outStreamTop_TDATA, outStreamTop_TKEEP, outStreamTop_TSTRB, 
  outStreamTop_TUSER, outStreamTop_TLAST)
/* synthesis syn_black_box black_box_pad_pin="s_axi_control_AWADDR[6:0],s_axi_control_AWVALID,s_axi_control_AWREADY,s_axi_control_WDATA[31:0],s_axi_control_WSTRB[3:0],s_axi_control_WVALID,s_axi_control_WREADY,s_axi_control_BRESP[1:0],s_axi_control_BVALID,s_axi_control_BREADY,s_axi_control_ARADDR[6:0],s_axi_control_ARVALID,s_axi_control_ARREADY,s_axi_control_RDATA[31:0],s_axi_control_RRESP[1:0],s_axi_control_RVALID,s_axi_control_RREADY,ap_clk,ap_rst_n,interrupt,m_axi_gmem0_AWADDR[63:0],m_axi_gmem0_AWLEN[7:0],m_axi_gmem0_AWSIZE[2:0],m_axi_gmem0_AWBURST[1:0],m_axi_gmem0_AWLOCK[1:0],m_axi_gmem0_AWREGION[3:0],m_axi_gmem0_AWCACHE[3:0],m_axi_gmem0_AWPROT[2:0],m_axi_gmem0_AWQOS[3:0],m_axi_gmem0_AWVALID,m_axi_gmem0_AWREADY,m_axi_gmem0_WDATA[63:0],m_axi_gmem0_WSTRB[7:0],m_axi_gmem0_WLAST,m_axi_gmem0_WVALID,m_axi_gmem0_WREADY,m_axi_gmem0_BRESP[1:0],m_axi_gmem0_BVALID,m_axi_gmem0_BREADY,m_axi_gmem0_ARADDR[63:0],m_axi_gmem0_ARLEN[7:0],m_axi_gmem0_ARSIZE[2:0],m_axi_gmem0_ARBURST[1:0],m_axi_gmem0_ARLOCK[1:0],m_axi_gmem0_ARREGION[3:0],m_axi_gmem0_ARCACHE[3:0],m_axi_gmem0_ARPROT[2:0],m_axi_gmem0_ARQOS[3:0],m_axi_gmem0_ARVALID,m_axi_gmem0_ARREADY,m_axi_gmem0_RDATA[63:0],m_axi_gmem0_RRESP[1:0],m_axi_gmem0_RLAST,m_axi_gmem0_RVALID,m_axi_gmem0_RREADY,m_axi_gmem1_AWADDR[63:0],m_axi_gmem1_AWLEN[7:0],m_axi_gmem1_AWSIZE[2:0],m_axi_gmem1_AWBURST[1:0],m_axi_gmem1_AWLOCK[1:0],m_axi_gmem1_AWREGION[3:0],m_axi_gmem1_AWCACHE[3:0],m_axi_gmem1_AWPROT[2:0],m_axi_gmem1_AWQOS[3:0],m_axi_gmem1_AWVALID,m_axi_gmem1_AWREADY,m_axi_gmem1_WDATA[63:0],m_axi_gmem1_WSTRB[7:0],m_axi_gmem1_WLAST,m_axi_gmem1_WVALID,m_axi_gmem1_WREADY,m_axi_gmem1_BRESP[1:0],m_axi_gmem1_BVALID,m_axi_gmem1_BREADY,m_axi_gmem1_ARADDR[63:0],m_axi_gmem1_ARLEN[7:0],m_axi_gmem1_ARSIZE[2:0],m_axi_gmem1_ARBURST[1:0],m_axi_gmem1_ARLOCK[1:0],m_axi_gmem1_ARREGION[3:0],m_axi_gmem1_ARCACHE[3:0],m_axi_gmem1_ARPROT[2:0],m_axi_gmem1_ARQOS[3:0],m_axi_gmem1_ARVALID,m_axi_gmem1_ARREADY,m_axi_gmem1_RDATA[63:0],m_axi_gmem1_RRESP[1:0],m_axi_gmem1_RLAST,m_axi_gmem1_RVALID,m_axi_gmem1_RREADY,inStreamTop_TVALID,inStreamTop_TREADY,inStreamTop_TDATA[31:0],inStreamTop_TKEEP[3:0],inStreamTop_TSTRB[3:0],inStreamTop_TUSER[1:0],inStreamTop_TLAST[0:0],outStreamTop_TVALID,outStreamTop_TREADY,outStreamTop_TDATA[31:0],outStreamTop_TKEEP[3:0],outStreamTop_TSTRB[3:0],outStreamTop_TUSER[1:0],outStreamTop_TLAST[0:0]" */;
  input [6:0]s_axi_control_AWADDR;
  input s_axi_control_AWVALID;
  output s_axi_control_AWREADY;
  input [31:0]s_axi_control_WDATA;
  input [3:0]s_axi_control_WSTRB;
  input s_axi_control_WVALID;
  output s_axi_control_WREADY;
  output [1:0]s_axi_control_BRESP;
  output s_axi_control_BVALID;
  input s_axi_control_BREADY;
  input [6:0]s_axi_control_ARADDR;
  input s_axi_control_ARVALID;
  output s_axi_control_ARREADY;
  output [31:0]s_axi_control_RDATA;
  output [1:0]s_axi_control_RRESP;
  output s_axi_control_RVALID;
  input s_axi_control_RREADY;
  input ap_clk;
  input ap_rst_n;
  output interrupt;
  output [63:0]m_axi_gmem0_AWADDR;
  output [7:0]m_axi_gmem0_AWLEN;
  output [2:0]m_axi_gmem0_AWSIZE;
  output [1:0]m_axi_gmem0_AWBURST;
  output [1:0]m_axi_gmem0_AWLOCK;
  output [3:0]m_axi_gmem0_AWREGION;
  output [3:0]m_axi_gmem0_AWCACHE;
  output [2:0]m_axi_gmem0_AWPROT;
  output [3:0]m_axi_gmem0_AWQOS;
  output m_axi_gmem0_AWVALID;
  input m_axi_gmem0_AWREADY;
  output [63:0]m_axi_gmem0_WDATA;
  output [7:0]m_axi_gmem0_WSTRB;
  output m_axi_gmem0_WLAST;
  output m_axi_gmem0_WVALID;
  input m_axi_gmem0_WREADY;
  input [1:0]m_axi_gmem0_BRESP;
  input m_axi_gmem0_BVALID;
  output m_axi_gmem0_BREADY;
  output [63:0]m_axi_gmem0_ARADDR;
  output [7:0]m_axi_gmem0_ARLEN;
  output [2:0]m_axi_gmem0_ARSIZE;
  output [1:0]m_axi_gmem0_ARBURST;
  output [1:0]m_axi_gmem0_ARLOCK;
  output [3:0]m_axi_gmem0_ARREGION;
  output [3:0]m_axi_gmem0_ARCACHE;
  output [2:0]m_axi_gmem0_ARPROT;
  output [3:0]m_axi_gmem0_ARQOS;
  output m_axi_gmem0_ARVALID;
  input m_axi_gmem0_ARREADY;
  input [63:0]m_axi_gmem0_RDATA;
  input [1:0]m_axi_gmem0_RRESP;
  input m_axi_gmem0_RLAST;
  input m_axi_gmem0_RVALID;
  output m_axi_gmem0_RREADY;
  output [63:0]m_axi_gmem1_AWADDR;
  output [7:0]m_axi_gmem1_AWLEN;
  output [2:0]m_axi_gmem1_AWSIZE;
  output [1:0]m_axi_gmem1_AWBURST;
  output [1:0]m_axi_gmem1_AWLOCK;
  output [3:0]m_axi_gmem1_AWREGION;
  output [3:0]m_axi_gmem1_AWCACHE;
  output [2:0]m_axi_gmem1_AWPROT;
  output [3:0]m_axi_gmem1_AWQOS;
  output m_axi_gmem1_AWVALID;
  input m_axi_gmem1_AWREADY;
  output [63:0]m_axi_gmem1_WDATA;
  output [7:0]m_axi_gmem1_WSTRB;
  output m_axi_gmem1_WLAST;
  output m_axi_gmem1_WVALID;
  input m_axi_gmem1_WREADY;
  input [1:0]m_axi_gmem1_BRESP;
  input m_axi_gmem1_BVALID;
  output m_axi_gmem1_BREADY;
  output [63:0]m_axi_gmem1_ARADDR;
  output [7:0]m_axi_gmem1_ARLEN;
  output [2:0]m_axi_gmem1_ARSIZE;
  output [1:0]m_axi_gmem1_ARBURST;
  output [1:0]m_axi_gmem1_ARLOCK;
  output [3:0]m_axi_gmem1_ARREGION;
  output [3:0]m_axi_gmem1_ARCACHE;
  output [2:0]m_axi_gmem1_ARPROT;
  output [3:0]m_axi_gmem1_ARQOS;
  output m_axi_gmem1_ARVALID;
  input m_axi_gmem1_ARREADY;
  input [63:0]m_axi_gmem1_RDATA;
  input [1:0]m_axi_gmem1_RRESP;
  input m_axi_gmem1_RLAST;
  input m_axi_gmem1_RVALID;
  output m_axi_gmem1_RREADY;
  input inStreamTop_TVALID;
  output inStreamTop_TREADY;
  input [31:0]inStreamTop_TDATA;
  input [3:0]inStreamTop_TKEEP;
  input [3:0]inStreamTop_TSTRB;
  input [1:0]inStreamTop_TUSER;
  input [0:0]inStreamTop_TLAST;
  output outStreamTop_TVALID;
  input outStreamTop_TREADY;
  output [31:0]outStreamTop_TDATA;
  output [3:0]outStreamTop_TKEEP;
  output [3:0]outStreamTop_TSTRB;
  output [1:0]outStreamTop_TUSER;
  output [0:0]outStreamTop_TLAST;
endmodule
