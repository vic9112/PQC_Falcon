// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps

`define TV_IN_inStreamTop_TDATA "../tv/cdatafile/c.userdma.autotvin_inStreamTop_V_data_V.dat"
`define INGRESS_STATUS_inStreamTop_TDATA "../tv/stream_size/stream_ingress_status_inStreamTop_V_data_V.dat"
`define TV_IN_inStreamTop_TKEEP "../tv/cdatafile/c.userdma.autotvin_inStreamTop_V_keep_V.dat"
`define INGRESS_STATUS_inStreamTop_TKEEP "../tv/stream_size/stream_ingress_status_inStreamTop_V_keep_V.dat"
`define TV_IN_inStreamTop_TSTRB "../tv/cdatafile/c.userdma.autotvin_inStreamTop_V_strb_V.dat"
`define INGRESS_STATUS_inStreamTop_TSTRB "../tv/stream_size/stream_ingress_status_inStreamTop_V_strb_V.dat"
`define TV_IN_inStreamTop_TUSER "../tv/cdatafile/c.userdma.autotvin_inStreamTop_V_user_V.dat"
`define INGRESS_STATUS_inStreamTop_TUSER "../tv/stream_size/stream_ingress_status_inStreamTop_V_user_V.dat"
`define TV_IN_inStreamTop_TLAST "../tv/cdatafile/c.userdma.autotvin_inStreamTop_V_last_V.dat"
`define INGRESS_STATUS_inStreamTop_TLAST "../tv/stream_size/stream_ingress_status_inStreamTop_V_last_V.dat"

`define AUTOTB_TRANSACTION_NUM 2

module AESL_axi_s_inStreamTop (
    input clk,
    input reset,
    output [32 - 1:0] TRAN_inStreamTop_TDATA,
    output [4 - 1:0] TRAN_inStreamTop_TKEEP,
    output [4 - 1:0] TRAN_inStreamTop_TSTRB,
    output [2 - 1:0] TRAN_inStreamTop_TUSER,
    output TRAN_inStreamTop_TLAST,
    output TRAN_inStreamTop_TVALID,
    input TRAN_inStreamTop_TREADY,
    input ready,
    input done,
    output [31:0] transaction);

    wire TRAN_inStreamTop_TVALID_temp;
    wire inStreamTop_TDATA_full;
    wire inStreamTop_TDATA_empty;
    reg inStreamTop_TDATA_write_en;
    reg [32 - 1:0] inStreamTop_TDATA_write_data;
    reg inStreamTop_TDATA_read_en;
    wire [32 - 1:0] inStreamTop_TDATA_read_data;
    
    fifo #(2048, 32) fifo_inStreamTop_TDATA (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(inStreamTop_TDATA_write_en),
        .write_data(inStreamTop_TDATA_write_data),
        .read_clock(clk),
        .read_en(inStreamTop_TDATA_read_en),
        .read_data(inStreamTop_TDATA_read_data),
        .full(inStreamTop_TDATA_full),
        .empty(inStreamTop_TDATA_empty));
    
    always @ (*) begin
        inStreamTop_TDATA_write_en <= 0;
        inStreamTop_TDATA_read_en <= TRAN_inStreamTop_TREADY & TRAN_inStreamTop_TVALID;
    end
    
    assign TRAN_inStreamTop_TDATA = inStreamTop_TDATA_read_data;
    wire inStreamTop_TKEEP_full;
    wire inStreamTop_TKEEP_empty;
    reg inStreamTop_TKEEP_write_en;
    reg [4 - 1:0] inStreamTop_TKEEP_write_data;
    reg inStreamTop_TKEEP_read_en;
    wire [4 - 1:0] inStreamTop_TKEEP_read_data;
    
    fifo #(2048, 4) fifo_inStreamTop_TKEEP (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(inStreamTop_TKEEP_write_en),
        .write_data(inStreamTop_TKEEP_write_data),
        .read_clock(clk),
        .read_en(inStreamTop_TKEEP_read_en),
        .read_data(inStreamTop_TKEEP_read_data),
        .full(inStreamTop_TKEEP_full),
        .empty(inStreamTop_TKEEP_empty));
    
    always @ (*) begin
        inStreamTop_TKEEP_write_en <= 0;
        inStreamTop_TKEEP_read_en <= TRAN_inStreamTop_TREADY & TRAN_inStreamTop_TVALID;
    end
    
    assign TRAN_inStreamTop_TKEEP = inStreamTop_TKEEP_read_data;
    wire inStreamTop_TSTRB_full;
    wire inStreamTop_TSTRB_empty;
    reg inStreamTop_TSTRB_write_en;
    reg [4 - 1:0] inStreamTop_TSTRB_write_data;
    reg inStreamTop_TSTRB_read_en;
    wire [4 - 1:0] inStreamTop_TSTRB_read_data;
    
    fifo #(2048, 4) fifo_inStreamTop_TSTRB (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(inStreamTop_TSTRB_write_en),
        .write_data(inStreamTop_TSTRB_write_data),
        .read_clock(clk),
        .read_en(inStreamTop_TSTRB_read_en),
        .read_data(inStreamTop_TSTRB_read_data),
        .full(inStreamTop_TSTRB_full),
        .empty(inStreamTop_TSTRB_empty));
    
    always @ (*) begin
        inStreamTop_TSTRB_write_en <= 0;
        inStreamTop_TSTRB_read_en <= TRAN_inStreamTop_TREADY & TRAN_inStreamTop_TVALID;
    end
    
    assign TRAN_inStreamTop_TSTRB = inStreamTop_TSTRB_read_data;
    wire inStreamTop_TUSER_full;
    wire inStreamTop_TUSER_empty;
    reg inStreamTop_TUSER_write_en;
    reg [2 - 1:0] inStreamTop_TUSER_write_data;
    reg inStreamTop_TUSER_read_en;
    wire [2 - 1:0] inStreamTop_TUSER_read_data;
    
    fifo #(2048, 2) fifo_inStreamTop_TUSER (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(inStreamTop_TUSER_write_en),
        .write_data(inStreamTop_TUSER_write_data),
        .read_clock(clk),
        .read_en(inStreamTop_TUSER_read_en),
        .read_data(inStreamTop_TUSER_read_data),
        .full(inStreamTop_TUSER_full),
        .empty(inStreamTop_TUSER_empty));
    
    always @ (*) begin
        inStreamTop_TUSER_write_en <= 0;
        inStreamTop_TUSER_read_en <= TRAN_inStreamTop_TREADY & TRAN_inStreamTop_TVALID;
    end
    
    assign TRAN_inStreamTop_TUSER = inStreamTop_TUSER_read_data;
    wire inStreamTop_TLAST_full;
    wire inStreamTop_TLAST_empty;
    reg inStreamTop_TLAST_write_en;
    reg [1 - 1:0] inStreamTop_TLAST_write_data;
    reg inStreamTop_TLAST_read_en;
    wire [1 - 1:0] inStreamTop_TLAST_read_data;
    
    fifo #(2048, 1) fifo_inStreamTop_TLAST (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(inStreamTop_TLAST_write_en),
        .write_data(inStreamTop_TLAST_write_data),
        .read_clock(clk),
        .read_en(inStreamTop_TLAST_read_en),
        .read_data(inStreamTop_TLAST_read_data),
        .full(inStreamTop_TLAST_full),
        .empty(inStreamTop_TLAST_empty));
    
    always @ (*) begin
        inStreamTop_TLAST_write_en <= 0;
        inStreamTop_TLAST_read_en <= TRAN_inStreamTop_TREADY & TRAN_inStreamTop_TVALID;
    end
    
    assign TRAN_inStreamTop_TLAST = inStreamTop_TLAST_read_data;
    assign TRAN_inStreamTop_TVALID = TRAN_inStreamTop_TVALID_temp;

    
    assign TRAN_inStreamTop_TVALID_temp = ~(inStreamTop_TDATA_empty || inStreamTop_TKEEP_empty || inStreamTop_TSTRB_empty || inStreamTop_TUSER_empty || inStreamTop_TLAST_empty);
    
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
    
    reg [31:0] transaction_load_inStreamTop_TDATA;
    
    assign transaction = transaction_load_inStreamTop_TDATA;
    
    initial begin : AXI_stream_driver_inStreamTop_TDATA
        integer fp;
        reg [191:0] token;
        reg [32 - 1:0] data;
        reg [191:0] data_integer;
        integer fp_ingress_status;
        reg [191:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_inStreamTop_TDATA = 0;
        fifo_inStreamTop_TDATA.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_inStreamTop_TDATA, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_inStreamTop_TDATA);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_inStreamTop_TDATA, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_inStreamTop_TDATA);
            $finish;
        end
        token = read_token(fp);
        token_ingress_status = read_token(fp_ingress_status);
        if (token != "[[[runtime]]]") begin
            $display("ERROR: token %s != [[[runtime]]]", token);
            $finish;
        end
        token = read_token(fp); // read 1st "[[transaction]]"
        token_ingress_status = read_token(fp_ingress_status);
        forever begin
            @ (negedge clk);
            if (ready == 1) begin
                if (token != "[[[/runtime]]]") begin
                    if (token != "[[transaction]]") begin
                        $display("ERROR: token %s != [[[transaction]]]", token);
                        $finish;
                    end
                    token = read_token(fp); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // load ingress status at beginning of transaction
                    fifo_inStreamTop_TDATA.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_inStreamTop_TDATA.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_inStreamTop_TDATA.push(data);
                        token = read_token(fp);
                        ret = $sscanf(token_ingress_status, "%d", ingress_status);
                        token_ingress_status = read_token(fp_ingress_status);
                    end
                    token = read_token(fp);
                    token_ingress_status = read_token(fp_ingress_status);
                end else begin
                    if (fp != 0) begin
                        $fclose(fp);
                        fp = 0;
                    end
                    if (fp_ingress_status != 0) begin
                        $fclose(fp_ingress_status);
                        fp_ingress_status = 0;
                    end
                end
                transaction_load_inStreamTop_TDATA = transaction_load_inStreamTop_TDATA + 1;
            end
        end
    end
    
    reg [31:0] transaction_load_inStreamTop_TKEEP;
    
    initial begin : AXI_stream_driver_inStreamTop_TKEEP
        integer fp;
        reg [191:0] token;
        reg [4 - 1:0] data;
        reg [191:0] data_integer;
        integer fp_ingress_status;
        reg [191:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_inStreamTop_TKEEP = 0;
        fifo_inStreamTop_TKEEP.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_inStreamTop_TKEEP, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_inStreamTop_TKEEP);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_inStreamTop_TKEEP, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_inStreamTop_TKEEP);
            $finish;
        end
        token = read_token(fp);
        token_ingress_status = read_token(fp_ingress_status);
        if (token != "[[[runtime]]]") begin
            $display("ERROR: token %s != [[[runtime]]]", token);
            $finish;
        end
        token = read_token(fp); // read 1st "[[transaction]]"
        token_ingress_status = read_token(fp_ingress_status);
        forever begin
            @ (negedge clk);
            if (ready == 1) begin
                if (token != "[[[/runtime]]]") begin
                    if (token != "[[transaction]]") begin
                        $display("ERROR: token %s != [[[transaction]]]", token);
                        $finish;
                    end
                    token = read_token(fp); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // load ingress status at beginning of transaction
                    fifo_inStreamTop_TKEEP.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_inStreamTop_TKEEP.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_inStreamTop_TKEEP.push(data);
                        token = read_token(fp);
                        ret = $sscanf(token_ingress_status, "%d", ingress_status);
                        token_ingress_status = read_token(fp_ingress_status);
                    end
                    token = read_token(fp);
                    token_ingress_status = read_token(fp_ingress_status);
                end else begin
                    if (fp != 0) begin
                        $fclose(fp);
                        fp = 0;
                    end
                    if (fp_ingress_status != 0) begin
                        $fclose(fp_ingress_status);
                        fp_ingress_status = 0;
                    end
                end
                transaction_load_inStreamTop_TKEEP = transaction_load_inStreamTop_TKEEP + 1;
            end
        end
    end
    
    reg [31:0] transaction_load_inStreamTop_TSTRB;
    
    initial begin : AXI_stream_driver_inStreamTop_TSTRB
        integer fp;
        reg [191:0] token;
        reg [4 - 1:0] data;
        reg [191:0] data_integer;
        integer fp_ingress_status;
        reg [191:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_inStreamTop_TSTRB = 0;
        fifo_inStreamTop_TSTRB.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_inStreamTop_TSTRB, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_inStreamTop_TSTRB);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_inStreamTop_TSTRB, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_inStreamTop_TSTRB);
            $finish;
        end
        token = read_token(fp);
        token_ingress_status = read_token(fp_ingress_status);
        if (token != "[[[runtime]]]") begin
            $display("ERROR: token %s != [[[runtime]]]", token);
            $finish;
        end
        token = read_token(fp); // read 1st "[[transaction]]"
        token_ingress_status = read_token(fp_ingress_status);
        forever begin
            @ (negedge clk);
            if (ready == 1) begin
                if (token != "[[[/runtime]]]") begin
                    if (token != "[[transaction]]") begin
                        $display("ERROR: token %s != [[[transaction]]]", token);
                        $finish;
                    end
                    token = read_token(fp); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // load ingress status at beginning of transaction
                    fifo_inStreamTop_TSTRB.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_inStreamTop_TSTRB.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_inStreamTop_TSTRB.push(data);
                        token = read_token(fp);
                        ret = $sscanf(token_ingress_status, "%d", ingress_status);
                        token_ingress_status = read_token(fp_ingress_status);
                    end
                    token = read_token(fp);
                    token_ingress_status = read_token(fp_ingress_status);
                end else begin
                    if (fp != 0) begin
                        $fclose(fp);
                        fp = 0;
                    end
                    if (fp_ingress_status != 0) begin
                        $fclose(fp_ingress_status);
                        fp_ingress_status = 0;
                    end
                end
                transaction_load_inStreamTop_TSTRB = transaction_load_inStreamTop_TSTRB + 1;
            end
        end
    end
    
    reg [31:0] transaction_load_inStreamTop_TUSER;
    
    initial begin : AXI_stream_driver_inStreamTop_TUSER
        integer fp;
        reg [191:0] token;
        reg [2 - 1:0] data;
        reg [191:0] data_integer;
        integer fp_ingress_status;
        reg [191:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_inStreamTop_TUSER = 0;
        fifo_inStreamTop_TUSER.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_inStreamTop_TUSER, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_inStreamTop_TUSER);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_inStreamTop_TUSER, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_inStreamTop_TUSER);
            $finish;
        end
        token = read_token(fp);
        token_ingress_status = read_token(fp_ingress_status);
        if (token != "[[[runtime]]]") begin
            $display("ERROR: token %s != [[[runtime]]]", token);
            $finish;
        end
        token = read_token(fp); // read 1st "[[transaction]]"
        token_ingress_status = read_token(fp_ingress_status);
        forever begin
            @ (negedge clk);
            if (ready == 1) begin
                if (token != "[[[/runtime]]]") begin
                    if (token != "[[transaction]]") begin
                        $display("ERROR: token %s != [[[transaction]]]", token);
                        $finish;
                    end
                    token = read_token(fp); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // load ingress status at beginning of transaction
                    fifo_inStreamTop_TUSER.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_inStreamTop_TUSER.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_inStreamTop_TUSER.push(data);
                        token = read_token(fp);
                        ret = $sscanf(token_ingress_status, "%d", ingress_status);
                        token_ingress_status = read_token(fp_ingress_status);
                    end
                    token = read_token(fp);
                    token_ingress_status = read_token(fp_ingress_status);
                end else begin
                    if (fp != 0) begin
                        $fclose(fp);
                        fp = 0;
                    end
                    if (fp_ingress_status != 0) begin
                        $fclose(fp_ingress_status);
                        fp_ingress_status = 0;
                    end
                end
                transaction_load_inStreamTop_TUSER = transaction_load_inStreamTop_TUSER + 1;
            end
        end
    end
    
    reg [31:0] transaction_load_inStreamTop_TLAST;
    
    initial begin : AXI_stream_driver_inStreamTop_TLAST
        integer fp;
        reg [191:0] token;
        reg [1 - 1:0] data;
        reg [191:0] data_integer;
        integer fp_ingress_status;
        reg [191:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_inStreamTop_TLAST = 0;
        fifo_inStreamTop_TLAST.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_inStreamTop_TLAST, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_inStreamTop_TLAST);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_inStreamTop_TLAST, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_inStreamTop_TLAST);
            $finish;
        end
        token = read_token(fp);
        token_ingress_status = read_token(fp_ingress_status);
        if (token != "[[[runtime]]]") begin
            $display("ERROR: token %s != [[[runtime]]]", token);
            $finish;
        end
        token = read_token(fp); // read 1st "[[transaction]]"
        token_ingress_status = read_token(fp_ingress_status);
        forever begin
            @ (negedge clk);
            if (ready == 1) begin
                if (token != "[[[/runtime]]]") begin
                    if (token != "[[transaction]]") begin
                        $display("ERROR: token %s != [[[transaction]]]", token);
                        $finish;
                    end
                    token = read_token(fp); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // load ingress status at beginning of transaction
                    fifo_inStreamTop_TLAST.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_inStreamTop_TLAST.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_inStreamTop_TLAST.push(data);
                        token = read_token(fp);
                        ret = $sscanf(token_ingress_status, "%d", ingress_status);
                        token_ingress_status = read_token(fp_ingress_status);
                    end
                    token = read_token(fp);
                    token_ingress_status = read_token(fp_ingress_status);
                end else begin
                    if (fp != 0) begin
                        $fclose(fp);
                        fp = 0;
                    end
                    if (fp_ingress_status != 0) begin
                        $fclose(fp_ingress_status);
                        fp_ingress_status = 0;
                    end
                end
                transaction_load_inStreamTop_TLAST = transaction_load_inStreamTop_TLAST + 1;
            end
        end
    end

endmodule
