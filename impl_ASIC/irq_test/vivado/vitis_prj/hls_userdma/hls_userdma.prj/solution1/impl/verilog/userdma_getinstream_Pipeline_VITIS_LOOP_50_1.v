// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Version: 2022.1
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module userdma_getinstream_Pipeline_VITIS_LOOP_50_1 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        inStreamTop_TVALID,
        inbuf_din,
        inbuf_num_data_valid,
        inbuf_fifo_cap,
        inbuf_full_n,
        inbuf_write,
        incount35_din,
        incount35_num_data_valid,
        incount35_fifo_cap,
        incount35_full_n,
        incount35_write,
        in_len_V_load,
        inStreamTop_TDATA,
        inStreamTop_TREADY,
        inStreamTop_TKEEP,
        inStreamTop_TSTRB,
        inStreamTop_TUSER,
        inStreamTop_TLAST,
        in_s2m_len,
        tmp_last_V_out,
        tmp_last_V_out_ap_vld
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input   inStreamTop_TVALID;
output  [32:0] inbuf_din;
input  [6:0] inbuf_num_data_valid;
input  [6:0] inbuf_fifo_cap;
input   inbuf_full_n;
output   inbuf_write;
output  [31:0] incount35_din;
input  [2:0] incount35_num_data_valid;
input  [2:0] incount35_fifo_cap;
input   incount35_full_n;
output   incount35_write;
input  [31:0] in_len_V_load;
input  [31:0] inStreamTop_TDATA;
output   inStreamTop_TREADY;
input  [3:0] inStreamTop_TKEEP;
input  [3:0] inStreamTop_TSTRB;
input  [1:0] inStreamTop_TUSER;
input  [0:0] inStreamTop_TLAST;
input  [31:0] in_s2m_len;
output  [0:0] tmp_last_V_out;
output   tmp_last_V_out_ap_vld;

reg ap_idle;
reg inbuf_write;
reg incount35_write;
reg inStreamTop_TREADY;
reg tmp_last_V_out_ap_vld;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
reg    ap_block_state2_pp0_stage0_iter1;
reg   [0:0] or_ln67_reg_234;
reg    ap_block_state3_pp0_stage0_iter2;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln1073_fu_184_p2;
reg    ap_condition_exit_pp0_iter1_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    inStreamTop_TDATA_blk_n;
wire    ap_block_pp0_stage0;
reg    inbuf_blk_n;
reg    incount35_blk_n;
reg    ap_block_pp0_stage0_11001;
reg   [0:0] tmp_last_V_reg_223;
wire   [31:0] count_5_fu_150_p2;
reg   [31:0] count_5_reg_228;
wire   [0:0] or_ln67_fu_178_p2;
reg   [0:0] icmp_ln1073_reg_238;
reg   [31:0] count_fu_62;
reg   [31:0] ap_sig_allocacmp_count_4;
wire    ap_loop_init;
reg   [31:0] empty_fu_66;
wire   [31:0] add_ln886_fu_156_p2;
reg    ap_block_pp0_stage0_01001;
wire   [27:0] tmp_fu_162_p4;
wire   [0:0] icmp_ln67_fu_172_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_done_reg = 1'b0;
end

userdma_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter1_stage0),
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter1_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_loop_exit_ready == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready;
    end
end

always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (or_ln67_reg_234 == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1)))) begin
        count_fu_62 <= 32'd0;
    end else if (((1'b0 == ap_block_pp0_stage0_11001) & (or_ln67_reg_234 == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        count_fu_62 <= count_5_reg_228;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            empty_fu_66 <= in_len_V_load;
        end else if (((icmp_ln1073_fu_184_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            empty_fu_66 <= add_ln886_fu_156_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        count_5_reg_228 <= count_5_fu_150_p2;
        icmp_ln1073_reg_238 <= icmp_ln1073_fu_184_p2;
        or_ln67_reg_234 <= or_ln67_fu_178_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_last_V_reg_223 <= inStreamTop_TLAST;
    end
end

always @ (*) begin
    if (((icmp_ln1073_fu_184_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if ((or_ln67_reg_234 == 1'd1)) begin
            ap_sig_allocacmp_count_4 = 32'd0;
        end else if ((or_ln67_reg_234 == 1'd0)) begin
            ap_sig_allocacmp_count_4 = count_5_reg_228;
        end else begin
            ap_sig_allocacmp_count_4 = count_fu_62;
        end
    end else begin
        ap_sig_allocacmp_count_4 = count_fu_62;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        inStreamTop_TDATA_blk_n = inStreamTop_TVALID;
    end else begin
        inStreamTop_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        inStreamTop_TREADY = 1'b1;
    end else begin
        inStreamTop_TREADY = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        inbuf_blk_n = inbuf_full_n;
    end else begin
        inbuf_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        inbuf_write = 1'b1;
    end else begin
        inbuf_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (or_ln67_reg_234 == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        incount35_blk_n = incount35_full_n;
    end else begin
        incount35_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (or_ln67_reg_234 == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        incount35_write = 1'b1;
    end else begin
        incount35_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln1073_reg_238 == 1'd0))) begin
        tmp_last_V_out_ap_vld = 1'b1;
    end else begin
        tmp_last_V_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln886_fu_156_p2 = (empty_fu_66 + 32'd1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = (((or_ln67_reg_234 == 1'd1) & (incount35_full_n == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & ((inbuf_full_n == 1'b0) | (inStreamTop_TVALID == 1'b0))));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = (((or_ln67_reg_234 == 1'd1) & (incount35_full_n == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & ((inbuf_full_n == 1'b0) | (inStreamTop_TVALID == 1'b0))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = (((or_ln67_reg_234 == 1'd1) & (incount35_full_n == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & ((inbuf_full_n == 1'b0) | (inStreamTop_TVALID == 1'b0))));
end

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state2_pp0_stage0_iter1 = ((inbuf_full_n == 1'b0) | (inStreamTop_TVALID == 1'b0));
end

always @ (*) begin
    ap_block_state3_pp0_stage0_iter2 = ((or_ln67_reg_234 == 1'd1) & (incount35_full_n == 1'b0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter1_stage0;

assign count_5_fu_150_p2 = (ap_sig_allocacmp_count_4 + 32'd1);

assign icmp_ln1073_fu_184_p2 = ((add_ln886_fu_156_p2 < in_s2m_len) ? 1'b1 : 1'b0);

assign icmp_ln67_fu_172_p2 = (($signed(tmp_fu_162_p4) > $signed(28'd0)) ? 1'b1 : 1'b0);

assign inbuf_din = {{inStreamTop_TLAST}, {inStreamTop_TDATA}};

assign incount35_din = count_5_reg_228;

assign or_ln67_fu_178_p2 = (inStreamTop_TLAST | icmp_ln67_fu_172_p2);

assign tmp_fu_162_p4 = {{count_5_fu_150_p2[31:4]}};

assign tmp_last_V_out = tmp_last_V_reg_223;

endmodule //userdma_getinstream_Pipeline_VITIS_LOOP_50_1