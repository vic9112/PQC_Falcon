// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Version: 2022.1
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module FFT_complex_mul (
        ap_clk,
        ap_rst,
        x_re,
        x_im,
        y_re,
        y_im,
        ap_return_0,
        ap_return_1,
        ap_ce
);


input   ap_clk;
input   ap_rst;
input  [63:0] x_re;
input  [63:0] x_im;
input  [63:0] y_re;
input  [63:0] y_im;
output  [63:0] ap_return_0;
output  [63:0] ap_return_1;
input   ap_ce;

reg[63:0] ap_return_0;
reg[63:0] ap_return_1;

reg   [63:0] y_im_read_reg_86;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_state3_pp0_stage0_iter2;
wire    ap_block_state4_pp0_stage0_iter3;
wire    ap_block_state5_pp0_stage0_iter4;
wire    ap_block_state6_pp0_stage0_iter5;
wire    ap_block_state7_pp0_stage0_iter6;
wire    ap_block_state8_pp0_stage0_iter7;
wire    ap_block_state9_pp0_stage0_iter8;
wire    ap_block_state10_pp0_stage0_iter9;
wire    ap_block_state11_pp0_stage0_iter10;
wire    ap_block_state12_pp0_stage0_iter11;
wire    ap_block_state13_pp0_stage0_iter12;
wire    ap_block_state14_pp0_stage0_iter13;
wire    ap_block_state15_pp0_stage0_iter14;
wire    ap_block_pp0_stage0_11001;
reg   [63:0] y_im_read_reg_86_pp0_iter1_reg;
reg   [63:0] y_im_read_reg_86_pp0_iter2_reg;
reg   [63:0] y_im_read_reg_86_pp0_iter3_reg;
reg   [63:0] y_im_read_reg_86_pp0_iter4_reg;
reg   [63:0] x_im_read_reg_99;
reg   [63:0] x_im_read_reg_99_pp0_iter1_reg;
reg   [63:0] x_im_read_reg_99_pp0_iter2_reg;
reg   [63:0] x_im_read_reg_99_pp0_iter3_reg;
reg   [63:0] x_im_read_reg_99_pp0_iter4_reg;
reg   [63:0] x_re_read_reg_105;
reg   [63:0] x_re_read_reg_105_pp0_iter1_reg;
reg   [63:0] x_re_read_reg_105_pp0_iter2_reg;
reg   [63:0] x_re_read_reg_105_pp0_iter3_reg;
reg   [63:0] x_re_read_reg_105_pp0_iter4_reg;
wire   [63:0] grp_fu_36_p2;
reg   [63:0] sub_y_reg_111;
wire   [63:0] grp_fu_42_p2;
reg   [63:0] add_y_reg_116;
wire   [63:0] grp_fu_48_p2;
reg   [63:0] sub_x_reg_121;
wire   [63:0] grp_fu_62_p2;
reg   [63:0] mul1_reg_126;
wire   [63:0] grp_fu_66_p2;
reg   [63:0] mul2_reg_131;
wire   [63:0] grp_fu_70_p2;
reg   [63:0] mul3_reg_136;
wire    ap_block_pp0_stage0;
wire   [63:0] grp_fu_54_p2;
wire   [63:0] grp_fu_58_p2;
reg    grp_fu_36_ce;
reg    grp_fu_42_ce;
reg    grp_fu_48_ce;
reg    grp_fu_54_ce;
reg    grp_fu_58_ce;
reg    grp_fu_62_ce;
reg    grp_fu_66_ce;
reg    grp_fu_70_ce;
reg    ap_ce_reg;
reg   [63:0] x_re_int_reg;
reg   [63:0] x_im_int_reg;
reg   [63:0] y_re_int_reg;
reg   [63:0] y_im_int_reg;
reg   [63:0] ap_return_0_int_reg;
reg   [63:0] ap_return_1_int_reg;

FFT_dsub_64ns_64ns_64_5_full_dsp_0 #(
    .ID( 1 ),
    .NUM_STAGE( 5 ),
    .din0_WIDTH( 64 ),
    .din1_WIDTH( 64 ),
    .dout_WIDTH( 64 ))
dsub_64ns_64ns_64_5_full_dsp_0_U7(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(y_re_int_reg),
    .din1(y_im_int_reg),
    .ce(grp_fu_36_ce),
    .dout(grp_fu_36_p2)
);

FFT_dadd_64ns_64ns_64_5_full_dsp_0 #(
    .ID( 1 ),
    .NUM_STAGE( 5 ),
    .din0_WIDTH( 64 ),
    .din1_WIDTH( 64 ),
    .dout_WIDTH( 64 ))
dadd_64ns_64ns_64_5_full_dsp_0_U8(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(y_re_int_reg),
    .din1(y_im_int_reg),
    .ce(grp_fu_42_ce),
    .dout(grp_fu_42_p2)
);

FFT_dsub_64ns_64ns_64_5_full_dsp_0 #(
    .ID( 1 ),
    .NUM_STAGE( 5 ),
    .din0_WIDTH( 64 ),
    .din1_WIDTH( 64 ),
    .dout_WIDTH( 64 ))
dsub_64ns_64ns_64_5_full_dsp_0_U9(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(x_re_int_reg),
    .din1(x_im_int_reg),
    .ce(grp_fu_48_ce),
    .dout(grp_fu_48_p2)
);

FFT_dadd_64ns_64ns_64_5_full_dsp_0 #(
    .ID( 1 ),
    .NUM_STAGE( 5 ),
    .din0_WIDTH( 64 ),
    .din1_WIDTH( 64 ),
    .dout_WIDTH( 64 ))
dadd_64ns_64ns_64_5_full_dsp_0_U10(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(mul1_reg_126),
    .din1(mul3_reg_136),
    .ce(grp_fu_54_ce),
    .dout(grp_fu_54_p2)
);

FFT_dadd_64ns_64ns_64_5_full_dsp_0 #(
    .ID( 1 ),
    .NUM_STAGE( 5 ),
    .din0_WIDTH( 64 ),
    .din1_WIDTH( 64 ),
    .dout_WIDTH( 64 ))
dadd_64ns_64ns_64_5_full_dsp_0_U11(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(mul2_reg_131),
    .din1(mul3_reg_136),
    .ce(grp_fu_58_ce),
    .dout(grp_fu_58_p2)
);

FFT_dmul_64ns_64ns_64_5_max_dsp_0 #(
    .ID( 1 ),
    .NUM_STAGE( 5 ),
    .din0_WIDTH( 64 ),
    .din1_WIDTH( 64 ),
    .dout_WIDTH( 64 ))
dmul_64ns_64ns_64_5_max_dsp_0_U12(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(sub_y_reg_111),
    .din1(x_re_read_reg_105_pp0_iter4_reg),
    .ce(grp_fu_62_ce),
    .dout(grp_fu_62_p2)
);

FFT_dmul_64ns_64ns_64_5_max_dsp_0 #(
    .ID( 1 ),
    .NUM_STAGE( 5 ),
    .din0_WIDTH( 64 ),
    .din1_WIDTH( 64 ),
    .dout_WIDTH( 64 ))
dmul_64ns_64ns_64_5_max_dsp_0_U13(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(add_y_reg_116),
    .din1(x_im_read_reg_99_pp0_iter4_reg),
    .ce(grp_fu_66_ce),
    .dout(grp_fu_66_p2)
);

FFT_dmul_64ns_64ns_64_5_max_dsp_0 #(
    .ID( 1 ),
    .NUM_STAGE( 5 ),
    .din0_WIDTH( 64 ),
    .din1_WIDTH( 64 ),
    .dout_WIDTH( 64 ))
dmul_64ns_64ns_64_5_max_dsp_0_U14(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(sub_x_reg_121),
    .din1(y_im_read_reg_86_pp0_iter4_reg),
    .ce(grp_fu_70_ce),
    .dout(grp_fu_70_p2)
);

always @ (posedge ap_clk) begin
    ap_ce_reg <= ap_ce;
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce_reg))) begin
        add_y_reg_116 <= grp_fu_42_p2;
        mul1_reg_126 <= grp_fu_62_p2;
        mul2_reg_131 <= grp_fu_66_p2;
        mul3_reg_136 <= grp_fu_70_p2;
        sub_x_reg_121 <= grp_fu_48_p2;
        sub_y_reg_111 <= grp_fu_36_p2;
        x_im_read_reg_99 <= x_im_int_reg;
        x_im_read_reg_99_pp0_iter1_reg <= x_im_read_reg_99;
        x_im_read_reg_99_pp0_iter2_reg <= x_im_read_reg_99_pp0_iter1_reg;
        x_im_read_reg_99_pp0_iter3_reg <= x_im_read_reg_99_pp0_iter2_reg;
        x_im_read_reg_99_pp0_iter4_reg <= x_im_read_reg_99_pp0_iter3_reg;
        x_re_read_reg_105 <= x_re_int_reg;
        x_re_read_reg_105_pp0_iter1_reg <= x_re_read_reg_105;
        x_re_read_reg_105_pp0_iter2_reg <= x_re_read_reg_105_pp0_iter1_reg;
        x_re_read_reg_105_pp0_iter3_reg <= x_re_read_reg_105_pp0_iter2_reg;
        x_re_read_reg_105_pp0_iter4_reg <= x_re_read_reg_105_pp0_iter3_reg;
        y_im_read_reg_86 <= y_im_int_reg;
        y_im_read_reg_86_pp0_iter1_reg <= y_im_read_reg_86;
        y_im_read_reg_86_pp0_iter2_reg <= y_im_read_reg_86_pp0_iter1_reg;
        y_im_read_reg_86_pp0_iter3_reg <= y_im_read_reg_86_pp0_iter2_reg;
        y_im_read_reg_86_pp0_iter4_reg <= y_im_read_reg_86_pp0_iter3_reg;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_ce_reg)) begin
        ap_return_0_int_reg <= grp_fu_54_p2;
        ap_return_1_int_reg <= grp_fu_58_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_ce)) begin
        x_im_int_reg <= x_im;
        x_re_int_reg <= x_re;
        y_im_int_reg <= y_im;
        y_re_int_reg <= y_re;
    end
end

always @ (*) begin
    if ((1'b0 == ap_ce_reg)) begin
        ap_return_0 = ap_return_0_int_reg;
    end else if ((1'b1 == ap_ce_reg)) begin
        ap_return_0 = grp_fu_54_p2;
    end else begin
        ap_return_0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b0 == ap_ce_reg)) begin
        ap_return_1 = ap_return_1_int_reg;
    end else if ((1'b1 == ap_ce_reg)) begin
        ap_return_1 = grp_fu_58_p2;
    end else begin
        ap_return_1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce_reg))) begin
        grp_fu_36_ce = 1'b1;
    end else begin
        grp_fu_36_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce_reg))) begin
        grp_fu_42_ce = 1'b1;
    end else begin
        grp_fu_42_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce_reg))) begin
        grp_fu_48_ce = 1'b1;
    end else begin
        grp_fu_48_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce_reg))) begin
        grp_fu_54_ce = 1'b1;
    end else begin
        grp_fu_54_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce_reg))) begin
        grp_fu_58_ce = 1'b1;
    end else begin
        grp_fu_58_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce_reg))) begin
        grp_fu_62_ce = 1'b1;
    end else begin
        grp_fu_62_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce_reg))) begin
        grp_fu_66_ce = 1'b1;
    end else begin
        grp_fu_66_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce_reg))) begin
        grp_fu_70_ce = 1'b1;
    end else begin
        grp_fu_70_ce = 1'b0;
    end
end

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_state10_pp0_stage0_iter9 = ~(1'b1 == 1'b1);

assign ap_block_state11_pp0_stage0_iter10 = ~(1'b1 == 1'b1);

assign ap_block_state12_pp0_stage0_iter11 = ~(1'b1 == 1'b1);

assign ap_block_state13_pp0_stage0_iter12 = ~(1'b1 == 1'b1);

assign ap_block_state14_pp0_stage0_iter13 = ~(1'b1 == 1'b1);

assign ap_block_state15_pp0_stage0_iter14 = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter4 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage0_iter5 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage0_iter6 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp0_stage0_iter7 = ~(1'b1 == 1'b1);

assign ap_block_state9_pp0_stage0_iter8 = ~(1'b1 == 1'b1);

endmodule //FFT_complex_mul