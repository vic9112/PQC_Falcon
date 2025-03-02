// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Version: 2022.1
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module NTT_ntt_10_stages_Pipeline_VITIS_LOOP_44_19 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        stage0_6_address0,
        stage0_6_ce0,
        stage0_6_we0,
        stage0_6_d0,
        stage0_5_address0,
        stage0_5_ce0,
        stage0_5_we0,
        stage0_5_d0,
        stage0_4_address0,
        stage0_4_ce0,
        stage0_4_we0,
        stage0_4_d0,
        stage0_address0,
        stage0_ce0,
        stage0_we0,
        stage0_d0,
        stage1_address0,
        stage1_ce0,
        stage1_q0,
        stage1_2_address0,
        stage1_2_ce0,
        stage1_2_q0,
        stage1_1_address0,
        stage1_1_ce0,
        stage1_1_q0,
        stage1_3_address0,
        stage1_3_ce0,
        stage1_3_q0,
        GMb_address0,
        GMb_ce0,
        GMb_q0
);

parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [7:0] stage0_6_address0;
output   stage0_6_ce0;
output   stage0_6_we0;
output  [15:0] stage0_6_d0;
output  [7:0] stage0_5_address0;
output   stage0_5_ce0;
output   stage0_5_we0;
output  [15:0] stage0_5_d0;
output  [7:0] stage0_4_address0;
output   stage0_4_ce0;
output   stage0_4_we0;
output  [15:0] stage0_4_d0;
output  [7:0] stage0_address0;
output   stage0_ce0;
output   stage0_we0;
output  [15:0] stage0_d0;
output  [7:0] stage1_address0;
output   stage1_ce0;
input  [15:0] stage1_q0;
output  [7:0] stage1_2_address0;
output   stage1_2_ce0;
input  [15:0] stage1_2_q0;
output  [7:0] stage1_1_address0;
output   stage1_1_ce0;
input  [15:0] stage1_1_q0;
output  [7:0] stage1_3_address0;
output   stage1_3_ce0;
input  [15:0] stage1_3_q0;
output  [9:0] GMb_address0;
output   GMb_ce0;
input  [13:0] GMb_q0;

reg ap_idle;
reg stage0_6_ce0;
reg stage0_6_we0;
reg stage0_5_ce0;
reg stage0_5_we0;
reg stage0_4_ce0;
reg stage0_4_we0;
reg stage0_ce0;
reg stage0_we0;
reg stage1_ce0;
reg stage1_2_ce0;
reg stage1_1_ce0;
reg stage1_3_ce0;
reg GMb_ce0;

(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_state2_pp0_stage1_iter0;
wire    ap_block_state4_pp0_stage1_iter1;
wire    ap_block_state6_pp0_stage1_iter2;
wire    ap_block_state8_pp0_stage1_iter3;
wire    ap_block_state10_pp0_stage1_iter4;
wire    ap_block_state12_pp0_stage1_iter5;
wire    ap_block_pp0_stage1_subdone;
reg   [0:0] tmp_reg_699;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [0:0] tmp_fu_219_p3;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state3_pp0_stage0_iter1;
wire    ap_block_state5_pp0_stage0_iter2;
wire    ap_block_state7_pp0_stage0_iter3;
wire    ap_block_state9_pp0_stage0_iter4;
wire    ap_block_state11_pp0_stage0_iter5;
wire    ap_block_pp0_stage0_11001;
wire   [63:0] zext_ln52_fu_258_p1;
reg   [63:0] zext_ln52_reg_708;
reg   [63:0] zext_ln52_reg_708_pp0_iter1_reg;
reg   [63:0] zext_ln52_reg_708_pp0_iter2_reg;
reg   [63:0] zext_ln52_reg_708_pp0_iter3_reg;
reg   [63:0] zext_ln52_reg_708_pp0_iter4_reg;
wire   [1:0] trunc_ln48_fu_263_p1;
reg   [1:0] trunc_ln48_reg_720;
reg   [7:0] lshr_ln52_s_reg_726;
reg   [7:0] lshr_ln52_s_reg_726_pp0_iter1_reg;
reg   [7:0] lshr_ln52_s_reg_726_pp0_iter2_reg;
reg   [7:0] lshr_ln52_s_reg_726_pp0_iter3_reg;
reg   [7:0] lshr_ln52_s_reg_726_pp0_iter4_reg;
wire   [63:0] zext_ln54_1_fu_309_p1;
reg   [63:0] zext_ln54_1_reg_731;
reg   [63:0] zext_ln54_1_reg_731_pp0_iter1_reg;
reg   [63:0] zext_ln54_1_reg_731_pp0_iter2_reg;
reg   [63:0] zext_ln54_1_reg_731_pp0_iter3_reg;
reg   [63:0] zext_ln54_1_reg_731_pp0_iter4_reg;
reg   [63:0] zext_ln54_1_reg_731_pp0_iter5_reg;
wire   [29:0] zext_ln41_fu_325_p1;
wire    ap_block_pp0_stage1_11001;
wire   [1:0] add_ln48_1_fu_338_p2;
reg   [1:0] add_ln48_1_reg_752;
reg   [1:0] add_ln48_1_reg_752_pp0_iter1_reg;
reg   [1:0] add_ln48_1_reg_752_pp0_iter2_reg;
reg   [1:0] add_ln48_1_reg_752_pp0_iter3_reg;
reg   [1:0] add_ln48_1_reg_752_pp0_iter4_reg;
wire   [29:0] grp_fu_647_p2;
reg   [29:0] tmp2_reg_762;
reg   [29:0] tmp2_reg_762_pp0_iter3_reg;
reg   [29:0] tmp2_reg_762_pp0_iter4_reg;
wire   [29:0] grp_fu_654_p2;
reg   [29:0] tmp2_3_reg_772;
reg   [29:0] tmp2_3_reg_772_pp0_iter3_reg;
reg   [29:0] tmp2_3_reg_772_pp0_iter4_reg;
wire   [15:0] grp_fu_668_p2;
reg  signed [15:0] mul_ln55_2_reg_787;
reg   [15:0] u_reg_802;
wire   [63:0] zext_ln52_1_fu_500_p1;
reg   [63:0] zext_ln52_1_reg_814;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln50_fu_253_p1;
wire    ap_block_pp0_stage0;
wire    ap_block_pp0_stage1;
reg   [9:0] n_fu_90;
wire   [9:0] n_2_fu_314_p2;
wire    ap_loop_init;
reg   [9:0] ap_sig_allocacmp_n_1;
wire   [8:0] trunc_ln44_fu_227_p1;
wire   [7:0] i_gm_7_fu_231_p4;
wire   [8:0] zext_ln50_7_cast_fu_245_p3;
wire   [8:0] or_ln48_fu_267_p2;
wire   [9:0] zext_ln48_1_fu_273_p1;
wire   [9:0] zext_ln48_fu_241_p1;
wire   [9:0] i_fu_277_p2;
wire   [9:0] add_ln54_fu_293_p2;
wire   [7:0] lshr_ln54_s_fu_299_p4;
wire   [1:0] or_ln48_1_fu_333_p2;
wire   [1:0] tmp_s_fu_343_p3;
wire   [15:0] tmp_s_fu_343_p4;
wire  signed [15:0] zext_ln55_fu_363_p0;
wire   [15:0] grp_fu_661_p2;
wire   [30:0] grp_fu_674_p3;
wire   [14:0] trunc_ln43_s_fu_378_p4;
wire  signed [14:0] tmp2_1_fu_387_p2;
wire   [0:0] tmp_1_fu_397_p3;
wire   [15:0] select_ln58_fu_405_p3;
wire  signed [15:0] sext_ln43_fu_393_p1;
wire  signed [15:0] tmp2_6_fu_413_p2;
wire   [16:0] zext_ln42_1_fu_375_p1;
wire   [16:0] add_ln62_fu_423_p2;
wire  signed [17:0] sext_ln62_fu_429_p1;
wire  signed [17:0] sext_ln43_1_fu_419_p1;
wire   [17:0] tmp1_1_fu_433_p2;
wire   [0:0] tmp_2_fu_439_p3;
wire   [15:0] select_ln64_fu_452_p3;
wire   [15:0] add_ln64_fu_447_p2;
wire   [17:0] zext_ln42_fu_372_p1;
wire   [17:0] tmp1_2_fu_467_p2;
wire   [0:0] tmp_3_fu_473_p3;
wire   [15:0] select_ln69_fu_485_p3;
wire   [15:0] trunc_ln68_fu_481_p1;
wire   [15:0] u_1_fu_507_p4;
wire   [30:0] grp_fu_683_p3;
wire   [14:0] trunc_ln43_1_fu_524_p4;
wire  signed [14:0] tmp2_4_fu_533_p2;
wire   [0:0] tmp_4_fu_543_p3;
wire   [15:0] select_ln58_1_fu_551_p3;
wire  signed [15:0] sext_ln43_2_fu_539_p1;
wire  signed [15:0] tmp2_7_fu_559_p2;
wire   [16:0] zext_ln42_3_fu_520_p1;
wire   [16:0] add_ln62_2_fu_569_p2;
wire  signed [17:0] sext_ln62_1_fu_575_p1;
wire  signed [17:0] sext_ln43_3_fu_565_p1;
wire   [17:0] tmp1_4_fu_579_p2;
wire   [0:0] tmp_5_fu_585_p3;
wire   [15:0] select_ln64_1_fu_599_p3;
wire   [15:0] add_ln64_2_fu_593_p2;
wire   [17:0] zext_ln42_2_fu_516_p1;
wire   [17:0] tmp1_5_fu_614_p2;
wire   [0:0] tmp_6_fu_620_p3;
wire   [15:0] select_ln69_1_fu_632_p3;
wire   [15:0] trunc_ln68_1_fu_628_p1;
wire   [15:0] grp_fu_647_p0;
wire   [13:0] grp_fu_647_p1;
wire   [15:0] grp_fu_654_p0;
wire   [13:0] grp_fu_654_p1;
wire  signed [15:0] grp_fu_661_p0;
wire   [13:0] grp_fu_661_p1;
wire  signed [15:0] grp_fu_668_p0;
wire   [13:0] grp_fu_668_p1;
wire   [15:0] grp_fu_674_p0;
wire   [13:0] grp_fu_674_p1;
wire   [29:0] grp_fu_674_p2;
wire   [15:0] grp_fu_683_p0;
wire   [13:0] grp_fu_683_p1;
wire   [29:0] grp_fu_683_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg   [1:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to5;
wire    ap_enable_pp0;
wire    ap_start_int;
wire   [29:0] grp_fu_647_p00;
wire   [29:0] grp_fu_654_p00;
wire   [29:0] grp_fu_674_p00;
wire   [30:0] grp_fu_674_p20;
wire   [29:0] grp_fu_683_p00;
wire   [30:0] grp_fu_683_p20;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 ap_done_reg = 1'b0;
end

NTT_mux_22_16_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 16 ),
    .din2_WIDTH( 2 ),
    .dout_WIDTH( 16 ))
mux_22_16_1_1_U156(
    .din0(16'd0),
    .din1(stage1_3_q0),
    .din2(tmp_s_fu_343_p3),
    .dout(tmp_s_fu_343_p4)
);

NTT_mux_22_16_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 16 ),
    .din2_WIDTH( 2 ),
    .dout_WIDTH( 16 ))
mux_22_16_1_1_U157(
    .din0(16'd0),
    .din1(stage1_1_q0),
    .din2(add_ln48_1_reg_752_pp0_iter4_reg),
    .dout(u_1_fu_507_p4)
);

NTT_mul_mul_16ns_14ns_30_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 14 ),
    .dout_WIDTH( 30 ))
mul_mul_16ns_14ns_30_4_1_U158(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_647_p0),
    .din1(grp_fu_647_p1),
    .ce(1'b1),
    .dout(grp_fu_647_p2)
);

NTT_mul_mul_16ns_14ns_30_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 14 ),
    .dout_WIDTH( 30 ))
mul_mul_16ns_14ns_30_4_1_U159(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_654_p0),
    .din1(grp_fu_654_p1),
    .ce(1'b1),
    .dout(grp_fu_654_p2)
);

NTT_mul_mul_16s_14ns_16_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 14 ),
    .dout_WIDTH( 16 ))
mul_mul_16s_14ns_16_4_1_U160(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_661_p0),
    .din1(grp_fu_661_p1),
    .ce(1'b1),
    .dout(grp_fu_661_p2)
);

NTT_mul_mul_16s_14ns_16_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 14 ),
    .dout_WIDTH( 16 ))
mul_mul_16s_14ns_16_4_1_U161(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_668_p0),
    .din1(grp_fu_668_p1),
    .ce(1'b1),
    .dout(grp_fu_668_p2)
);

NTT_mac_muladd_16ns_14ns_30ns_31_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 14 ),
    .din2_WIDTH( 30 ),
    .dout_WIDTH( 31 ))
mac_muladd_16ns_14ns_30ns_31_4_1_U162(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_674_p0),
    .din1(grp_fu_674_p1),
    .din2(grp_fu_674_p2),
    .ce(1'b1),
    .dout(grp_fu_674_p3)
);

NTT_mac_muladd_16ns_14ns_30ns_31_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 14 ),
    .din2_WIDTH( 30 ),
    .dout_WIDTH( 31 ))
mac_muladd_16ns_14ns_30ns_31_4_1_U163(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_683_p0),
    .din1(grp_fu_683_p1),
    .din2(grp_fu_683_p2),
    .ce(1'b1),
    .dout(grp_fu_683_p3)
);

NTT_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage1),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage1)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_fu_219_p3 == 1'd0))) begin
            n_fu_90 <= n_2_fu_314_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            n_fu_90 <= 10'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_reg_699 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln48_1_reg_752 <= add_ln48_1_fu_338_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln48_1_reg_752_pp0_iter1_reg <= add_ln48_1_reg_752;
        add_ln48_1_reg_752_pp0_iter2_reg <= add_ln48_1_reg_752_pp0_iter1_reg;
        add_ln48_1_reg_752_pp0_iter3_reg <= add_ln48_1_reg_752_pp0_iter2_reg;
        add_ln48_1_reg_752_pp0_iter4_reg <= add_ln48_1_reg_752_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        mul_ln55_2_reg_787 <= grp_fu_668_p2;
        u_reg_802 <= stage1_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_fu_219_p3 == 1'd0))) begin
        lshr_ln52_s_reg_726 <= {{i_fu_277_p2[9:2]}};
        trunc_ln48_reg_720 <= trunc_ln48_fu_263_p1;
        zext_ln52_reg_708[7 : 0] <= zext_ln52_fu_258_p1[7 : 0];
        zext_ln54_1_reg_731[7 : 0] <= zext_ln54_1_fu_309_p1[7 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        lshr_ln52_s_reg_726_pp0_iter1_reg <= lshr_ln52_s_reg_726;
        lshr_ln52_s_reg_726_pp0_iter2_reg <= lshr_ln52_s_reg_726_pp0_iter1_reg;
        lshr_ln52_s_reg_726_pp0_iter3_reg <= lshr_ln52_s_reg_726_pp0_iter2_reg;
        lshr_ln52_s_reg_726_pp0_iter4_reg <= lshr_ln52_s_reg_726_pp0_iter3_reg;
        tmp2_3_reg_772 <= grp_fu_654_p2;
        tmp2_3_reg_772_pp0_iter3_reg <= tmp2_3_reg_772;
        tmp2_3_reg_772_pp0_iter4_reg <= tmp2_3_reg_772_pp0_iter3_reg;
        tmp2_reg_762 <= grp_fu_647_p2;
        tmp2_reg_762_pp0_iter3_reg <= tmp2_reg_762;
        tmp2_reg_762_pp0_iter4_reg <= tmp2_reg_762_pp0_iter3_reg;
        tmp_reg_699 <= ap_sig_allocacmp_n_1[32'd9];
        zext_ln52_1_reg_814[7 : 0] <= zext_ln52_1_fu_500_p1[7 : 0];
        zext_ln52_reg_708_pp0_iter1_reg[7 : 0] <= zext_ln52_reg_708[7 : 0];
        zext_ln52_reg_708_pp0_iter2_reg[7 : 0] <= zext_ln52_reg_708_pp0_iter1_reg[7 : 0];
        zext_ln52_reg_708_pp0_iter3_reg[7 : 0] <= zext_ln52_reg_708_pp0_iter2_reg[7 : 0];
        zext_ln52_reg_708_pp0_iter4_reg[7 : 0] <= zext_ln52_reg_708_pp0_iter3_reg[7 : 0];
        zext_ln54_1_reg_731_pp0_iter1_reg[7 : 0] <= zext_ln54_1_reg_731[7 : 0];
        zext_ln54_1_reg_731_pp0_iter2_reg[7 : 0] <= zext_ln54_1_reg_731_pp0_iter1_reg[7 : 0];
        zext_ln54_1_reg_731_pp0_iter3_reg[7 : 0] <= zext_ln54_1_reg_731_pp0_iter2_reg[7 : 0];
        zext_ln54_1_reg_731_pp0_iter4_reg[7 : 0] <= zext_ln54_1_reg_731_pp0_iter3_reg[7 : 0];
        zext_ln54_1_reg_731_pp0_iter5_reg[7 : 0] <= zext_ln54_1_reg_731_pp0_iter4_reg[7 : 0];
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        GMb_ce0 = 1'b1;
    end else begin
        GMb_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_reg_699 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        ap_enable_reg_pp0_iter0 = ap_start_int;
    end else begin
        ap_enable_reg_pp0_iter0 = ap_enable_reg_pp0_iter0_reg;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to5 = 1'b1;
    end else begin
        ap_idle_pp0_1to5 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_n_1 = 10'd0;
    end else begin
        ap_sig_allocacmp_n_1 = n_fu_90;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        stage0_4_ce0 = 1'b1;
    end else begin
        stage0_4_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        stage0_4_we0 = 1'b1;
    end else begin
        stage0_4_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        stage0_5_ce0 = 1'b1;
    end else begin
        stage0_5_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        stage0_5_we0 = 1'b1;
    end else begin
        stage0_5_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        stage0_6_ce0 = 1'b1;
    end else begin
        stage0_6_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        stage0_6_we0 = 1'b1;
    end else begin
        stage0_6_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        stage0_ce0 = 1'b1;
    end else begin
        stage0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        stage0_we0 = 1'b1;
    end else begin
        stage0_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        stage1_1_ce0 = 1'b1;
    end else begin
        stage1_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        stage1_2_ce0 = 1'b1;
    end else begin
        stage1_2_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        stage1_3_ce0 = 1'b1;
    end else begin
        stage1_3_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        stage1_ce0 = 1'b1;
    end else begin
        stage1_ce0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to5 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign GMb_address0 = zext_ln50_fu_253_p1;

assign add_ln48_1_fu_338_p2 = (or_ln48_1_fu_333_p2 + trunc_ln48_reg_720);

assign add_ln54_fu_293_p2 = (i_fu_277_p2 + 10'd2);

assign add_ln62_2_fu_569_p2 = ($signed(zext_ln42_3_fu_520_p1) + $signed(17'd118783));

assign add_ln62_fu_423_p2 = ($signed(zext_ln42_1_fu_375_p1) + $signed(17'd118783));

assign add_ln64_2_fu_593_p2 = ($signed(u_1_fu_507_p4) + $signed(tmp2_7_fu_559_p2));

assign add_ln64_fu_447_p2 = ($signed(u_reg_802) + $signed(tmp2_6_fu_413_p2));

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);

assign ap_block_state10_pp0_stage1_iter4 = ~(1'b1 == 1'b1);

assign ap_block_state11_pp0_stage0_iter5 = ~(1'b1 == 1'b1);

assign ap_block_state12_pp0_stage1_iter5 = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage1_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage1_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage1_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp0_stage1_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state9_pp0_stage0_iter4 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;

assign grp_fu_647_p0 = grp_fu_647_p00;

assign grp_fu_647_p00 = stage1_2_q0;

assign grp_fu_647_p1 = zext_ln41_fu_325_p1;

assign grp_fu_654_p0 = grp_fu_654_p00;

assign grp_fu_654_p00 = tmp_s_fu_343_p4;

assign grp_fu_654_p1 = zext_ln41_fu_325_p1;

assign grp_fu_661_p0 = grp_fu_647_p2[15:0];

assign grp_fu_661_p1 = 16'd12287;

assign grp_fu_668_p0 = grp_fu_654_p2[15:0];

assign grp_fu_668_p1 = 16'd12287;

assign grp_fu_674_p0 = grp_fu_674_p00;

assign grp_fu_674_p00 = $unsigned(zext_ln55_fu_363_p0);

assign grp_fu_674_p1 = 30'd12289;

assign grp_fu_674_p2 = grp_fu_674_p20;

assign grp_fu_674_p20 = tmp2_reg_762_pp0_iter4_reg;

assign grp_fu_683_p0 = grp_fu_683_p00;

assign grp_fu_683_p00 = $unsigned(mul_ln55_2_reg_787);

assign grp_fu_683_p1 = 30'd12289;

assign grp_fu_683_p2 = grp_fu_683_p20;

assign grp_fu_683_p20 = tmp2_3_reg_772_pp0_iter4_reg;

assign i_fu_277_p2 = (zext_ln48_1_fu_273_p1 + zext_ln48_fu_241_p1);

assign i_gm_7_fu_231_p4 = {{ap_sig_allocacmp_n_1[8:1]}};

assign lshr_ln54_s_fu_299_p4 = {{add_ln54_fu_293_p2[9:2]}};

assign n_2_fu_314_p2 = (ap_sig_allocacmp_n_1 + 10'd2);

assign or_ln48_1_fu_333_p2 = (trunc_ln48_reg_720 | 2'd1);

assign or_ln48_fu_267_p2 = (trunc_ln44_fu_227_p1 | 9'd1);

assign select_ln58_1_fu_551_p3 = ((tmp_4_fu_543_p3[0:0] == 1'b1) ? 16'd12289 : 16'd0);

assign select_ln58_fu_405_p3 = ((tmp_1_fu_397_p3[0:0] == 1'b1) ? 16'd12289 : 16'd0);

assign select_ln64_1_fu_599_p3 = ((tmp_5_fu_585_p3[0:0] == 1'b1) ? 16'd0 : 16'd53247);

assign select_ln64_fu_452_p3 = ((tmp_2_fu_439_p3[0:0] == 1'b1) ? 16'd0 : 16'd53247);

assign select_ln69_1_fu_632_p3 = ((tmp_6_fu_620_p3[0:0] == 1'b1) ? 16'd12289 : 16'd0);

assign select_ln69_fu_485_p3 = ((tmp_3_fu_473_p3[0:0] == 1'b1) ? 16'd12289 : 16'd0);

assign sext_ln43_1_fu_419_p1 = tmp2_6_fu_413_p2;

assign sext_ln43_2_fu_539_p1 = tmp2_4_fu_533_p2;

assign sext_ln43_3_fu_565_p1 = tmp2_7_fu_559_p2;

assign sext_ln43_fu_393_p1 = tmp2_1_fu_387_p2;

assign sext_ln62_1_fu_575_p1 = $signed(add_ln62_2_fu_569_p2);

assign sext_ln62_fu_429_p1 = $signed(add_ln62_fu_423_p2);

assign stage0_4_address0 = zext_ln52_1_reg_814;

assign stage0_4_d0 = (select_ln64_1_fu_599_p3 + add_ln64_2_fu_593_p2);

assign stage0_5_address0 = zext_ln52_reg_708_pp0_iter4_reg;

assign stage0_5_d0 = (select_ln69_fu_485_p3 + trunc_ln68_fu_481_p1);

assign stage0_6_address0 = zext_ln54_1_reg_731_pp0_iter5_reg;

assign stage0_6_d0 = (select_ln69_1_fu_632_p3 + trunc_ln68_1_fu_628_p1);

assign stage0_address0 = zext_ln52_reg_708_pp0_iter4_reg;

assign stage0_d0 = (select_ln64_fu_452_p3 + add_ln64_fu_447_p2);

assign stage1_1_address0 = zext_ln52_1_fu_500_p1;

assign stage1_2_address0 = zext_ln52_fu_258_p1;

assign stage1_3_address0 = zext_ln54_1_fu_309_p1;

assign stage1_address0 = zext_ln52_reg_708_pp0_iter3_reg;

assign tmp1_1_fu_433_p2 = ($signed(sext_ln62_fu_429_p1) + $signed(sext_ln43_1_fu_419_p1));

assign tmp1_2_fu_467_p2 = ($signed(zext_ln42_fu_372_p1) - $signed(sext_ln43_1_fu_419_p1));

assign tmp1_4_fu_579_p2 = ($signed(sext_ln62_1_fu_575_p1) + $signed(sext_ln43_3_fu_565_p1));

assign tmp1_5_fu_614_p2 = ($signed(zext_ln42_2_fu_516_p1) - $signed(sext_ln43_3_fu_565_p1));

assign tmp2_1_fu_387_p2 = ($signed(trunc_ln43_s_fu_378_p4) + $signed(15'd20479));

assign tmp2_4_fu_533_p2 = ($signed(trunc_ln43_1_fu_524_p4) + $signed(15'd20479));

assign tmp2_6_fu_413_p2 = ($signed(select_ln58_fu_405_p3) + $signed(sext_ln43_fu_393_p1));

assign tmp2_7_fu_559_p2 = ($signed(select_ln58_1_fu_551_p3) + $signed(sext_ln43_2_fu_539_p1));

assign tmp_1_fu_397_p3 = tmp2_1_fu_387_p2[32'd14];

assign tmp_2_fu_439_p3 = tmp1_1_fu_433_p2[32'd17];

assign tmp_3_fu_473_p3 = tmp1_2_fu_467_p2[32'd17];

assign tmp_4_fu_543_p3 = tmp2_4_fu_533_p2[32'd14];

assign tmp_5_fu_585_p3 = tmp1_4_fu_579_p2[32'd17];

assign tmp_6_fu_620_p3 = tmp1_5_fu_614_p2[32'd17];

assign tmp_fu_219_p3 = ap_sig_allocacmp_n_1[32'd9];

assign tmp_s_fu_343_p3 = (or_ln48_1_fu_333_p2 + trunc_ln48_reg_720);

assign trunc_ln43_1_fu_524_p4 = {{grp_fu_683_p3[30:16]}};

assign trunc_ln43_s_fu_378_p4 = {{grp_fu_674_p3[30:16]}};

assign trunc_ln44_fu_227_p1 = ap_sig_allocacmp_n_1[8:0];

assign trunc_ln48_fu_263_p1 = ap_sig_allocacmp_n_1[1:0];

assign trunc_ln68_1_fu_628_p1 = tmp1_5_fu_614_p2[15:0];

assign trunc_ln68_fu_481_p1 = tmp1_2_fu_467_p2[15:0];

assign zext_ln41_fu_325_p1 = GMb_q0;

assign zext_ln42_1_fu_375_p1 = u_reg_802;

assign zext_ln42_2_fu_516_p1 = u_1_fu_507_p4;

assign zext_ln42_3_fu_520_p1 = u_1_fu_507_p4;

assign zext_ln42_fu_372_p1 = u_reg_802;

assign zext_ln48_1_fu_273_p1 = or_ln48_fu_267_p2;

assign zext_ln48_fu_241_p1 = trunc_ln44_fu_227_p1;

assign zext_ln50_7_cast_fu_245_p3 = {{1'd1}, {i_gm_7_fu_231_p4}};

assign zext_ln50_fu_253_p1 = zext_ln50_7_cast_fu_245_p3;

assign zext_ln52_1_fu_500_p1 = lshr_ln52_s_reg_726_pp0_iter4_reg;

assign zext_ln52_fu_258_p1 = i_gm_7_fu_231_p4;

assign zext_ln54_1_fu_309_p1 = lshr_ln54_s_fu_299_p4;

assign zext_ln55_fu_363_p0 = grp_fu_661_p2;

always @ (posedge ap_clk) begin
    zext_ln52_reg_708[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln52_reg_708_pp0_iter1_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln52_reg_708_pp0_iter2_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln52_reg_708_pp0_iter3_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln52_reg_708_pp0_iter4_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln54_1_reg_731[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln54_1_reg_731_pp0_iter1_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln54_1_reg_731_pp0_iter2_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln54_1_reg_731_pp0_iter3_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln54_1_reg_731_pp0_iter4_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln54_1_reg_731_pp0_iter5_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln52_1_reg_814[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
end

endmodule //NTT_ntt_10_stages_Pipeline_VITIS_LOOP_44_19
