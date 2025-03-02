// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Version: 2022.1
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module userdma_paralleltostreamwithburst (
        ap_clk,
        ap_rst,
        ap_start,
        start_full_n,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        start_out,
        start_write,
        m_axi_gmem1_AWVALID,
        m_axi_gmem1_AWREADY,
        m_axi_gmem1_AWADDR,
        m_axi_gmem1_AWID,
        m_axi_gmem1_AWLEN,
        m_axi_gmem1_AWSIZE,
        m_axi_gmem1_AWBURST,
        m_axi_gmem1_AWLOCK,
        m_axi_gmem1_AWCACHE,
        m_axi_gmem1_AWPROT,
        m_axi_gmem1_AWQOS,
        m_axi_gmem1_AWREGION,
        m_axi_gmem1_AWUSER,
        m_axi_gmem1_WVALID,
        m_axi_gmem1_WREADY,
        m_axi_gmem1_WDATA,
        m_axi_gmem1_WSTRB,
        m_axi_gmem1_WLAST,
        m_axi_gmem1_WID,
        m_axi_gmem1_WUSER,
        m_axi_gmem1_ARVALID,
        m_axi_gmem1_ARREADY,
        m_axi_gmem1_ARADDR,
        m_axi_gmem1_ARID,
        m_axi_gmem1_ARLEN,
        m_axi_gmem1_ARSIZE,
        m_axi_gmem1_ARBURST,
        m_axi_gmem1_ARLOCK,
        m_axi_gmem1_ARCACHE,
        m_axi_gmem1_ARPROT,
        m_axi_gmem1_ARQOS,
        m_axi_gmem1_ARREGION,
        m_axi_gmem1_ARUSER,
        m_axi_gmem1_RVALID,
        m_axi_gmem1_RREADY,
        m_axi_gmem1_RDATA,
        m_axi_gmem1_RLAST,
        m_axi_gmem1_RID,
        m_axi_gmem1_RFIFONUM,
        m_axi_gmem1_RUSER,
        m_axi_gmem1_RRESP,
        m_axi_gmem1_BVALID,
        m_axi_gmem1_BREADY,
        m_axi_gmem1_BRESP,
        m_axi_gmem1_BID,
        m_axi_gmem1_BUSER,
        in_memory,
        kernel_mode,
        outbuf_din,
        outbuf_num_data_valid,
        outbuf_fifo_cap,
        outbuf_full_n,
        outbuf_write
);

parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_state2 = 4'd2;
parameter    ap_ST_fsm_state3 = 4'd4;
parameter    ap_ST_fsm_state4 = 4'd8;

input   ap_clk;
input   ap_rst;
input   ap_start;
input   start_full_n;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output   start_out;
output   start_write;
output   m_axi_gmem1_AWVALID;
input   m_axi_gmem1_AWREADY;
output  [63:0] m_axi_gmem1_AWADDR;
output  [0:0] m_axi_gmem1_AWID;
output  [31:0] m_axi_gmem1_AWLEN;
output  [2:0] m_axi_gmem1_AWSIZE;
output  [1:0] m_axi_gmem1_AWBURST;
output  [1:0] m_axi_gmem1_AWLOCK;
output  [3:0] m_axi_gmem1_AWCACHE;
output  [2:0] m_axi_gmem1_AWPROT;
output  [3:0] m_axi_gmem1_AWQOS;
output  [3:0] m_axi_gmem1_AWREGION;
output  [0:0] m_axi_gmem1_AWUSER;
output   m_axi_gmem1_WVALID;
input   m_axi_gmem1_WREADY;
output  [63:0] m_axi_gmem1_WDATA;
output  [7:0] m_axi_gmem1_WSTRB;
output   m_axi_gmem1_WLAST;
output  [0:0] m_axi_gmem1_WID;
output  [0:0] m_axi_gmem1_WUSER;
output   m_axi_gmem1_ARVALID;
input   m_axi_gmem1_ARREADY;
output  [63:0] m_axi_gmem1_ARADDR;
output  [0:0] m_axi_gmem1_ARID;
output  [31:0] m_axi_gmem1_ARLEN;
output  [2:0] m_axi_gmem1_ARSIZE;
output  [1:0] m_axi_gmem1_ARBURST;
output  [1:0] m_axi_gmem1_ARLOCK;
output  [3:0] m_axi_gmem1_ARCACHE;
output  [2:0] m_axi_gmem1_ARPROT;
output  [3:0] m_axi_gmem1_ARQOS;
output  [3:0] m_axi_gmem1_ARREGION;
output  [0:0] m_axi_gmem1_ARUSER;
input   m_axi_gmem1_RVALID;
output   m_axi_gmem1_RREADY;
input  [63:0] m_axi_gmem1_RDATA;
input   m_axi_gmem1_RLAST;
input  [0:0] m_axi_gmem1_RID;
input  [9:0] m_axi_gmem1_RFIFONUM;
input  [0:0] m_axi_gmem1_RUSER;
input  [1:0] m_axi_gmem1_RRESP;
input   m_axi_gmem1_BVALID;
output   m_axi_gmem1_BREADY;
input  [1:0] m_axi_gmem1_BRESP;
input  [0:0] m_axi_gmem1_BID;
input  [0:0] m_axi_gmem1_BUSER;
input  [63:0] in_memory;
input  [1:0] kernel_mode;
output  [34:0] outbuf_din;
input  [6:0] outbuf_num_data_valid;
input  [6:0] outbuf_fifo_cap;
input   outbuf_full_n;
output   outbuf_write;

reg ap_done;
reg ap_idle;
reg start_write;
reg m_axi_gmem1_ARVALID;
reg m_axi_gmem1_RREADY;
reg[34:0] outbuf_din;
reg outbuf_write;

reg    real_start;
reg    start_once_reg;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    internal_ap_ready;
reg    outbuf_blk_n;
wire   [0:0] xor_ln113_fu_140_p2;
reg   [0:0] xor_ln113_reg_366;
wire   [11:0] select_ln111_cast_fu_146_p3;
reg   [11:0] select_ln111_cast_reg_372;
wire   [0:0] icmp_ln125_fu_202_p2;
reg   [0:0] icmp_ln125_reg_380;
wire    ap_CS_fsm_state2;
wire   [5:0] empty_46_fu_242_p3;
reg   [5:0] empty_46_reg_385;
wire   [31:0] count_3_fu_254_p3;
reg   [31:0] count_3_reg_393;
wire    ap_CS_fsm_state3;
wire   [31:0] sub_fu_261_p2;
reg   [31:0] sub_reg_398;
wire   [31:0] final_m2s_len_fu_281_p2;
reg   [31:0] final_m2s_len_reg_403;
wire   [5:0] shl_ln_fu_286_p3;
reg   [5:0] shl_ln_reg_408;
wire  signed [35:0] sext_ln157_fu_303_p1;
reg  signed [35:0] sext_ln157_reg_413;
wire   [0:0] icmp_ln157_fu_307_p2;
reg   [0:0] icmp_ln157_reg_418;
wire   [35:0] add_ln158_fu_313_p2;
reg   [35:0] add_ln158_reg_423;
wire   [0:0] icmp_ln161_fu_319_p2;
reg   [0:0] icmp_ln161_reg_428;
wire    grp_paralleltostreamwithburst_Pipeline_VITIS_LOOP_131_2_fu_117_ap_start;
wire    grp_paralleltostreamwithburst_Pipeline_VITIS_LOOP_131_2_fu_117_ap_done;
wire    grp_paralleltostreamwithburst_Pipeline_VITIS_LOOP_131_2_fu_117_ap_idle;
wire    grp_paralleltostreamwithburst_Pipeline_VITIS_LOOP_131_2_fu_117_ap_ready;
wire    grp_paralleltostreamwithburst_Pipeline_VITIS_LOOP_131_2_fu_117_m_axi_gmem1_AWVALID;
wire   [63:0] grp_paralleltostreamwithburst_Pipeline_VITIS_LOOP_131_2_fu_117_m_axi_gmem1_AWADDR;
wire   [0:0] grp_paralleltostreamwithburst_Pipeline_VITIS_LOOP_131_2_fu_117_m_axi_gmem1_AWID;
wire   [31:0] grp_paralleltostreamwithburst_Pipeline_VITIS_LOOP_131_2_fu_117_m_axi_gmem1_AWLEN;
wire   [2:0] grp_paralleltostreamwithburst_Pipeline_VITIS_LOOP_131_2_fu_117_m_axi_gmem1_AWSIZE;
wire   [1:0] grp_paralleltostreamwithburst_Pipeline_VITIS_LOOP_131_2_fu_117_m_axi_gmem1_AWBURST;
wire   [1:0] grp_paralleltostreamwithburst_Pipeline_VITIS_LOOP_131_2_fu_117_m_axi_gmem1_AWLOCK;
wire   [3:0] grp_paralleltostreamwithburst_Pipeline_VITIS_LOOP_131_2_fu_117_m_axi_gmem1_AWCACHE;
wire   [2:0] grp_paralleltostreamwithburst_Pipeline_VITIS_LOOP_131_2_fu_117_m_axi_gmem1_AWPROT;
wire   [3:0] grp_paralleltostreamwithburst_Pipeline_VITIS_LOOP_131_2_fu_117_m_axi_gmem1_AWQOS;
wire   [3:0] grp_paralleltostreamwithburst_Pipeline_VITIS_LOOP_131_2_fu_117_m_axi_gmem1_AWREGION;
wire   [0:0] grp_paralleltostreamwithburst_Pipeline_VITIS_LOOP_131_2_fu_117_m_axi_gmem1_AWUSER;
wire    grp_paralleltostreamwithburst_Pipeline_VITIS_LOOP_131_2_fu_117_m_axi_gmem1_WVALID;
wire   [63:0] grp_paralleltostreamwithburst_Pipeline_VITIS_LOOP_131_2_fu_117_m_axi_gmem1_WDATA;
wire   [7:0] grp_paralleltostreamwithburst_Pipeline_VITIS_LOOP_131_2_fu_117_m_axi_gmem1_WSTRB;
wire    grp_paralleltostreamwithburst_Pipeline_VITIS_LOOP_131_2_fu_117_m_axi_gmem1_WLAST;
wire   [0:0] grp_paralleltostreamwithburst_Pipeline_VITIS_LOOP_131_2_fu_117_m_axi_gmem1_WID;
wire   [0:0] grp_paralleltostreamwithburst_Pipeline_VITIS_LOOP_131_2_fu_117_m_axi_gmem1_WUSER;
wire    grp_paralleltostreamwithburst_Pipeline_VITIS_LOOP_131_2_fu_117_m_axi_gmem1_ARVALID;
wire   [63:0] grp_paralleltostreamwithburst_Pipeline_VITIS_LOOP_131_2_fu_117_m_axi_gmem1_ARADDR;
wire   [0:0] grp_paralleltostreamwithburst_Pipeline_VITIS_LOOP_131_2_fu_117_m_axi_gmem1_ARID;
wire   [31:0] grp_paralleltostreamwithburst_Pipeline_VITIS_LOOP_131_2_fu_117_m_axi_gmem1_ARLEN;
wire   [2:0] grp_paralleltostreamwithburst_Pipeline_VITIS_LOOP_131_2_fu_117_m_axi_gmem1_ARSIZE;
wire   [1:0] grp_paralleltostreamwithburst_Pipeline_VITIS_LOOP_131_2_fu_117_m_axi_gmem1_ARBURST;
wire   [1:0] grp_paralleltostreamwithburst_Pipeline_VITIS_LOOP_131_2_fu_117_m_axi_gmem1_ARLOCK;
wire   [3:0] grp_paralleltostreamwithburst_Pipeline_VITIS_LOOP_131_2_fu_117_m_axi_gmem1_ARCACHE;
wire   [2:0] grp_paralleltostreamwithburst_Pipeline_VITIS_LOOP_131_2_fu_117_m_axi_gmem1_ARPROT;
wire   [3:0] grp_paralleltostreamwithburst_Pipeline_VITIS_LOOP_131_2_fu_117_m_axi_gmem1_ARQOS;
wire   [3:0] grp_paralleltostreamwithburst_Pipeline_VITIS_LOOP_131_2_fu_117_m_axi_gmem1_ARREGION;
wire   [0:0] grp_paralleltostreamwithburst_Pipeline_VITIS_LOOP_131_2_fu_117_m_axi_gmem1_ARUSER;
wire    grp_paralleltostreamwithburst_Pipeline_VITIS_LOOP_131_2_fu_117_m_axi_gmem1_RREADY;
wire    grp_paralleltostreamwithburst_Pipeline_VITIS_LOOP_131_2_fu_117_m_axi_gmem1_BREADY;
wire   [34:0] grp_paralleltostreamwithburst_Pipeline_VITIS_LOOP_131_2_fu_117_outbuf_din;
wire    grp_paralleltostreamwithburst_Pipeline_VITIS_LOOP_131_2_fu_117_outbuf_write;
reg    grp_paralleltostreamwithburst_Pipeline_VITIS_LOOP_131_2_fu_117_ap_start_reg;
wire    ap_CS_fsm_state4;
reg   [63:0] in_memory_assign_fu_90;
wire   [63:0] add_ln157_fu_338_p2;
reg    ap_block_state1;
reg   [31:0] count_fu_94;
wire   [31:0] select_ln111_cast_cast_fu_154_p3;
wire   [34:0] zext_ln174_fu_184_p1;
wire   [0:0] tmp_fu_132_p3;
wire   [31:0] out_val_data_filed_V_fu_162_p6;
wire   [32:0] or_ln_fu_176_p3;
wire   [26:0] tmp_4_fu_208_p4;
wire   [0:0] icmp_fu_218_p2;
wire   [31:0] select_ln131_fu_224_p3;
wire   [0:0] empty_45_fu_236_p2;
wire   [5:0] empty_fu_232_p1;
wire   [2:0] trunc_ln131_fu_268_p1;
wire   [31:0] zext_ln112_fu_278_p1;
wire   [2:0] xor_ln131_fu_272_p2;
wire   [34:0] shl_ln2_fu_295_p3;
wire   [0:0] and_ln157_fu_324_p2;
wire   [35:0] select_ln157_fu_328_p3;
wire  signed [63:0] sext_ln157_1_fu_334_p1;
reg   [3:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 start_once_reg = 1'b0;
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 4'd1;
#0 grp_paralleltostreamwithburst_Pipeline_VITIS_LOOP_131_2_fu_117_ap_start_reg = 1'b0;
end

userdma_paralleltostreamwithburst_Pipeline_VITIS_LOOP_131_2 grp_paralleltostreamwithburst_Pipeline_VITIS_LOOP_131_2_fu_117(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_paralleltostreamwithburst_Pipeline_VITIS_LOOP_131_2_fu_117_ap_start),
    .ap_done(grp_paralleltostreamwithburst_Pipeline_VITIS_LOOP_131_2_fu_117_ap_done),
    .ap_idle(grp_paralleltostreamwithburst_Pipeline_VITIS_LOOP_131_2_fu_117_ap_idle),
    .ap_ready(grp_paralleltostreamwithburst_Pipeline_VITIS_LOOP_131_2_fu_117_ap_ready),
    .m_axi_gmem1_AWVALID(grp_paralleltostreamwithburst_Pipeline_VITIS_LOOP_131_2_fu_117_m_axi_gmem1_AWVALID),
    .m_axi_gmem1_AWREADY(1'b0),
    .m_axi_gmem1_AWADDR(grp_paralleltostreamwithburst_Pipeline_VITIS_LOOP_131_2_fu_117_m_axi_gmem1_AWADDR),
    .m_axi_gmem1_AWID(grp_paralleltostreamwithburst_Pipeline_VITIS_LOOP_131_2_fu_117_m_axi_gmem1_AWID),
    .m_axi_gmem1_AWLEN(grp_paralleltostreamwithburst_Pipeline_VITIS_LOOP_131_2_fu_117_m_axi_gmem1_AWLEN),
    .m_axi_gmem1_AWSIZE(grp_paralleltostreamwithburst_Pipeline_VITIS_LOOP_131_2_fu_117_m_axi_gmem1_AWSIZE),
    .m_axi_gmem1_AWBURST(grp_paralleltostreamwithburst_Pipeline_VITIS_LOOP_131_2_fu_117_m_axi_gmem1_AWBURST),
    .m_axi_gmem1_AWLOCK(grp_paralleltostreamwithburst_Pipeline_VITIS_LOOP_131_2_fu_117_m_axi_gmem1_AWLOCK),
    .m_axi_gmem1_AWCACHE(grp_paralleltostreamwithburst_Pipeline_VITIS_LOOP_131_2_fu_117_m_axi_gmem1_AWCACHE),
    .m_axi_gmem1_AWPROT(grp_paralleltostreamwithburst_Pipeline_VITIS_LOOP_131_2_fu_117_m_axi_gmem1_AWPROT),
    .m_axi_gmem1_AWQOS(grp_paralleltostreamwithburst_Pipeline_VITIS_LOOP_131_2_fu_117_m_axi_gmem1_AWQOS),
    .m_axi_gmem1_AWREGION(grp_paralleltostreamwithburst_Pipeline_VITIS_LOOP_131_2_fu_117_m_axi_gmem1_AWREGION),
    .m_axi_gmem1_AWUSER(grp_paralleltostreamwithburst_Pipeline_VITIS_LOOP_131_2_fu_117_m_axi_gmem1_AWUSER),
    .m_axi_gmem1_WVALID(grp_paralleltostreamwithburst_Pipeline_VITIS_LOOP_131_2_fu_117_m_axi_gmem1_WVALID),
    .m_axi_gmem1_WREADY(1'b0),
    .m_axi_gmem1_WDATA(grp_paralleltostreamwithburst_Pipeline_VITIS_LOOP_131_2_fu_117_m_axi_gmem1_WDATA),
    .m_axi_gmem1_WSTRB(grp_paralleltostreamwithburst_Pipeline_VITIS_LOOP_131_2_fu_117_m_axi_gmem1_WSTRB),
    .m_axi_gmem1_WLAST(grp_paralleltostreamwithburst_Pipeline_VITIS_LOOP_131_2_fu_117_m_axi_gmem1_WLAST),
    .m_axi_gmem1_WID(grp_paralleltostreamwithburst_Pipeline_VITIS_LOOP_131_2_fu_117_m_axi_gmem1_WID),
    .m_axi_gmem1_WUSER(grp_paralleltostreamwithburst_Pipeline_VITIS_LOOP_131_2_fu_117_m_axi_gmem1_WUSER),
    .m_axi_gmem1_ARVALID(grp_paralleltostreamwithburst_Pipeline_VITIS_LOOP_131_2_fu_117_m_axi_gmem1_ARVALID),
    .m_axi_gmem1_ARREADY(m_axi_gmem1_ARREADY),
    .m_axi_gmem1_ARADDR(grp_paralleltostreamwithburst_Pipeline_VITIS_LOOP_131_2_fu_117_m_axi_gmem1_ARADDR),
    .m_axi_gmem1_ARID(grp_paralleltostreamwithburst_Pipeline_VITIS_LOOP_131_2_fu_117_m_axi_gmem1_ARID),
    .m_axi_gmem1_ARLEN(grp_paralleltostreamwithburst_Pipeline_VITIS_LOOP_131_2_fu_117_m_axi_gmem1_ARLEN),
    .m_axi_gmem1_ARSIZE(grp_paralleltostreamwithburst_Pipeline_VITIS_LOOP_131_2_fu_117_m_axi_gmem1_ARSIZE),
    .m_axi_gmem1_ARBURST(grp_paralleltostreamwithburst_Pipeline_VITIS_LOOP_131_2_fu_117_m_axi_gmem1_ARBURST),
    .m_axi_gmem1_ARLOCK(grp_paralleltostreamwithburst_Pipeline_VITIS_LOOP_131_2_fu_117_m_axi_gmem1_ARLOCK),
    .m_axi_gmem1_ARCACHE(grp_paralleltostreamwithburst_Pipeline_VITIS_LOOP_131_2_fu_117_m_axi_gmem1_ARCACHE),
    .m_axi_gmem1_ARPROT(grp_paralleltostreamwithburst_Pipeline_VITIS_LOOP_131_2_fu_117_m_axi_gmem1_ARPROT),
    .m_axi_gmem1_ARQOS(grp_paralleltostreamwithburst_Pipeline_VITIS_LOOP_131_2_fu_117_m_axi_gmem1_ARQOS),
    .m_axi_gmem1_ARREGION(grp_paralleltostreamwithburst_Pipeline_VITIS_LOOP_131_2_fu_117_m_axi_gmem1_ARREGION),
    .m_axi_gmem1_ARUSER(grp_paralleltostreamwithburst_Pipeline_VITIS_LOOP_131_2_fu_117_m_axi_gmem1_ARUSER),
    .m_axi_gmem1_RVALID(m_axi_gmem1_RVALID),
    .m_axi_gmem1_RREADY(grp_paralleltostreamwithburst_Pipeline_VITIS_LOOP_131_2_fu_117_m_axi_gmem1_RREADY),
    .m_axi_gmem1_RDATA(m_axi_gmem1_RDATA),
    .m_axi_gmem1_RLAST(m_axi_gmem1_RLAST),
    .m_axi_gmem1_RID(m_axi_gmem1_RID),
    .m_axi_gmem1_RFIFONUM(m_axi_gmem1_RFIFONUM),
    .m_axi_gmem1_RUSER(m_axi_gmem1_RUSER),
    .m_axi_gmem1_RRESP(m_axi_gmem1_RRESP),
    .m_axi_gmem1_BVALID(1'b0),
    .m_axi_gmem1_BREADY(grp_paralleltostreamwithburst_Pipeline_VITIS_LOOP_131_2_fu_117_m_axi_gmem1_BREADY),
    .m_axi_gmem1_BRESP(2'd0),
    .m_axi_gmem1_BID(1'd0),
    .m_axi_gmem1_BUSER(1'd0),
    .outbuf_din(grp_paralleltostreamwithburst_Pipeline_VITIS_LOOP_131_2_fu_117_outbuf_din),
    .outbuf_num_data_valid(7'd0),
    .outbuf_fifo_cap(7'd0),
    .outbuf_full_n(outbuf_full_n),
    .outbuf_write(grp_paralleltostreamwithburst_Pipeline_VITIS_LOOP_131_2_fu_117_outbuf_write),
    .final_m2s_len_4(count_fu_94),
    .count_1(count_3_reg_393),
    .sub(sub_reg_398),
    .select_ln111_cast(select_ln111_cast_reg_372),
    .zext_ln131(shl_ln_reg_408),
    .icmp_ln113(xor_ln113_reg_366),
    .in_memory_assign(in_memory_assign_fu_90)
);

userdma_mux_42_32_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .din2_WIDTH( 32 ),
    .din3_WIDTH( 32 ),
    .din4_WIDTH( 2 ),
    .dout_WIDTH( 32 ))
mux_42_32_1_1_U49(
    .din0(32'd4),
    .din1(32'd5),
    .din2(32'd6),
    .din3(32'd7),
    .din4(kernel_mode),
    .dout(out_val_data_filed_V_fu_162_p6)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_state4) & (grp_paralleltostreamwithburst_Pipeline_VITIS_LOOP_131_2_fu_117_ap_done == 1'b1) & (icmp_ln161_reg_428 == 1'd1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_paralleltostreamwithburst_Pipeline_VITIS_LOOP_131_2_fu_117_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_paralleltostreamwithburst_Pipeline_VITIS_LOOP_131_2_fu_117_ap_start_reg <= 1'b1;
        end else if ((grp_paralleltostreamwithburst_Pipeline_VITIS_LOOP_131_2_fu_117_ap_ready == 1'b1)) begin
            grp_paralleltostreamwithburst_Pipeline_VITIS_LOOP_131_2_fu_117_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        start_once_reg <= 1'b0;
    end else begin
        if (((internal_ap_ready == 1'b0) & (real_start == 1'b1))) begin
            start_once_reg <= 1'b1;
        end else if ((internal_ap_ready == 1'b1)) begin
            start_once_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((~((ap_done_reg == 1'b1) | (real_start == 1'b0) | (outbuf_full_n == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        count_fu_94 <= select_ln111_cast_cast_fu_154_p3;
    end else if (((1'b1 == ap_CS_fsm_state4) & (grp_paralleltostreamwithburst_Pipeline_VITIS_LOOP_131_2_fu_117_ap_done == 1'b1) & (icmp_ln161_reg_428 == 1'd0))) begin
        count_fu_94 <= final_m2s_len_reg_403;
    end
end

always @ (posedge ap_clk) begin
    if ((~((ap_done_reg == 1'b1) | (real_start == 1'b0) | (outbuf_full_n == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        in_memory_assign_fu_90 <= in_memory;
    end else if (((1'b1 == ap_CS_fsm_state4) & (grp_paralleltostreamwithburst_Pipeline_VITIS_LOOP_131_2_fu_117_ap_done == 1'b1) & (icmp_ln161_reg_428 == 1'd0))) begin
        in_memory_assign_fu_90 <= add_ln157_fu_338_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln158_reg_423[35 : 3] <= add_ln158_fu_313_p2[35 : 3];
        count_3_reg_393 <= count_3_fu_254_p3;
        final_m2s_len_reg_403 <= final_m2s_len_fu_281_p2;
        icmp_ln157_reg_418 <= icmp_ln157_fu_307_p2;
        icmp_ln161_reg_428 <= icmp_ln161_fu_319_p2;
        sext_ln157_reg_413[35 : 3] <= sext_ln157_fu_303_p1[35 : 3];
        shl_ln_reg_408[5 : 3] <= shl_ln_fu_286_p3[5 : 3];
        sub_reg_398 <= sub_fu_261_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        empty_46_reg_385 <= empty_46_fu_242_p3;
        icmp_ln125_reg_380 <= icmp_ln125_fu_202_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        select_ln111_cast_reg_372[11 : 10] <= select_ln111_cast_fu_146_p3[11 : 10];
        xor_ln113_reg_366 <= xor_ln113_fu_140_p2;
    end
end

always @ (*) begin
    if (((ap_done_reg == 1'b1) | (real_start == 1'b0) | (outbuf_full_n == 1'b0))) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

assign ap_ST_fsm_state2_blk = 1'b0;

assign ap_ST_fsm_state3_blk = 1'b0;

always @ (*) begin
    if ((grp_paralleltostreamwithburst_Pipeline_VITIS_LOOP_131_2_fu_117_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) & (grp_paralleltostreamwithburst_Pipeline_VITIS_LOOP_131_2_fu_117_ap_done == 1'b1) & (icmp_ln161_reg_428 == 1'd1))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (real_start == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) & (grp_paralleltostreamwithburst_Pipeline_VITIS_LOOP_131_2_fu_117_ap_done == 1'b1) & (icmp_ln161_reg_428 == 1'd1))) begin
        internal_ap_ready = 1'b1;
    end else begin
        internal_ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        m_axi_gmem1_ARVALID = grp_paralleltostreamwithburst_Pipeline_VITIS_LOOP_131_2_fu_117_m_axi_gmem1_ARVALID;
    end else begin
        m_axi_gmem1_ARVALID = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        m_axi_gmem1_RREADY = grp_paralleltostreamwithburst_Pipeline_VITIS_LOOP_131_2_fu_117_m_axi_gmem1_RREADY;
    end else begin
        m_axi_gmem1_RREADY = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_done_reg == 1'b1) | (real_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        outbuf_blk_n = outbuf_full_n;
    end else begin
        outbuf_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_done_reg == 1'b1) | (real_start == 1'b0) | (outbuf_full_n == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        outbuf_din = zext_ln174_fu_184_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        outbuf_din = grp_paralleltostreamwithburst_Pipeline_VITIS_LOOP_131_2_fu_117_outbuf_din;
    end else begin
        outbuf_din = grp_paralleltostreamwithburst_Pipeline_VITIS_LOOP_131_2_fu_117_outbuf_din;
    end
end

always @ (*) begin
    if ((~((ap_done_reg == 1'b1) | (real_start == 1'b0) | (outbuf_full_n == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        outbuf_write = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        outbuf_write = grp_paralleltostreamwithburst_Pipeline_VITIS_LOOP_131_2_fu_117_outbuf_write;
    end else begin
        outbuf_write = 1'b0;
    end
end

always @ (*) begin
    if (((start_once_reg == 1'b0) & (start_full_n == 1'b0))) begin
        real_start = 1'b0;
    end else begin
        real_start = ap_start;
    end
end

always @ (*) begin
    if (((start_once_reg == 1'b0) & (real_start == 1'b1))) begin
        start_write = 1'b1;
    end else begin
        start_write = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((ap_done_reg == 1'b1) | (real_start == 1'b0) | (outbuf_full_n == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (grp_paralleltostreamwithburst_Pipeline_VITIS_LOOP_131_2_fu_117_ap_done == 1'b1) & (icmp_ln161_reg_428 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((1'b1 == ap_CS_fsm_state4) & (grp_paralleltostreamwithburst_Pipeline_VITIS_LOOP_131_2_fu_117_ap_done == 1'b1) & (icmp_ln161_reg_428 == 1'd0))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln157_fu_338_p2 = ($signed(sext_ln157_1_fu_334_p1) + $signed(in_memory_assign_fu_90));

assign add_ln158_fu_313_p2 = ($signed(sext_ln157_fu_303_p1) + $signed(36'd68719468544));

assign and_ln157_fu_324_p2 = (xor_ln113_reg_366 & icmp_ln157_reg_418);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

always @ (*) begin
    ap_block_state1 = ((ap_done_reg == 1'b1) | (real_start == 1'b0) | (outbuf_full_n == 1'b0));
end

assign ap_ready = internal_ap_ready;

assign count_3_fu_254_p3 = ((icmp_ln125_reg_380[0:0] == 1'b1) ? 32'd32 : count_fu_94);

assign empty_45_fu_236_p2 = (($signed(select_ln131_fu_224_p3) > $signed(32'd0)) ? 1'b1 : 1'b0);

assign empty_46_fu_242_p3 = ((empty_45_fu_236_p2[0:0] == 1'b1) ? empty_fu_232_p1 : 6'd0);

assign empty_fu_232_p1 = select_ln131_fu_224_p3[5:0];

assign final_m2s_len_fu_281_p2 = (count_fu_94 - zext_ln112_fu_278_p1);

assign grp_paralleltostreamwithburst_Pipeline_VITIS_LOOP_131_2_fu_117_ap_start = grp_paralleltostreamwithburst_Pipeline_VITIS_LOOP_131_2_fu_117_ap_start_reg;

assign icmp_fu_218_p2 = (($signed(tmp_4_fu_208_p4) < $signed(27'd1)) ? 1'b1 : 1'b0);

assign icmp_ln125_fu_202_p2 = (($signed(count_fu_94) > $signed(32'd32)) ? 1'b1 : 1'b0);

assign icmp_ln157_fu_307_p2 = ((final_m2s_len_fu_281_p2 == 32'd1024) ? 1'b1 : 1'b0);

assign icmp_ln161_fu_319_p2 = ((count_fu_94 == zext_ln112_fu_278_p1) ? 1'b1 : 1'b0);

assign m_axi_gmem1_ARADDR = grp_paralleltostreamwithburst_Pipeline_VITIS_LOOP_131_2_fu_117_m_axi_gmem1_ARADDR;

assign m_axi_gmem1_ARBURST = grp_paralleltostreamwithburst_Pipeline_VITIS_LOOP_131_2_fu_117_m_axi_gmem1_ARBURST;

assign m_axi_gmem1_ARCACHE = grp_paralleltostreamwithburst_Pipeline_VITIS_LOOP_131_2_fu_117_m_axi_gmem1_ARCACHE;

assign m_axi_gmem1_ARID = grp_paralleltostreamwithburst_Pipeline_VITIS_LOOP_131_2_fu_117_m_axi_gmem1_ARID;

assign m_axi_gmem1_ARLEN = grp_paralleltostreamwithburst_Pipeline_VITIS_LOOP_131_2_fu_117_m_axi_gmem1_ARLEN;

assign m_axi_gmem1_ARLOCK = grp_paralleltostreamwithburst_Pipeline_VITIS_LOOP_131_2_fu_117_m_axi_gmem1_ARLOCK;

assign m_axi_gmem1_ARPROT = grp_paralleltostreamwithburst_Pipeline_VITIS_LOOP_131_2_fu_117_m_axi_gmem1_ARPROT;

assign m_axi_gmem1_ARQOS = grp_paralleltostreamwithburst_Pipeline_VITIS_LOOP_131_2_fu_117_m_axi_gmem1_ARQOS;

assign m_axi_gmem1_ARREGION = grp_paralleltostreamwithburst_Pipeline_VITIS_LOOP_131_2_fu_117_m_axi_gmem1_ARREGION;

assign m_axi_gmem1_ARSIZE = grp_paralleltostreamwithburst_Pipeline_VITIS_LOOP_131_2_fu_117_m_axi_gmem1_ARSIZE;

assign m_axi_gmem1_ARUSER = grp_paralleltostreamwithburst_Pipeline_VITIS_LOOP_131_2_fu_117_m_axi_gmem1_ARUSER;

assign m_axi_gmem1_AWADDR = 64'd0;

assign m_axi_gmem1_AWBURST = 2'd0;

assign m_axi_gmem1_AWCACHE = 4'd0;

assign m_axi_gmem1_AWID = 1'd0;

assign m_axi_gmem1_AWLEN = 32'd0;

assign m_axi_gmem1_AWLOCK = 2'd0;

assign m_axi_gmem1_AWPROT = 3'd0;

assign m_axi_gmem1_AWQOS = 4'd0;

assign m_axi_gmem1_AWREGION = 4'd0;

assign m_axi_gmem1_AWSIZE = 3'd0;

assign m_axi_gmem1_AWUSER = 1'd0;

assign m_axi_gmem1_AWVALID = 1'b0;

assign m_axi_gmem1_BREADY = 1'b0;

assign m_axi_gmem1_WDATA = 64'd0;

assign m_axi_gmem1_WID = 1'd0;

assign m_axi_gmem1_WLAST = 1'b0;

assign m_axi_gmem1_WSTRB = 8'd0;

assign m_axi_gmem1_WUSER = 1'd0;

assign m_axi_gmem1_WVALID = 1'b0;

assign or_ln_fu_176_p3 = {{1'd0}, {out_val_data_filed_V_fu_162_p6}};

assign select_ln111_cast_cast_fu_154_p3 = ((tmp_fu_132_p3[0:0] == 1'b1) ? 32'd1024 : 32'd2048);

assign select_ln111_cast_fu_146_p3 = ((tmp_fu_132_p3[0:0] == 1'b1) ? 12'd1024 : 12'd2048);

assign select_ln131_fu_224_p3 = ((icmp_fu_218_p2[0:0] == 1'b1) ? count_fu_94 : 32'd32);

assign select_ln157_fu_328_p3 = ((and_ln157_fu_324_p2[0:0] == 1'b1) ? add_ln158_reg_423 : sext_ln157_reg_413);

assign sext_ln157_1_fu_334_p1 = $signed(select_ln157_fu_328_p3);

assign sext_ln157_fu_303_p1 = $signed(shl_ln2_fu_295_p3);

assign shl_ln2_fu_295_p3 = {{count_3_fu_254_p3}, {3'd0}};

assign shl_ln_fu_286_p3 = {{xor_ln131_fu_272_p2}, {3'd0}};

assign start_out = real_start;

assign sub_fu_261_p2 = ($signed(count_3_fu_254_p3) + $signed(32'd4294967295));

assign tmp_4_fu_208_p4 = {{count_fu_94[31:5]}};

assign tmp_fu_132_p3 = kernel_mode[32'd1];

assign trunc_ln131_fu_268_p1 = in_memory_assign_fu_90[2:0];

assign xor_ln113_fu_140_p2 = (tmp_fu_132_p3 ^ 1'd1);

assign xor_ln131_fu_272_p2 = (trunc_ln131_fu_268_p1 ^ 3'd4);

assign zext_ln112_fu_278_p1 = empty_46_reg_385;

assign zext_ln174_fu_184_p1 = or_ln_fu_176_p3;

always @ (posedge ap_clk) begin
    select_ln111_cast_reg_372[9:0] <= 10'b0000000000;
    shl_ln_reg_408[2:0] <= 3'b000;
    sext_ln157_reg_413[2:0] <= 3'b000;
    add_ln158_reg_423[2:0] <= 3'b000;
end

endmodule //userdma_paralleltostreamwithburst
