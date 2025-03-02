// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Version: 2022.1
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module userdma_sendoutstream (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        outbuf_dout,
        outbuf_num_data_valid,
        outbuf_fifo_cap,
        outbuf_empty_n,
        outbuf_read,
        outStreamTop_TREADY,
        m2s_buf_sts,
        m2s_buf_sts_ap_vld,
        outStreamTop_TDATA,
        outStreamTop_TVALID,
        outStreamTop_TKEEP,
        outStreamTop_TSTRB,
        outStreamTop_TUSER,
        outStreamTop_TLAST
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [34:0] outbuf_dout;
input  [6:0] outbuf_num_data_valid;
input  [6:0] outbuf_fifo_cap;
input   outbuf_empty_n;
output   outbuf_read;
input   outStreamTop_TREADY;
output  [0:0] m2s_buf_sts;
output   m2s_buf_sts_ap_vld;
output  [31:0] outStreamTop_TDATA;
output   outStreamTop_TVALID;
output  [3:0] outStreamTop_TKEEP;
output  [3:0] outStreamTop_TSTRB;
output  [1:0] outStreamTop_TUSER;
output  [0:0] outStreamTop_TLAST;

reg ap_idle;
reg outbuf_read;
reg[0:0] m2s_buf_sts;
reg m2s_buf_sts_ap_vld;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
reg    ap_done_reg;
reg    ap_block_state1_pp0_stage0_iter0;
wire    regslice_both_outStreamTop_V_data_V_U_apdone_blk;
reg    ap_block_state2_pp0_stage0_iter1;
wire    ap_loop_exit_ready;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] tmp_last_V_fu_107_p3;
reg    ap_condition_exit_pp0_iter0_stage0;
reg    ap_ready_int;
reg    outbuf_blk_n;
wire    ap_block_pp0_stage0;
reg    outStreamTop_TDATA_blk_n;
reg    ap_block_pp0_stage0_11001;
reg   [0:0] tmp_last_V_reg_126;
reg    ap_block_pp0_stage0_01001;
reg   [0:0] m2s_buf_sts_preg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_loop_init;
wire   [31:0] outStreamTop_TDATA_int_regslice;
reg    outStreamTop_TVALID_int_regslice;
wire    outStreamTop_TREADY_int_regslice;
wire    regslice_both_outStreamTop_V_data_V_U_vld_out;
wire    regslice_both_outStreamTop_V_keep_V_U_apdone_blk;
wire    regslice_both_outStreamTop_V_keep_V_U_ack_in_dummy;
wire    regslice_both_outStreamTop_V_keep_V_U_vld_out;
wire    regslice_both_outStreamTop_V_strb_V_U_apdone_blk;
wire    regslice_both_outStreamTop_V_strb_V_U_ack_in_dummy;
wire    regslice_both_outStreamTop_V_strb_V_U_vld_out;
wire    regslice_both_outStreamTop_V_user_V_U_apdone_blk;
wire   [1:0] outStreamTop_TUSER_int_regslice;
wire    regslice_both_outStreamTop_V_user_V_U_ack_in_dummy;
wire    regslice_both_outStreamTop_V_user_V_U_vld_out;
wire    regslice_both_outStreamTop_V_last_V_U_apdone_blk;
wire   [0:0] outStreamTop_TLAST_int_regslice;
wire    regslice_both_outStreamTop_V_last_V_U_ack_in_dummy;
wire    regslice_both_outStreamTop_V_last_V_U_vld_out;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_done_reg = 1'b0;
#0 m2s_buf_sts_preg = 1'd0;
end

userdma_flow_control_loop_pipe flow_control_loop_pipe_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int),
    .ap_continue(ap_continue)
);

userdma_regslice_both #(
    .DataWidth( 32 ))
regslice_both_outStreamTop_V_data_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(outStreamTop_TDATA_int_regslice),
    .vld_in(outStreamTop_TVALID_int_regslice),
    .ack_in(outStreamTop_TREADY_int_regslice),
    .data_out(outStreamTop_TDATA),
    .vld_out(regslice_both_outStreamTop_V_data_V_U_vld_out),
    .ack_out(outStreamTop_TREADY),
    .apdone_blk(regslice_both_outStreamTop_V_data_V_U_apdone_blk)
);

userdma_regslice_both #(
    .DataWidth( 4 ))
regslice_both_outStreamTop_V_keep_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(4'd0),
    .vld_in(outStreamTop_TVALID_int_regslice),
    .ack_in(regslice_both_outStreamTop_V_keep_V_U_ack_in_dummy),
    .data_out(outStreamTop_TKEEP),
    .vld_out(regslice_both_outStreamTop_V_keep_V_U_vld_out),
    .ack_out(outStreamTop_TREADY),
    .apdone_blk(regslice_both_outStreamTop_V_keep_V_U_apdone_blk)
);

userdma_regslice_both #(
    .DataWidth( 4 ))
regslice_both_outStreamTop_V_strb_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(4'd0),
    .vld_in(outStreamTop_TVALID_int_regslice),
    .ack_in(regslice_both_outStreamTop_V_strb_V_U_ack_in_dummy),
    .data_out(outStreamTop_TSTRB),
    .vld_out(regslice_both_outStreamTop_V_strb_V_U_vld_out),
    .ack_out(outStreamTop_TREADY),
    .apdone_blk(regslice_both_outStreamTop_V_strb_V_U_apdone_blk)
);

userdma_regslice_both #(
    .DataWidth( 2 ))
regslice_both_outStreamTop_V_user_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(outStreamTop_TUSER_int_regslice),
    .vld_in(outStreamTop_TVALID_int_regslice),
    .ack_in(regslice_both_outStreamTop_V_user_V_U_ack_in_dummy),
    .data_out(outStreamTop_TUSER),
    .vld_out(regslice_both_outStreamTop_V_user_V_U_vld_out),
    .ack_out(outStreamTop_TREADY),
    .apdone_blk(regslice_both_outStreamTop_V_user_V_U_apdone_blk)
);

userdma_regslice_both #(
    .DataWidth( 1 ))
regslice_both_outStreamTop_V_last_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(outStreamTop_TLAST_int_regslice),
    .vld_in(outStreamTop_TVALID_int_regslice),
    .ack_in(regslice_both_outStreamTop_V_last_V_U_ack_in_dummy),
    .data_out(outStreamTop_TLAST),
    .vld_out(regslice_both_outStreamTop_V_last_V_U_vld_out),
    .ack_out(outStreamTop_TREADY),
    .apdone_blk(regslice_both_outStreamTop_V_last_V_U_apdone_blk)
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        m2s_buf_sts_preg <= 1'd0;
    end else begin
        if (((tmp_last_V_reg_126 == 1'd1) & (1'b0 == ap_block_pp0_stage0_01001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            m2s_buf_sts_preg <= 1'd1;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready == 1'b0))) begin
            ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
        end else if ((1'b0 == ap_block_pp0_stage0_11001)) begin
            ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_last_V_reg_126 <= outbuf_dout[32'd34];
    end
end

always @ (*) begin
    if (((tmp_last_V_fu_107_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_start_int == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_last_V_reg_126 == 1'd1) & (1'b0 == ap_block_pp0_stage0_01001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        m2s_buf_sts = 1'd1;
    end else begin
        m2s_buf_sts = m2s_buf_sts_preg;
    end
end

always @ (*) begin
    if (((tmp_last_V_reg_126 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        m2s_buf_sts_ap_vld = 1'b1;
    end else begin
        m2s_buf_sts_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0) & (ap_done_reg == 1'b0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        outStreamTop_TDATA_blk_n = outStreamTop_TREADY_int_regslice;
    end else begin
        outStreamTop_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        outStreamTop_TVALID_int_regslice = 1'b1;
    end else begin
        outStreamTop_TVALID_int_regslice = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_done_reg == 1'b0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        outbuf_blk_n = outbuf_empty_n;
    end else begin
        outbuf_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        outbuf_read = 1'b1;
    end else begin
        outbuf_read = 1'b0;
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

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((ap_done_reg == 1'b1) | ((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (regslice_both_outStreamTop_V_data_V_U_apdone_blk == 1'b1)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & ((regslice_both_outStreamTop_V_data_V_U_apdone_blk == 1'b1) | (outStreamTop_TREADY_int_regslice == 1'b0))) | ((ap_start_int == 1'b1) & ((ap_done_reg == 1'b1) | (outbuf_empty_n == 1'b0) | (outStreamTop_TREADY_int_regslice == 1'b0))));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_done_reg == 1'b1) | ((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (regslice_both_outStreamTop_V_data_V_U_apdone_blk == 1'b1)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & ((regslice_both_outStreamTop_V_data_V_U_apdone_blk == 1'b1) | (outStreamTop_TREADY_int_regslice == 1'b0))) | ((ap_start_int == 1'b1) & ((ap_done_reg == 1'b1) | (outbuf_empty_n == 1'b0) | (outStreamTop_TREADY_int_regslice == 1'b0))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_done_reg == 1'b1) | ((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (regslice_both_outStreamTop_V_data_V_U_apdone_blk == 1'b1)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & ((regslice_both_outStreamTop_V_data_V_U_apdone_blk == 1'b1) | (outStreamTop_TREADY_int_regslice == 1'b0))) | ((ap_start_int == 1'b1) & ((ap_done_reg == 1'b1) | (outbuf_empty_n == 1'b0) | (outStreamTop_TREADY_int_regslice == 1'b0))));
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = ((ap_done_reg == 1'b1) | (outbuf_empty_n == 1'b0) | (outStreamTop_TREADY_int_regslice == 1'b0));
end

always @ (*) begin
    ap_block_state2_pp0_stage0_iter1 = ((regslice_both_outStreamTop_V_data_V_U_apdone_blk == 1'b1) | (outStreamTop_TREADY_int_regslice == 1'b0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign outStreamTop_TDATA_int_regslice = outbuf_dout[31:0];

assign outStreamTop_TLAST_int_regslice = outbuf_dout[32'd34];

assign outStreamTop_TUSER_int_regslice = {{outbuf_dout[33:32]}};

assign outStreamTop_TVALID = regslice_both_outStreamTop_V_data_V_U_vld_out;

assign tmp_last_V_fu_107_p3 = outbuf_dout[32'd34];

endmodule //userdma_sendoutstream
