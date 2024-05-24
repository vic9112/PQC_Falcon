// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps

module AESL_axi_slave_control (
    clk,
    reset,
    TRAN_s_axi_control_AWADDR,
    TRAN_s_axi_control_AWVALID,
    TRAN_s_axi_control_AWREADY,
    TRAN_s_axi_control_WVALID,
    TRAN_s_axi_control_WREADY,
    TRAN_s_axi_control_WDATA,
    TRAN_s_axi_control_WSTRB,
    TRAN_s_axi_control_ARADDR,
    TRAN_s_axi_control_ARVALID,
    TRAN_s_axi_control_ARREADY,
    TRAN_s_axi_control_RVALID,
    TRAN_s_axi_control_RREADY,
    TRAN_s_axi_control_RDATA,
    TRAN_s_axi_control_RRESP,
    TRAN_s_axi_control_BVALID,
    TRAN_s_axi_control_BREADY,
    TRAN_s_axi_control_BRESP,
    TRAN_control_write_data_finish,
    TRAN_control_read_data_finish,
    TRAN_control_start_in,
    TRAN_control_idle_out,
    TRAN_control_ready_out,
    TRAN_control_ready_in,
    TRAN_control_done_out,
    TRAN_control_write_start_in   ,
    TRAN_control_write_start_finish,
    TRAN_control_interrupt,
    TRAN_control_transaction_done_in
    );

//------------------------Parameter----------------------
`define TV_IN_kernel_mode "../tv/cdatafile/c.userdma.autotvin_kernel_mode.dat"
`define TV_OUT_s2m_buf_sts "../tv/rtldatafile/rtl.userdma.autotvout_s2m_buf_sts.dat"
`define TV_OUT_m2s_buf_sts "../tv/rtldatafile/rtl.userdma.autotvout_m2s_buf_sts.dat"
`define TV_IN_s2mbuf "../tv/cdatafile/c.userdma.autotvin_s2mbuf.dat"
`define TV_IN_m2sbuf "../tv/cdatafile/c.userdma.autotvin_m2sbuf.dat"
`define TV_OUT_s2m_err "../tv/rtldatafile/rtl.userdma.autotvout_s2m_err.dat"
parameter ADDR_WIDTH = 7;
parameter DATA_WIDTH = 32;
parameter kernel_mode_DEPTH = 1;
reg [31 : 0] kernel_mode_OPERATE_DEPTH = 0;
parameter kernel_mode_c_bitwidth = 2;
parameter s2m_buf_sts_DEPTH = 1;
reg [31 : 0] s2m_buf_sts_OPERATE_DEPTH = 0;
parameter s2m_buf_sts_c_bitwidth = 1;
parameter m2s_buf_sts_DEPTH = 1;
reg [31 : 0] m2s_buf_sts_OPERATE_DEPTH = 0;
parameter m2s_buf_sts_c_bitwidth = 1;
parameter s2mbuf_DEPTH = 1;
reg [31 : 0] s2mbuf_OPERATE_DEPTH = 0;
parameter s2mbuf_c_bitwidth = 64;
parameter m2sbuf_DEPTH = 1;
reg [31 : 0] m2sbuf_OPERATE_DEPTH = 0;
parameter m2sbuf_c_bitwidth = 64;
parameter s2m_err_DEPTH = 1;
reg [31 : 0] s2m_err_OPERATE_DEPTH = 0;
parameter s2m_err_c_bitwidth = 2;
parameter START_ADDR = 0;
parameter userdma_continue_addr = 0;
parameter userdma_auto_start_addr = 0;
parameter kernel_mode_data_in_addr = 16;
parameter s2mbuf_data_in_addr = 56;
parameter m2sbuf_data_in_addr = 68;
parameter s2m_buf_sts_data_out_addr = 24;
parameter s2m_buf_sts_valid_out_addr = 28;
parameter m2s_buf_sts_data_out_addr = 40;
parameter m2s_buf_sts_valid_out_addr = 44;
parameter s2m_err_data_out_addr = 80;
parameter s2m_err_valid_out_addr = 84;
parameter STATUS_ADDR = 0;

output [ADDR_WIDTH - 1 : 0] TRAN_s_axi_control_AWADDR;
output  TRAN_s_axi_control_AWVALID;
input  TRAN_s_axi_control_AWREADY;
output  TRAN_s_axi_control_WVALID;
input  TRAN_s_axi_control_WREADY;
output [DATA_WIDTH - 1 : 0] TRAN_s_axi_control_WDATA;
output [DATA_WIDTH/8 - 1 : 0] TRAN_s_axi_control_WSTRB;
output [ADDR_WIDTH - 1 : 0] TRAN_s_axi_control_ARADDR;
output  TRAN_s_axi_control_ARVALID;
input  TRAN_s_axi_control_ARREADY;
input  TRAN_s_axi_control_RVALID;
output  TRAN_s_axi_control_RREADY;
input [DATA_WIDTH - 1 : 0] TRAN_s_axi_control_RDATA;
input [2 - 1 : 0] TRAN_s_axi_control_RRESP;
input  TRAN_s_axi_control_BVALID;
output  TRAN_s_axi_control_BREADY;
input [2 - 1 : 0] TRAN_s_axi_control_BRESP;
output TRAN_control_write_data_finish;
output TRAN_control_read_data_finish;
input     clk;
input     reset;
input     TRAN_control_start_in;
output    TRAN_control_done_out;
output    TRAN_control_ready_out;
input     TRAN_control_ready_in;
output    TRAN_control_idle_out;
input  TRAN_control_write_start_in   ;
output TRAN_control_write_start_finish;
input     TRAN_control_interrupt;
input     TRAN_control_transaction_done_in;

reg [ADDR_WIDTH - 1 : 0] AWADDR_reg = 0;
reg  AWVALID_reg = 0;
reg  WVALID_reg = 0;
reg [DATA_WIDTH - 1 : 0] WDATA_reg = 0;
reg [DATA_WIDTH/8 - 1 : 0] WSTRB_reg = 0;
reg [ADDR_WIDTH - 1 : 0] ARADDR_reg = 0;
reg  ARVALID_reg = 0;
reg  RREADY_reg = 0;
reg [DATA_WIDTH - 1 : 0] RDATA_reg = 0;
reg  BREADY_reg = 0;
reg [DATA_WIDTH - 1 : 0] mem_kernel_mode [kernel_mode_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_kernel_mode [ (kernel_mode_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * kernel_mode_DEPTH -1 : 0] = '{default : 'hz};
reg kernel_mode_write_data_finish;
reg [DATA_WIDTH - 1 : 0] mem_s2m_buf_sts [s2m_buf_sts_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_s2m_buf_sts [ (s2m_buf_sts_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * s2m_buf_sts_DEPTH -1 : 0] = '{default : 'hz};
reg s2m_buf_sts_read_data_finish;
reg [DATA_WIDTH - 1 : 0] mem_m2s_buf_sts [m2s_buf_sts_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_m2s_buf_sts [ (m2s_buf_sts_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * m2s_buf_sts_DEPTH -1 : 0] = '{default : 'hz};
reg m2s_buf_sts_read_data_finish;
reg [s2mbuf_c_bitwidth - 1 : 0] mem_s2mbuf [s2mbuf_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_s2mbuf [ (s2mbuf_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * s2mbuf_DEPTH -1 : 0] = '{default : 'hz};
reg s2mbuf_write_data_finish;
reg [m2sbuf_c_bitwidth - 1 : 0] mem_m2sbuf [m2sbuf_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_m2sbuf [ (m2sbuf_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * m2sbuf_DEPTH -1 : 0] = '{default : 'hz};
reg m2sbuf_write_data_finish;
reg [DATA_WIDTH - 1 : 0] mem_s2m_err [s2m_err_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_s2m_err [ (s2m_err_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * s2m_err_DEPTH -1 : 0] = '{default : 'hz};
reg s2m_err_read_data_finish;
reg AESL_ready_out_index_reg = 0;
reg AESL_write_start_finish = 0;
reg AESL_ready_reg;
reg ready_initial;
reg AESL_done_index_reg = 0;
reg AESL_idle_index_reg = 0;
reg AESL_auto_restart_index_reg;
reg process_0_finish = 0;
reg process_1_finish = 0;
reg process_2_finish = 0;
reg process_3_finish = 0;
reg process_4_finish = 0;
reg process_5_finish = 0;
reg process_6_finish = 0;
reg process_7_finish = 0;
//write kernel_mode reg
reg [31 : 0] write_kernel_mode_count = 0;
reg write_kernel_mode_run_flag = 0;
reg write_one_kernel_mode_data_done = 0;
//write s2mbuf reg
reg [31 : 0] write_s2mbuf_count = 0;
reg write_s2mbuf_run_flag = 0;
reg write_one_s2mbuf_data_done = 0;
//write m2sbuf reg
reg [31 : 0] write_m2sbuf_count = 0;
reg write_m2sbuf_run_flag = 0;
reg write_one_m2sbuf_data_done = 0;
//read s2m_buf_sts reg
reg [31 : 0] read_s2m_buf_sts_count = 0;
reg read_s2m_buf_sts_run_flag = 0;
reg read_one_s2m_buf_sts_data_done = 0;
//read m2s_buf_sts reg
reg [31 : 0] read_m2s_buf_sts_count = 0;
reg read_m2s_buf_sts_run_flag = 0;
reg read_one_m2s_buf_sts_data_done = 0;
//read s2m_err reg
reg [31 : 0] read_s2m_err_count = 0;
reg read_s2m_err_run_flag = 0;
reg read_one_s2m_err_data_done = 0;
reg [31 : 0] write_start_count = 0;
reg write_start_run_flag = 0;

//===================process control=================
reg [31 : 0] ongoing_process_number = 0;
//process number depends on how much processes needed.
reg process_busy = 0;

//=================== signal connection ==============
assign TRAN_s_axi_control_AWADDR = AWADDR_reg;
assign TRAN_s_axi_control_AWVALID = AWVALID_reg;
assign TRAN_s_axi_control_WVALID = WVALID_reg;
assign TRAN_s_axi_control_WDATA = WDATA_reg;
assign TRAN_s_axi_control_WSTRB = WSTRB_reg;
assign TRAN_s_axi_control_ARADDR = ARADDR_reg;
assign TRAN_s_axi_control_ARVALID = ARVALID_reg;
assign TRAN_s_axi_control_RREADY = RREADY_reg;
assign TRAN_s_axi_control_BREADY = BREADY_reg;
assign TRAN_control_write_start_finish = AESL_write_start_finish;
assign TRAN_control_done_out = AESL_done_index_reg;
assign TRAN_control_ready_out = AESL_ready_out_index_reg;
assign TRAN_control_idle_out = AESL_idle_index_reg;
assign TRAN_control_read_data_finish = 1 & s2m_buf_sts_read_data_finish & m2s_buf_sts_read_data_finish & s2m_err_read_data_finish;
assign TRAN_control_write_data_finish = 1 & kernel_mode_write_data_finish & s2mbuf_write_data_finish & m2sbuf_write_data_finish;
always @(TRAN_control_ready_in or ready_initial) 
begin
    AESL_ready_reg <= TRAN_control_ready_in | ready_initial;
end

always @(reset or process_0_finish or process_1_finish or process_2_finish or process_3_finish or process_4_finish or process_5_finish or process_6_finish or process_7_finish ) begin
    if (reset == 0) begin
        ongoing_process_number <= 0;
    end
    else if (ongoing_process_number == 0 && process_0_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 1 && process_1_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 2 && process_2_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 3 && process_3_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 4 && process_4_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 5 && process_5_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 6 && process_6_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 7 && process_7_finish == 1) begin
            ongoing_process_number <= 0;
    end
end

task count_c_data_four_byte_num_by_bitwidth;
input  integer bitwidth;
output integer num;
integer factor;
integer i;
begin
    factor = 32;
    for (i = 1; i <= 1024; i = i + 1) begin
        if (bitwidth <= factor && bitwidth > factor - 32) begin
            num = i;
        end
        factor = factor + 32;
    end
end    
endtask

task count_seperate_factor_by_bitwidth;
input  integer bitwidth;
output integer factor;
begin
    if (bitwidth <= 8) begin
        factor=4;
    end
    if (bitwidth <= 16 & bitwidth > 8 ) begin
        factor=2;
    end
    if (bitwidth <= 32 & bitwidth > 16 ) begin
        factor=1;
    end
    if (bitwidth > 32 ) begin
        factor=1;
    end
end    
endtask

task count_operate_depth_by_bitwidth_and_depth;
input  integer bitwidth;
input  integer depth;
output integer operate_depth;
integer factor;
integer remain;
begin
    count_seperate_factor_by_bitwidth (bitwidth , factor);
    operate_depth = depth / factor;
    remain = depth % factor;
    if (remain > 0) begin
        operate_depth = operate_depth + 1;
    end
end    
endtask

task write; /*{{{*/
    input  reg [ADDR_WIDTH - 1:0] waddr;   // write address
    input  reg [DATA_WIDTH - 1:0] wdata;   // write data
    output reg wresp;
    reg aw_flag;
    reg w_flag;
    reg [DATA_WIDTH/8 - 1:0] wstrb_reg;
    integer i;
begin 
    wresp = 0;
    aw_flag = 0;
    w_flag = 0;
//=======================one single write operate======================
    AWADDR_reg <= waddr;
    AWVALID_reg <= 1;
    WDATA_reg <= wdata;
    WVALID_reg <= 1;
    for (i = 0; i < DATA_WIDTH/8; i = i + 1) begin
        wstrb_reg [i] = 1;
    end    
    WSTRB_reg <= wstrb_reg;
    while (!(aw_flag && w_flag)) begin
        @(posedge clk);
        if (aw_flag != 1)
            aw_flag = TRAN_s_axi_control_AWREADY & AWVALID_reg;
        if (w_flag != 1)
            w_flag = TRAN_s_axi_control_WREADY & WVALID_reg;
        AWVALID_reg <= !aw_flag;
        WVALID_reg <= !w_flag;
    end

    BREADY_reg <= 1;
    while (TRAN_s_axi_control_BVALID != 1) begin
        //wait for response 
        @(posedge clk);
    end
    @(posedge clk);
    BREADY_reg <= 0;
    if (TRAN_s_axi_control_BRESP === 2'b00) begin
        wresp = 1;
        //input success. in fact BRESP is always 2'b00
    end   
//=======================one single write operate======================

end
endtask/*}}}*/

task read (/*{{{*/
    input  [ADDR_WIDTH - 1:0] raddr ,   // write address
    output [DATA_WIDTH - 1:0] RDATA_result ,
    output rresp
);
begin 
    rresp = 0;
//=======================one single read operate======================
    ARADDR_reg <= raddr;
    ARVALID_reg <= 1;
    while (TRAN_s_axi_control_ARREADY !== 1) begin
        @(posedge clk);
    end
    @(posedge clk);
    ARVALID_reg <= 0;
    RREADY_reg <= 1;
    while (TRAN_s_axi_control_RVALID !== 1) begin
        //wait for response 
        @(posedge clk);
    end
    @(posedge clk);
    RDATA_result  <= TRAN_s_axi_control_RDATA;
    RREADY_reg <= 0;
    if (TRAN_s_axi_control_RRESP === 2'b00 ) begin
        rresp <= 1;
        //output success. in fact RRESP is always 2'b00
    end  
    @(posedge clk);

//=======================one single read operate end======================

end
endtask/*}}}*/

initial begin : ready_initial_process
    ready_initial = 0;
    wait(reset === 1);
    @(posedge clk);
    ready_initial = 1;
    @(posedge clk);
    ready_initial = 0;
end

initial begin : update_status
    integer process_num ;
    integer read_status_resp;
    wait(reset === 1);
    @(posedge clk);
    process_num = 0;
    while (1) begin
        process_0_finish = 0;
        AESL_done_index_reg         <= 0;
        AESL_ready_out_index_reg        <= 0;
        if (ongoing_process_number === process_num && process_busy === 0) begin
            process_busy = 1;
            read (STATUS_ADDR, RDATA_reg, read_status_resp);
                AESL_done_index_reg         <= RDATA_reg[1 : 1];
                AESL_ready_out_index_reg    <= RDATA_reg[1 : 1];
                AESL_idle_index_reg         <= RDATA_reg[2 : 2];
            process_0_finish = 1;
            process_busy = 0;
        end 
        @(posedge clk);
    end
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        kernel_mode_write_data_finish <= 0;
        write_kernel_mode_run_flag <= 0; 
        write_kernel_mode_count = 0;
        count_operate_depth_by_bitwidth_and_depth (kernel_mode_c_bitwidth, kernel_mode_DEPTH, kernel_mode_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            kernel_mode_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_kernel_mode_run_flag <= 1; 
            write_kernel_mode_count = 0;
        end
        if (write_one_kernel_mode_data_done === 1) begin
            write_kernel_mode_count = write_kernel_mode_count + 1;
            if (write_kernel_mode_count == kernel_mode_OPERATE_DEPTH) begin
                write_kernel_mode_run_flag <= 0; 
                kernel_mode_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_kernel_mode
    integer write_kernel_mode_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] kernel_mode_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = kernel_mode_c_bitwidth;
    process_num = 1;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_1_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_kernel_mode_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write kernel_mode data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (kernel_mode_c_bitwidth < 32) begin
                        kernel_mode_data_tmp_reg = mem_kernel_mode[write_kernel_mode_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < kernel_mode_c_bitwidth) begin
                                kernel_mode_data_tmp_reg[j] = mem_kernel_mode[write_kernel_mode_count][i*32 + j];
                            end
                            else begin
                                kernel_mode_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_kernel_mode[write_kernel_mode_count * four_byte_num  + i]!==kernel_mode_data_tmp_reg) begin
                    write (kernel_mode_data_in_addr + write_kernel_mode_count * four_byte_num * 4 + i * 4, kernel_mode_data_tmp_reg, write_kernel_mode_resp);
                    image_mem_kernel_mode[write_kernel_mode_count * four_byte_num + i]=kernel_mode_data_tmp_reg;
                    end
                end
                process_busy = 0;
                write_one_kernel_mode_data_done <= 1;
                @(posedge clk);
                write_one_kernel_mode_data_done <= 0;
            end   
            process_1_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        s2mbuf_write_data_finish <= 0;
        write_s2mbuf_run_flag <= 0; 
        write_s2mbuf_count = 0;
        count_operate_depth_by_bitwidth_and_depth (s2mbuf_c_bitwidth, s2mbuf_DEPTH, s2mbuf_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            s2mbuf_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_s2mbuf_run_flag <= 1; 
            write_s2mbuf_count = 0;
        end
        if (write_one_s2mbuf_data_done === 1) begin
            write_s2mbuf_count = write_s2mbuf_count + 1;
            if (write_s2mbuf_count == s2mbuf_OPERATE_DEPTH) begin
                write_s2mbuf_run_flag <= 0; 
                s2mbuf_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_s2mbuf
    integer write_s2mbuf_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] s2mbuf_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = s2mbuf_c_bitwidth;
    process_num = 2;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_2_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_s2mbuf_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write s2mbuf data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (s2mbuf_c_bitwidth < 32) begin
                        s2mbuf_data_tmp_reg = mem_s2mbuf[write_s2mbuf_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < s2mbuf_c_bitwidth) begin
                                s2mbuf_data_tmp_reg[j] = mem_s2mbuf[write_s2mbuf_count][i*32 + j];
                            end
                            else begin
                                s2mbuf_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_s2mbuf[write_s2mbuf_count * four_byte_num  + i]!==s2mbuf_data_tmp_reg) begin
                    write (s2mbuf_data_in_addr + write_s2mbuf_count * four_byte_num * 4 + i * 4, s2mbuf_data_tmp_reg, write_s2mbuf_resp);
                    image_mem_s2mbuf[write_s2mbuf_count * four_byte_num + i]=s2mbuf_data_tmp_reg;
                    end
                end
                process_busy = 0;
                write_one_s2mbuf_data_done <= 1;
                @(posedge clk);
                write_one_s2mbuf_data_done <= 0;
            end   
            process_2_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        m2sbuf_write_data_finish <= 0;
        write_m2sbuf_run_flag <= 0; 
        write_m2sbuf_count = 0;
        count_operate_depth_by_bitwidth_and_depth (m2sbuf_c_bitwidth, m2sbuf_DEPTH, m2sbuf_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            m2sbuf_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_m2sbuf_run_flag <= 1; 
            write_m2sbuf_count = 0;
        end
        if (write_one_m2sbuf_data_done === 1) begin
            write_m2sbuf_count = write_m2sbuf_count + 1;
            if (write_m2sbuf_count == m2sbuf_OPERATE_DEPTH) begin
                write_m2sbuf_run_flag <= 0; 
                m2sbuf_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_m2sbuf
    integer write_m2sbuf_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] m2sbuf_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = m2sbuf_c_bitwidth;
    process_num = 3;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_3_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_m2sbuf_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write m2sbuf data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (m2sbuf_c_bitwidth < 32) begin
                        m2sbuf_data_tmp_reg = mem_m2sbuf[write_m2sbuf_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < m2sbuf_c_bitwidth) begin
                                m2sbuf_data_tmp_reg[j] = mem_m2sbuf[write_m2sbuf_count][i*32 + j];
                            end
                            else begin
                                m2sbuf_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_m2sbuf[write_m2sbuf_count * four_byte_num  + i]!==m2sbuf_data_tmp_reg) begin
                    write (m2sbuf_data_in_addr + write_m2sbuf_count * four_byte_num * 4 + i * 4, m2sbuf_data_tmp_reg, write_m2sbuf_resp);
                    image_mem_m2sbuf[write_m2sbuf_count * four_byte_num + i]=m2sbuf_data_tmp_reg;
                    end
                end
                process_busy = 0;
                write_one_m2sbuf_data_done <= 1;
                @(posedge clk);
                write_one_m2sbuf_data_done <= 0;
            end   
            process_3_finish <= 1;
        end
        @(posedge clk);
    end    
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        write_start_run_flag <= 0; 
        write_start_count <= 0;
    end
    else begin
        if (write_start_count >= 2) begin
            write_start_run_flag <= 0; 
        end
        else if (TRAN_control_write_start_in === 1) begin
            write_start_run_flag <= 1; 
        end
        if (AESL_write_start_finish === 1) begin
            write_start_count <= write_start_count + 1;
            write_start_run_flag <= 0; 
        end
    end
end

initial begin : write_start
    reg [DATA_WIDTH - 1 : 0] write_start_tmp;
    integer process_num;
    integer write_start_resp;
    wait(reset === 1);
    @(posedge clk);
    process_num = 4;
    while (1) begin
        process_4_finish = 0;
        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            if (write_start_run_flag === 1) begin
                process_busy = 1;
                write_start_tmp=0;
                write_start_tmp[0 : 0] = 1;
                write (START_ADDR, write_start_tmp, write_start_resp);
                process_busy = 0;
                AESL_write_start_finish <= 1;
                @(posedge clk);
                AESL_write_start_finish <= 0;
            end
            process_4_finish <= 1;
        end 
        @(posedge clk);
    end
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        s2m_buf_sts_read_data_finish <= 0;
        read_s2m_buf_sts_run_flag <= 0; 
        read_s2m_buf_sts_count = 0;
        count_operate_depth_by_bitwidth_and_depth (s2m_buf_sts_c_bitwidth, s2m_buf_sts_DEPTH, s2m_buf_sts_OPERATE_DEPTH);
    end
    else begin
        if (AESL_done_index_reg === 1) begin
            read_s2m_buf_sts_run_flag = 1; 
        end
        if (TRAN_control_transaction_done_in === 1) begin
            s2m_buf_sts_read_data_finish <= 0;
            read_s2m_buf_sts_count = 0; 
        end
        if (read_one_s2m_buf_sts_data_done === 1) begin
            read_s2m_buf_sts_count = read_s2m_buf_sts_count + 1;
            if (read_s2m_buf_sts_count == s2m_buf_sts_OPERATE_DEPTH) begin
                read_s2m_buf_sts_run_flag <= 0; 
                s2m_buf_sts_read_data_finish <= 1;
            end
        end
    end
end

initial begin : read_s2m_buf_sts
    integer read_s2m_buf_sts_resp;
    integer process_num;
    integer get_vld;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;

    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = s2m_buf_sts_c_bitwidth;
    process_num = 5;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_5_finish <= 0;
        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            if (read_s2m_buf_sts_run_flag === 1) begin
                process_busy = 1;
                get_vld = 0;
                //read s2m_buf_sts vld
                read (s2m_buf_sts_valid_out_addr, RDATA_reg, read_s2m_buf_sts_resp);
                if (RDATA_reg[0 : 0] == 1) begin
                    get_vld = 1;
                end
                if (get_vld == 1) begin
                    //read s2m_buf_sts data 
                    for (i = 0 ; i < four_byte_num ; i = i+1) begin
                        read (s2m_buf_sts_data_out_addr + read_s2m_buf_sts_count * four_byte_num * 4 + i * 4, RDATA_reg, read_s2m_buf_sts_resp);
                        if (s2m_buf_sts_c_bitwidth < 32) begin
                            mem_s2m_buf_sts[read_s2m_buf_sts_count] <= RDATA_reg;
                        end
                        else begin
                            for (j=0 ; j < 32 ; j = j + 1) begin
                                if (i*32 + j < s2m_buf_sts_c_bitwidth) begin
                                    mem_s2m_buf_sts[read_s2m_buf_sts_count][i*32 + j] <= RDATA_reg[j];
                                end
                            end
                        end
                    end
                    
                    read_one_s2m_buf_sts_data_done <= 1;
                    @(posedge clk);
                    read_one_s2m_buf_sts_data_done <= 0;
                end    
                process_busy = 0;
            end    
            process_5_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        m2s_buf_sts_read_data_finish <= 0;
        read_m2s_buf_sts_run_flag <= 0; 
        read_m2s_buf_sts_count = 0;
        count_operate_depth_by_bitwidth_and_depth (m2s_buf_sts_c_bitwidth, m2s_buf_sts_DEPTH, m2s_buf_sts_OPERATE_DEPTH);
    end
    else begin
        if (AESL_done_index_reg === 1) begin
            read_m2s_buf_sts_run_flag = 1; 
        end
        if (TRAN_control_transaction_done_in === 1) begin
            m2s_buf_sts_read_data_finish <= 0;
            read_m2s_buf_sts_count = 0; 
        end
        if (read_one_m2s_buf_sts_data_done === 1) begin
            read_m2s_buf_sts_count = read_m2s_buf_sts_count + 1;
            if (read_m2s_buf_sts_count == m2s_buf_sts_OPERATE_DEPTH) begin
                read_m2s_buf_sts_run_flag <= 0; 
                m2s_buf_sts_read_data_finish <= 1;
            end
        end
    end
end

initial begin : read_m2s_buf_sts
    integer read_m2s_buf_sts_resp;
    integer process_num;
    integer get_vld;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;

    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = m2s_buf_sts_c_bitwidth;
    process_num = 6;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_6_finish <= 0;
        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            if (read_m2s_buf_sts_run_flag === 1) begin
                process_busy = 1;
                get_vld = 0;
                //read m2s_buf_sts vld
                read (m2s_buf_sts_valid_out_addr, RDATA_reg, read_m2s_buf_sts_resp);
                if (RDATA_reg[0 : 0] == 1) begin
                    get_vld = 1;
                end
                if (get_vld == 1) begin
                    //read m2s_buf_sts data 
                    for (i = 0 ; i < four_byte_num ; i = i+1) begin
                        read (m2s_buf_sts_data_out_addr + read_m2s_buf_sts_count * four_byte_num * 4 + i * 4, RDATA_reg, read_m2s_buf_sts_resp);
                        if (m2s_buf_sts_c_bitwidth < 32) begin
                            mem_m2s_buf_sts[read_m2s_buf_sts_count] <= RDATA_reg;
                        end
                        else begin
                            for (j=0 ; j < 32 ; j = j + 1) begin
                                if (i*32 + j < m2s_buf_sts_c_bitwidth) begin
                                    mem_m2s_buf_sts[read_m2s_buf_sts_count][i*32 + j] <= RDATA_reg[j];
                                end
                            end
                        end
                    end
                    
                    read_one_m2s_buf_sts_data_done <= 1;
                    @(posedge clk);
                    read_one_m2s_buf_sts_data_done <= 0;
                end    
                process_busy = 0;
            end    
            process_6_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        s2m_err_read_data_finish <= 0;
        read_s2m_err_run_flag <= 0; 
        read_s2m_err_count = 0;
        count_operate_depth_by_bitwidth_and_depth (s2m_err_c_bitwidth, s2m_err_DEPTH, s2m_err_OPERATE_DEPTH);
    end
    else begin
        if (AESL_done_index_reg === 1) begin
            read_s2m_err_run_flag = 1; 
        end
        if (TRAN_control_transaction_done_in === 1) begin
            s2m_err_read_data_finish <= 0;
            read_s2m_err_count = 0; 
        end
        if (read_one_s2m_err_data_done === 1) begin
            read_s2m_err_count = read_s2m_err_count + 1;
            if (read_s2m_err_count == s2m_err_OPERATE_DEPTH) begin
                read_s2m_err_run_flag <= 0; 
                s2m_err_read_data_finish <= 1;
            end
        end
    end
end

initial begin : read_s2m_err
    integer read_s2m_err_resp;
    integer process_num;
    integer get_vld;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;

    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = s2m_err_c_bitwidth;
    process_num = 7;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_7_finish <= 0;
        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            if (read_s2m_err_run_flag === 1) begin
                process_busy = 1;
                get_vld = 0;
                //read s2m_err vld
                read (s2m_err_valid_out_addr, RDATA_reg, read_s2m_err_resp);
                if (RDATA_reg[0 : 0] == 1) begin
                    get_vld = 1;
                end
                if (get_vld == 1) begin
                    //read s2m_err data 
                    for (i = 0 ; i < four_byte_num ; i = i+1) begin
                        read (s2m_err_data_out_addr + read_s2m_err_count * four_byte_num * 4 + i * 4, RDATA_reg, read_s2m_err_resp);
                        if (s2m_err_c_bitwidth < 32) begin
                            mem_s2m_err[read_s2m_err_count] <= RDATA_reg;
                        end
                        else begin
                            for (j=0 ; j < 32 ; j = j + 1) begin
                                if (i*32 + j < s2m_err_c_bitwidth) begin
                                    mem_s2m_err[read_s2m_err_count][i*32 + j] <= RDATA_reg[j];
                                end
                            end
                        end
                    end
                    
                    read_one_s2m_err_data_done <= 1;
                    @(posedge clk);
                    read_one_s2m_err_data_done <= 0;
                end    
                process_busy = 0;
            end    
            process_7_finish <= 1;
        end
        @(posedge clk);
    end    
end
//------------------------Task and function-------------- 
task read_token; 
    input integer fp; 
    output reg [151 : 0] token;
    integer ret;
    begin
        token = "";
        ret = 0;
        ret = $fscanf(fp,"%s",token);
    end 
endtask 
 
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_kernel_mode_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [127 : 0] token; 
  reg [127 : 0] token_tmp; 
  //reg [kernel_mode_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
    reg [63:0] trans_depth;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (kernel_mode_c_bitwidth , factor);
  fp = $fopen(`TV_IN_kernel_mode ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_kernel_mode); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < kernel_mode_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_kernel_mode [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_kernel_mode [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_kernel_mode [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_kernel_mode [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_kernel_mode [i/factor] = tmp_cache_mem;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
task write_binary_kernel_mode;
    input integer fp;
    input reg[64-1:0] in;
    input integer in_bw;
    reg [63:0] tmp_long;
    reg[64-1:0] local_in;
    integer char_num;
    integer long_num;
    integer i;
    integer j;
    begin
        long_num = (in_bw + 63) / 64;
        char_num = ((in_bw - 1) % 64 + 7) / 8;
        for(i=long_num;i>0;i=i-1) begin
             local_in = in;
             tmp_long = local_in >> ((i-1)*64);
             for(j=0;j<64;j=j+1)
                 if (tmp_long[j] === 1'bx)
                     tmp_long[j] = 1'b0;
             if (i == long_num) begin
                 case(char_num)
                     1: $fwrite(fp,"%c",tmp_long[7:0]);
                     2: $fwrite(fp,"%c%c",tmp_long[15:8],tmp_long[7:0]);
                     3: $fwrite(fp,"%c%c%c",tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     4: $fwrite(fp,"%c%c%c%c",tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     5: $fwrite(fp,"%c%c%c%c%c",tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     6: $fwrite(fp,"%c%c%c%c%c%c",tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     7: $fwrite(fp,"%c%c%c%c%c%c%c",tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     8: $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     default: ;
                 endcase
             end
             else begin
                 $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
             end
        end
    end
endtask;
task write_binary_s2m_buf_sts;
    input integer fp;
    input reg[64-1:0] in;
    input integer in_bw;
    reg [63:0] tmp_long;
    reg[64-1:0] local_in;
    integer char_num;
    integer long_num;
    integer i;
    integer j;
    begin
        long_num = (in_bw + 63) / 64;
        char_num = ((in_bw - 1) % 64 + 7) / 8;
        for(i=long_num;i>0;i=i-1) begin
             local_in = in;
             tmp_long = local_in >> ((i-1)*64);
             for(j=0;j<64;j=j+1)
                 if (tmp_long[j] === 1'bx)
                     tmp_long[j] = 1'b0;
             if (i == long_num) begin
                 case(char_num)
                     1: $fwrite(fp,"%c",tmp_long[7:0]);
                     2: $fwrite(fp,"%c%c",tmp_long[15:8],tmp_long[7:0]);
                     3: $fwrite(fp,"%c%c%c",tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     4: $fwrite(fp,"%c%c%c%c",tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     5: $fwrite(fp,"%c%c%c%c%c",tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     6: $fwrite(fp,"%c%c%c%c%c%c",tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     7: $fwrite(fp,"%c%c%c%c%c%c%c",tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     8: $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     default: ;
                 endcase
             end
             else begin
                 $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
             end
        end
    end
endtask;
//------------------------Write file----------------------- 
 
// Write data to file 
 
initial begin : write_s2m_buf_sts_file_proc 
  integer fp; 
  integer factor; 
  integer transaction_idx; 
  reg [s2m_buf_sts_c_bitwidth - 1 : 0] tmp_cache_mem; 
  reg [ 100*8 : 1] str;
  reg [63:0] bin_data;
  integer i; 
  transaction_idx = 0; 
  count_seperate_factor_by_bitwidth (s2m_buf_sts_c_bitwidth , factor);
  while(1) begin 
      @(posedge clk);
      while (s2m_buf_sts_read_data_finish !== 1 || TRAN_control_transaction_done_in === 1) begin
          @(posedge clk);
      end
      # 0.1;
      fp = $fopen(`TV_OUT_s2m_buf_sts, "a"); 
      if(fp == 0) begin       // Failed to open file 
          $display("Failed to open file \"%s\"!", `TV_OUT_s2m_buf_sts); 
          $finish; 
      end 
      $fdisplay(fp, "[[transaction]] %d", transaction_idx);
      for (i = 0; i < (s2m_buf_sts_DEPTH - s2m_buf_sts_DEPTH % factor); i = i + 1) begin
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem = mem_s2m_buf_sts[i/factor][7:0];
              end
              if (i%factor == 1) begin
                  tmp_cache_mem = mem_s2m_buf_sts[i/factor][15:8];
              end
              if (i%factor == 2) begin
                  tmp_cache_mem = mem_s2m_buf_sts[i/factor][23:16];
              end
              if (i%factor == 3) begin
                  tmp_cache_mem = mem_s2m_buf_sts[i/factor][31:24];
              end
              $fdisplay(fp,"0x%x",tmp_cache_mem);
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem = mem_s2m_buf_sts[i/factor][15:0];
              end
              if (i%factor == 1) begin
                  tmp_cache_mem = mem_s2m_buf_sts[i/factor][31:16];
              end
              $fdisplay(fp,"0x%x",tmp_cache_mem);
          end
          if (factor == 1) begin
              $fdisplay(fp,"0x%x",mem_s2m_buf_sts[i]);
          end
      end 
      if (factor == 4) begin
          if ((s2m_buf_sts_DEPTH - 1) % factor == 2) begin
              $fdisplay(fp,"0x%x",mem_s2m_buf_sts[s2m_buf_sts_DEPTH / factor][7:0]);
              $fdisplay(fp,"0x%x",mem_s2m_buf_sts[s2m_buf_sts_DEPTH / factor][15:8]);
              $fdisplay(fp,"0x%x",mem_s2m_buf_sts[s2m_buf_sts_DEPTH / factor][23:16]);
          end
          if ((s2m_buf_sts_DEPTH - 1) % factor == 1) begin
              $fdisplay(fp,"0x%x",mem_s2m_buf_sts[s2m_buf_sts_DEPTH / factor][7:0]);
              $fdisplay(fp,"0x%x",mem_s2m_buf_sts[s2m_buf_sts_DEPTH / factor][15:8]);
          end
          if ((s2m_buf_sts_DEPTH - 1) % factor == 0) begin
              $fdisplay(fp,"0x%x",mem_s2m_buf_sts[s2m_buf_sts_DEPTH / factor][7:0]);
          end
      end
      if (factor == 2) begin
          if ((s2m_buf_sts_DEPTH - 1) % factor == 0) begin
              $fdisplay(fp,"0x%x",mem_s2m_buf_sts[s2m_buf_sts_DEPTH / factor][15:0]);
          end
      end
      $fdisplay(fp, "[[/transaction]]");
      transaction_idx = transaction_idx + 1;
      $fclose(fp); 
      while (TRAN_control_start_in !== 1) begin
          @(posedge clk);
      end
  end 
end 
 
task write_binary_m2s_buf_sts;
    input integer fp;
    input reg[64-1:0] in;
    input integer in_bw;
    reg [63:0] tmp_long;
    reg[64-1:0] local_in;
    integer char_num;
    integer long_num;
    integer i;
    integer j;
    begin
        long_num = (in_bw + 63) / 64;
        char_num = ((in_bw - 1) % 64 + 7) / 8;
        for(i=long_num;i>0;i=i-1) begin
             local_in = in;
             tmp_long = local_in >> ((i-1)*64);
             for(j=0;j<64;j=j+1)
                 if (tmp_long[j] === 1'bx)
                     tmp_long[j] = 1'b0;
             if (i == long_num) begin
                 case(char_num)
                     1: $fwrite(fp,"%c",tmp_long[7:0]);
                     2: $fwrite(fp,"%c%c",tmp_long[15:8],tmp_long[7:0]);
                     3: $fwrite(fp,"%c%c%c",tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     4: $fwrite(fp,"%c%c%c%c",tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     5: $fwrite(fp,"%c%c%c%c%c",tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     6: $fwrite(fp,"%c%c%c%c%c%c",tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     7: $fwrite(fp,"%c%c%c%c%c%c%c",tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     8: $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     default: ;
                 endcase
             end
             else begin
                 $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
             end
        end
    end
endtask;
//------------------------Write file----------------------- 
 
// Write data to file 
 
initial begin : write_m2s_buf_sts_file_proc 
  integer fp; 
  integer factor; 
  integer transaction_idx; 
  reg [m2s_buf_sts_c_bitwidth - 1 : 0] tmp_cache_mem; 
  reg [ 100*8 : 1] str;
  reg [63:0] bin_data;
  integer i; 
  transaction_idx = 0; 
  count_seperate_factor_by_bitwidth (m2s_buf_sts_c_bitwidth , factor);
  while(1) begin 
      @(posedge clk);
      while (m2s_buf_sts_read_data_finish !== 1 || TRAN_control_transaction_done_in === 1) begin
          @(posedge clk);
      end
      # 0.1;
      fp = $fopen(`TV_OUT_m2s_buf_sts, "a"); 
      if(fp == 0) begin       // Failed to open file 
          $display("Failed to open file \"%s\"!", `TV_OUT_m2s_buf_sts); 
          $finish; 
      end 
      $fdisplay(fp, "[[transaction]] %d", transaction_idx);
      for (i = 0; i < (m2s_buf_sts_DEPTH - m2s_buf_sts_DEPTH % factor); i = i + 1) begin
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem = mem_m2s_buf_sts[i/factor][7:0];
              end
              if (i%factor == 1) begin
                  tmp_cache_mem = mem_m2s_buf_sts[i/factor][15:8];
              end
              if (i%factor == 2) begin
                  tmp_cache_mem = mem_m2s_buf_sts[i/factor][23:16];
              end
              if (i%factor == 3) begin
                  tmp_cache_mem = mem_m2s_buf_sts[i/factor][31:24];
              end
              $fdisplay(fp,"0x%x",tmp_cache_mem);
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem = mem_m2s_buf_sts[i/factor][15:0];
              end
              if (i%factor == 1) begin
                  tmp_cache_mem = mem_m2s_buf_sts[i/factor][31:16];
              end
              $fdisplay(fp,"0x%x",tmp_cache_mem);
          end
          if (factor == 1) begin
              $fdisplay(fp,"0x%x",mem_m2s_buf_sts[i]);
          end
      end 
      if (factor == 4) begin
          if ((m2s_buf_sts_DEPTH - 1) % factor == 2) begin
              $fdisplay(fp,"0x%x",mem_m2s_buf_sts[m2s_buf_sts_DEPTH / factor][7:0]);
              $fdisplay(fp,"0x%x",mem_m2s_buf_sts[m2s_buf_sts_DEPTH / factor][15:8]);
              $fdisplay(fp,"0x%x",mem_m2s_buf_sts[m2s_buf_sts_DEPTH / factor][23:16]);
          end
          if ((m2s_buf_sts_DEPTH - 1) % factor == 1) begin
              $fdisplay(fp,"0x%x",mem_m2s_buf_sts[m2s_buf_sts_DEPTH / factor][7:0]);
              $fdisplay(fp,"0x%x",mem_m2s_buf_sts[m2s_buf_sts_DEPTH / factor][15:8]);
          end
          if ((m2s_buf_sts_DEPTH - 1) % factor == 0) begin
              $fdisplay(fp,"0x%x",mem_m2s_buf_sts[m2s_buf_sts_DEPTH / factor][7:0]);
          end
      end
      if (factor == 2) begin
          if ((m2s_buf_sts_DEPTH - 1) % factor == 0) begin
              $fdisplay(fp,"0x%x",mem_m2s_buf_sts[m2s_buf_sts_DEPTH / factor][15:0]);
          end
      end
      $fdisplay(fp, "[[/transaction]]");
      transaction_idx = transaction_idx + 1;
      $fclose(fp); 
      while (TRAN_control_start_in !== 1) begin
          @(posedge clk);
      end
  end 
end 
 
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_s2mbuf_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [151 : 0] token; 
  reg [151 : 0] token_tmp; 
  //reg [s2mbuf_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
    reg [63:0] trans_depth;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (s2mbuf_c_bitwidth , factor);
  fp = $fopen(`TV_IN_s2mbuf ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_s2mbuf); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < s2mbuf_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_s2mbuf [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_s2mbuf [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_s2mbuf [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_s2mbuf [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_s2mbuf [i/factor] = tmp_cache_mem;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
task write_binary_s2mbuf;
    input integer fp;
    input reg[64-1:0] in;
    input integer in_bw;
    reg [63:0] tmp_long;
    reg[64-1:0] local_in;
    integer char_num;
    integer long_num;
    integer i;
    integer j;
    begin
        long_num = (in_bw + 63) / 64;
        char_num = ((in_bw - 1) % 64 + 7) / 8;
        for(i=long_num;i>0;i=i-1) begin
             local_in = in;
             tmp_long = local_in >> ((i-1)*64);
             for(j=0;j<64;j=j+1)
                 if (tmp_long[j] === 1'bx)
                     tmp_long[j] = 1'b0;
             if (i == long_num) begin
                 case(char_num)
                     1: $fwrite(fp,"%c",tmp_long[7:0]);
                     2: $fwrite(fp,"%c%c",tmp_long[15:8],tmp_long[7:0]);
                     3: $fwrite(fp,"%c%c%c",tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     4: $fwrite(fp,"%c%c%c%c",tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     5: $fwrite(fp,"%c%c%c%c%c",tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     6: $fwrite(fp,"%c%c%c%c%c%c",tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     7: $fwrite(fp,"%c%c%c%c%c%c%c",tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     8: $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     default: ;
                 endcase
             end
             else begin
                 $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
             end
        end
    end
endtask;
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_m2sbuf_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [151 : 0] token; 
  reg [151 : 0] token_tmp; 
  //reg [m2sbuf_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
    reg [63:0] trans_depth;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (m2sbuf_c_bitwidth , factor);
  fp = $fopen(`TV_IN_m2sbuf ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_m2sbuf); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < m2sbuf_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_m2sbuf [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_m2sbuf [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_m2sbuf [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_m2sbuf [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_m2sbuf [i/factor] = tmp_cache_mem;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
task write_binary_m2sbuf;
    input integer fp;
    input reg[64-1:0] in;
    input integer in_bw;
    reg [63:0] tmp_long;
    reg[64-1:0] local_in;
    integer char_num;
    integer long_num;
    integer i;
    integer j;
    begin
        long_num = (in_bw + 63) / 64;
        char_num = ((in_bw - 1) % 64 + 7) / 8;
        for(i=long_num;i>0;i=i-1) begin
             local_in = in;
             tmp_long = local_in >> ((i-1)*64);
             for(j=0;j<64;j=j+1)
                 if (tmp_long[j] === 1'bx)
                     tmp_long[j] = 1'b0;
             if (i == long_num) begin
                 case(char_num)
                     1: $fwrite(fp,"%c",tmp_long[7:0]);
                     2: $fwrite(fp,"%c%c",tmp_long[15:8],tmp_long[7:0]);
                     3: $fwrite(fp,"%c%c%c",tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     4: $fwrite(fp,"%c%c%c%c",tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     5: $fwrite(fp,"%c%c%c%c%c",tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     6: $fwrite(fp,"%c%c%c%c%c%c",tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     7: $fwrite(fp,"%c%c%c%c%c%c%c",tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     8: $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     default: ;
                 endcase
             end
             else begin
                 $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
             end
        end
    end
endtask;
task write_binary_s2m_err;
    input integer fp;
    input reg[64-1:0] in;
    input integer in_bw;
    reg [63:0] tmp_long;
    reg[64-1:0] local_in;
    integer char_num;
    integer long_num;
    integer i;
    integer j;
    begin
        long_num = (in_bw + 63) / 64;
        char_num = ((in_bw - 1) % 64 + 7) / 8;
        for(i=long_num;i>0;i=i-1) begin
             local_in = in;
             tmp_long = local_in >> ((i-1)*64);
             for(j=0;j<64;j=j+1)
                 if (tmp_long[j] === 1'bx)
                     tmp_long[j] = 1'b0;
             if (i == long_num) begin
                 case(char_num)
                     1: $fwrite(fp,"%c",tmp_long[7:0]);
                     2: $fwrite(fp,"%c%c",tmp_long[15:8],tmp_long[7:0]);
                     3: $fwrite(fp,"%c%c%c",tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     4: $fwrite(fp,"%c%c%c%c",tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     5: $fwrite(fp,"%c%c%c%c%c",tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     6: $fwrite(fp,"%c%c%c%c%c%c",tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     7: $fwrite(fp,"%c%c%c%c%c%c%c",tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     8: $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     default: ;
                 endcase
             end
             else begin
                 $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
             end
        end
    end
endtask;
//------------------------Write file----------------------- 
 
// Write data to file 
 
initial begin : write_s2m_err_file_proc 
  integer fp; 
  integer factor; 
  integer transaction_idx; 
  reg [s2m_err_c_bitwidth - 1 : 0] tmp_cache_mem; 
  reg [ 100*8 : 1] str;
  reg [63:0] bin_data;
  integer i; 
  transaction_idx = 0; 
  count_seperate_factor_by_bitwidth (s2m_err_c_bitwidth , factor);
  while(1) begin 
      @(posedge clk);
      while (s2m_err_read_data_finish !== 1 || TRAN_control_transaction_done_in === 1) begin
          @(posedge clk);
      end
      # 0.1;
      fp = $fopen(`TV_OUT_s2m_err, "a"); 
      if(fp == 0) begin       // Failed to open file 
          $display("Failed to open file \"%s\"!", `TV_OUT_s2m_err); 
          $finish; 
      end 
      $fdisplay(fp, "[[transaction]] %d", transaction_idx);
      for (i = 0; i < (s2m_err_DEPTH - s2m_err_DEPTH % factor); i = i + 1) begin
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem = mem_s2m_err[i/factor][7:0];
              end
              if (i%factor == 1) begin
                  tmp_cache_mem = mem_s2m_err[i/factor][15:8];
              end
              if (i%factor == 2) begin
                  tmp_cache_mem = mem_s2m_err[i/factor][23:16];
              end
              if (i%factor == 3) begin
                  tmp_cache_mem = mem_s2m_err[i/factor][31:24];
              end
              $fdisplay(fp,"0x%x",tmp_cache_mem);
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem = mem_s2m_err[i/factor][15:0];
              end
              if (i%factor == 1) begin
                  tmp_cache_mem = mem_s2m_err[i/factor][31:16];
              end
              $fdisplay(fp,"0x%x",tmp_cache_mem);
          end
          if (factor == 1) begin
              $fdisplay(fp,"0x%x",mem_s2m_err[i]);
          end
      end 
      if (factor == 4) begin
          if ((s2m_err_DEPTH - 1) % factor == 2) begin
              $fdisplay(fp,"0x%x",mem_s2m_err[s2m_err_DEPTH / factor][7:0]);
              $fdisplay(fp,"0x%x",mem_s2m_err[s2m_err_DEPTH / factor][15:8]);
              $fdisplay(fp,"0x%x",mem_s2m_err[s2m_err_DEPTH / factor][23:16]);
          end
          if ((s2m_err_DEPTH - 1) % factor == 1) begin
              $fdisplay(fp,"0x%x",mem_s2m_err[s2m_err_DEPTH / factor][7:0]);
              $fdisplay(fp,"0x%x",mem_s2m_err[s2m_err_DEPTH / factor][15:8]);
          end
          if ((s2m_err_DEPTH - 1) % factor == 0) begin
              $fdisplay(fp,"0x%x",mem_s2m_err[s2m_err_DEPTH / factor][7:0]);
          end
      end
      if (factor == 2) begin
          if ((s2m_err_DEPTH - 1) % factor == 0) begin
              $fdisplay(fp,"0x%x",mem_s2m_err[s2m_err_DEPTH / factor][15:0]);
          end
      end
      $fdisplay(fp, "[[/transaction]]");
      transaction_idx = transaction_idx + 1;
      $fclose(fp); 
      while (TRAN_control_start_in !== 1) begin
          @(posedge clk);
      end
  end 
end 
 
endmodule
