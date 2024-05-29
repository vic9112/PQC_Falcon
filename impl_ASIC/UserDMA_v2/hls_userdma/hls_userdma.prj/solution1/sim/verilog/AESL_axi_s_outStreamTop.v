// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps

`define TV_OUT_outStreamTop_TDATA "../tv/rtldatafile/rtl.userdma.autotvout_outStreamTop_V_data_V.dat"
`define EGRESS_STATUS_outStreamTop_TDATA "../tv/stream_size/stream_egress_status_outStreamTop_V_data_V.dat"
`define TV_OUT_outStreamTop_TKEEP "../tv/rtldatafile/rtl.userdma.autotvout_outStreamTop_V_keep_V.dat"
`define EGRESS_STATUS_outStreamTop_TKEEP "../tv/stream_size/stream_egress_status_outStreamTop_V_keep_V.dat"
`define TV_OUT_outStreamTop_TSTRB "../tv/rtldatafile/rtl.userdma.autotvout_outStreamTop_V_strb_V.dat"
`define EGRESS_STATUS_outStreamTop_TSTRB "../tv/stream_size/stream_egress_status_outStreamTop_V_strb_V.dat"
`define TV_OUT_outStreamTop_TUSER "../tv/rtldatafile/rtl.userdma.autotvout_outStreamTop_V_user_V.dat"
`define EGRESS_STATUS_outStreamTop_TUSER "../tv/stream_size/stream_egress_status_outStreamTop_V_user_V.dat"
`define TV_OUT_outStreamTop_TLAST "../tv/rtldatafile/rtl.userdma.autotvout_outStreamTop_V_last_V.dat"
`define EGRESS_STATUS_outStreamTop_TLAST "../tv/stream_size/stream_egress_status_outStreamTop_V_last_V.dat"

`define AUTOTB_TRANSACTION_NUM 2

module AESL_axi_s_outStreamTop (
    input clk,
    input reset,
    input [32 - 1:0] TRAN_outStreamTop_TDATA,
    input [4 - 1:0] TRAN_outStreamTop_TKEEP,
    input [4 - 1:0] TRAN_outStreamTop_TSTRB,
    input [2 - 1:0] TRAN_outStreamTop_TUSER,
    input TRAN_outStreamTop_TLAST,
    input TRAN_outStreamTop_TVALID,
    output TRAN_outStreamTop_TREADY,
    input ready,
    input done,
    output [31:0] transaction);

    wire TRAN_outStreamTop_TVALID_temp;
    wire outStreamTop_TDATA_full;
    wire outStreamTop_TDATA_empty;
    reg outStreamTop_TDATA_write_en;
    reg [32 - 1:0] outStreamTop_TDATA_write_data;
    reg outStreamTop_TDATA_read_en;
    wire [32 - 1:0] outStreamTop_TDATA_read_data;
    
    fifo #(2049, 32) fifo_outStreamTop_TDATA (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(outStreamTop_TDATA_write_en),
        .write_data(outStreamTop_TDATA_write_data),
        .read_clock(clk),
        .read_en(outStreamTop_TDATA_read_en),
        .read_data(outStreamTop_TDATA_read_data),
        .full(outStreamTop_TDATA_full),
        .empty(outStreamTop_TDATA_empty));
    
    always @ (*) begin
        outStreamTop_TDATA_write_en <= TRAN_outStreamTop_TVALID;
        outStreamTop_TDATA_write_data <= TRAN_outStreamTop_TDATA;
        outStreamTop_TDATA_read_en <= 0;
    end
    wire outStreamTop_TKEEP_full;
    wire outStreamTop_TKEEP_empty;
    reg outStreamTop_TKEEP_write_en;
    reg [4 - 1:0] outStreamTop_TKEEP_write_data;
    reg outStreamTop_TKEEP_read_en;
    wire [4 - 1:0] outStreamTop_TKEEP_read_data;
    
    fifo #(2049, 4) fifo_outStreamTop_TKEEP (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(outStreamTop_TKEEP_write_en),
        .write_data(outStreamTop_TKEEP_write_data),
        .read_clock(clk),
        .read_en(outStreamTop_TKEEP_read_en),
        .read_data(outStreamTop_TKEEP_read_data),
        .full(outStreamTop_TKEEP_full),
        .empty(outStreamTop_TKEEP_empty));
    
    always @ (*) begin
        outStreamTop_TKEEP_write_en <= TRAN_outStreamTop_TVALID;
        outStreamTop_TKEEP_write_data <= TRAN_outStreamTop_TKEEP;
        outStreamTop_TKEEP_read_en <= 0;
    end
    wire outStreamTop_TSTRB_full;
    wire outStreamTop_TSTRB_empty;
    reg outStreamTop_TSTRB_write_en;
    reg [4 - 1:0] outStreamTop_TSTRB_write_data;
    reg outStreamTop_TSTRB_read_en;
    wire [4 - 1:0] outStreamTop_TSTRB_read_data;
    
    fifo #(2049, 4) fifo_outStreamTop_TSTRB (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(outStreamTop_TSTRB_write_en),
        .write_data(outStreamTop_TSTRB_write_data),
        .read_clock(clk),
        .read_en(outStreamTop_TSTRB_read_en),
        .read_data(outStreamTop_TSTRB_read_data),
        .full(outStreamTop_TSTRB_full),
        .empty(outStreamTop_TSTRB_empty));
    
    always @ (*) begin
        outStreamTop_TSTRB_write_en <= TRAN_outStreamTop_TVALID;
        outStreamTop_TSTRB_write_data <= TRAN_outStreamTop_TSTRB;
        outStreamTop_TSTRB_read_en <= 0;
    end
    wire outStreamTop_TUSER_full;
    wire outStreamTop_TUSER_empty;
    reg outStreamTop_TUSER_write_en;
    reg [2 - 1:0] outStreamTop_TUSER_write_data;
    reg outStreamTop_TUSER_read_en;
    wire [2 - 1:0] outStreamTop_TUSER_read_data;
    
    fifo #(2049, 2) fifo_outStreamTop_TUSER (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(outStreamTop_TUSER_write_en),
        .write_data(outStreamTop_TUSER_write_data),
        .read_clock(clk),
        .read_en(outStreamTop_TUSER_read_en),
        .read_data(outStreamTop_TUSER_read_data),
        .full(outStreamTop_TUSER_full),
        .empty(outStreamTop_TUSER_empty));
    
    always @ (*) begin
        outStreamTop_TUSER_write_en <= TRAN_outStreamTop_TVALID;
        outStreamTop_TUSER_write_data <= TRAN_outStreamTop_TUSER;
        outStreamTop_TUSER_read_en <= 0;
    end
    wire outStreamTop_TLAST_full;
    wire outStreamTop_TLAST_empty;
    reg outStreamTop_TLAST_write_en;
    reg [1 - 1:0] outStreamTop_TLAST_write_data;
    reg outStreamTop_TLAST_read_en;
    wire [1 - 1:0] outStreamTop_TLAST_read_data;
    
    fifo #(2049, 1) fifo_outStreamTop_TLAST (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(outStreamTop_TLAST_write_en),
        .write_data(outStreamTop_TLAST_write_data),
        .read_clock(clk),
        .read_en(outStreamTop_TLAST_read_en),
        .read_data(outStreamTop_TLAST_read_data),
        .full(outStreamTop_TLAST_full),
        .empty(outStreamTop_TLAST_empty));
    
    always @ (*) begin
        outStreamTop_TLAST_write_en <= TRAN_outStreamTop_TVALID;
        outStreamTop_TLAST_write_data <= TRAN_outStreamTop_TLAST;
        outStreamTop_TLAST_read_en <= 0;
    end
    assign TRAN_outStreamTop_TVALID = TRAN_outStreamTop_TVALID_temp;

    
    assign TRAN_outStreamTop_TREADY = ~(outStreamTop_TDATA_full || outStreamTop_TKEEP_full || outStreamTop_TSTRB_full || outStreamTop_TUSER_full || outStreamTop_TLAST_full);
    
    function is_blank_char(input [7:0] in_char);
        if (in_char == " " || in_char == "\011" || in_char == "\012" || in_char == "\015") begin
            is_blank_char = 1;
        end else begin
            is_blank_char = 0;
        end
    endfunction
    
    function [191:0] read_token(input integer fp);
        integer ret;
        begin
            read_token = "";
                    ret = 0;
                    ret = $fscanf(fp,"%s",read_token);
        end
    endfunction
    
    function [191:0] rm_0x(input [191:0] token);
        reg [191:0] token_tmp;
        integer i;
        begin
            token_tmp = "";
            for (i = 0; token[15:0] != "0x"; token = token >> 8) begin
                token_tmp = (token[7:0] << (8 * i)) | token_tmp;
                i = i + 1;
            end
            rm_0x = token_tmp;
        end
    endfunction
    
    reg done_1;
    
    always @ (posedge clk or reset) begin
        if (~reset) begin
            done_1 <= 0;
        end else begin
            done_1 <= done;
        end
    end
    
    reg [31:0] transaction_save_outStreamTop_TDATA;
    
    assign transaction = transaction_save_outStreamTop_TDATA;
    
    initial begin : AXI_stream_receiver_outStreamTop_TDATA
        integer fp;
        reg [32 - 1:0] data;
        reg [8 * 5:1] str;
        
        transaction_save_outStreamTop_TDATA = 0;
        fifo_outStreamTop_TDATA.clear();
        wait (reset === 1);
        forever begin
            @ (negedge clk);
            if (done_1 == 1) begin
                fp = $fopen(`TV_OUT_outStreamTop_TDATA, "a");
                if (fp == 0) begin // Failed to open file
                    $display("ERROR: Failed to open file \"%s\"!", `TV_OUT_outStreamTop_TDATA);
                    $finish;
                end
                $fdisplay(fp, "[[transaction]] %d", transaction_save_outStreamTop_TDATA);
                while (~fifo_outStreamTop_TDATA.empty) begin
                    fifo_outStreamTop_TDATA.pop(data);
                    $fdisplay(fp, "0x%x", data);
                end
                $fdisplay(fp, "[[/transaction]]");
                transaction_save_outStreamTop_TDATA = transaction_save_outStreamTop_TDATA + 1;
                fifo_outStreamTop_TDATA.clear();
                $fclose(fp);
            end
        end
    end
    
    reg [31:0] transaction_save_outStreamTop_TKEEP;
    
    initial begin : AXI_stream_receiver_outStreamTop_TKEEP
        integer fp;
        reg [4 - 1:0] data;
        reg [8 * 5:1] str;
        
        transaction_save_outStreamTop_TKEEP = 0;
        fifo_outStreamTop_TKEEP.clear();
        wait (reset === 1);
        forever begin
            @ (negedge clk);
            if (done_1 == 1) begin
                fp = $fopen(`TV_OUT_outStreamTop_TKEEP, "a");
                if (fp == 0) begin // Failed to open file
                    $display("ERROR: Failed to open file \"%s\"!", `TV_OUT_outStreamTop_TKEEP);
                    $finish;
                end
                $fdisplay(fp, "[[transaction]] %d", transaction_save_outStreamTop_TKEEP);
                while (~fifo_outStreamTop_TKEEP.empty) begin
                    fifo_outStreamTop_TKEEP.pop(data);
                    $fdisplay(fp, "0x%x", data);
                end
                $fdisplay(fp, "[[/transaction]]");
                transaction_save_outStreamTop_TKEEP = transaction_save_outStreamTop_TKEEP + 1;
                fifo_outStreamTop_TKEEP.clear();
                $fclose(fp);
            end
        end
    end
    
    reg [31:0] transaction_save_outStreamTop_TSTRB;
    
    initial begin : AXI_stream_receiver_outStreamTop_TSTRB
        integer fp;
        reg [4 - 1:0] data;
        reg [8 * 5:1] str;
        
        transaction_save_outStreamTop_TSTRB = 0;
        fifo_outStreamTop_TSTRB.clear();
        wait (reset === 1);
        forever begin
            @ (negedge clk);
            if (done_1 == 1) begin
                fp = $fopen(`TV_OUT_outStreamTop_TSTRB, "a");
                if (fp == 0) begin // Failed to open file
                    $display("ERROR: Failed to open file \"%s\"!", `TV_OUT_outStreamTop_TSTRB);
                    $finish;
                end
                $fdisplay(fp, "[[transaction]] %d", transaction_save_outStreamTop_TSTRB);
                while (~fifo_outStreamTop_TSTRB.empty) begin
                    fifo_outStreamTop_TSTRB.pop(data);
                    $fdisplay(fp, "0x%x", data);
                end
                $fdisplay(fp, "[[/transaction]]");
                transaction_save_outStreamTop_TSTRB = transaction_save_outStreamTop_TSTRB + 1;
                fifo_outStreamTop_TSTRB.clear();
                $fclose(fp);
            end
        end
    end
    
    reg [31:0] transaction_save_outStreamTop_TUSER;
    
    initial begin : AXI_stream_receiver_outStreamTop_TUSER
        integer fp;
        reg [2 - 1:0] data;
        reg [8 * 5:1] str;
        
        transaction_save_outStreamTop_TUSER = 0;
        fifo_outStreamTop_TUSER.clear();
        wait (reset === 1);
        forever begin
            @ (negedge clk);
            if (done_1 == 1) begin
                fp = $fopen(`TV_OUT_outStreamTop_TUSER, "a");
                if (fp == 0) begin // Failed to open file
                    $display("ERROR: Failed to open file \"%s\"!", `TV_OUT_outStreamTop_TUSER);
                    $finish;
                end
                $fdisplay(fp, "[[transaction]] %d", transaction_save_outStreamTop_TUSER);
                while (~fifo_outStreamTop_TUSER.empty) begin
                    fifo_outStreamTop_TUSER.pop(data);
                    $fdisplay(fp, "0x%x", data);
                end
                $fdisplay(fp, "[[/transaction]]");
                transaction_save_outStreamTop_TUSER = transaction_save_outStreamTop_TUSER + 1;
                fifo_outStreamTop_TUSER.clear();
                $fclose(fp);
            end
        end
    end
    
    reg [31:0] transaction_save_outStreamTop_TLAST;
    
    initial begin : AXI_stream_receiver_outStreamTop_TLAST
        integer fp;
        reg [1 - 1:0] data;
        reg [8 * 5:1] str;
        
        transaction_save_outStreamTop_TLAST = 0;
        fifo_outStreamTop_TLAST.clear();
        wait (reset === 1);
        forever begin
            @ (negedge clk);
            if (done_1 == 1) begin
                fp = $fopen(`TV_OUT_outStreamTop_TLAST, "a");
                if (fp == 0) begin // Failed to open file
                    $display("ERROR: Failed to open file \"%s\"!", `TV_OUT_outStreamTop_TLAST);
                    $finish;
                end
                $fdisplay(fp, "[[transaction]] %d", transaction_save_outStreamTop_TLAST);
                while (~fifo_outStreamTop_TLAST.empty) begin
                    fifo_outStreamTop_TLAST.pop(data);
                    $fdisplay(fp, "0x%x", data);
                end
                $fdisplay(fp, "[[/transaction]]");
                transaction_save_outStreamTop_TLAST = transaction_save_outStreamTop_TLAST + 1;
                fifo_outStreamTop_TLAST.clear();
                $fclose(fp);
            end
        end
    end

endmodule
