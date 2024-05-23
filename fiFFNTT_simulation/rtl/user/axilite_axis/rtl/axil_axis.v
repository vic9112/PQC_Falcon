// AXIL-AXIS (AA module) - AXILite-AXIS Protcol Conversion
//  Specification: https://github.com/bol-edu/fsic_fpga/blob/main/fsic-spec-dev/modules/FSIC-AXIS%20interface%20specification.md
// 
// - Simplify the design, no fifo
//   Assuming there is no pipeline ss->lm transaction
//   Assuming there is no pipeline ls->sm tranaction 
//   Assuming there is no concurrent ss, ls transaction, i.e. either ss, or ls transaction is only, it will stall the other.
// 
// - Support 
//   Axis-slave to Axilite Master (ss->lm -> sm) read/write 
//   Axilite slave to Axis-master (ls -> sm -> ss) read/write
//   mailbox - support on 8 DW register (DW#0 - FSIC, DW#1 - FPGA)
// 

//reg [6:0] ss_lm_fsm;
`define SS_IDLE             7'b0_0_0_0_0_0_0
`define SS_RD               7'b0_1_0_0_0_0_0
`define SS_WR_S1            7'b0_1_1_0_0_0_0
`define SS_WR_S2            7'b0_1_1_0_0_1_0
`define SS_WR_LM            7'b0_0_1_1_0_0_0
`define SS_WR_LM_AW         7'b1_0_1_1_0_0_0
`define SS_RD_LM_AR         7'b0_0_0_1_0_0_0
`define SS_RD_LM_R          7'b0_0_0_1_0_1_0
`define SS_RD_SM_RS         7'b0_0_0_0_1_0_0
`define SS_DONE             7'b0_0_0_0_0_0_1


module AXIL_AXIS #( parameter pADDR_WIDTH   = 12,
                    parameter pDATA_WIDTH   = 32
                  )
(

// Clock & Reset - only use axis_clk, axis_rst_n
  input  wire          axi_clk,
  input  wire          axi_reset_n,
  input  wire          axis_clk,
  input  wire          axis_rst_n,

// LM - Axilite Master
// LM AW Channel
  output wire          m_awvalid,
  output wire  [31: 0] m_awaddr,
  input  wire          m_awready,

// LM  W Channel
  output wire          m_wvalid,
  output wire  [31: 0] m_wdata,
  output wire   [3: 0] m_wstrb,    // follow axis 2nd cycle ss_tdata[31:28]
  input  wire          m_wready,

/// LM AR Channel
  output wire          m_arvalid,
  output wire  [31: 0] m_araddr,
  input  wire          m_arready,

// LM R Channel
  output wire          m_rready,
  input  wire          m_rvalid,
  input  wire  [31: 0] m_rdata,


// LS - Axilite Slave
// LS AW Channel
  output wire          s_awready,
  input  wire          s_awvalid,
  input  wire  [14: 0] s_awaddr,

// LS W Channel
  output wire          s_wready,
  input  wire          s_wvalid,
  input  wire  [31: 0] s_wdata,  
  input  wire   [3: 0] s_wstrb,

// LS AR Channel
  output wire          s_arready,
  input  wire          s_arvalid,
  input  wire  [14: 0] s_araddr,

 // LS R Channel
  output wire  [31: 0] s_rdata,
  output wire          s_rvalid,
  input  wire          s_rready,

// -- Stream Interface with Axi-Switch (AS)

// SS - Stream Slave
  input  wire  [31: 0] as_aa_tdata,
  input  wire   [3: 0] as_aa_tstrb,
  input  wire   [3: 0] as_aa_tkeep,
  input  wire          as_aa_tlast,
  input  wire          as_aa_tvalid,
  input  wire   [1: 0] as_aa_tuser,
  output  wire         aa_as_tready,

// SM - Stream Master
  output wire  [31: 0] aa_as_tdata,
  output wire   [3: 0] aa_as_tstrb,
  output wire   [3: 0] aa_as_tkeep,
  output wire          aa_as_tlast,
  output wire          aa_as_tvalid,
  output wire   [1: 0] aa_as_tuser,
  input  wire          as_aa_tready,

// Misc
  input  wire          cc_aa_enable,   // all Axilite Slave transaction should be qualified by cc_aa_enable
  output wire          mb_irq          // Generate interrupt only when mailbox write by remote, i.e. from Axi-stream
 
);
  localparam TUSER_AXIS = 2'b00;
  localparam TUSER_AXILITE_WRITE = 2'b01;
  localparam TUSER_AXILITE_READ_REQ = 2'b10;
  localparam TUSER_AXILITE_READ_CPL = 2'b11;

  localparam TID_DN_UP = 2'b00;
  localparam TID_DN_AA = 2'b01;
  localparam TID_UP_UP = 2'b00;
  localparam TID_UP_AA = 2'b01;
  localparam TID_UP_LA = 2'b10;

// naming rule
// r_   : registered/latched
// _n   : active low
// _cyc : transaction cycle 
// interface ports:
// - ss (stream slave)
// - sm (stream master)
// - ls (axilite slave)
// - lm (axilite master)
// cycle type indicators:
// - wr : write transaction
// - rd : read transaction
// - rs : read response

// aa_reset_n - AA module reset, active low
// 1. system reset
// 2. cc_aa_enable = 0 : if AA is not enable, treated as reset
wire aa_reset_n = axis_rst_n;

// move here for early declaraion before use it to avoid error in simulation
wire ss_sm_cyc;
wire ss_t2;
reg [6:0] ss_lm_fsm;
wire ss_lm_enable;
//
//   SS Cycle type - decode from tuser, refer to fsic-axis specification
//   tuser = 2'b00    - axis cycle, ignored, we don't handle pure axi-stream transaction
//   tuser = 2'b01    - axilite write - 2T  T1:address, T2:data
//   tuser = 2'b10    - axilite read - address
//   tuser = 2'b11    - axilite read - data response
// Note: we should use latched tuser ----
wire ss_axis_cyc    = (as_aa_tuser == 2'b00);    // actually, we won't receive this cycle, as should filter it out
wire ss_wr_cyc      = (as_aa_tuser == 2'b01);    // tready is return as long as address/data latch is ok (ss_w_addr_data_ok)
wire ss_rd_cyc      = (as_aa_tuser == 2'b10);    // tready is return as long as ss_rw_addr latch is ok
wire ss_rs_cyc      = (as_aa_tuser == 2'b11); 


// --------------------------------
// Internal States
// --------------------------------
// Data/Address latches
// As a slave, we will latch (save) address and data used for the master transaction later, example
// SS -> LM  write : latch address (1st T) and data (2nd T)
// SS -> LM  read :  latch address (1st T)
// LS -> SS  write : latch address (@awvalid), data (@wvalid)
// LS -> SS  read : latch address (@arvalid), data @(rready) 
//

// ----------------------------
// cycle tracking  - ss_cyc, ls_cyc
// ----------------------------
// ------  SS -> LM  -----------
//reg  ss_wr;                  // status: latched ss transaction is read(0) or write(1)
//wire ss_rd = ~ss_wr;
wire ss_cyc;                    // indicate there is ss_cyc pending, set by ss, reset by axil transaction complete
//wire lm_ready;                // axil master transaction complete, m_wready(write), m_rvalid(read)
//wire lm_done = lm_ready;    // same as lm_ready
// reg r_ss_rresp;               // ss read data is complete, generate sm response data ??

// LS -> SM
wire ls_wr;                // indicate ls transaction is read(0), write(1)
wire ls_cyc;               // ls cycle is ongoing
                            //   write -> until sm send out stream write
                            //   read  -> until ss receive tuser= 2'b11, read response data
//reg r_sm_done;              // sm write transferred, or sm read address sent
// reg r_ss_axil_rresp;        // r_ss  ??

// ----------------------------------
//  Lached Input address / data from SS, LS, LM (response data)
// ----------------------------------
// --- SS ------------
reg [31:0] r_ss_rw_addr;            // ss-axil address latch for read and write - shared
reg [31:0] r_ss_wdata;             // ss-axil data latch for write, 
                                    //    also used for ss-axil read response data, guarantee exclusive ss w/rs by not responding ss_ready
                                    //    if ss_cyc is on-going, don't asserts ss_tready
                                    // TODO: what happend if ls and ss with valid signal at the same T? add arbitraion for it.
reg [3:0]  r_ss_wstrb;               // ss-axil wstb latch - from SS 1T tdata[31:28]
reg [1:0]  r_tuser;                 // tuser is encoded with cycle type            


// reg [31:0] ss_rs_data;         // ss data for tuser = 2'b11, used as ls respond data, i.e. s_rdata
wire [31:0] ss_rs_data = r_ss_wdata;  // shared, guarantee exclusive ss w/rs by not responding ss_ready, the code may be confusing


// ---  LS -----------  Axilite Slave
// ls side latched address, data, or read data to send
reg [31:0] r_ls_rw_addr;            // ls address

reg [31:0] r_ls_wdata;              // ls write data
reg [3:0]  r_ls_wstrb;              // ls wstrb

// --- LM  ------------ Axilite Master
// lm side - latch read response data
reg [31:0] r_lm_rs_data;            // lm read response data 


// ----------------------------------
//  Module Interface signals - Address/Data to LM, SM from internal latched registers
// ---------------------------------


// ----  LM - Adddress/Data   - from SS latched address/data
assign m_awaddr = r_ss_rw_addr;
assign m_araddr = r_ss_rw_addr;
assign m_wdata  = r_ss_wdata;
assign m_wstrb  = r_ss_wstrb;


// 
// aa_internal - address hit internal aa configuration or mailbox
// From SS
// AA  'h3000_2xxx   r_ss_rw_addr[27:0]
// aa_reg (internal) a[27:0] = 28'h000_21xx
// aa_mbox           a[27:0] = 28'h000_20xx
// From LS
// use r_ls_rw_addr[11:0]
//    aa_reg   12'h1xx
//    aa_mbox  12'h0xx
// 
// From LS
//   - read ( AA, MBOX), Write AA   => no need trigger LS state machine
// From SS
//   - write/read AA  => no need to trigger SS state machine
//   - write Mbox
wire ss_aa_reg  = ( as_aa_tdata[27:8] == 20'h000_21 );   // xxxx_3xxx, xxxx_2xxx only compare addr[11:8];
wire ss_aa_mbox = ( as_aa_tdata[27:8] == 20'h000_20 );  

wire ss_aa_reg_latch = ( r_ss_rw_addr[27:8] == 20'h000_21 );   // xxxx_3xxx, xxxx_2xxx only compare addr[11:8];
wire ss_aa_mbox_latch = ( r_ss_rw_addr[27:8] == 20'h000_20 );  

wire ls_aa_reg  = ( r_ls_rw_addr[14:12] == 3'b010 && r_ls_rw_addr[11:8] == 4'h1);
wire ls_aa_mbox = ( r_ls_rw_addr[14:12] == 3'b010 && r_ls_rw_addr[11:8] == 4'h0 );

wire ls_aa_reg_lw  = ( s_awaddr[14:12] == 3'b010 && s_awaddr[11:8] == 4'h1 );   //ls_aa_reg local write
wire ls_aa_mbox_lw = ( s_awaddr[14:12] == 3'b010 && s_awaddr[11:8] == 4'h0 );   //s_aa_mbox local write

wire ls_aa_reg_lr  = ( s_araddr[14:12] == 3'b010 && s_araddr[11:8] == 4'h1 );   //ls_aa_reg local read
wire ls_aa_mbox_lr = ( s_araddr[14:12] == 3'b010 && s_araddr[11:8] == 4'h0 );   //s_aa_mbox local read

// ---------------------------------------
// AA-register
// - Memory-mapped Address (32'h3000_2000 ~'h3000_2xxx) - cc_aa_enable
    //--------------------------------------------------
    // for AA_REG description
    // offset 0-3 (32bit):
    //   bit 0: Enable Interrupt
    //       0 = disable interrupt signal
    //       1 = enable interrupt signal
    // offset 4-7 (32bit):
    //   bit 0: Interrupt Status
    //       1: interrupt has occurred
    //       0: no interrupt
    //--------------------------------------------------
reg intr_enable;  // rw: offset:0, bit0  - use addr[2] to select
reg intr_status;  // ro: offset:4, bit0

// ---------------------------------------
// Mailbox 
// - Memory-mapped address (32'h3000_2000~3000_201f)
//   Use address[4:2]  to index mb_regs
// ---------------------------------------
// parameter MBOX_BASE_  
reg [31:0] mb_regs[7:0];    // only support 8*DW to save space


/// wire [31:0] ss_aa_internal_data;        // ss won't read aa internal data

// for local read - r_ls_rw_addr is valid
wire [31:0] ls_aa_internal_data = ls_aa_reg ? (r_ls_rw_addr[2] ? {31'b0, intr_status}
                                                               : {31'b0, intr_enable})                                             
                                            : mb_regs[r_ls_rw_addr[4:2]];


// for SS read - not verify yet - 
// Question : how to read AA_reg target in remote side? - Limitation
// issue: local_ls read address in AA_reg range will cliam and return locally, do not send to remote side.
//   provide below solution
//   add a input signal named aa_type, AA in soc(0) or fpga(1)
//      for aa_type = soc(0)  then AA_reg in 15'h21xx 
//      for aa_type = fpga(1) then AA_reg in 15'h22xx 
//   for example : 
//         in fpga, ls addr = 15'h21xx for remote AA and send to remote side
//         in fpga, ls addr = 15'h22xx then cliam and return locally
//         in soc,  ls addr = 15'h21xx then cliam and return locally
//         in soc,  ls addr = 15'h22xx for remote AA and send to remote side
// note: mailbox do not support remote read, only support local write and send a mailbox message to remote side. no need different address in soc and fpga
//        mailbox address = 15'h20xx in both soc and fpga
wire [31:0] sm_aa_internal_data = ss_aa_reg ? (r_ss_rw_addr[2] ? {31'b0, intr_status}
                                                                : {31'b0, intr_enable})
                                            : mb_regs[r_ss_rw_addr[4:2]];
// ----- LS - Data Source
// 1. SS RS data  - ss_rs_data 
// 2. ls_aa_internal data
assign s_rdata  = (ls_aa_reg | ls_aa_mbox) ?  ls_aa_internal_data  // for local_ls read
                                              : ss_rs_data;        // from SS read-response tuser=11

// ----------------------------
// mb_regs, intr_status, inter_enalbe
// LS write - s_wready qualify by ls_aa_reg, ls_aa_mbox
// SS write - ss_t2 @ clk  qualify by ss_aa_reg ls_aa_mbox

reg r_ss_t2;   // one cycle after ss_t2 to ensure ss address/data is valid
always @(posedge axis_clk or negedge axis_rst_n) begin
    if(! axis_rst_n)  begin
        r_ss_t2 <= 0;
    end else begin
        r_ss_t2 <= ss_t2;
    end
end

// 
// intr_status
//  set by ss write to mbox
//  reset by ls write to status with 1  (write one to clear)
// 
always @(posedge axis_clk or negedge axis_rst_n) begin
    if( !axis_rst_n ) begin
        intr_status <= 0;
    end else begin

        // intr_staus
        if(s_wready & ls_aa_reg_lw & s_awaddr[2] & s_wdata[0] & & s_wstrb[0]) //local write one to clear
            intr_status <= 1'b0;    // write-one-to clear 
        else if( r_ss_t2  & ss_aa_mbox_latch & (|r_ss_wstrb) ) //Remote write any mbox register to set
            intr_status <= 1'b1;    // mbox write set status
        else     
            intr_status <= intr_status;

    end
end 

always @(posedge axis_clk or negedge axis_rst_n) begin
    if( !axis_rst_n ) begin
        intr_enable <= 0;
    end else begin

        // intr_enable
        if(s_wready & ls_aa_reg_lw & !s_awaddr[2] & s_wstrb[0])    //local access 
            intr_enable <= s_wdata[0];
        else if( r_ss_t2  & ss_aa_reg_latch & !r_ss_rw_addr[2] & r_ss_wstrb[0])  //Remote access 
            intr_enable  <= r_ss_wdata[0];
        else 
            intr_enable <= intr_enable ;

        // mbox
        if(s_wready & ls_aa_mbox_lw) begin 
            if ( s_wstrb[0] ) mb_regs[s_awaddr[4:2]][7:0] <= s_wdata[7:0];
            else              mb_regs[s_awaddr[4:2]][7:0] <= mb_regs[s_awaddr[4:2]][7:0];
            if ( s_wstrb[1] ) mb_regs[s_awaddr[4:2]][15:8] <= s_wdata[15:8];
            else              mb_regs[s_awaddr[4:2]][15:8] <= mb_regs[s_awaddr[4:2]][15:8];
            if ( s_wstrb[2] ) mb_regs[s_awaddr[4:2]][23:16] <= s_wdata[23:16];
            else              mb_regs[s_awaddr[4:2]][23:16] <= mb_regs[s_awaddr[4:2]][23:16];
            if ( s_wstrb[3] ) mb_regs[s_awaddr[4:2]][31:24] <= s_wdata[31:24];
            else              mb_regs[s_awaddr[4:2]][31:24] <= mb_regs[s_awaddr[4:2]][31:24];
        end    
        else if( r_ss_t2  & ss_aa_mbox_latch ) begin
            `ifdef SIMULATION
              $display($time, "=> detect ss_aa_mbox_latch write %x, %x, %x", r_ss_rw_addr, r_ss_wstrb, r_ss_wdata);        
            `endif //SIMULATION  
            if ( r_ss_wstrb[0] ) mb_regs[r_ss_rw_addr[4:2]][7:0] <= r_ss_wdata[7:0];
            else              mb_regs[r_ss_rw_addr[4:2]][7:0] <= mb_regs[r_ss_rw_addr[4:2]][7:0];
            if ( r_ss_wstrb[1] ) mb_regs[r_ss_rw_addr[4:2]][15:8] <= r_ss_wdata[15:8];
            else              mb_regs[r_ss_rw_addr[4:2]][15:8] <= mb_regs[r_ss_rw_addr[4:2]][15:8];
            if ( r_ss_wstrb[2] ) mb_regs[r_ss_rw_addr[4:2]][23:16] <= r_ss_wdata[23:16];
            else              mb_regs[r_ss_rw_addr[4:2]][23:16] <= mb_regs[r_ss_rw_addr[4:2]][23:16];
            if ( r_ss_wstrb[3] ) mb_regs[r_ss_rw_addr[4:2]][31:24] <= r_ss_wdata[31:24];
            else              mb_regs[r_ss_rw_addr[4:2]][31:24] <= mb_regs[r_ss_rw_addr[4:2]][31:24];
        end    
    end
end

// --- mb_irq ---
// asserts mb_irq when  intr_status = 1 & intr_enable
//
assign mb_irq = intr_status & intr_enable; 

// -------------------------------------------------------
// LS State Machine - Tracking LS -> SM Conversion
// Note： LS State machine & SS State machine can not run currently
//  LS read AA reg + MBOX LS_RD -> LS_R_DONE
//  LS write AA_reg       LS_WR -> LS_W_DONE
//  LS write AA_MBOX   pass to FPGA -> LS_WR_SM1
// -------------------------------------------------------
reg [6:0] ls_sm_fsm;

//
// sm fsm state encoding is used to generate related control signal
//                         {rd_ss_wait_rs, mbox, ls_cyc, ls_wr, ls_sm_tvalid_cyc, w1/w2 or ss_read, done}
`define LS_IDLE             7'b0_0_0_0_0_0_0              
`define LS_RD               7'b0_0_1_0_0_0_0
`define LS_WR               7'b0_0_1_1_0_0_0
`define LS_WR_SM1           7'b0_0_1_1_1_0_0
`define LS_WR_SM2           7'b0_0_1_1_1_1_0
`define LS_RD_SM_REQ        7'b0_0_1_0_1_1_0
`define LS_RD_SS_WAIT_RS    7'b1_0_1_0_0_0_0
`define LS_R_DONE           7'b0_0_1_0_0_0_1
`define LS_W_DONE           7'b0_0_1_1_0_0_1
`define LS_MBOXW            7'b0_1_1_1_0_0_1
`define LS_MBOXW_SM1        7'b0_1_1_1_1_0_0
`define LS_MBOXW_SM2        7'b0_1_1_1_1_1_0

wire sm_tvalid;

// cycle indicator and control signal generaion
wire   ls_mbox = ls_sm_fsm[5];
assign ls_cyc = ls_sm_fsm[4];
wire   ls_only_cyc = ls_sm_fsm[4] & !ls_sm_fsm[2];  // LS_RD, LS_WR 
assign ls_wr  = ls_sm_fsm[3];
wire   ls_sm_tvalid_cyc = ls_sm_fsm[2];
wire   sm_wr_t1 = (ls_sm_fsm == `LS_WR_SM1) || (ls_sm_fsm == `LS_MBOXW_SM1);
wire   sm_wr_t2 = (ls_sm_fsm == `LS_WR_SM2) || (ls_sm_fsm == `LS_MBOXW_SM2);
wire   sm_read_t = (ls_sm_fsm == `LS_RD_SM_REQ);
wire   ls_r_done = (ls_sm_fsm == `LS_R_DONE);
wire   ls_done  = ls_sm_fsm[0];
wire   ls_rd_ss_wait_rs = (ls_sm_fsm == `LS_RD_SS_WAIT_RS);


// interface signals  - axilite slave
assign s_awready = ls_cyc & ls_wr & ls_done;
assign s_wready  = s_awready;
assign s_arready  = (ls_sm_fsm == `LS_RD);
assign s_rvalid = ls_cyc & !ls_wr & ls_done;

// interface signals  - axis master
assign aa_as_tvalid = sm_tvalid;                           //sm_tvalid = ss_sm_cyc | ls_sm_tvalid_cyc

// ---- SM - data has several sources
// 1. LS write - 1st T = r_ls_wstrb + r_ls_rw_addr
//               2nd T = r_ls_wdata
// 2. LS read = 4'b0000 + r_ls_rw_addr
// 3. SS read response  : r_lm_rs_data
// 
assign aa_as_tdata =  ({32{sm_wr_t1}}  & {r_ls_wstrb, r_ls_rw_addr[27:0]} )     // from local to remote write(include mbox write), local_ls write t1 -> local_sm write 
                   |  ({32{sm_wr_t2}}  & r_ls_wdata )                           // from local to remote write(include mbox write), local_ls write t2 -> local_sm write 
                   |  ({32{sm_read_t}}  & {4'b0000, r_ls_rw_addr[27:0]} )       // from local to remote read, local_ls read -> local_sm read
                   |  ({32{ss_sm_cyc & !ss_aa_reg_latch}} & r_lm_rs_data )          // remote_ls read -> remote_sm read -> local_ss read -> local_lm read_resp -> local_sm read_resp
                   |  ({32{ss_sm_cyc  &  ss_aa_reg_latch}} & sm_aa_internal_data)   // remote_ls read -> remote_sm read -> local_ss read -> local_lm read_resp -> local_sm read_resp
                   ;

assign aa_as_tstrb = (ls_wr? r_ls_wstrb : 4'b1111);     //from local to remote write use r_ls_wstrb, local_ls write -> local_sm write 
                                                          //from local to remote read use 4'b1111 ? local_ls read -> local_sm read
                                                          //from remote remote_ls read  -> remote_sm read -> local_ss read -> local_lm read_resp -> local_sm read_resp use 4'b1111
assign aa_as_tkeep = 0;
assign aa_as_tlast = 1'b1;
assign aa_as_tuser = ls_wr? TUSER_AXILITE_WRITE : 
                              (sm_read_t? TUSER_AXILITE_READ_REQ : TUSER_AXILITE_READ_CPL) ;


// control signals
// {ls_sm_enable, ls_sm_wr, sm_ready, sm_rs_ready}
// Note: LS, SS State machine is exclusive - when ss_cyc is ongoing then pending ls_sm_enable until ss_cyc done.
// SS state machine with higher priority then LS State machine when both in IDLE state and try to move to next state.
wire ls_sm_enable = !((ss_lm_fsm == `SS_IDLE) & ss_lm_enable) & !ss_cyc & cc_aa_enable & ((s_awvalid & s_wvalid) | s_arvalid);   // axilite AW & W AR request asserts
wire ls_sm_wr = s_awvalid;                  // axilite AW - write transaction
wire sm_ready = as_aa_tready;               // sm bus ready if write 2 cycle
wire ss_rs_ready = as_aa_tvalid & ss_rs_cyc; // axis slave receives read completion
wire ls_ready  = ls_sm_wr ? ls_done : ls_done & s_rready;      // ls read need to wait s_rready

// State Machine - ls_sm_fsm
always @(posedge axis_clk or negedge axis_rst_n) begin   // asynchronous reset
    if( !axis_rst_n ) begin
        ls_sm_fsm <= `LS_IDLE;
    end else begin
        case(ls_sm_fsm) 
            `LS_IDLE : 
                if(ls_sm_enable) begin
                    if(ls_sm_wr) ls_sm_fsm <= `LS_WR;
                    else         ls_sm_fsm <= `LS_RD;
                end else begin
                                ls_sm_fsm <= `LS_IDLE;
                end
            `LS_WR:  
                if(ls_aa_reg_lw)          ls_sm_fsm <= `LS_W_DONE;    
                else if(ls_aa_mbox_lw)    ls_sm_fsm <= `LS_MBOXW;    
                else                      ls_sm_fsm <= `LS_WR_SM1;
            `LS_WR_SM1: 
                if(sm_ready)    ls_sm_fsm <= `LS_WR_SM2;
                else            ls_sm_fsm <= `LS_WR_SM1;
            `LS_WR_SM2:
                if(sm_ready)    ls_sm_fsm <= `LS_W_DONE;
                else            ls_sm_fsm <= `LS_WR_SM2;
            `LS_RD:             
                if( ls_aa_reg_lr || ls_aa_mbox_lr ) ls_sm_fsm <= `LS_R_DONE; 
                else                               ls_sm_fsm <= `LS_RD_SM_REQ;
            `LS_RD_SM_REQ:                  // send 1T read request
                if(sm_ready)    ls_sm_fsm <= `LS_RD_SS_WAIT_RS;
                else            ls_sm_fsm <= `LS_RD_SM_REQ;
            `LS_RD_SS_WAIT_RS:
                if(ss_rs_ready) ls_sm_fsm <= `LS_R_DONE;
                else            ls_sm_fsm <= `LS_RD_SS_WAIT_RS;
            `LS_R_DONE:           
                if(ls_ready)    ls_sm_fsm <= `LS_IDLE;
                else            ls_sm_fsm <= `LS_R_DONE;
            `LS_W_DONE:           
                if(ls_ready)    ls_sm_fsm <= `LS_IDLE;
                else            ls_sm_fsm <= `LS_W_DONE;
            `LS_MBOXW:           
                if(ls_ready)    ls_sm_fsm <= `LS_MBOXW_SM1;
                else            ls_sm_fsm <= `LS_MBOXW;
            `LS_MBOXW_SM1: 
                if(sm_ready)    ls_sm_fsm <= `LS_MBOXW_SM2;
                else            ls_sm_fsm <= `LS_MBOXW_SM1;
            `LS_MBOXW_SM2:
                if(sm_ready)    ls_sm_fsm <= `LS_IDLE;
                else            ls_sm_fsm <= `LS_MBOXW_SM2;
            default:            ls_sm_fsm <= `LS_IDLE;
        endcase
    end
end 



// ------------------------------------------------------
// SS State machine - tracking SS -> LM 
//reg [6:0] ss_lm_fsm;

//
// sm fsm state encoding is used to generate related control signal
//  SS read AA inernal  SS_RD     -> SS_RD_SM_RS
//  SS write AA internal SS_WR_S2 -> SS_DONE
// 
/*
                          {ss_only_cyc, ss_wr, lm_cyc, ss_sm_cyc, w1/w2 or RD_LM_AR/R, done}
`define SS_IDLE             7'b0_0_0_0_0_0_0
`define SS_RD               7'b0_1_0_0_0_0_0
`define SS_WR_S1            7'b0_1_1_0_0_0_0
`define SS_WR_S2            7'b0_1_1_0_0_1_0
`define SS_WR_LM            7'b0_0_1_1_0_0_0
`define SS_WR_LM_AW         7'b1_0_1_1_0_0_0
`define SS_RD_LM_AR         7'b0_0_0_1_0_0_0
`define SS_RD_LM_R          7'b0_0_0_1_0_1_0
`define SS_RD_SM_RS         7'b0_0_0_0_1_0_0
`define SS_DONE             7'b0_0_0_0_0_0_1
*/

// cycle indicator and control signal generaion
assign ss_cyc = ss_lm_fsm[5] | ss_lm_fsm[3] | ss_lm_fsm[2];   //ss_only_cyc + lm_cyc + ss_sm_cyc
wire ss_only_cyc = ss_lm_fsm[5];
wire ss_wr  = ss_lm_fsm[4];
wire lm_cyc = ss_lm_fsm[3];
wire   lm_ar_cyc = ( ss_lm_fsm == `SS_RD_LM_AR);
assign ss_sm_cyc = ss_lm_fsm[2];
wire ss_t1  = ss_wr & !ss_lm_fsm[1];
assign ss_t2  = ss_wr & ss_lm_fsm[1];
wire ss_done  = ss_lm_fsm[0];

//wire ss_rd = ~ss_wr;

// combine from lm->sm
assign sm_tvalid = ss_sm_cyc | ls_sm_tvalid_cyc;    //from ss_sm_cyc is from remote, ls_sm_tvalid_cyc is from local

// interface signals - axis slave
// 1. remote_sm to local_ss read req
// 2. remote_sm to local_ss write req (include remote to local mbox write)
// 3. remote_sm read_resp -> local_ss read_resp
//    - local_ls read -> loca_sm read -> remote_ss read -> remote_lm read_resp -> remote_sm read_resp -> local_ss read_resp
assign aa_as_tready = ss_only_cyc | ls_r_done;

// interface signal - axis master
//   assign aa_as_tdata 


reg r_m_arvalid;
// set by lm_cyc & !ss_wr;
// clear by m_arready
always @(posedge axis_clk or negedge axis_rst_n) begin   
    if( !axis_rst_n ) r_m_arvalid <= 1'b0;
    else if (r_m_arvalid == 1'b0 &&  lm_ar_cyc && !ss_wr )  r_m_arvalid <= 1'b1;
    else if ( (r_m_arvalid == 1'b1) && (m_arready == 1'b1) ) r_m_arvalid <= 1'b0;
    else r_m_arvalid <= r_m_arvalid;
end

reg r_m_rready;
// set by lm_cyc & !ss_wr;
// clear by m_rvalid
always @(posedge axis_clk or negedge axis_rst_n) begin   
    if( !axis_rst_n ) r_m_rready <= 1'b0;
    else if (r_m_rready == 1'b0 &&  lm_ar_cyc && !ss_wr )  r_m_rready <= 1'b1;
    else if ( (r_m_rready == 1'b1) && (m_rvalid == 1'b1) ) r_m_rready <= 1'b0;
    else r_m_rready <= r_m_rready;
end

// LM interface signal - lm master
//support slave device in lm interface assert m_awready then assert m_wready or at the same clock.
assign m_awvalid = lm_cyc & ss_wr & (ss_lm_fsm == `SS_WR_LM);
assign m_wvalid  = lm_cyc & ss_wr & ( (ss_lm_fsm == `SS_WR_LM) | (ss_lm_fsm == `SS_WR_LM_AW) );
assign m_arvalid = r_m_arvalid; // m_arvalid de-assert when detect m_arready assert
assign m_rready  = r_m_rready;  // m_rready de-assert when detect m_rvalid assert


// control signals
// Note:  1. LS, SS state mchine are exclusive
//        2. limitation: dead lock issue, if remote side send a read request and ss_aa_reg=1. current design do not assert tready in SS then dead lock.
//        3. dead lock issue - both side issue mailbox write
//            workaround - SS state mahcine from IDLE to next state when ss_wr_cyc=1

// ss_lm_enable in below conditions
// 1. no on going ls cycle and current request from remote sm to local ss read cycle address not in aa_reg range.
//    - for remote sm to local ss read_resp cycle (ss_rs_cyc) do not let ss_lm_enable=1
// 2. remote sm to local ss is write cycle 
//
// limitation : dead lock when both side issue cfg read to remote side at the same time
// - for example 
//    A. soc  issue cfg read request to fpga then the soc  ls_cyc=1 and isseu read req from soc's  SM to fpga's ss.
//    in soc's view point, the ls_sys=1 and ss_rd_cyc=1 then keep ss_lm_enable = 0
//    B. fpga issue cfg read request to soc  then the fpga ls_cyc=1 and isseu read req from fpga's SM to soc's ss.
//    in fpga's view point, the ls_sys=1 and ss_rd_cyc=1 then keep ss_lm_enable = 0
//    - dead lock in both side, the ss_lm_enable keep = 0.
// - usage : in most case only fpga need issue remote cfg read for debugging.
// - improve solution: use mailbox as a communication chaneel for sw to grant/release the remote cfg access right. The spec is defeined by software if need.(TBD)

assign ss_lm_enable = (!ls_cyc & ss_rd_cyc & !ss_aa_reg & as_aa_tvalid ) || (ss_wr_cyc & as_aa_tvalid );

        
// State Machine - ss_lm_fsm
always @(posedge axis_clk or negedge axis_rst_n) begin   // asynchronous reset
    if( !axis_rst_n ) begin
        ss_lm_fsm <= `SS_IDLE;
    end else begin
        case(ss_lm_fsm) 
            `SS_IDLE: 
                if(ss_lm_enable) begin
                    if(ss_wr_cyc)             ss_lm_fsm <=  `SS_WR_S1;
                    else if(ss_rd_cyc)        ss_lm_fsm <= `SS_RD;
                    else                      ss_lm_fsm <= `SS_IDLE;
                end 
                else begin
                    ss_lm_fsm <= `SS_IDLE;
                end
            `SS_WR_S1:  
                if(as_aa_tvalid)   ss_lm_fsm <= `SS_WR_S2;
                else               ss_lm_fsm <= `SS_WR_S1;
            `SS_WR_S2:
                if(as_aa_tvalid)   begin
                    if(ss_aa_reg_latch | ss_aa_mbox_latch)  ss_lm_fsm <= `SS_DONE;
                    else                        ss_lm_fsm <= `SS_WR_LM;
                end 
                else  begin 
                    ss_lm_fsm <= `SS_WR_S2;
                end
            `SS_WR_LM:
                if(m_awready && m_wready)       ss_lm_fsm <= `SS_DONE;      
                else if(m_awready)              ss_lm_fsm <= `SS_WR_LM_AW;
                else                            ss_lm_fsm <= `SS_WR_LM;
            `SS_WR_LM_AW:
                if(m_wready)        ss_lm_fsm <= `SS_DONE;
                else                ss_lm_fsm <= `SS_WR_LM_AW;
            `SS_RD:
                if(ss_aa_reg | ss_aa_mbox) ss_lm_fsm <= `SS_RD_SM_RS;
                else                      ss_lm_fsm <= `SS_RD_LM_AR;    //read cfg target not in AA
            `SS_RD_LM_AR:
                if( !m_arready )                ss_lm_fsm <= `SS_RD_LM_AR;
                else if( m_arready & !m_rvalid ) ss_lm_fsm <= `SS_RD_LM_R;
                else                            ss_lm_fsm <= `SS_RD_SM_RS;
            `SS_RD_LM_R:
                if( !m_rvalid )      ss_lm_fsm <= `SS_RD_LM_R;
                else                 ss_lm_fsm <= `SS_RD_SM_RS;
            `SS_RD_SM_RS:
                if( !as_aa_tready)   ss_lm_fsm <= `SS_RD_SM_RS;
                else                 ss_lm_fsm <= `SS_DONE;
            `SS_DONE:               ss_lm_fsm <= `SS_IDLE;
            default:            ss_lm_fsm <= `SS_IDLE;
        endcase
    end
end        


// ------------------------------------------------------
//  Address / Data Storage
// ------------------------------------------------------

// ---------   SS    ---------------
// SS - r_ss_rw_addr, r_ss_wdata, r_ss_wstrb, r_tuser
//  - ss side address/data latch
// Note: it does not need reset, why ? when it is used, the content will be valid anyway
// -------------------------

always @( posedge axis_clk ) begin              // T1 - address
    if( ss_only_cyc && (!ss_wr | ss_t1) ) begin     //ss_only_cyc = aa_as_tready
                                                        //latch addr, strb and user when read or ss_t1
        r_ss_rw_addr <= as_aa_tdata[27:0] | 32'h3000_0000;  //for received cfg R/W request in ss, update address bit[31:28]= 4'h3 in local for send to lm connect to config control.
        r_ss_wstrb <= as_aa_tdata[31:28];                          //how to use as_aa_tstrb?
        r_tuser <= as_aa_tuser;
    end else begin
        r_ss_rw_addr <= r_ss_rw_addr;
        r_ss_wstrb <= r_ss_wstrb;
        // r_tuser <= as_aa_tuser;
        r_tuser <= r_tuser;
    end
end

//r_ss_wdata come from below source
// 1. SS write - r_ss_wdata come from as_aa_tdata
//    when remote_ls write -> remote_sm write t2 -> local_ss write t2
// 2. SS read_resp r_ss_wdata come from as_aa_tdata
//    when local_ls read -> local_sm read -> remote_ss read -> remote_lm read_resp -> remote_sm read_resp -> local_ss read_resp

always @(posedge axis_clk) begin                // T2 - data
    if( ( ss_only_cyc && ss_t2 ) || (as_aa_tvalid && ls_rd_ss_wait_rs ) )     //ss_only_cyc = aa_as_tready
                                                                                  //early capture data when as_aa_tvalid
          r_ss_wdata <= as_aa_tdata;                      //ss_rs_data = r_ss_wdata, it is share. 
    else  r_ss_wdata <= r_ss_wdata;
end


// ----------  LS     ---------------------------
// r_ls_rw_addr   - LS address    @awvaid, arvalid
// r_ls_wdata       - LS write data @wvalid
// r_ls_wstrb      - ls write strb @awvalid
// 

always @( posedge axis_clk ) begin
    if( ls_only_cyc & (s_awvalid | s_arvalid))  begin   //use valid to latch addr.
        r_ls_rw_addr <= s_awvalid ? s_awaddr : s_araddr;   //r_ls_rw_addr[31:15] awlays = 0
    end else begin
        r_ls_rw_addr <= r_ls_rw_addr; 
    end
end

always @( posedge axis_clk ) begin
    if( ls_only_cyc & s_wvalid )  begin
        r_ls_wstrb <= s_wstrb;
        r_ls_wdata <= s_wdata;
    end else begin
        r_ls_wstrb <= r_ls_wstrb;
        r_ls_wdata <= r_ls_wdata;
    end
end


// ---------- LM   --------------------
//  r_lm_rs_data           // latch read response data in LM used for SM to return RS data
//
always @( posedge axis_clk ) begin
    if( m_rvalid && m_rready ) begin   
        r_lm_rs_data <= m_rdata;
    end else begin
        r_lm_rs_data <= r_lm_rs_data;
    end
end
 

endmodule // AXIL_AXIS







