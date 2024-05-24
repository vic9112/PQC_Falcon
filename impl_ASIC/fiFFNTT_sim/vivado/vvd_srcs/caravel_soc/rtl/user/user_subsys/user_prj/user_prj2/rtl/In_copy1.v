
//------> /usr/cadtool/mentor/Catapult/2024.1/Mgc_home/pkgs/siflibs/ccs_in_wait_v1.v 
//------------------------------------------------------------------------------
// Catapult Synthesis - Sample I/O Port Library
//
// Copyright (c) 2003-2017 Mentor Graphics Corp.
//       All Rights Reserved
//
// This document may be used and distributed without restriction provided that
// this copyright statement is not removed from the file and that any derivative
// work contains this copyright notice.
//
// The design information contained in this file is intended to be an example
// of the functionality which the end user may study in preparation for creating
// their own custom interfaces. This design does not necessarily present a 
// complete implementation of the named protocol or standard.
//
//------------------------------------------------------------------------------


module ccs_in_wait_v1 (idat, rdy, ivld, dat, irdy, vld);

  parameter integer rscid = 1;
  parameter integer width = 8;

  output [width-1:0] idat;
  output             rdy;
  output             ivld;
  input  [width-1:0] dat;
  input              irdy;
  input              vld;

  wire   [width-1:0] idat;
  wire               rdy;
  wire               ivld;

  localparam stallOff = 0; 
  wire                  stall_ctrl;
  assign stall_ctrl = stallOff;

  assign idat = dat;
  assign rdy = irdy && !stall_ctrl;
  assign ivld = vld && !stall_ctrl;

endmodule


//------> /usr/cadtool/mentor/Catapult/2024.1/Mgc_home/pkgs/siflibs/ccs_out_wait_v1.v 
//------------------------------------------------------------------------------
// Catapult Synthesis - Sample I/O Port Library
//
// Copyright (c) 2003-2017 Mentor Graphics Corp.
//       All Rights Reserved
//
// This document may be used and distributed without restriction provided that
// this copyright statement is not removed from the file and that any derivative
// work contains this copyright notice.
//
// The design information contained in this file is intended to be an example
// of the functionality which the end user may study in preparation for creating
// their own custom interfaces. This design does not necessarily present a 
// complete implementation of the named protocol or standard.
//
//------------------------------------------------------------------------------


module ccs_out_wait_v1 (dat, irdy, vld, idat, rdy, ivld);

  parameter integer rscid = 1;
  parameter integer width = 8;

  output [width-1:0] dat;
  output             irdy;
  output             vld;
  input  [width-1:0] idat;
  input              rdy;
  input              ivld;

  wire   [width-1:0] dat;
  wire               irdy;
  wire               vld;

  localparam stallOff = 0; 
  wire stall_ctrl;
  assign stall_ctrl = stallOff;

  assign dat = idat;
  assign irdy = rdy && !stall_ctrl;
  assign vld = ivld && !stall_ctrl;

endmodule



//------> /usr/cadtool/mentor/Catapult/2024.1/Mgc_home/pkgs/siflibs/mgc_io_sync_v2.v 
//------------------------------------------------------------------------------
// Catapult Synthesis - Sample I/O Port Library
//
// Copyright (c) 2003-2017 Mentor Graphics Corp.
//       All Rights Reserved
//
// This document may be used and distributed without restriction provided that
// this copyright statement is not removed from the file and that any derivative
// work contains this copyright notice.
//
// The design information contained in this file is intended to be an example
// of the functionality which the end user may study in preparation for creating
// their own custom interfaces. This design does not necessarily present a 
// complete implementation of the named protocol or standard.
//
//------------------------------------------------------------------------------


module mgc_io_sync_v2 (ld, lz);
    parameter valid = 0;

    input  ld;
    output lz;

    wire   lz;

    assign lz = ld;

endmodule


//------> /usr/cadtool/mentor/Catapult/2024.1/Mgc_home/pkgs/siflibs/ccs_in_v1.v 
//------------------------------------------------------------------------------
// Catapult Synthesis - Sample I/O Port Library
//
// Copyright (c) 2003-2017 Mentor Graphics Corp.
//       All Rights Reserved
//
// This document may be used and distributed without restriction provided that
// this copyright statement is not removed from the file and that any derivative
// work contains this copyright notice.
//
// The design information contained in this file is intended to be an example
// of the functionality which the end user may study in preparation for creating
// their own custom interfaces. This design does not necessarily present a 
// complete implementation of the named protocol or standard.
//
//------------------------------------------------------------------------------


module ccs_in_v1 (idat, dat);

  parameter integer rscid = 1;
  parameter integer width = 8;

  output [width-1:0] idat;
  input  [width-1:0] dat;

  wire   [width-1:0] idat;

  assign idat = dat;

endmodule


//------> ./rtl.v 
// ----------------------------------------------------------------------
//  HLS HDL:        Verilog Netlister
//  HLS Version:    2024.1/1091966 Production Release
//  HLS Date:       Wed Feb 14 09:07:18 PST 2024
// 
//  Generated by:   u110020015@ws41
//  Generated date: Wed May 22 01:04:35 2024
// ----------------------------------------------------------------------

// 
// ------------------------------------------------------------------
//  Design Unit:    In_copy_ccs_sample_mem_ccs_ram_sync_singleport_rwport_en_2_64_10_1024_1024_64_5_gen
// ------------------------------------------------------------------


module In_copy_ccs_sample_mem_ccs_ram_sync_singleport_rwport_en_2_64_10_1024_1024_64_5_gen
    (
  en, q, we, d, adr, adr_d, d_d, en_d, we_d, q_d, port_0_rw_ram_ir_internal_RMASK_B_d,
      port_0_rw_ram_ir_internal_WMASK_B_d
);
  output en;
  input [63:0] q;
  output we;
  output [63:0] d;
  output [9:0] adr;
  input [9:0] adr_d;
  input [63:0] d_d;
  input en_d;
  input we_d;
  output [63:0] q_d;
  input port_0_rw_ram_ir_internal_RMASK_B_d;
  input port_0_rw_ram_ir_internal_WMASK_B_d;



  // Interconnect Declarations for Component Instantiations 
  assign en = (en_d);
  assign q_d = q;
  assign we = (port_0_rw_ram_ir_internal_WMASK_B_d);
  assign d = (d_d);
  assign adr = (adr_d);
endmodule

// ------------------------------------------------------------------
//  Design Unit:    In_copy_run_run_fsm
//  FSM Module
// ------------------------------------------------------------------


module In_copy_run_run_fsm (
  clk, rst, arst_n, run_wen, fsm_output, for_C_3_tr0
);
  input clk;
  input rst;
  input arst_n;
  input run_wen;
  output [6:0] fsm_output;
  reg [6:0] fsm_output;
  input for_C_3_tr0;


  // FSM State Type Declaration for In_copy_run_run_fsm_1
  parameter
    run_rlp_C_0 = 3'd0,
    main_C_0 = 3'd1,
    for_C_0 = 3'd2,
    for_C_1 = 3'd3,
    for_C_2 = 3'd4,
    for_C_3 = 3'd5,
    main_C_1 = 3'd6;

  reg [2:0] state_var;
  reg [2:0] state_var_NS;


  // Interconnect Declarations for Component Instantiations 
  always @(*)
  begin : In_copy_run_run_fsm_1
    case (state_var)
      main_C_0 : begin
        fsm_output = 7'b0000010;
        state_var_NS = for_C_0;
      end
      for_C_0 : begin
        fsm_output = 7'b0000100;
        state_var_NS = for_C_1;
      end
      for_C_1 : begin
        fsm_output = 7'b0001000;
        state_var_NS = for_C_2;
      end
      for_C_2 : begin
        fsm_output = 7'b0010000;
        state_var_NS = for_C_3;
      end
      for_C_3 : begin
        fsm_output = 7'b0100000;
        if ( for_C_3_tr0 ) begin
          state_var_NS = main_C_1;
        end
        else begin
          state_var_NS = for_C_0;
        end
      end
      main_C_1 : begin
        fsm_output = 7'b1000000;
        state_var_NS = main_C_0;
      end
      // run_rlp_C_0
      default : begin
        fsm_output = 7'b0000001;
        state_var_NS = main_C_0;
      end
    endcase
  end

  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      state_var <= run_rlp_C_0;
    end
    else if ( rst ) begin
      state_var <= run_rlp_C_0;
    end
    else if ( run_wen ) begin
      state_var <= state_var_NS;
    end
  end

endmodule

// ------------------------------------------------------------------
//  Design Unit:    In_copy_run_staller
// ------------------------------------------------------------------


module In_copy_run_staller (
  clk, rst, arst_n, run_wen, run_wten, in_data_rsci_wen_comp, ap_done_rsci_wen_comp,
      ap_start_rsci_wen_comp
);
  input clk;
  input rst;
  input arst_n;
  output run_wen;
  output run_wten;
  reg run_wten;
  input in_data_rsci_wen_comp;
  input ap_done_rsci_wen_comp;
  input ap_start_rsci_wen_comp;



  // Interconnect Declarations for Component Instantiations 
  assign run_wen = in_data_rsci_wen_comp & ap_done_rsci_wen_comp & ap_start_rsci_wen_comp;
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      run_wten <= 1'b0;
    end
    else if ( rst ) begin
      run_wten <= 1'b0;
    end
    else begin
      run_wten <= ~ run_wen;
    end
  end
endmodule

// ------------------------------------------------------------------
//  Design Unit:    In_copy_run_mode_triosy_obj_mode_triosy_wait_ctrl
// ------------------------------------------------------------------


module In_copy_run_mode_triosy_obj_mode_triosy_wait_ctrl (
  run_wten, mode_triosy_obj_iswt0, mode_triosy_obj_biwt
);
  input run_wten;
  input mode_triosy_obj_iswt0;
  output mode_triosy_obj_biwt;



  // Interconnect Declarations for Component Instantiations 
  assign mode_triosy_obj_biwt = (~ run_wten) & mode_triosy_obj_iswt0;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    In_copy_run_qin_triosy_obj_qin_triosy_wait_ctrl
// ------------------------------------------------------------------


module In_copy_run_qin_triosy_obj_qin_triosy_wait_ctrl (
  run_wten, qin_triosy_obj_iswt0, qin_triosy_obj_biwt
);
  input run_wten;
  input qin_triosy_obj_iswt0;
  output qin_triosy_obj_biwt;



  // Interconnect Declarations for Component Instantiations 
  assign qin_triosy_obj_biwt = (~ run_wten) & qin_triosy_obj_iswt0;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    In_copy_run_ap_start_rsci_ap_start_wait_ctrl
// ------------------------------------------------------------------


module In_copy_run_ap_start_rsci_ap_start_wait_ctrl (
  ap_start_rsci_iswt0, ap_start_rsci_biwt, ap_start_rsci_ivld
);
  input ap_start_rsci_iswt0;
  output ap_start_rsci_biwt;
  input ap_start_rsci_ivld;



  // Interconnect Declarations for Component Instantiations 
  assign ap_start_rsci_biwt = ap_start_rsci_iswt0 & ap_start_rsci_ivld;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    In_copy_run_ap_done_rsci_ap_done_wait_ctrl
// ------------------------------------------------------------------


module In_copy_run_ap_done_rsci_ap_done_wait_ctrl (
  ap_done_rsci_iswt0, ap_done_rsci_biwt, ap_done_rsci_irdy
);
  input ap_done_rsci_iswt0;
  output ap_done_rsci_biwt;
  input ap_done_rsci_irdy;



  // Interconnect Declarations for Component Instantiations 
  assign ap_done_rsci_biwt = ap_done_rsci_iswt0 & ap_done_rsci_irdy;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    In_copy_run_wait_dp
// ------------------------------------------------------------------


module In_copy_run_wait_dp (
  qin_rsci_en_d, run_wen, qin_rsci_cgo, qin_rsci_cgo_ir_unreg
);
  output qin_rsci_en_d;
  input run_wen;
  input qin_rsci_cgo;
  input qin_rsci_cgo_ir_unreg;



  // Interconnect Declarations for Component Instantiations 
  assign qin_rsci_en_d = run_wen & (qin_rsci_cgo | qin_rsci_cgo_ir_unreg);
endmodule

// ------------------------------------------------------------------
//  Design Unit:    In_copy_run_in_data_rsci_in_data_wait_ctrl
// ------------------------------------------------------------------


module In_copy_run_in_data_rsci_in_data_wait_ctrl (
  in_data_rsci_iswt0, in_data_rsci_biwt, in_data_rsci_ivld
);
  input in_data_rsci_iswt0;
  output in_data_rsci_biwt;
  input in_data_rsci_ivld;



  // Interconnect Declarations for Component Instantiations 
  assign in_data_rsci_biwt = in_data_rsci_iswt0 & in_data_rsci_ivld;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    In_copy_run_mode_triosy_obj
// ------------------------------------------------------------------


module In_copy_run_mode_triosy_obj (
  mode_triosy_lz, run_wten, mode_triosy_obj_iswt0
);
  output mode_triosy_lz;
  input run_wten;
  input mode_triosy_obj_iswt0;


  // Interconnect Declarations
  wire mode_triosy_obj_biwt;


  // Interconnect Declarations for Component Instantiations 
  mgc_io_sync_v2 #(.valid(32'sd0)) mode_triosy_obj (
      .ld(mode_triosy_obj_biwt),
      .lz(mode_triosy_lz)
    );
  In_copy_run_mode_triosy_obj_mode_triosy_wait_ctrl In_copy_run_mode_triosy_obj_mode_triosy_wait_ctrl_inst
      (
      .run_wten(run_wten),
      .mode_triosy_obj_iswt0(mode_triosy_obj_iswt0),
      .mode_triosy_obj_biwt(mode_triosy_obj_biwt)
    );
endmodule

// ------------------------------------------------------------------
//  Design Unit:    In_copy_run_qin_triosy_obj
// ------------------------------------------------------------------


module In_copy_run_qin_triosy_obj (
  qin_triosy_lz, run_wten, qin_triosy_obj_iswt0
);
  output qin_triosy_lz;
  input run_wten;
  input qin_triosy_obj_iswt0;


  // Interconnect Declarations
  wire qin_triosy_obj_biwt;


  // Interconnect Declarations for Component Instantiations 
  mgc_io_sync_v2 #(.valid(32'sd0)) qin_triosy_obj (
      .ld(qin_triosy_obj_biwt),
      .lz(qin_triosy_lz)
    );
  In_copy_run_qin_triosy_obj_qin_triosy_wait_ctrl In_copy_run_qin_triosy_obj_qin_triosy_wait_ctrl_inst
      (
      .run_wten(run_wten),
      .qin_triosy_obj_iswt0(qin_triosy_obj_iswt0),
      .qin_triosy_obj_biwt(qin_triosy_obj_biwt)
    );
endmodule

// ------------------------------------------------------------------
//  Design Unit:    In_copy_run_ap_start_rsci
// ------------------------------------------------------------------


module In_copy_run_ap_start_rsci (
  ap_start_rsc_dat, ap_start_rsc_vld, ap_start_rsc_rdy, ap_start_rsci_oswt, ap_start_rsci_wen_comp
);
  input ap_start_rsc_dat;
  input ap_start_rsc_vld;
  output ap_start_rsc_rdy;
  input ap_start_rsci_oswt;
  output ap_start_rsci_wen_comp;


  // Interconnect Declarations
  wire ap_start_rsci_biwt;
  wire ap_start_rsci_ivld;
  wire ap_start_rsci_idat;


  // Interconnect Declarations for Component Instantiations 
  ccs_in_wait_v1 #(.rscid(32'sd4),
  .width(32'sd1)) ap_start_rsci (
      .rdy(ap_start_rsc_rdy),
      .vld(ap_start_rsc_vld),
      .dat(ap_start_rsc_dat),
      .irdy(ap_start_rsci_oswt),
      .ivld(ap_start_rsci_ivld),
      .idat(ap_start_rsci_idat)
    );
  In_copy_run_ap_start_rsci_ap_start_wait_ctrl In_copy_run_ap_start_rsci_ap_start_wait_ctrl_inst
      (
      .ap_start_rsci_iswt0(ap_start_rsci_oswt),
      .ap_start_rsci_biwt(ap_start_rsci_biwt),
      .ap_start_rsci_ivld(ap_start_rsci_ivld)
    );
  assign ap_start_rsci_wen_comp = (~ ap_start_rsci_oswt) | ap_start_rsci_biwt;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    In_copy_run_ap_done_rsci
// ------------------------------------------------------------------


module In_copy_run_ap_done_rsci (
  ap_done_rsc_dat, ap_done_rsc_vld, ap_done_rsc_rdy, ap_done_rsci_oswt, ap_done_rsci_wen_comp
);
  output ap_done_rsc_dat;
  output ap_done_rsc_vld;
  input ap_done_rsc_rdy;
  input ap_done_rsci_oswt;
  output ap_done_rsci_wen_comp;


  // Interconnect Declarations
  wire ap_done_rsci_biwt;
  wire ap_done_rsci_irdy;


  // Interconnect Declarations for Component Instantiations 
  ccs_out_wait_v1 #(.rscid(32'sd3),
  .width(32'sd1)) ap_done_rsci (
      .irdy(ap_done_rsci_irdy),
      .ivld(ap_done_rsci_oswt),
      .idat(1'b1),
      .rdy(ap_done_rsc_rdy),
      .vld(ap_done_rsc_vld),
      .dat(ap_done_rsc_dat)
    );
  In_copy_run_ap_done_rsci_ap_done_wait_ctrl In_copy_run_ap_done_rsci_ap_done_wait_ctrl_inst
      (
      .ap_done_rsci_iswt0(ap_done_rsci_oswt),
      .ap_done_rsci_biwt(ap_done_rsci_biwt),
      .ap_done_rsci_irdy(ap_done_rsci_irdy)
    );
  assign ap_done_rsci_wen_comp = (~ ap_done_rsci_oswt) | ap_done_rsci_biwt;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    In_copy_run_in_data_rsci
// ------------------------------------------------------------------


module In_copy_run_in_data_rsci (
  in_data_rsc_dat, in_data_rsc_vld, in_data_rsc_rdy, in_data_rsci_oswt, in_data_rsci_wen_comp,
      in_data_rsci_idat_mxwt
);
  input [31:0] in_data_rsc_dat;
  input in_data_rsc_vld;
  output in_data_rsc_rdy;
  input in_data_rsci_oswt;
  output in_data_rsci_wen_comp;
  output [31:0] in_data_rsci_idat_mxwt;


  // Interconnect Declarations
  wire in_data_rsci_biwt;
  wire in_data_rsci_ivld;
  wire [31:0] in_data_rsci_idat;


  // Interconnect Declarations for Component Instantiations 
  ccs_in_wait_v1 #(.rscid(32'sd1),
  .width(32'sd32)) in_data_rsci (
      .rdy(in_data_rsc_rdy),
      .vld(in_data_rsc_vld),
      .dat(in_data_rsc_dat),
      .irdy(in_data_rsci_oswt),
      .ivld(in_data_rsci_ivld),
      .idat(in_data_rsci_idat)
    );
  In_copy_run_in_data_rsci_in_data_wait_ctrl In_copy_run_in_data_rsci_in_data_wait_ctrl_inst
      (
      .in_data_rsci_iswt0(in_data_rsci_oswt),
      .in_data_rsci_biwt(in_data_rsci_biwt),
      .in_data_rsci_ivld(in_data_rsci_ivld)
    );
  assign in_data_rsci_idat_mxwt = in_data_rsci_idat;
  assign in_data_rsci_wen_comp = (~ in_data_rsci_oswt) | in_data_rsci_biwt;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    In_copy_run
// ------------------------------------------------------------------


module In_copy_run (
  clk, rst, arst_n, in_data_rsc_dat, in_data_rsc_vld, in_data_rsc_rdy, qin_triosy_lz,
      ap_done_rsc_dat, ap_done_rsc_vld, ap_done_rsc_rdy, ap_start_rsc_dat, ap_start_rsc_vld,
      ap_start_rsc_rdy, mode_rsc_dat, mode_triosy_lz, qin_rsci_adr_d, qin_rsci_d_d,
      qin_rsci_en_d, qin_rsci_we_d_pff
);
  input clk;
  input rst;
  input arst_n;
  input [31:0] in_data_rsc_dat;
  input in_data_rsc_vld;
  output in_data_rsc_rdy;
  output qin_triosy_lz;
  output ap_done_rsc_dat;
  output ap_done_rsc_vld;
  input ap_done_rsc_rdy;
  input ap_start_rsc_dat;
  input ap_start_rsc_vld;
  output ap_start_rsc_rdy;
  input mode_rsc_dat;
  output mode_triosy_lz;
  output [9:0] qin_rsci_adr_d;
  output [63:0] qin_rsci_d_d;
  output qin_rsci_en_d;
  output qin_rsci_we_d_pff;


  // Interconnect Declarations
  wire run_wen;
  wire run_wten;
  wire in_data_rsci_wen_comp;
  wire [31:0] in_data_rsci_idat_mxwt;
  wire ap_done_rsci_wen_comp;
  wire ap_start_rsci_wen_comp;
  wire mode_rsci_idat;
  wire [6:0] fsm_output;
  wire [10:0] for_x_10_0_sva_2;
  wire [11:0] nl_for_x_10_0_sva_2;
  reg for_io_read_mode_rsc_svs_st;
  reg reg_mode_triosy_obj_iswt0_cse;
  reg reg_ap_start_rsci_iswt0_cse;
  reg reg_qin_rsci_cgo_ir_cse;
  reg reg_in_data_rsci_iswt0_cse;
  wire or_5_rmff;
  reg [31:0] tmp1_63_32_sva_dfm_1;
  reg [31:0] for_mux_1_itm_1;
  reg [9:0] for_x_10_0_sva_9_0;

  wire[31:0] for_if_mux_nl;

  // Interconnect Declarations for Component Instantiations 
  wire  nl_In_copy_run_run_fsm_inst_for_C_3_tr0;
  assign nl_In_copy_run_run_fsm_inst_for_C_3_tr0 = for_x_10_0_sva_2[10];
  ccs_in_v1 #(.rscid(32'sd5),
  .width(32'sd1)) mode_rsci (
      .dat(mode_rsc_dat),
      .idat(mode_rsci_idat)
    );
  In_copy_run_in_data_rsci In_copy_run_in_data_rsci_inst (
      .in_data_rsc_dat(in_data_rsc_dat),
      .in_data_rsc_vld(in_data_rsc_vld),
      .in_data_rsc_rdy(in_data_rsc_rdy),
      .in_data_rsci_oswt(reg_in_data_rsci_iswt0_cse),
      .in_data_rsci_wen_comp(in_data_rsci_wen_comp),
      .in_data_rsci_idat_mxwt(in_data_rsci_idat_mxwt)
    );
  In_copy_run_wait_dp In_copy_run_wait_dp_inst (
      .qin_rsci_en_d(qin_rsci_en_d),
      .run_wen(run_wen),
      .qin_rsci_cgo(reg_qin_rsci_cgo_ir_cse),
      .qin_rsci_cgo_ir_unreg(or_5_rmff)
    );
  In_copy_run_ap_done_rsci In_copy_run_ap_done_rsci_inst (
      .ap_done_rsc_dat(ap_done_rsc_dat),
      .ap_done_rsc_vld(ap_done_rsc_vld),
      .ap_done_rsc_rdy(ap_done_rsc_rdy),
      .ap_done_rsci_oswt(reg_mode_triosy_obj_iswt0_cse),
      .ap_done_rsci_wen_comp(ap_done_rsci_wen_comp)
    );
  In_copy_run_ap_start_rsci In_copy_run_ap_start_rsci_inst (
      .ap_start_rsc_dat(ap_start_rsc_dat),
      .ap_start_rsc_vld(ap_start_rsc_vld),
      .ap_start_rsc_rdy(ap_start_rsc_rdy),
      .ap_start_rsci_oswt(reg_ap_start_rsci_iswt0_cse),
      .ap_start_rsci_wen_comp(ap_start_rsci_wen_comp)
    );
  In_copy_run_qin_triosy_obj In_copy_run_qin_triosy_obj_inst (
      .qin_triosy_lz(qin_triosy_lz),
      .run_wten(run_wten),
      .qin_triosy_obj_iswt0(reg_mode_triosy_obj_iswt0_cse)
    );
  In_copy_run_mode_triosy_obj In_copy_run_mode_triosy_obj_inst (
      .mode_triosy_lz(mode_triosy_lz),
      .run_wten(run_wten),
      .mode_triosy_obj_iswt0(reg_mode_triosy_obj_iswt0_cse)
    );
  In_copy_run_staller In_copy_run_staller_inst (
      .clk(clk),
      .rst(rst),
      .arst_n(arst_n),
      .run_wen(run_wen),
      .run_wten(run_wten),
      .in_data_rsci_wen_comp(in_data_rsci_wen_comp),
      .ap_done_rsci_wen_comp(ap_done_rsci_wen_comp),
      .ap_start_rsci_wen_comp(ap_start_rsci_wen_comp)
    );
  In_copy_run_run_fsm In_copy_run_run_fsm_inst (
      .clk(clk),
      .rst(rst),
      .arst_n(arst_n),
      .run_wen(run_wen),
      .fsm_output(fsm_output),
      .for_C_3_tr0(nl_In_copy_run_run_fsm_inst_for_C_3_tr0)
    );
  assign or_5_rmff = (fsm_output[5:4]!=2'b00);
  assign nl_for_x_10_0_sva_2 = conv_u2s_10_11(for_x_10_0_sva_9_0) + 11'b00000000001;
  assign for_x_10_0_sva_2 = nl_for_x_10_0_sva_2[10:0];
  assign qin_rsci_adr_d = for_x_10_0_sva_9_0;
  assign for_if_mux_nl = MUX_v_32_2_2(in_data_rsci_idat_mxwt, tmp1_63_32_sva_dfm_1,
      for_io_read_mode_rsc_svs_st);
  assign qin_rsci_d_d = {for_if_mux_nl , for_mux_1_itm_1};
  assign qin_rsci_we_d_pff = fsm_output[4];
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      reg_mode_triosy_obj_iswt0_cse <= 1'b0;
      reg_ap_start_rsci_iswt0_cse <= 1'b0;
      reg_qin_rsci_cgo_ir_cse <= 1'b0;
      reg_in_data_rsci_iswt0_cse <= 1'b0;
      for_mux_1_itm_1 <= 32'b00000000000000000000000000000000;
    end
    else if ( rst ) begin
      reg_mode_triosy_obj_iswt0_cse <= 1'b0;
      reg_ap_start_rsci_iswt0_cse <= 1'b0;
      reg_qin_rsci_cgo_ir_cse <= 1'b0;
      reg_in_data_rsci_iswt0_cse <= 1'b0;
      for_mux_1_itm_1 <= 32'b00000000000000000000000000000000;
    end
    else if ( run_wen ) begin
      reg_mode_triosy_obj_iswt0_cse <= (for_x_10_0_sva_2[10]) & (fsm_output[5]);
      reg_ap_start_rsci_iswt0_cse <= (fsm_output[6]) | (fsm_output[0]);
      reg_qin_rsci_cgo_ir_cse <= or_5_rmff;
      reg_in_data_rsci_iswt0_cse <= ((~ for_io_read_mode_rsc_svs_st) & (fsm_output[3]))
          | (fsm_output[2]);
      for_mux_1_itm_1 <= in_data_rsci_idat_mxwt;
    end
  end
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      tmp1_63_32_sva_dfm_1 <= 32'b00000000000000000000000000000000;
    end
    else if ( rst ) begin
      tmp1_63_32_sva_dfm_1 <= 32'b00000000000000000000000000000000;
    end
    else if ( run_wen & (~ for_io_read_mode_rsc_svs_st) & (fsm_output[4]) ) begin
      tmp1_63_32_sva_dfm_1 <= in_data_rsci_idat_mxwt;
    end
  end
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      for_x_10_0_sva_9_0 <= 10'b0000000000;
    end
    else if ( rst ) begin
      for_x_10_0_sva_9_0 <= 10'b0000000000;
    end
    else if ( run_wen & ((fsm_output[1]) | (fsm_output[5])) ) begin
      for_x_10_0_sva_9_0 <= MUX_v_10_2_2(10'b0000000000, (for_x_10_0_sva_2[9:0]),
          (fsm_output[5]));
    end
  end
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      for_io_read_mode_rsc_svs_st <= 1'b0;
    end
    else if ( rst ) begin
      for_io_read_mode_rsc_svs_st <= 1'b0;
    end
    else if ( run_wen & (fsm_output[2]) ) begin
      for_io_read_mode_rsc_svs_st <= mode_rsci_idat;
    end
  end

  function automatic [9:0] MUX_v_10_2_2;
    input [9:0] input_0;
    input [9:0] input_1;
    input  sel;
    reg [9:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_10_2_2 = result;
  end
  endfunction


  function automatic [31:0] MUX_v_32_2_2;
    input [31:0] input_0;
    input [31:0] input_1;
    input  sel;
    reg [31:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_32_2_2 = result;
  end
  endfunction


  function automatic [10:0] conv_u2s_10_11 ;
    input [9:0]  vector ;
  begin
    conv_u2s_10_11 =  {1'b0, vector};
  end
  endfunction

endmodule

// ------------------------------------------------------------------
//  Design Unit:    In_copy
// ------------------------------------------------------------------


module In_copy (
  clk, rst, arst_n, in_data_rsc_dat, in_data_rsc_vld, in_data_rsc_rdy, qin_rsc_adr,
      qin_rsc_d, qin_rsc_we, qin_rsc_q, qin_rsc_en, qin_triosy_lz, ap_done_rsc_dat,
      ap_done_rsc_vld, ap_done_rsc_rdy, ap_start_rsc_dat, ap_start_rsc_vld, ap_start_rsc_rdy,
      mode_rsc_dat, mode_triosy_lz
);
  input clk;
  input rst;
  input arst_n;
  input [31:0] in_data_rsc_dat;
  input in_data_rsc_vld;
  output in_data_rsc_rdy;
  output [9:0] qin_rsc_adr;
  output [63:0] qin_rsc_d;
  output qin_rsc_we;
  input [63:0] qin_rsc_q;
  output qin_rsc_en;
  output qin_triosy_lz;
  output ap_done_rsc_dat;
  output ap_done_rsc_vld;
  input ap_done_rsc_rdy;
  input ap_start_rsc_dat;
  input ap_start_rsc_vld;
  output ap_start_rsc_rdy;
  input mode_rsc_dat;
  output mode_triosy_lz;


  // Interconnect Declarations
  wire [9:0] qin_rsci_adr_d;
  wire [63:0] qin_rsci_d_d;
  wire qin_rsci_en_d;
  wire [63:0] qin_rsci_q_d;
  wire qin_rsci_we_d_iff;


  // Interconnect Declarations for Component Instantiations 
  In_copy_ccs_sample_mem_ccs_ram_sync_singleport_rwport_en_2_64_10_1024_1024_64_5_gen
      qin_rsci (
      .en(qin_rsc_en),
      .q(qin_rsc_q),
      .we(qin_rsc_we),
      .d(qin_rsc_d),
      .adr(qin_rsc_adr),
      .adr_d(qin_rsci_adr_d),
      .d_d(qin_rsci_d_d),
      .en_d(qin_rsci_en_d),
      .we_d(qin_rsci_we_d_iff),
      .q_d(qin_rsci_q_d),
      .port_0_rw_ram_ir_internal_RMASK_B_d(1'b0),
      .port_0_rw_ram_ir_internal_WMASK_B_d(qin_rsci_we_d_iff)
    );
  In_copy_run In_copy_run_inst (
      .clk(clk),
      .rst(rst),
      .arst_n(arst_n),
      .in_data_rsc_dat(in_data_rsc_dat),
      .in_data_rsc_vld(in_data_rsc_vld),
      .in_data_rsc_rdy(in_data_rsc_rdy),
      .qin_triosy_lz(qin_triosy_lz),
      .ap_done_rsc_dat(ap_done_rsc_dat),
      .ap_done_rsc_vld(ap_done_rsc_vld),
      .ap_done_rsc_rdy(ap_done_rsc_rdy),
      .ap_start_rsc_dat(ap_start_rsc_dat),
      .ap_start_rsc_vld(ap_start_rsc_vld),
      .ap_start_rsc_rdy(ap_start_rsc_rdy),
      .mode_rsc_dat(mode_rsc_dat),
      .mode_triosy_lz(mode_triosy_lz),
      .qin_rsci_adr_d(qin_rsci_adr_d),
      .qin_rsci_d_d(qin_rsci_d_d),
      .qin_rsci_en_d(qin_rsci_en_d),
      .qin_rsci_we_d_pff(qin_rsci_we_d_iff)
    );
endmodule



