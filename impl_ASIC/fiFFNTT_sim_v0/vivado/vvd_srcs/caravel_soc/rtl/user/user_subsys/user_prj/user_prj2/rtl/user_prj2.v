// This code snippet was auto generated by xls2vlog.py from source file: ./user_project_wrapper.xlsx
// User: josh
// Date: Sep-22-23



module USER_PRJ2 #( parameter pUSER_PROJECT_SIDEBAND_WIDTH   = 5,
          parameter pADDR_WIDTH   = 12,
                   parameter pDATA_WIDTH   = 32
                 )
(
  output wire                        awready,
  output wire                        arready,
  output wire                        wready,
  output wire                        rvalid,
  output wire  [(pDATA_WIDTH-1) : 0] rdata,
  input  wire                        awvalid,
  input  wire                [11: 0] awaddr,
  input  wire                        arvalid,
  input  wire                [11: 0] araddr,
  input  wire                        wvalid,
  input  wire                 [3: 0] wstrb,
  input  wire  [(pDATA_WIDTH-1) : 0] wdata,
  input  wire                        rready,
  input  wire                        ss_tvalid,
  input  wire  [(pDATA_WIDTH-1) : 0] ss_tdata,
  input  wire                 [1: 0] ss_tuser,
    `ifdef USER_PROJECT_SIDEBAND_SUPPORT
  input  wire                 [pUSER_PROJECT_SIDEBAND_WIDTH-1: 0] ss_tupsb,
  `endif
  input  wire                 [3: 0] ss_tstrb,
  input  wire                 [3: 0] ss_tkeep,
  input  wire                        ss_tlast,
  input  wire                        sm_tready,
  output wire                        ss_tready,
  output wire                        sm_tvalid,
  output wire  [(pDATA_WIDTH-1) : 0] sm_tdata,
  output wire                 [2: 0] sm_tid,
  `ifdef USER_PROJECT_SIDEBAND_SUPPORT
  output  wire                 [pUSER_PROJECT_SIDEBAND_WIDTH-1: 0] sm_tupsb,
  `endif
  output wire                 [3: 0] sm_tstrb,
  output wire                 [3: 0] sm_tkeep,
  output wire                        sm_tlast,
  output wire                        low__pri_irq,
  output wire                        High_pri_req,
  output wire                [23: 0] la_data_o,
  input  wire                        axi_clk,
  input  wire                        axis_clk,
  input  wire                        axi_reset_n,
  input  wire                        axis_rst_n,
  input  wire                        user_clock2,
  input  wire                        uck2_rst_n
);








////////////////////////// axi- lite part


wire awvalid_in;
wire wvalid_in;

//write addr channel
assign awvalid_in	= awvalid; 
wire awready_out;
assign awready = awready_out;

//write data channel
assign 	wvalid_in	= wvalid;
wire wready_out;
assign wready = wready_out;

// if both awvalid_in=1 and wvalid_in=1 then output awready_out = 1 and wready_out = 1
assign awready_out = (awvalid_in && wvalid_in) ? 1 : 0;
assign wready_out = (awvalid_in && wvalid_in) ? 1 : 0;


//write register   // to let RESET State go back to Command state
/*always @(posedge axi_clk or negedge axi_reset_n)  begin
  if ( !axi_reset_n ) begin
    reg_ap_control         <= 0;

  end else begin
    if ( awvalid_in && wvalid_in ) begin		//when awvalid_in=1 and wvalid_in=1 means awready_out=1 and wready_out=1
       if  (awaddr[11:0] == 12'h000 ) begin //offset 0
      
       end 
       else begin
       end
    end
  end
end
*/

reg [5:0] state,next_state;
//read register
reg [(pDATA_WIDTH-1) : 0] rdata_tmp;
assign arready = 1; //always assigned to 1, limitation: only support 1T in arvalid, if master issue 2T in arvalid then only 1st raddr is captured.
reg rvalid_out ;
assign rvalid = rvalid_out;
assign rdata =  rdata_tmp;
reg rd_state;
reg rd_next_state;
reg [pADDR_WIDTH-1:0] rd_addr;

////
always @(posedge axi_clk or negedge axi_reset_n)  begin
  if ( !axi_reset_n ) 
    rd_state <= RD_IDLE;
  else
    rd_state <= rd_next_state;
end

localparam	RD_IDLE = 1'b0;
localparam	RD_ADDR_DONE = 1'b1;

always@(*)begin
  case(rd_state)
    RD_IDLE:
      if(arvalid && arready) rd_next_state = RD_ADDR_DONE;
      else      rd_next_state = RD_IDLE;
    RD_ADDR_DONE:
      if(rready && rvalid_out) rd_next_state = RD_IDLE;
      else    rd_next_state = RD_ADDR_DONE;
    default:rd_next_state = RD_IDLE;
  endcase
end 

always @(posedge axi_clk or negedge axi_reset_n)  begin
  if ( !axi_reset_n ) begin
        rd_addr <= 0;
	rvalid_out <= 0;
  end	
  else begin
    if (rd_state == RD_IDLE )
	  if(arvalid && arready) begin
		rd_addr <= araddr;
		rvalid_out <= 1;
	  end	
	if (rd_state == RD_ADDR_DONE ) 
	  if(rready && rvalid_out)
		rvalid_out <= 0;
  end	
end

////
always @* begin
  if      (rd_addr[11:0] == 12'h000) rdata_tmp = (state==RESET);
  else                               rdata_tmp = 0;
end



//////////////////////////////////////////
assign sm_tid        = 3'b0;
`ifdef USER_PROJECT_SIDEBAND_SUPPORT
  assign sm_tupsb      = 5'b0;
`endif
assign sm_tstrb      = 4'b0;
assign sm_tkeep      = 1'b0;
assign sm_tlast      = 1'b0;
assign low__pri_irq  = 1'b0;
assign High_pri_req  = 1'b0;
assign la_data_o     = 24'b0;




wire        in_ramf_en;
wire [63:0] in_ramf_q;
wire        in_ramf_we;
wire [63:0] in_ramf_d;
wire [9:0]  in_ramf_adr;

wire        in_ramu_en;
wire [15:0] in_ramu_q;
wire        in_ramu_we;
wire [15:0] in_ramu_d;
wire [9:0]  in_ramu_adr;


wire        ram0_en;
wire [63:0] ram0_q;
wire        ram0_we;
wire [63:0] ram0_d;
wire [9:0]  ram0_adr;

localparam	Command   = 6'd0;
localparam	IN_COPY   = 6'd1;
localparam	PE1_RST   = 6'd2;
localparam	PE1_START = 6'd3;
localparam	PE1_DONE  = 6'd4;
localparam	PE2_RST   = 6'd5;
localparam	PE2_START = 6'd6;
localparam	PE2_DONE  = 6'd7;
localparam	PE3_RST   = 6'd8;
localparam	PE3_START = 6'd9;
localparam	PE3_DONE  = 6'd10;
localparam	PE4_RST   = 6'd11;
localparam	PE4_START = 6'd12;
localparam	PE4_DONE  = 6'd13;
localparam	PE5_RST   = 6'd14;
localparam	PE5_START = 6'd15;
localparam	PE5_DONE  = 6'd16;
localparam	PE6_RST   = 6'd17;
localparam	PE6_START = 6'd18;
localparam	PE6_DONE  = 6'd19;
localparam	PE7_RST   = 6'd20;
localparam	PE7_START = 6'd21;
localparam	PE7_DONE  = 6'd22;
localparam	PE8_RST   = 6'd23;
localparam	PE8_START = 6'd24;
localparam	PE8_DONE  = 6'd25;
localparam	PE9_RST   = 6'd26;
localparam	PE9_START = 6'd27;
localparam	PE9_DONE  = 6'd28;
localparam	PE10_RST   = 6'd29;
localparam	PE10_START = 6'd30;
localparam	PE10_DONE  = 6'd31;
localparam	OUT_COPY  = 6'd32;
localparam	RESET  = 6'd33;
localparam	F_WAIT1     = 4'd1;
localparam	F_OUT1     = 4'd2;
localparam	F_OUT2     = 4'd3;
localparam	U_OUT      = 4'd4;
wire [63:0] In_data;
wire In_vld;
wire In_rdy;	
wire [9:0] Inram_adr;
wire [63:0] Inram_d;
wire Inram_we;
reg reg_rst_incpopy;
reg reg_rst_out_stage;
reg [3:0] Out_state,next_Out_state;
reg [31:0]regx_data;
reg [31:0]regy_data;
reg [15:0]reg_mode1_in;
assign ss_tready=(state==Command)?1'b1:(state==IN_COPY)?In_rdy:1'b0;
assign In_vld=(state==IN_COPY)?ss_tvalid:1'b0;

In_copy In_copy (
  .clk(axi_clk), 
  .rst(reg_rst_incpopy||(state==RESET)), 
  .arst_n(axi_reset_n),
  .in_data_rsc_dat(ss_tdata),
  .in_data_rsc_vld(In_vld), //I
  .in_data_rsc_rdy(In_rdy), 
  .qin_rsc_adr(Inram_adr),
  .qin_rsc_d(Inram_d),
  .qin_rsc_we(Inram_we),
  .qin_rsc_q(),
  .qin_rsc_en(Inram_en),
  .qin_triosy_lz(),
  .ap_done_rsc_dat(), 
  .ap_done_rsc_vld(In_copy_done),
  .ap_done_rsc_rdy(1'b1),
  .ap_start_rsc_dat(1'b1),
  .ap_start_rsc_vld(state==IN_COPY),
  .ap_start_rsc_rdy(),
  .mode_rsc_dat(reg_mode1_in==2||reg_mode1_in==3)
);






wire        out_ramf_en;
wire [63:0] out_ramf_q;
wire        out_ramf_we;
wire [63:0] out_ramf_d;
wire [9:0]  out_ramf_adr;

wire        out_ramu_en;
wire [15:0] out_ramu_q;
wire        out_ramu_we;
wire [15:0] out_ramu_d;
wire [9:0]  out_ramu_adr;


wire        ram1_en;
wire [63:0] ram1_q;
wire        ram1_we;
wire [63:0] ram1_d;
wire [9:0]  ram1_adr;
wire ap_start_vld;   
wire ap_start_rdy;  
wire ap_done_vld;     
wire ap_done_rdy;     



reg choose_ram;

wire [9:0] line1_ramf_adr;
wire [63:0] line1_ramf_d;
wire line1_ramf_we;
wire [63:0] line1_ramf_we;
wire line1_ramf_en;
wire [9:0] line1_ramu_adr;
wire [15:0] line1_ramu_d;
wire line1_ramu_we;
wire [15:0] line1_ramu_q;
wire [63:0] line1_ramf_q;
wire line1_ramu_en;

always @(posedge axi_clk or negedge axi_reset_n)  begin
  if ( !axi_reset_n ) begin
    state <= 4'b0;
  end
  else
    state <= next_state;
end



always@(*)begin
  case(state)
    Command: 	if(ss_tvalid && ss_tdata[3:2]==2'b01) next_state = IN_COPY;
             	else      next_state = Command;
    IN_COPY: 	if(In_copy_done&&(reg_mode1_in==16'd2||reg_mode1_in==16'd3)) next_state = PE1_RST;
    		else if (In_copy_done&&(reg_mode1_in==16'd0||reg_mode1_in==16'd1)) next_state = PE2_RST;
                else      next_state = IN_COPY;// should change
    PE1_RST:    next_state = PE1_START;
    PE1_START:  if(ap_done_vld) next_state=PE1_DONE;
                else next_state = PE1_START;
    PE1_DONE:   next_state = PE2_RST;
    //////////////////  2rd
    PE2_RST:    next_state = PE2_START;//next_state = OUT_COPY;
    PE2_START:  if(ap_done_vld) next_state=PE2_DONE;
                else next_state = PE2_START;
    PE2_DONE:   next_state = PE3_RST;
    
    //////////////////  3rd
    PE3_RST:    next_state = PE3_START;
    PE3_START:  if(ap_done_vld) next_state=PE3_DONE;
                else next_state = PE3_START;
    PE3_DONE:   next_state = PE4_RST;
    
    PE4_RST:    next_state = PE4_START;
    PE4_START:  if(ap_done_vld) next_state=PE4_DONE;
                else next_state = PE4_START;
    PE4_DONE:   next_state = PE5_RST;
    
    PE5_RST:    next_state = PE5_START;
    PE5_START:  if(ap_done_vld) next_state=PE5_DONE;
                else next_state = PE5_START;
    PE5_DONE:   next_state = PE6_RST;
    
    PE6_RST:    next_state = PE6_START;
    PE6_START:  if(ap_done_vld) next_state=PE6_DONE;
                else next_state = PE6_START;
    PE6_DONE:   next_state = PE7_RST;
      
    PE7_RST:    next_state = PE7_START;
    PE7_START:  if(ap_done_vld) next_state=PE7_DONE;
                else next_state = PE7_START;
    PE7_DONE:   next_state = PE8_RST;
    
    PE8_RST:    next_state = PE8_START;
    PE8_START:  if(ap_done_vld) next_state=PE8_DONE;
                else next_state = PE8_START;
    PE8_DONE:   next_state = PE9_RST;
    
    PE9_RST:    next_state = PE9_START;
    PE9_START:  if(ap_done_vld) next_state=PE9_DONE;
                else next_state = PE9_START;
    PE9_DONE:   next_state = PE10_RST;
    
    PE10_RST:    next_state = PE10_START;
    PE10_START:  if(ap_done_vld) next_state=PE10_DONE;
                else next_state = PE10_START;
    PE10_DONE:   next_state = OUT_COPY;
    
    OUT_COPY:   if(Out_copy_done)next_state=RESET;
                else next_state=OUT_COPY;
    RESET:  if(awvalid_in && wvalid_in &&(awaddr[11:0] == 12'h000)&&(wdata[0]==1))next_state=Command;
     	     else next_state = RESET;
    default:next_state = Command;
  endcase
end 
wire n_choose_ram;
assign n_choose_ram=choose_ram;
reg reg_rst;
reg [15:0]reg_m_in;
reg [15:0]reg_t_in;
always @(posedge axi_clk or negedge axi_reset_n)  begin
  if ( !axi_reset_n ) begin
    reg_rst <= 1'b1;
    reg_m_in<=16'b0;
    reg_t_in<=16'b0;
    reg_mode1_in<=16'b0;
    reg_rst_out_stage<=1'b1;
    reg_rst_incpopy<=1'b1;
    choose_ram<=1'b1;
    end
  else begin
     if(state==Command)begin
        reg_mode1_in<={14'b0,ss_tdata[1:0]};
        reg_rst_incpopy<=1'b0;
        reg_rst_out_stage<=1'b0;
     end
     else if(state==IN_COPY) begin
        reg_rst<=1'b0;
     end
     else if(state==PE1_RST)begin
        reg_t_in<=16'd1024;
        reg_m_in<=16'd1;
     end
     else if(state==PE1_DONE)begin
     	reg_rst<=1'b1; 
     	choose_ram<=!n_choose_ram;
     end
     else if(state==PE2_RST)begin  
        reg_t_in<=16'd512;
        reg_m_in<=16'd2;
        reg_rst<=1'b0;
     end
     else if(state==PE2_DONE)begin
     	reg_rst<=1'b1; 
     	choose_ram<=!n_choose_ram;
     end
     else if(state==PE3_RST)begin  
        reg_t_in<=16'd256;
        reg_m_in<=16'd4;
        reg_rst<=1'b0;
     end
     else if(state==PE3_DONE)begin
     	reg_rst<=1'b1; 
     	choose_ram<=!n_choose_ram;
     end
     else if(state==PE4_RST)begin  
        reg_t_in<=16'd128;
        reg_m_in<=16'd8;
        reg_rst<=1'b0;
     end
     else if(state==PE4_DONE)begin
     	reg_rst<=1'b1; 
     	choose_ram<=!n_choose_ram;
     end
     else if(state==PE5_RST)begin  
        reg_t_in<=16'd64;
        reg_m_in<=16'd16;
        reg_rst<=1'b0;
     end
     else if(state==PE5_DONE)begin
     	reg_rst<=1'b1; 
     	choose_ram<=!n_choose_ram;
     end
     else if(state==PE6_RST)begin  
        reg_t_in<=16'd32;
        reg_m_in<=16'd32;
        reg_rst<=1'b0;
     end
     else if(state==PE6_DONE)begin
     	reg_rst<=1'b1; 
     	choose_ram<=!n_choose_ram;
     end
     else if(state==PE7_RST)begin  
        reg_t_in<=16'd16;
        reg_m_in<=16'd64;
        reg_rst<=1'b0;
     end
     else if(state==PE7_DONE)begin
     	reg_rst<=1'b1; 
     	choose_ram<=!n_choose_ram;
     end
     else if(state==PE8_RST)begin  
        reg_t_in<=16'd8;
        reg_m_in<=16'd128;
        reg_rst<=1'b0;
     end
     else if(state==PE8_DONE)begin
     	reg_rst<=1'b1; 
     	choose_ram<=!n_choose_ram;
     end
     else if(state==PE9_RST)begin  
        reg_t_in<=16'd4;
        reg_m_in<=16'd256;
        reg_rst<=1'b0;
     end
     else if(state==PE9_DONE)begin
     	reg_rst<=1'b1; 
     	choose_ram<=!n_choose_ram;
     end
     else if(state==PE10_RST)begin  
        reg_t_in<=16'd2;
        reg_m_in<=16'd512;
        reg_rst<=1'b0;
     end
     else if(state==PE10_DONE)begin
     	reg_rst<=1'b1; 
     end
     else if (state==OUT_COPY)begin
      	reg_rst<=1'b0;     
     end
     else begin
     end
   end
end

wire PE_ap_start_vld;
assign PE_ap_start_vld=(state==PE1_START||state==PE2_START||state==PE3_START||state==PE4_START||state==PE5_START||state==PE6_START||state==PE7_START||state==PE8_START||state==PE9_START||state==PE10_START);
PE PE(
.clk(axi_clk),          // I
.rst(reg_rst||(state==RESET)),                 // I
.arst_n(axi_reset_n),   // I
.ap_start_rsc_dat(1'b1),    // I
.ap_start_rsc_vld(PE_ap_start_vld),    // I
.ap_start_rsc_rdy(ap_start_rdy),    // O
.ap_done_rsc_dat(),     // O
.ap_done_rsc_vld(ap_done_vld),     // O
.ap_done_rsc_rdy(PE_ap_start_vld),     // I
.t_in_rsc_dat(reg_t_in),   //I 16
.t_in_triosy_lz(), // no
.m_in_rsc_dat(reg_m_in),   // I 16
.m_in_triosy_lz(), // no
.mode1_rsc_dat(reg_mode1_in),  //I 16
.mode1_triosy_lz(), 
.in_f_d_rsc_adr(in_ramf_adr),  // O 10
.in_f_d_rsc_d(in_ramf_d),    // O 64
.in_f_d_rsc_we(in_ramf_we),   // O 1 
.in_f_d_rsc_q(in_ramf_q),    // I 64
.in_f_d_rsc_en(in_ramf_en),   // O 1
.in_f_d_triosy_lz(), 
.in_u_rsc_adr(in_ramu_adr), // O 10
.in_u_rsc_d(in_ramu_d),   // O 16
.in_u_rsc_we(in_ramu_we),  // O
.in_u_rsc_q(in_ramu_q),   // I 16
.in_u_rsc_en(in_ramu_en),  // O 
.in_u_triosy_lz(),
.out_f_d_rsc_adr(out_ramf_adr),
.out_f_d_rsc_d(out_ramf_d),
.out_f_d_rsc_we(out_ramf_we),
.out_f_d_rsc_q(out_ramf_q), 
.out_f_d_rsc_en(out_ramf_en),
.out_f_d_triosy_lz(),
.out_u_rsc_adr(out_ramu_adr), 
.out_u_rsc_d(out_ramu_d),
.out_u_rsc_we(out_ramu_we), 
.out_u_rsc_q(out_ramu_q),
.out_u_rsc_en(out_ramu_en),
.out_u_triosy_lz()
);







always @(posedge axi_clk or negedge axi_reset_n)  begin
  if ( !axi_reset_n ) begin 
    Out_state <= 2'b0;
    end
  else begin

    Out_state <= next_Out_state;
    end
end

always@(*)begin
  case(Out_state)
    Command: if(ss_tvalid && ss_tdata[3:2]==2'b01 && (ss_tdata[1:0]==2'd0 || ss_tdata[1:0]== 2'd1))  next_Out_state = F_WAIT1;
             else if(ss_tvalid && ss_tdata[3:2]==2'b01 && (ss_tdata[1:0]==2'd2 || ss_tdata[1:0]==2'd3))  next_Out_state = U_OUT;
             else next_Out_state=Command;
    F_WAIT1:   if(Out_vld)next_Out_state = F_OUT1;
    		else next_Out_state = F_WAIT1;
    F_OUT1: if(sm_tready) next_Out_state = F_OUT2;
        	else next_Out_state = F_OUT1;
    F_OUT2: if(sm_tready) next_Out_state = F_WAIT1;
    		else next_Out_state = F_OUT2;
    U_OUT:    if(Out_copy_done)next_Out_state = Command;
    	     else next_Out_state = U_OUT;
    default:next_Out_state=Command;
  endcase
end 
wire [79:0]Out_data;
always @(posedge axi_clk or negedge axi_reset_n)  begin
  if ( !axi_reset_n ) begin
    	   regx_data <= 32'b0;
    	   regy_data<=32'b0;
  end
  else begin
  	if(Out_state==F_WAIT1&&Out_vld)begin
 	   regx_data<= Out_data[31:0];
 	   regy_data<= Out_data[63:32];
 	end
 	else begin
 	end
  end
end


assign sm_tvalid=(Out_state==U_OUT)?Out_vld:(Out_state==F_OUT1||Out_state==F_OUT2);
assign sm_tdata=(Out_state==U_OUT)?{16'b0,Out_data[79:64]}:((Out_state==F_OUT1)?regx_data:regy_data);
assign Out_rdy=(Out_state==U_OUT||Out_state==F_OUT2)?sm_tready:0;




OUT_copy OUT_copy (
.clk(axi_clk),
.rst(reg_rst_out_stage||(state==RESET)),
.arst_n(axi_reset_n), 
.ap_start_rsc_dat(1'b1), 
.ap_start_rsc_vld(state==OUT_COPY),
.ap_start_rsc_rdy(),
.ap_done_rsc_dat(),
.ap_done_rsc_vld(Out_copy_done),
.ap_done_rsc_rdy(state==OUT_COPY), 
.out1_rsc_dat(Out_data),  //{u,f}
.out1_rsc_vld(Out_vld), 
.out1_rsc_rdy(Out_rdy),
.mode_rsc_dat(reg_mode1_in),
.mode_triosy_lz(),// no use 
.line_buf0_f_d_rsc_adr(line1_ramf_adr),
.line_buf0_f_d_rsc_d(line1_ramf_d), 
.line_buf0_f_d_rsc_we(line1_ramf_we),
.line_buf0_f_d_rsc_q(line1_ramf_q), 
.line_buf0_f_d_rsc_en(line1_ramf_en), 
.line_buf0_f_d_triosy_lz(), // no use
.line_buf0_u_rsc_adr(line1_ramu_adr),
.line_buf0_u_rsc_d(line1_ramu_d),
.line_buf0_u_rsc_we(line1_ramu_we), 
.line_buf0_u_rsc_q(line1_ramu_q),
.line_buf0_u_rsc_en(line1_ramu_en),
.line_buf0_u_triosy_lz() // no use
);







wire mux_state;
assign mux_state=!(reg_mode1_in==2||reg_mode1_in==3);
assign ram0_en= (state==IN_COPY)?Inram_en:(mux_state)?in_ramf_en:in_ramu_en;
assign ram0_we= (state==IN_COPY)?Inram_we:(mux_state)?in_ramf_we:in_ramu_we;
assign ram0_adr=(state==IN_COPY)?Inram_adr:(mux_state)?in_ramf_adr:in_ramu_adr;
assign ram0_d=  (state==IN_COPY)?Inram_d:(mux_state)?in_ramf_d:{48'b0,in_ramu_d};
assign in_ramu_q=ram0_q[15:0];
assign in_ramf_q=ram0_q;


assign ram1_en=(state==OUT_COPY)?((mux_state)?line1_ramf_en:line1_ramu_en):((mux_state)?out_ramf_en:out_ramu_en);
assign ram1_we=(state==OUT_COPY)?((mux_state)?line1_ramf_we:line1_ramu_we):((mux_state)?out_ramf_we:out_ramu_we);
assign ram1_adr=(state==OUT_COPY)?((mux_state)?line1_ramf_adr:line1_ramu_adr):((mux_state)?out_ramf_adr:out_ramu_adr);
assign ram1_d=(state==OUT_COPY)?((mux_state)?line1_ramf_d:{48'b0,line1_ramu_d}):((mux_state)?out_ramf_d:{48'b0,out_ramu_d});
assign out_ramu_q=ram1_q[15:0];
assign out_ramf_q=ram1_q;
assign line1_ramu_q=ram1_q[15:0];
assign line1_ramf_q=ram1_q;


wire        ramin_en;
wire [63:0] ramin_q;
wire        ramin_we;
wire [63:0] ramin_d;
wire [9:0]  ramin_adr;


wire        ramout_en;
wire [63:0] ramout_q;
wire        ramout_we;
wire [63:0] ramout_d;
wire [9:0]  ramout_adr;



assign ramin_en=(choose_ram)?ram0_en:ram1_en;
assign ramin_we=(choose_ram)?ram0_we:ram1_we;
assign ramin_adr=(choose_ram)?ram0_adr:ram1_adr;
assign ramin_d=(choose_ram)?ram0_d:ram1_d;


assign ramout_en=(!choose_ram)?ram0_en:ram1_en;
assign ramout_we=(!choose_ram)?ram0_we:ram1_we;
assign ramout_adr=(!choose_ram)?ram0_adr:ram1_adr;
assign ramout_d=(!choose_ram)?ram0_d:ram1_d;
assign ram0_q=(choose_ram)?ramin_q:ramout_q;
assign ram1_q=(!choose_ram)?ramin_q:ramout_q;

//SRAM
SPRAM #(.data_width(64),.addr_width(10),.depth(1024)) U_SPRAM_0(
.adr (ramin_adr ), 
.d   (ramin_d   ), 
.en  (ramin_en  ), 
.we  (ramin_we  ), 
.clk (axi_clk  ), //user_clock2 ? 
.q   (ramin_q   )
);

SPRAM #(.data_width(64),.addr_width(10),.depth(1024)) U_SPRAM_1(
.adr (ramout_adr ), 
.d   (ramout_d   ), 
.en  (ramout_en  ), 
.we  (ramout_we  ), 
.clk (axi_clk  ), //user_clock2 ? 
.q   (ramout_q   )
);




endmodule // USER_PRJ2
