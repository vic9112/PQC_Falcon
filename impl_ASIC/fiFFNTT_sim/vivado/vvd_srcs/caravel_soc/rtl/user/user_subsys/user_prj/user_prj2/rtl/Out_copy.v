
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


//------> /usr/cadtool/mentor/Catapult/2024.1/Mgc_home/pkgs/siflibs/mgc_shift_l_beh_v5.v 
module mgc_shift_l_v5(a,s,z);
   parameter    width_a = 4;
   parameter    signd_a = 1;
   parameter    width_s = 2;
   parameter    width_z = 8;

   input [width_a-1:0] a;
   input [width_s-1:0] s;
   output [width_z -1:0] z;

   generate
   if (signd_a)
   begin: SGNED
      assign z = fshl_u(a,s,a[width_a-1]);
   end
   else
   begin: UNSGNED
      assign z = fshl_u(a,s,1'b0);
   end
   endgenerate

   //Shift-left - unsigned shift argument one bit more
   function [width_z-1:0] fshl_u_1;
      input [width_a  :0] arg1;
      input [width_s-1:0] arg2;
      input sbit;
      parameter olen = width_z;
      parameter ilen = width_a+1;
      parameter len = (ilen >= olen) ? ilen : olen;
      reg [len-1:0] result;
      reg [len-1:0] result_t;
      begin
        result_t = {(len){sbit}};
        result_t[ilen-1:0] = arg1;
        result = result_t <<< arg2;
        fshl_u_1 =  result[olen-1:0];
      end
   endfunction // fshl_u

   //Shift-left - unsigned shift argument
   function [width_z-1:0] fshl_u;
      input [width_a-1:0] arg1;
      input [width_s-1:0] arg2;
      input sbit;
      fshl_u = fshl_u_1({sbit,arg1} ,arg2, sbit);
   endfunction // fshl_u

endmodule

//------> /usr/cadtool/mentor/Catapult/2024.1/Mgc_home/pkgs/siflibs/mgc_shift_r_beh_v5.v 
module mgc_shift_r_v5(a,s,z);
   parameter    width_a = 4;
   parameter    signd_a = 1;
   parameter    width_s = 2;
   parameter    width_z = 8;

   input [width_a-1:0] a;
   input [width_s-1:0] s;
   output [width_z -1:0] z;

   generate
     if (signd_a)
     begin: SGNED
       assign z = fshr_u(a,s,a[width_a-1]);
     end
     else
     begin: UNSGNED
       assign z = fshr_u(a,s,1'b0);
     end
   endgenerate

   //Shift right - unsigned shift argument
   function [width_z-1:0] fshr_u;
      input [width_a-1:0] arg1;
      input [width_s-1:0] arg2;
      input sbit;
      parameter olen = width_z;
      parameter ilen = signd_a ? width_a : width_a+1;
      parameter len = (ilen >= olen) ? ilen : olen;
      reg signed [len-1:0] result;
      reg signed [len-1:0] result_t;
      begin
        result_t = $signed( {(len){sbit}} );
        result_t[width_a-1:0] = arg1;
        result = result_t >>> arg2;
        fshr_u =  result[olen-1:0];
      end
   endfunction // fshl_u

endmodule

//------> ../td_ccore_solutions/leading_sign_53_0_3a9575f520c3de66011ccae68f6ded90a87b_0/rtl.v 
// ----------------------------------------------------------------------
//  HLS HDL:        Verilog Netlister
//  HLS Version:    2024.1/1091966 Production Release
//  HLS Date:       Wed Feb 14 09:07:18 PST 2024
// 
//  Generated by:   u110020015@pc407
//  Generated date: Tue May 21 16:58:04 2024
// ----------------------------------------------------------------------

// 
// ------------------------------------------------------------------
//  Design Unit:    leading_sign_53_0
// ------------------------------------------------------------------


module leading_sign_53_0 (
  mantissa, rtn
);
  input [52:0] mantissa;
  output [5:0] rtn;


  // Interconnect Declarations
  wire return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_wrs_c_6_2_sdt_2;
  wire return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_wrs_c_18_3_sdt_3;
  wire return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_wrs_c_26_2_sdt_2;
  wire return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_wrs_c_42_4_sdt_4;
  wire return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_wrs_c_50_2_sdt_2;
  wire return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_wrs_c_62_3_sdt_3;
  wire return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_wrs_c_70_2_sdt_2;
  wire return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_wrs_c_90_5_sdt_5;
  wire return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_wrs_c_98_2_sdt_2;
  wire return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_wrs_c_110_3_sdt_3;
  wire return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_wrs_c_118_2_sdt_2;
  wire return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_wrs_c_134_4_sdt_4;
  wire return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_wrs_c_142_2_sdt_2;
  wire return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_wrs_c_6_2_sdt_1;
  wire return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_wrs_c_14_2_sdt_1;
  wire return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_wrs_c_26_2_sdt_1;
  wire return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_wrs_c_34_2_sdt_1;
  wire return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_wrs_c_50_2_sdt_1;
  wire return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_wrs_c_58_2_sdt_1;
  wire return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_wrs_c_70_2_sdt_1;
  wire return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_wrs_c_78_2_sdt_1;
  wire return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_wrs_c_98_2_sdt_1;
  wire return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_wrs_c_106_2_sdt_1;
  wire return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_wrs_c_118_2_sdt_1;
  wire return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_wrs_c_126_2_sdt_1;
  wire return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_wrs_c_142_2_sdt_1;
  wire c_h_1_2;
  wire c_h_1_5;
  wire c_h_1_6;
  wire c_h_1_9;
  wire c_h_1_12;
  wire c_h_1_13;
  wire c_h_1_14;
  wire c_h_1_17;
  wire c_h_1_20;
  wire c_h_1_21;
  wire c_h_1_23;
  wire c_h_1_24;
  wire c_h_1_25;

  wire return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_and_205_nl;
  wire return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_and_nl;
  wire return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_and_216_nl;
  wire return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_and_1_nl;
  wire return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_or_3_nl;

  // Interconnect Declarations for Component Instantiations 
  assign return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_wrs_c_6_2_sdt_2
      = ~((mantissa[50:49]!=2'b00));
  assign return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_wrs_c_6_2_sdt_1
      = ~((mantissa[52:51]!=2'b00));
  assign return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_wrs_c_14_2_sdt_1
      = ~((mantissa[48:47]!=2'b00));
  assign c_h_1_2 = return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_wrs_c_6_2_sdt_1
      & return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_wrs_c_6_2_sdt_2;
  assign return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_wrs_c_18_3_sdt_3
      = (mantissa[46:45]==2'b00) & return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_wrs_c_14_2_sdt_1;
  assign return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_wrs_c_26_2_sdt_2
      = ~((mantissa[42:41]!=2'b00));
  assign return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_wrs_c_26_2_sdt_1
      = ~((mantissa[44:43]!=2'b00));
  assign return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_wrs_c_34_2_sdt_1
      = ~((mantissa[40:39]!=2'b00));
  assign c_h_1_5 = return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_wrs_c_26_2_sdt_1
      & return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_wrs_c_26_2_sdt_2;
  assign c_h_1_6 = c_h_1_2 & return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_wrs_c_18_3_sdt_3;
  assign return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_wrs_c_42_4_sdt_4
      = (mantissa[38:37]==2'b00) & return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_wrs_c_34_2_sdt_1
      & c_h_1_5;
  assign return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_wrs_c_50_2_sdt_2
      = ~((mantissa[34:33]!=2'b00));
  assign return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_wrs_c_50_2_sdt_1
      = ~((mantissa[36:35]!=2'b00));
  assign return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_wrs_c_58_2_sdt_1
      = ~((mantissa[32:31]!=2'b00));
  assign c_h_1_9 = return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_wrs_c_50_2_sdt_1
      & return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_wrs_c_50_2_sdt_2;
  assign return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_wrs_c_62_3_sdt_3
      = (mantissa[30:29]==2'b00) & return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_wrs_c_58_2_sdt_1;
  assign return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_wrs_c_70_2_sdt_2
      = ~((mantissa[26:25]!=2'b00));
  assign return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_wrs_c_70_2_sdt_1
      = ~((mantissa[28:27]!=2'b00));
  assign return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_wrs_c_78_2_sdt_1
      = ~((mantissa[24:23]!=2'b00));
  assign c_h_1_12 = return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_wrs_c_70_2_sdt_1
      & return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_wrs_c_70_2_sdt_2;
  assign c_h_1_13 = c_h_1_9 & return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_wrs_c_62_3_sdt_3;
  assign c_h_1_14 = c_h_1_6 & return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_wrs_c_42_4_sdt_4;
  assign return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_wrs_c_90_5_sdt_5
      = (mantissa[22:21]==2'b00) & return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_wrs_c_78_2_sdt_1
      & c_h_1_12 & c_h_1_13;
  assign return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_wrs_c_98_2_sdt_2
      = ~((mantissa[18:17]!=2'b00));
  assign return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_wrs_c_98_2_sdt_1
      = ~((mantissa[20:19]!=2'b00));
  assign return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_wrs_c_106_2_sdt_1
      = ~((mantissa[16:15]!=2'b00));
  assign c_h_1_17 = return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_wrs_c_98_2_sdt_1
      & return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_wrs_c_98_2_sdt_2;
  assign return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_wrs_c_110_3_sdt_3
      = (mantissa[14:13]==2'b00) & return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_wrs_c_106_2_sdt_1;
  assign return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_wrs_c_118_2_sdt_2
      = ~((mantissa[10:9]!=2'b00));
  assign return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_wrs_c_118_2_sdt_1
      = ~((mantissa[12:11]!=2'b00));
  assign return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_wrs_c_126_2_sdt_1
      = ~((mantissa[8:7]!=2'b00));
  assign c_h_1_20 = return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_wrs_c_118_2_sdt_1
      & return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_wrs_c_118_2_sdt_2;
  assign c_h_1_21 = c_h_1_17 & return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_wrs_c_110_3_sdt_3;
  assign return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_wrs_c_134_4_sdt_4
      = (mantissa[6:5]==2'b00) & return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_wrs_c_126_2_sdt_1
      & c_h_1_20;
  assign return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_wrs_c_142_2_sdt_2
      = ~((mantissa[2:1]!=2'b00));
  assign return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_wrs_c_142_2_sdt_1
      = ~((mantissa[4:3]!=2'b00));
  assign c_h_1_23 = return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_wrs_c_142_2_sdt_1
      & return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_wrs_c_142_2_sdt_2;
  assign c_h_1_24 = c_h_1_21 & return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_wrs_c_134_4_sdt_4;
  assign c_h_1_25 = c_h_1_14 & return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_wrs_c_90_5_sdt_5;
  assign return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_and_205_nl
      = c_h_1_14 & (c_h_1_24 | (~ return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_wrs_c_90_5_sdt_5));
  assign return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_and_nl
      = c_h_1_6 & (c_h_1_13 | (~ return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_wrs_c_42_4_sdt_4))
      & (~((~(c_h_1_21 & (~ return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_wrs_c_134_4_sdt_4)))
      & c_h_1_25));
  assign return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_and_216_nl
      = c_h_1_2 & (c_h_1_5 | (~ return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_wrs_c_18_3_sdt_3))
      & (~((~(c_h_1_9 & (c_h_1_12 | (~ return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_wrs_c_62_3_sdt_3))))
      & c_h_1_14)) & (~((~(c_h_1_17 & (c_h_1_20 | (~ return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_wrs_c_110_3_sdt_3))
      & (c_h_1_23 | (~ c_h_1_24)))) & c_h_1_25));
  assign return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_and_1_nl
      = return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_wrs_c_6_2_sdt_1
      & (return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_wrs_c_14_2_sdt_1
      | (~ return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_wrs_c_6_2_sdt_2))
      & (~((~(return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_wrs_c_26_2_sdt_1
      & (return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_wrs_c_34_2_sdt_1
      | (~ return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_wrs_c_26_2_sdt_2))))
      & c_h_1_6)) & (~((~(return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_wrs_c_50_2_sdt_1
      & (return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_wrs_c_58_2_sdt_1
      | (~ return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_wrs_c_50_2_sdt_2))
      & (~((~(return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_wrs_c_70_2_sdt_1
      & (return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_wrs_c_78_2_sdt_1
      | (~ return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_wrs_c_70_2_sdt_2))))
      & c_h_1_13)))) & c_h_1_14)) & (~((~(return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_wrs_c_98_2_sdt_1
      & (return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_wrs_c_106_2_sdt_1
      | (~ return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_wrs_c_98_2_sdt_2))
      & (~((~(return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_wrs_c_118_2_sdt_1
      & (return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_wrs_c_126_2_sdt_1
      | (~ return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_wrs_c_118_2_sdt_2))))
      & c_h_1_21)) & (~((~(return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_wrs_c_142_2_sdt_1
      & (~ return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_wrs_c_142_2_sdt_2)))
      & c_h_1_24)))) & c_h_1_25));
  assign return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_or_3_nl
      = ((~((mantissa[52]) | (~((mantissa[51:50]!=2'b01))))) & (~(((mantissa[48])
      | (~((mantissa[47:46]!=2'b01)))) & c_h_1_2)) & (~((~((~((mantissa[44]) | (~((mantissa[43:42]!=2'b01)))))
      & (~(((mantissa[40]) | (~((mantissa[39:38]!=2'b01)))) & c_h_1_5)))) & c_h_1_6))
      & (~((~((~((mantissa[36]) | (~((mantissa[35:34]!=2'b01))))) & (~(((mantissa[32])
      | (~((mantissa[31:30]!=2'b01)))) & c_h_1_9)) & (~((~((~((mantissa[28]) | (~((mantissa[27:26]!=2'b01)))))
      & (~(((mantissa[24]) | (~((mantissa[23:22]!=2'b01)))) & c_h_1_12)))) & c_h_1_13))))
      & c_h_1_14)) & (~((~((~((mantissa[20]) | (~((mantissa[19:18]!=2'b01))))) &
      (~(((mantissa[16]) | (~((mantissa[15:14]!=2'b01)))) & c_h_1_17)) & (~((~((~((mantissa[12])
      | (~((mantissa[11:10]!=2'b01))))) & (~(((mantissa[8]) | (~((mantissa[7:6]!=2'b01))))
      & c_h_1_20)))) & c_h_1_21)) & (~(((mantissa[4]) | (~((mantissa[3:2]!=2'b01)))
      | c_h_1_23) & c_h_1_24)))) & c_h_1_25))) | ((~ (mantissa[0])) & c_h_1_23 &
      c_h_1_24 & c_h_1_25);
  assign rtn = {c_h_1_25 , return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_and_205_nl
      , return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_and_nl
      , return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_and_216_nl
      , return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_and_1_nl
      , return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_return_mult_generic_AC_RND_CONV_false_if_leading_sign_53_0_rtn_or_3_nl};
endmodule




//------> ./rtl.v 
// ----------------------------------------------------------------------
//  HLS HDL:        Verilog Netlister
//  HLS Version:    2024.1/1091966 Production Release
//  HLS Date:       Wed Feb 14 09:07:18 PST 2024
// 
//  Generated by:   u110020015@ws41
//  Generated date: Tue May 21 22:17:20 2024
// ----------------------------------------------------------------------

// 
// ------------------------------------------------------------------
//  Design Unit:    Out_state_ccs_sample_mem_ccs_ram_sync_singleport_rwport_en_6_16_10_1024_1024_16_5_gen
// ------------------------------------------------------------------


module Out_state_ccs_sample_mem_ccs_ram_sync_singleport_rwport_en_6_16_10_1024_1024_16_5_gen
    (
  en, q, we, d, adr, adr_d, d_d, en_d, we_d, q_d, port_0_rw_ram_ir_internal_RMASK_B_d,
      port_0_rw_ram_ir_internal_WMASK_B_d
);
  output en;
  input [15:0] q;
  output we;
  output [15:0] d;
  output [9:0] adr;
  input [9:0] adr_d;
  input [15:0] d_d;
  input en_d;
  input we_d;
  output [15:0] q_d;
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
//  Design Unit:    Out_state_ccs_sample_mem_ccs_ram_sync_singleport_rwport_en_5_64_10_1024_1024_64_5_gen
// ------------------------------------------------------------------


module Out_state_ccs_sample_mem_ccs_ram_sync_singleport_rwport_en_5_64_10_1024_1024_64_5_gen
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
//  Design Unit:    Out_state_run_run_fsm
//  FSM Module
// ------------------------------------------------------------------


module Out_state_run_run_fsm (
  clk, rst, arst_n, run_wen, fsm_output, for_C_2_tr0
);
  input clk;
  input rst;
  input arst_n;
  input run_wen;
  output [5:0] fsm_output;
  reg [5:0] fsm_output;
  input for_C_2_tr0;


  // FSM State Type Declaration for Out_state_run_run_fsm_1
  parameter
    run_rlp_C_0 = 3'd0,
    main_C_0 = 3'd1,
    for_C_0 = 3'd2,
    for_C_1 = 3'd3,
    for_C_2 = 3'd4,
    main_C_1 = 3'd5;

  reg [2:0] state_var;
  reg [2:0] state_var_NS;


  // Interconnect Declarations for Component Instantiations 
  always @(*)
  begin : Out_state_run_run_fsm_1
    case (state_var)
      main_C_0 : begin
        fsm_output = 6'b000010;
        state_var_NS = for_C_0;
      end
      for_C_0 : begin
        fsm_output = 6'b000100;
        state_var_NS = for_C_1;
      end
      for_C_1 : begin
        fsm_output = 6'b001000;
        state_var_NS = for_C_2;
      end
      for_C_2 : begin
        fsm_output = 6'b010000;
        if ( for_C_2_tr0 ) begin
          state_var_NS = main_C_1;
        end
        else begin
          state_var_NS = for_C_0;
        end
      end
      main_C_1 : begin
        fsm_output = 6'b100000;
        state_var_NS = main_C_0;
      end
      // run_rlp_C_0
      default : begin
        fsm_output = 6'b000001;
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
//  Design Unit:    Out_state_run_staller
// ------------------------------------------------------------------


module Out_state_run_staller (
  clk, rst, arst_n, run_wen, run_wten, ap_start_rsci_wen_comp, ap_done_rsci_wen_comp,
      out1_rsci_wen_comp
);
  input clk;
  input rst;
  input arst_n;
  output run_wen;
  output run_wten;
  reg run_wten;
  input ap_start_rsci_wen_comp;
  input ap_done_rsci_wen_comp;
  input out1_rsci_wen_comp;



  // Interconnect Declarations for Component Instantiations 
  assign run_wen = ap_start_rsci_wen_comp & ap_done_rsci_wen_comp & out1_rsci_wen_comp;
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
//  Design Unit:    Out_state_run_line_buf0_u_triosy_obj_line_buf0_u_triosy_wait_ctrl
// ------------------------------------------------------------------


module Out_state_run_line_buf0_u_triosy_obj_line_buf0_u_triosy_wait_ctrl (
  run_wten, line_buf0_u_triosy_obj_iswt0, line_buf0_u_triosy_obj_biwt
);
  input run_wten;
  input line_buf0_u_triosy_obj_iswt0;
  output line_buf0_u_triosy_obj_biwt;



  // Interconnect Declarations for Component Instantiations 
  assign line_buf0_u_triosy_obj_biwt = (~ run_wten) & line_buf0_u_triosy_obj_iswt0;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    Out_state_run_line_buf0_f_d_triosy_obj_line_buf0_f_d_triosy_wait_ctrl
// ------------------------------------------------------------------


module Out_state_run_line_buf0_f_d_triosy_obj_line_buf0_f_d_triosy_wait_ctrl (
  run_wten, line_buf0_f_d_triosy_obj_iswt0, line_buf0_f_d_triosy_obj_biwt
);
  input run_wten;
  input line_buf0_f_d_triosy_obj_iswt0;
  output line_buf0_f_d_triosy_obj_biwt;



  // Interconnect Declarations for Component Instantiations 
  assign line_buf0_f_d_triosy_obj_biwt = (~ run_wten) & line_buf0_f_d_triosy_obj_iswt0;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    Out_state_run_mode_triosy_obj_mode_triosy_wait_ctrl
// ------------------------------------------------------------------


module Out_state_run_mode_triosy_obj_mode_triosy_wait_ctrl (
  run_wten, mode_triosy_obj_iswt0, mode_triosy_obj_biwt
);
  input run_wten;
  input mode_triosy_obj_iswt0;
  output mode_triosy_obj_biwt;



  // Interconnect Declarations for Component Instantiations 
  assign mode_triosy_obj_biwt = (~ run_wten) & mode_triosy_obj_iswt0;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    Out_state_run_wait_dp
// ------------------------------------------------------------------


module Out_state_run_wait_dp (
  line_buf0_f_d_rsci_en_d, line_buf0_u_rsci_en_d, run_wen, line_buf0_f_d_rsci_cgo,
      line_buf0_f_d_rsci_cgo_ir_unreg, line_buf0_u_rsci_cgo, line_buf0_u_rsci_cgo_ir_unreg
);
  output line_buf0_f_d_rsci_en_d;
  output line_buf0_u_rsci_en_d;
  input run_wen;
  input line_buf0_f_d_rsci_cgo;
  input line_buf0_f_d_rsci_cgo_ir_unreg;
  input line_buf0_u_rsci_cgo;
  input line_buf0_u_rsci_cgo_ir_unreg;



  // Interconnect Declarations for Component Instantiations 
  assign line_buf0_f_d_rsci_en_d = run_wen & (line_buf0_f_d_rsci_cgo | line_buf0_f_d_rsci_cgo_ir_unreg);
  assign line_buf0_u_rsci_en_d = run_wen & (line_buf0_u_rsci_cgo | line_buf0_u_rsci_cgo_ir_unreg);
endmodule

// ------------------------------------------------------------------
//  Design Unit:    Out_state_run_out1_rsci_out1_wait_ctrl
// ------------------------------------------------------------------


module Out_state_run_out1_rsci_out1_wait_ctrl (
  out1_rsci_iswt0, out1_rsci_biwt, out1_rsci_irdy
);
  input out1_rsci_iswt0;
  output out1_rsci_biwt;
  input out1_rsci_irdy;



  // Interconnect Declarations for Component Instantiations 
  assign out1_rsci_biwt = out1_rsci_iswt0 & out1_rsci_irdy;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    Out_state_run_ap_done_rsci_ap_done_wait_ctrl
// ------------------------------------------------------------------


module Out_state_run_ap_done_rsci_ap_done_wait_ctrl (
  ap_done_rsci_iswt0, ap_done_rsci_biwt, ap_done_rsci_irdy
);
  input ap_done_rsci_iswt0;
  output ap_done_rsci_biwt;
  input ap_done_rsci_irdy;



  // Interconnect Declarations for Component Instantiations 
  assign ap_done_rsci_biwt = ap_done_rsci_iswt0 & ap_done_rsci_irdy;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    Out_state_run_ap_start_rsci_ap_start_wait_ctrl
// ------------------------------------------------------------------


module Out_state_run_ap_start_rsci_ap_start_wait_ctrl (
  ap_start_rsci_iswt0, ap_start_rsci_biwt, ap_start_rsci_ivld
);
  input ap_start_rsci_iswt0;
  output ap_start_rsci_biwt;
  input ap_start_rsci_ivld;



  // Interconnect Declarations for Component Instantiations 
  assign ap_start_rsci_biwt = ap_start_rsci_iswt0 & ap_start_rsci_ivld;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    Out_state_run_line_buf0_u_triosy_obj
// ------------------------------------------------------------------


module Out_state_run_line_buf0_u_triosy_obj (
  line_buf0_u_triosy_lz, run_wten, line_buf0_u_triosy_obj_iswt0
);
  output line_buf0_u_triosy_lz;
  input run_wten;
  input line_buf0_u_triosy_obj_iswt0;


  // Interconnect Declarations
  wire line_buf0_u_triosy_obj_biwt;


  // Interconnect Declarations for Component Instantiations 
  mgc_io_sync_v2 #(.valid(32'sd0)) line_buf0_u_triosy_obj (
      .ld(line_buf0_u_triosy_obj_biwt),
      .lz(line_buf0_u_triosy_lz)
    );
  Out_state_run_line_buf0_u_triosy_obj_line_buf0_u_triosy_wait_ctrl Out_state_run_line_buf0_u_triosy_obj_line_buf0_u_triosy_wait_ctrl_inst
      (
      .run_wten(run_wten),
      .line_buf0_u_triosy_obj_iswt0(line_buf0_u_triosy_obj_iswt0),
      .line_buf0_u_triosy_obj_biwt(line_buf0_u_triosy_obj_biwt)
    );
endmodule

// ------------------------------------------------------------------
//  Design Unit:    Out_state_run_line_buf0_f_d_triosy_obj
// ------------------------------------------------------------------


module Out_state_run_line_buf0_f_d_triosy_obj (
  line_buf0_f_d_triosy_lz, run_wten, line_buf0_f_d_triosy_obj_iswt0
);
  output line_buf0_f_d_triosy_lz;
  input run_wten;
  input line_buf0_f_d_triosy_obj_iswt0;


  // Interconnect Declarations
  wire line_buf0_f_d_triosy_obj_biwt;


  // Interconnect Declarations for Component Instantiations 
  mgc_io_sync_v2 #(.valid(32'sd0)) line_buf0_f_d_triosy_obj (
      .ld(line_buf0_f_d_triosy_obj_biwt),
      .lz(line_buf0_f_d_triosy_lz)
    );
  Out_state_run_line_buf0_f_d_triosy_obj_line_buf0_f_d_triosy_wait_ctrl Out_state_run_line_buf0_f_d_triosy_obj_line_buf0_f_d_triosy_wait_ctrl_inst
      (
      .run_wten(run_wten),
      .line_buf0_f_d_triosy_obj_iswt0(line_buf0_f_d_triosy_obj_iswt0),
      .line_buf0_f_d_triosy_obj_biwt(line_buf0_f_d_triosy_obj_biwt)
    );
endmodule

// ------------------------------------------------------------------
//  Design Unit:    Out_state_run_mode_triosy_obj
// ------------------------------------------------------------------


module Out_state_run_mode_triosy_obj (
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
  Out_state_run_mode_triosy_obj_mode_triosy_wait_ctrl Out_state_run_mode_triosy_obj_mode_triosy_wait_ctrl_inst
      (
      .run_wten(run_wten),
      .mode_triosy_obj_iswt0(mode_triosy_obj_iswt0),
      .mode_triosy_obj_biwt(mode_triosy_obj_biwt)
    );
endmodule

// ------------------------------------------------------------------
//  Design Unit:    Out_state_run_out1_rsci
// ------------------------------------------------------------------


module Out_state_run_out1_rsci (
  out1_rsc_dat, out1_rsc_vld, out1_rsc_rdy, out1_rsci_oswt, out1_rsci_wen_comp, out1_rsci_idat
);
  output [79:0] out1_rsc_dat;
  output out1_rsc_vld;
  input out1_rsc_rdy;
  input out1_rsci_oswt;
  output out1_rsci_wen_comp;
  input [79:0] out1_rsci_idat;


  // Interconnect Declarations
  wire out1_rsci_biwt;
  wire out1_rsci_irdy;


  // Interconnect Declarations for Component Instantiations 
  ccs_out_wait_v1 #(.rscid(32'sd3),
  .width(32'sd80)) out1_rsci (
      .irdy(out1_rsci_irdy),
      .ivld(out1_rsci_oswt),
      .idat(out1_rsci_idat),
      .rdy(out1_rsc_rdy),
      .vld(out1_rsc_vld),
      .dat(out1_rsc_dat)
    );
  Out_state_run_out1_rsci_out1_wait_ctrl Out_state_run_out1_rsci_out1_wait_ctrl_inst
      (
      .out1_rsci_iswt0(out1_rsci_oswt),
      .out1_rsci_biwt(out1_rsci_biwt),
      .out1_rsci_irdy(out1_rsci_irdy)
    );
  assign out1_rsci_wen_comp = (~ out1_rsci_oswt) | out1_rsci_biwt;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    Out_state_run_ap_done_rsci
// ------------------------------------------------------------------


module Out_state_run_ap_done_rsci (
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
  ccs_out_wait_v1 #(.rscid(32'sd2),
  .width(32'sd1)) ap_done_rsci (
      .irdy(ap_done_rsci_irdy),
      .ivld(ap_done_rsci_oswt),
      .idat(1'b1),
      .rdy(ap_done_rsc_rdy),
      .vld(ap_done_rsc_vld),
      .dat(ap_done_rsc_dat)
    );
  Out_state_run_ap_done_rsci_ap_done_wait_ctrl Out_state_run_ap_done_rsci_ap_done_wait_ctrl_inst
      (
      .ap_done_rsci_iswt0(ap_done_rsci_oswt),
      .ap_done_rsci_biwt(ap_done_rsci_biwt),
      .ap_done_rsci_irdy(ap_done_rsci_irdy)
    );
  assign ap_done_rsci_wen_comp = (~ ap_done_rsci_oswt) | ap_done_rsci_biwt;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    Out_state_run_ap_start_rsci
// ------------------------------------------------------------------


module Out_state_run_ap_start_rsci (
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
  ccs_in_wait_v1 #(.rscid(32'sd1),
  .width(32'sd1)) ap_start_rsci (
      .rdy(ap_start_rsc_rdy),
      .vld(ap_start_rsc_vld),
      .dat(ap_start_rsc_dat),
      .irdy(ap_start_rsci_oswt),
      .ivld(ap_start_rsci_ivld),
      .idat(ap_start_rsci_idat)
    );
  Out_state_run_ap_start_rsci_ap_start_wait_ctrl Out_state_run_ap_start_rsci_ap_start_wait_ctrl_inst
      (
      .ap_start_rsci_iswt0(ap_start_rsci_oswt),
      .ap_start_rsci_biwt(ap_start_rsci_biwt),
      .ap_start_rsci_ivld(ap_start_rsci_ivld)
    );
  assign ap_start_rsci_wen_comp = (~ ap_start_rsci_oswt) | ap_start_rsci_biwt;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    Out_state_run
// ------------------------------------------------------------------


module Out_state_run (
  clk, rst, arst_n, ap_start_rsc_dat, ap_start_rsc_vld, ap_start_rsc_rdy, ap_done_rsc_dat,
      ap_done_rsc_vld, ap_done_rsc_rdy, out1_rsc_dat, out1_rsc_vld, out1_rsc_rdy,
      mode_rsc_dat, mode_triosy_lz, line_buf0_f_d_triosy_lz, line_buf0_u_triosy_lz,
      line_buf0_f_d_rsci_en_d, line_buf0_f_d_rsci_q_d, line_buf0_f_d_rsci_port_0_rw_ram_ir_internal_RMASK_B_d,
      line_buf0_u_rsci_d_d, line_buf0_u_rsci_en_d, line_buf0_u_rsci_q_d, line_buf0_u_rsci_port_0_rw_ram_ir_internal_RMASK_B_d,
      line_buf0_f_d_rsci_adr_d_pff, line_buf0_u_rsci_we_d_pff
);
  input clk;
  input rst;
  input arst_n;
  input ap_start_rsc_dat;
  input ap_start_rsc_vld;
  output ap_start_rsc_rdy;
  output ap_done_rsc_dat;
  output ap_done_rsc_vld;
  input ap_done_rsc_rdy;
  output [79:0] out1_rsc_dat;
  output out1_rsc_vld;
  input out1_rsc_rdy;
  input [15:0] mode_rsc_dat;
  output mode_triosy_lz;
  output line_buf0_f_d_triosy_lz;
  output line_buf0_u_triosy_lz;
  output line_buf0_f_d_rsci_en_d;
  input [63:0] line_buf0_f_d_rsci_q_d;
  output line_buf0_f_d_rsci_port_0_rw_ram_ir_internal_RMASK_B_d;
  output [15:0] line_buf0_u_rsci_d_d;
  output line_buf0_u_rsci_en_d;
  input [15:0] line_buf0_u_rsci_q_d;
  output line_buf0_u_rsci_port_0_rw_ram_ir_internal_RMASK_B_d;
  output [9:0] line_buf0_f_d_rsci_adr_d_pff;
  output line_buf0_u_rsci_we_d_pff;


  // Interconnect Declarations
  wire run_wen;
  wire run_wten;
  wire ap_start_rsci_wen_comp;
  wire ap_done_rsci_wen_comp;
  wire out1_rsci_wen_comp;
  wire [15:0] mode_rsci_idat;
  reg [15:0] out1_rsci_idat_79_64;
  reg out1_rsci_idat_63;
  reg [10:0] out1_rsci_idat_62_52;
  reg out1_rsci_idat_51;
  reg [50:0] out1_rsci_idat_50_0;
  wire [5:0] fsm_output;
  wire return_extract_return_extract_nor_tmp;
  wire return_mult_generic_AC_RND_CONV_false_exp_ovf_oif_aif_return_mult_generic_AC_RND_CONV_false_exp_ovf_oif_aelse_and_tmp;
  wire [11:0] return_mult_generic_AC_RND_CONV_false_exp_acc_tmp;
  wire [12:0] nl_return_mult_generic_AC_RND_CONV_false_exp_acc_tmp;
  wire return_extract_m_zero_return_extract_m_zero_nor_tmp;
  wire operator_11_true_operator_11_true_and_tmp;
  wire and_dcpl_19;
  wire and_dcpl_22;
  wire and_dcpl_23;
  wire and_dcpl_26;
  wire or_dcpl_1;
  wire or_dcpl_5;
  wire or_dcpl_11;
  wire or_dcpl_13;
  wire and_dcpl_30;
  wire and_dcpl_65;
  wire and_70_cse;
  wire and_104_cse;
  wire return_mult_generic_AC_RND_CONV_false_zero_m_return_mult_generic_AC_RND_CONV_false_zero_m_oelse_return_mult_generic_AC_RND_CONV_false_r_zero_return_extract_nand_mdf_sva_1;
  wire return_mult_generic_AC_RND_CONV_false_lor_lpi_2_dfm_1;
  wire return_mult_generic_AC_RND_CONV_false_op1_nan_sva_1;
  wire [105:0] return_mult_generic_AC_RND_CONV_false_p_sva_1;
  wire return_mult_generic_AC_RND_CONV_false_if_1_aelse_return_mult_generic_AC_RND_CONV_false_if_1_aelse_or_2;
  wire return_mult_generic_AC_RND_CONV_false_op1_normal_sva_1;
  reg [9:0] for_x_10_0_sva_9_0;
  reg [10:0] for_x_10_0_sva_1;
  reg [15:0] for_io_read_mode_rsc_cse_sva;
  wire [11:0] operator_6_false_acc_psp_sva_1;
  wire [12:0] nl_operator_6_false_acc_psp_sva_1;
  reg return_mult_generic_AC_RND_CONV_false_do_shift_left_1_sva;
  wire for_if_and_cse;
  reg reg_line_buf0_u_triosy_obj_iswt0_cse;
  reg reg_line_buf0_u_rsci_cgo_ir_cse;
  reg reg_line_buf0_f_d_rsci_cgo_ir_cse;
  reg reg_out1_rsci_iswt0_cse;
  reg reg_ap_start_rsci_iswt0_cse;
  wire for_and_cse;
  wire or_70_rmff;
  wire or_69_rmff;
  wire [14:0] Out_state_monty_mul_acc_2_psp_sva_1;
  wire [15:0] nl_Out_state_monty_mul_acc_2_psp_sva_1;
  wire [51:0] return_mult_generic_AC_RND_CONV_false_else_1_lshift_itm;
  wire [53:0] return_mult_generic_AC_RND_CONV_false_else_1_rshift_itm;
  wire [10:0] z_out;
  wire [11:0] nl_z_out;
  wire out1_rsci_idat_51_mx0c0;
  wire out1_rsci_idat_51_mx0c1;
  wire [10:0] return_mult_generic_AC_RND_CONV_false_exp_1_10_0_lpi_2_dfm_3;
  wire return_mult_generic_AC_RND_CONV_false_e_incr_lpi_2_dfm_2;
  wire [51:0] r_rnd_dummy_51_0_sva_1;
  wire [52:0] nl_r_rnd_dummy_51_0_sva_1;
  wire [52:0] return_mult_generic_AC_RND_CONV_false_res_bef_rnd_3_53_1_lpi_2_dfm_1;
  wire return_mult_generic_AC_RND_CONV_false_if_1_and_1_tmp_1;
  wire [14:0] operator_32_false_acc_psp_1_sva_1;
  wire [15:0] nl_operator_32_false_acc_psp_1_sva_1;
  wire [9:0] operator_32_false_mul_atp_sva_1;
  wire [10:0] nl_operator_32_false_mul_atp_sva_1;
  wire [5:0] leading_sign_53_0_out_1;
  wire return_mult_generic_AC_RND_CONV_false_if_acc_1_itm_11_1;

  wire[50:0] return_mult_generic_AC_RND_CONV_false_return_mult_generic_AC_RND_CONV_false_and_1_nl;
  wire return_mult_generic_AC_RND_CONV_false_oelse_3_return_mult_generic_AC_RND_CONV_false_if_3_nor_nl;
  wire[10:0] return_mult_generic_AC_RND_CONV_false_return_mult_generic_AC_RND_CONV_false_or_nl;
  wire[10:0] return_mult_generic_AC_RND_CONV_false_else_2_else_return_mult_generic_AC_RND_CONV_false_else_2_else_and_nl;
  wire[10:0] return_mult_generic_AC_RND_CONV_false_else_2_else_mux_nl;
  wire return_mult_generic_AC_RND_CONV_false_else_2_else_and_nl;
  wire and_96_nl;
  wire[11:0] return_mult_generic_AC_RND_CONV_false_if_acc_1_nl;
  wire[12:0] nl_return_mult_generic_AC_RND_CONV_false_if_acc_1_nl;
  wire return_mult_generic_AC_RND_CONV_false_if_if_not_nl;
  wire return_mult_generic_AC_RND_CONV_false_and_nl;
  wire return_mult_generic_AC_RND_CONV_false_mux_8_nl;
  wire return_mult_generic_AC_RND_CONV_false_if_1_or_nl;
  wire return_mult_generic_AC_RND_CONV_false_else_1_sticky_bit_return_mult_generic_AC_RND_CONV_false_else_1_sticky_bit_return_mult_generic_AC_RND_CONV_false_else_1_sticky_bit_or_nl;
  wire return_mult_generic_AC_RND_CONV_false_return_mult_generic_AC_RND_CONV_false_nor_nl;
  wire return_mult_generic_AC_RND_CONV_false_and_2_nl;
  wire return_mult_generic_AC_RND_CONV_false_do_shift_left_1_mux_1_nl;
  wire[23:0] operator_32_false_acc_2_nl;
  wire[24:0] nl_operator_32_false_acc_2_nl;
  wire[10:0] operator_32_false_acc_6_nl;
  wire[11:0] nl_operator_32_false_acc_6_nl;
  wire[10:0] operator_32_false_acc_5_nl;
  wire[11:0] nl_operator_32_false_acc_5_nl;
  wire return_mult_generic_AC_RND_CONV_false_exp_plus_1_return_mult_generic_AC_RND_CONV_false_exp_plus_1_and_1_nl;
  wire[9:0] return_mult_generic_AC_RND_CONV_false_exp_plus_1_mux_2_nl;

  // Interconnect Declarations for Component Instantiations 
  wire [104:0] nl_return_mult_generic_AC_RND_CONV_false_if_1_lshift_rg_a;
  assign nl_return_mult_generic_AC_RND_CONV_false_if_1_lshift_rg_a = {return_mult_generic_AC_RND_CONV_false_op1_normal_sva_1
      , (line_buf0_f_d_rsci_q_d[51:0]) , 52'b0000000000000000000000000000000000000000000000000000};
  wire [5:0] nl_return_mult_generic_AC_RND_CONV_false_if_1_lshift_rg_s;
  assign nl_return_mult_generic_AC_RND_CONV_false_if_1_lshift_rg_s = MUX_v_6_2_2(leading_sign_53_0_out_1,
      (return_mult_generic_AC_RND_CONV_false_exp_acc_tmp[5:0]), operator_6_false_acc_psp_sva_1[11]);
  wire [3:0] nl_return_mult_generic_AC_RND_CONV_false_else_1_lshift_rg_s;
  assign nl_return_mult_generic_AC_RND_CONV_false_else_1_lshift_rg_s = ~ (return_mult_generic_AC_RND_CONV_false_exp_acc_tmp[3:0]);
  wire [53:0] nl_return_mult_generic_AC_RND_CONV_false_else_1_rshift_rg_a;
  assign nl_return_mult_generic_AC_RND_CONV_false_else_1_rshift_rg_a = {1'b0 , return_mult_generic_AC_RND_CONV_false_op1_normal_sva_1
      , (line_buf0_f_d_rsci_q_d[51:1]) , 1'b0};
  wire [3:0] nl_return_mult_generic_AC_RND_CONV_false_else_1_rshift_rg_s;
  assign nl_return_mult_generic_AC_RND_CONV_false_else_1_rshift_rg_s = ~ (return_mult_generic_AC_RND_CONV_false_exp_acc_tmp[3:0]);
  wire[51:0] return_mult_generic_AC_RND_CONV_false_if_return_mult_generic_AC_RND_CONV_false_if_and_nl;
  wire return_mult_generic_AC_RND_CONV_false_op1_normal_not_5_nl;
  wire [52:0] nl_leading_sign_53_0_rg_mantissa;
  assign return_mult_generic_AC_RND_CONV_false_op1_normal_not_5_nl = ~ return_mult_generic_AC_RND_CONV_false_op1_normal_sva_1;
  assign return_mult_generic_AC_RND_CONV_false_if_return_mult_generic_AC_RND_CONV_false_if_and_nl
      = MUX_v_52_2_2(52'b0000000000000000000000000000000000000000000000000000, (line_buf0_f_d_rsci_q_d[51:0]),
      return_mult_generic_AC_RND_CONV_false_op1_normal_not_5_nl);
  assign nl_leading_sign_53_0_rg_mantissa = {return_mult_generic_AC_RND_CONV_false_op1_normal_sva_1
      , return_mult_generic_AC_RND_CONV_false_if_return_mult_generic_AC_RND_CONV_false_if_and_nl};
  wire [79:0] nl_Out_state_run_out1_rsci_inst_out1_rsci_idat;
  assign nl_Out_state_run_out1_rsci_inst_out1_rsci_idat = {out1_rsci_idat_79_64 ,
      out1_rsci_idat_63 , out1_rsci_idat_62_52 , out1_rsci_idat_51 , out1_rsci_idat_50_0};
  wire  nl_Out_state_run_run_fsm_inst_for_C_2_tr0;
  assign nl_Out_state_run_run_fsm_inst_for_C_2_tr0 = for_x_10_0_sva_1[10];
  ccs_in_v1 #(.rscid(32'sd4),
  .width(32'sd16)) mode_rsci (
      .dat(mode_rsc_dat),
      .idat(mode_rsci_idat)
    );
  mgc_shift_l_v5 #(.width_a(32'sd105),
  .signd_a(32'sd0),
  .width_s(32'sd6),
  .width_z(32'sd106)) return_mult_generic_AC_RND_CONV_false_if_1_lshift_rg (
      .a(nl_return_mult_generic_AC_RND_CONV_false_if_1_lshift_rg_a[104:0]),
      .s(nl_return_mult_generic_AC_RND_CONV_false_if_1_lshift_rg_s[5:0]),
      .z(return_mult_generic_AC_RND_CONV_false_p_sva_1)
    );
  mgc_shift_l_v5 #(.width_a(32'sd52),
  .signd_a(32'sd0),
  .width_s(32'sd4),
  .width_z(32'sd52)) return_mult_generic_AC_RND_CONV_false_else_1_lshift_rg (
      .a(52'b1111111111111111111111111111111111111111111111111111),
      .s(nl_return_mult_generic_AC_RND_CONV_false_else_1_lshift_rg_s[3:0]),
      .z(return_mult_generic_AC_RND_CONV_false_else_1_lshift_itm)
    );
  mgc_shift_r_v5 #(.width_a(32'sd54),
  .signd_a(32'sd0),
  .width_s(32'sd4),
  .width_z(32'sd54)) return_mult_generic_AC_RND_CONV_false_else_1_rshift_rg (
      .a(nl_return_mult_generic_AC_RND_CONV_false_else_1_rshift_rg_a[53:0]),
      .s(nl_return_mult_generic_AC_RND_CONV_false_else_1_rshift_rg_s[3:0]),
      .z(return_mult_generic_AC_RND_CONV_false_else_1_rshift_itm)
    );
  leading_sign_53_0  leading_sign_53_0_rg (
      .mantissa(nl_leading_sign_53_0_rg_mantissa[52:0]),
      .rtn(leading_sign_53_0_out_1)
    );
  Out_state_run_ap_start_rsci Out_state_run_ap_start_rsci_inst (
      .ap_start_rsc_dat(ap_start_rsc_dat),
      .ap_start_rsc_vld(ap_start_rsc_vld),
      .ap_start_rsc_rdy(ap_start_rsc_rdy),
      .ap_start_rsci_oswt(reg_ap_start_rsci_iswt0_cse),
      .ap_start_rsci_wen_comp(ap_start_rsci_wen_comp)
    );
  Out_state_run_ap_done_rsci Out_state_run_ap_done_rsci_inst (
      .ap_done_rsc_dat(ap_done_rsc_dat),
      .ap_done_rsc_vld(ap_done_rsc_vld),
      .ap_done_rsc_rdy(ap_done_rsc_rdy),
      .ap_done_rsci_oswt(reg_line_buf0_u_triosy_obj_iswt0_cse),
      .ap_done_rsci_wen_comp(ap_done_rsci_wen_comp)
    );
  Out_state_run_out1_rsci Out_state_run_out1_rsci_inst (
      .out1_rsc_dat(out1_rsc_dat),
      .out1_rsc_vld(out1_rsc_vld),
      .out1_rsc_rdy(out1_rsc_rdy),
      .out1_rsci_oswt(reg_out1_rsci_iswt0_cse),
      .out1_rsci_wen_comp(out1_rsci_wen_comp),
      .out1_rsci_idat(nl_Out_state_run_out1_rsci_inst_out1_rsci_idat[79:0])
    );
  Out_state_run_wait_dp Out_state_run_wait_dp_inst (
      .line_buf0_f_d_rsci_en_d(line_buf0_f_d_rsci_en_d),
      .line_buf0_u_rsci_en_d(line_buf0_u_rsci_en_d),
      .run_wen(run_wen),
      .line_buf0_f_d_rsci_cgo(reg_line_buf0_f_d_rsci_cgo_ir_cse),
      .line_buf0_f_d_rsci_cgo_ir_unreg(or_70_rmff),
      .line_buf0_u_rsci_cgo(reg_line_buf0_u_rsci_cgo_ir_cse),
      .line_buf0_u_rsci_cgo_ir_unreg(or_69_rmff)
    );
  Out_state_run_mode_triosy_obj Out_state_run_mode_triosy_obj_inst (
      .mode_triosy_lz(mode_triosy_lz),
      .run_wten(run_wten),
      .mode_triosy_obj_iswt0(reg_line_buf0_u_triosy_obj_iswt0_cse)
    );
  Out_state_run_line_buf0_f_d_triosy_obj Out_state_run_line_buf0_f_d_triosy_obj_inst
      (
      .line_buf0_f_d_triosy_lz(line_buf0_f_d_triosy_lz),
      .run_wten(run_wten),
      .line_buf0_f_d_triosy_obj_iswt0(reg_line_buf0_u_triosy_obj_iswt0_cse)
    );
  Out_state_run_line_buf0_u_triosy_obj Out_state_run_line_buf0_u_triosy_obj_inst
      (
      .line_buf0_u_triosy_lz(line_buf0_u_triosy_lz),
      .run_wten(run_wten),
      .line_buf0_u_triosy_obj_iswt0(reg_line_buf0_u_triosy_obj_iswt0_cse)
    );
  Out_state_run_staller Out_state_run_staller_inst (
      .clk(clk),
      .rst(rst),
      .arst_n(arst_n),
      .run_wen(run_wen),
      .run_wten(run_wten),
      .ap_start_rsci_wen_comp(ap_start_rsci_wen_comp),
      .ap_done_rsci_wen_comp(ap_done_rsci_wen_comp),
      .out1_rsci_wen_comp(out1_rsci_wen_comp)
    );
  Out_state_run_run_fsm Out_state_run_run_fsm_inst (
      .clk(clk),
      .rst(rst),
      .arst_n(arst_n),
      .run_wen(run_wen),
      .fsm_output(fsm_output),
      .for_C_2_tr0(nl_Out_state_run_run_fsm_inst_for_C_2_tr0)
    );
  assign for_if_and_cse = run_wen & (fsm_output[3]);
  assign or_69_rmff = and_70_cse | and_104_cse | (and_dcpl_65 & (fsm_output[4]));
  assign or_70_rmff = (fsm_output[3:2]!=2'b00);
  assign for_and_cse = run_wen & (fsm_output[2]);
  assign nl_return_mult_generic_AC_RND_CONV_false_if_acc_1_nl =  -operator_6_false_acc_psp_sva_1;
  assign return_mult_generic_AC_RND_CONV_false_if_acc_1_nl = nl_return_mult_generic_AC_RND_CONV_false_if_acc_1_nl[11:0];
  assign return_mult_generic_AC_RND_CONV_false_if_acc_1_itm_11_1 = readslicef_12_1_11(return_mult_generic_AC_RND_CONV_false_if_acc_1_nl);
  assign return_mult_generic_AC_RND_CONV_false_if_1_aelse_return_mult_generic_AC_RND_CONV_false_if_1_aelse_or_2
      = (~ return_mult_generic_AC_RND_CONV_false_if_acc_1_itm_11_1) | (return_mult_generic_AC_RND_CONV_false_p_sva_1[105]);
  assign return_mult_generic_AC_RND_CONV_false_if_if_not_nl = ~ (operator_6_false_acc_psp_sva_1[11]);
  assign return_mult_generic_AC_RND_CONV_false_exp_1_10_0_lpi_2_dfm_3 = MUX_v_11_2_2(11'b00000000000,
      (operator_6_false_acc_psp_sva_1[10:0]), return_mult_generic_AC_RND_CONV_false_if_if_not_nl);
  assign return_mult_generic_AC_RND_CONV_false_op1_normal_sva_1 = (line_buf0_f_d_rsci_q_d[62:52]!=11'b00000000000);
  assign nl_return_mult_generic_AC_RND_CONV_false_exp_acc_tmp = conv_u2s_11_12(line_buf0_f_d_rsci_q_d[62:52])
      + conv_s2s_5_12({4'b1011 , (~ return_mult_generic_AC_RND_CONV_false_op1_normal_sva_1)})
      + 12'b000000000001;
  assign return_mult_generic_AC_RND_CONV_false_exp_acc_tmp = nl_return_mult_generic_AC_RND_CONV_false_exp_acc_tmp[11:0];
  assign nl_operator_6_false_acc_psp_sva_1 = return_mult_generic_AC_RND_CONV_false_exp_acc_tmp
      + conv_s2s_7_12({1'b1 , (~ leading_sign_53_0_out_1)}) + 12'b000000000001;
  assign operator_6_false_acc_psp_sva_1 = nl_operator_6_false_acc_psp_sva_1[11:0];
  assign return_mult_generic_AC_RND_CONV_false_e_incr_lpi_2_dfm_2 = ~((~(((return_mult_generic_AC_RND_CONV_false_p_sva_1[104:52]==53'b11111111111111111111111111111111111111111111111111111)
      & ((return_mult_generic_AC_RND_CONV_false_p_sva_1[51]) | return_mult_generic_AC_RND_CONV_false_if_1_aelse_return_mult_generic_AC_RND_CONV_false_if_1_aelse_or_2))
      | (return_mult_generic_AC_RND_CONV_false_p_sva_1[105]))) | (return_mult_generic_AC_RND_CONV_false_exp_acc_tmp[11]));
  assign return_extract_return_extract_nor_tmp = ~((line_buf0_f_d_rsci_q_d[62:52]!=11'b00000000000));
  assign return_mult_generic_AC_RND_CONV_false_zero_m_return_mult_generic_AC_RND_CONV_false_zero_m_oelse_return_mult_generic_AC_RND_CONV_false_r_zero_return_extract_nand_mdf_sva_1
      = ~(return_extract_return_extract_nor_tmp & return_extract_m_zero_return_extract_m_zero_nor_tmp);
  assign return_mult_generic_AC_RND_CONV_false_if_1_or_nl = (return_mult_generic_AC_RND_CONV_false_p_sva_1[50:0]!=51'b000000000000000000000000000000000000000000000000000)
      | (return_mult_generic_AC_RND_CONV_false_if_1_aelse_return_mult_generic_AC_RND_CONV_false_if_1_aelse_or_2
      & (return_mult_generic_AC_RND_CONV_false_p_sva_1[51]));
  assign return_mult_generic_AC_RND_CONV_false_else_1_sticky_bit_return_mult_generic_AC_RND_CONV_false_else_1_sticky_bit_return_mult_generic_AC_RND_CONV_false_else_1_sticky_bit_or_nl
      = (return_mult_generic_AC_RND_CONV_false_op1_normal_sva_1 & (~ (return_mult_generic_AC_RND_CONV_false_else_1_lshift_itm[51])))
      | ((line_buf0_f_d_rsci_q_d[51]) & (~ (return_mult_generic_AC_RND_CONV_false_else_1_lshift_itm[50])))
      | ((line_buf0_f_d_rsci_q_d[50]) & (~ (return_mult_generic_AC_RND_CONV_false_else_1_lshift_itm[49])))
      | ((line_buf0_f_d_rsci_q_d[49]) & (~ (return_mult_generic_AC_RND_CONV_false_else_1_lshift_itm[48])))
      | ((line_buf0_f_d_rsci_q_d[48]) & (~ (return_mult_generic_AC_RND_CONV_false_else_1_lshift_itm[47])))
      | ((line_buf0_f_d_rsci_q_d[47]) & (~ (return_mult_generic_AC_RND_CONV_false_else_1_lshift_itm[46])))
      | ((line_buf0_f_d_rsci_q_d[46]) & (~ (return_mult_generic_AC_RND_CONV_false_else_1_lshift_itm[45])))
      | ((line_buf0_f_d_rsci_q_d[45]) & (~ (return_mult_generic_AC_RND_CONV_false_else_1_lshift_itm[44])))
      | ((line_buf0_f_d_rsci_q_d[44]) & (~ (return_mult_generic_AC_RND_CONV_false_else_1_lshift_itm[43])))
      | ((line_buf0_f_d_rsci_q_d[43]) & (~ (return_mult_generic_AC_RND_CONV_false_else_1_lshift_itm[42])))
      | ((line_buf0_f_d_rsci_q_d[42]) & (~ (return_mult_generic_AC_RND_CONV_false_else_1_lshift_itm[41])))
      | ((line_buf0_f_d_rsci_q_d[41]) & (~ (return_mult_generic_AC_RND_CONV_false_else_1_lshift_itm[40])))
      | ((line_buf0_f_d_rsci_q_d[40]) & (~ (return_mult_generic_AC_RND_CONV_false_else_1_lshift_itm[39])))
      | ((line_buf0_f_d_rsci_q_d[39]) & (~ (return_mult_generic_AC_RND_CONV_false_else_1_lshift_itm[38])))
      | ((line_buf0_f_d_rsci_q_d[38]) & (~ (return_mult_generic_AC_RND_CONV_false_else_1_lshift_itm[37])))
      | ((line_buf0_f_d_rsci_q_d[37]) & (~ (return_mult_generic_AC_RND_CONV_false_else_1_lshift_itm[36])))
      | ((line_buf0_f_d_rsci_q_d[36]) & (~ (return_mult_generic_AC_RND_CONV_false_else_1_lshift_itm[35])))
      | ((line_buf0_f_d_rsci_q_d[35]) & (~ (return_mult_generic_AC_RND_CONV_false_else_1_lshift_itm[34])))
      | ((line_buf0_f_d_rsci_q_d[34]) & (~ (return_mult_generic_AC_RND_CONV_false_else_1_lshift_itm[33])))
      | ((line_buf0_f_d_rsci_q_d[33]) & (~ (return_mult_generic_AC_RND_CONV_false_else_1_lshift_itm[32])))
      | ((line_buf0_f_d_rsci_q_d[32]) & (~ (return_mult_generic_AC_RND_CONV_false_else_1_lshift_itm[31])))
      | ((line_buf0_f_d_rsci_q_d[31]) & (~ (return_mult_generic_AC_RND_CONV_false_else_1_lshift_itm[30])))
      | ((line_buf0_f_d_rsci_q_d[30]) & (~ (return_mult_generic_AC_RND_CONV_false_else_1_lshift_itm[29])))
      | ((line_buf0_f_d_rsci_q_d[29]) & (~ (return_mult_generic_AC_RND_CONV_false_else_1_lshift_itm[28])))
      | ((line_buf0_f_d_rsci_q_d[28]) & (~ (return_mult_generic_AC_RND_CONV_false_else_1_lshift_itm[27])))
      | ((line_buf0_f_d_rsci_q_d[27]) & (~ (return_mult_generic_AC_RND_CONV_false_else_1_lshift_itm[26])))
      | ((line_buf0_f_d_rsci_q_d[26]) & (~ (return_mult_generic_AC_RND_CONV_false_else_1_lshift_itm[25])))
      | ((line_buf0_f_d_rsci_q_d[25]) & (~ (return_mult_generic_AC_RND_CONV_false_else_1_lshift_itm[24])))
      | ((line_buf0_f_d_rsci_q_d[24]) & (~ (return_mult_generic_AC_RND_CONV_false_else_1_lshift_itm[23])))
      | ((line_buf0_f_d_rsci_q_d[23]) & (~ (return_mult_generic_AC_RND_CONV_false_else_1_lshift_itm[22])))
      | ((line_buf0_f_d_rsci_q_d[22]) & (~ (return_mult_generic_AC_RND_CONV_false_else_1_lshift_itm[21])))
      | ((line_buf0_f_d_rsci_q_d[21]) & (~ (return_mult_generic_AC_RND_CONV_false_else_1_lshift_itm[20])))
      | ((line_buf0_f_d_rsci_q_d[20]) & (~ (return_mult_generic_AC_RND_CONV_false_else_1_lshift_itm[19])))
      | ((line_buf0_f_d_rsci_q_d[19]) & (~ (return_mult_generic_AC_RND_CONV_false_else_1_lshift_itm[18])))
      | ((line_buf0_f_d_rsci_q_d[18]) & (~ (return_mult_generic_AC_RND_CONV_false_else_1_lshift_itm[17])))
      | ((line_buf0_f_d_rsci_q_d[17]) & (~ (return_mult_generic_AC_RND_CONV_false_else_1_lshift_itm[16])))
      | ((line_buf0_f_d_rsci_q_d[16]) & (~ (return_mult_generic_AC_RND_CONV_false_else_1_lshift_itm[15])))
      | ((line_buf0_f_d_rsci_q_d[15]) & (~ (return_mult_generic_AC_RND_CONV_false_else_1_lshift_itm[14])))
      | ((line_buf0_f_d_rsci_q_d[14]) & (~ (return_mult_generic_AC_RND_CONV_false_else_1_lshift_itm[13])))
      | ((line_buf0_f_d_rsci_q_d[13]) & (~ (return_mult_generic_AC_RND_CONV_false_else_1_lshift_itm[12])))
      | ((line_buf0_f_d_rsci_q_d[12]) & (~ (return_mult_generic_AC_RND_CONV_false_else_1_lshift_itm[11])))
      | ((line_buf0_f_d_rsci_q_d[11]) & (~ (return_mult_generic_AC_RND_CONV_false_else_1_lshift_itm[10])))
      | ((line_buf0_f_d_rsci_q_d[10]) & (~ (return_mult_generic_AC_RND_CONV_false_else_1_lshift_itm[9])))
      | ((line_buf0_f_d_rsci_q_d[9]) & (~ (return_mult_generic_AC_RND_CONV_false_else_1_lshift_itm[8])))
      | ((line_buf0_f_d_rsci_q_d[8]) & (~ (return_mult_generic_AC_RND_CONV_false_else_1_lshift_itm[7])))
      | ((line_buf0_f_d_rsci_q_d[7]) & (~ (return_mult_generic_AC_RND_CONV_false_else_1_lshift_itm[6])))
      | ((line_buf0_f_d_rsci_q_d[6]) & (~ (return_mult_generic_AC_RND_CONV_false_else_1_lshift_itm[5])))
      | ((line_buf0_f_d_rsci_q_d[5]) & (~ (return_mult_generic_AC_RND_CONV_false_else_1_lshift_itm[4])))
      | ((line_buf0_f_d_rsci_q_d[4]) & (~ (return_mult_generic_AC_RND_CONV_false_else_1_lshift_itm[3])))
      | ((line_buf0_f_d_rsci_q_d[3]) & (~ (return_mult_generic_AC_RND_CONV_false_else_1_lshift_itm[2])))
      | ((line_buf0_f_d_rsci_q_d[2]) & (~ (return_mult_generic_AC_RND_CONV_false_else_1_lshift_itm[1])))
      | ((line_buf0_f_d_rsci_q_d[1]) & (~ (return_mult_generic_AC_RND_CONV_false_else_1_lshift_itm[0])))
      | (line_buf0_f_d_rsci_q_d[0]);
  assign return_mult_generic_AC_RND_CONV_false_mux_8_nl = MUX_s_1_2_2(return_mult_generic_AC_RND_CONV_false_if_1_or_nl,
      return_mult_generic_AC_RND_CONV_false_else_1_sticky_bit_return_mult_generic_AC_RND_CONV_false_else_1_sticky_bit_return_mult_generic_AC_RND_CONV_false_else_1_sticky_bit_or_nl,
      return_mult_generic_AC_RND_CONV_false_exp_acc_tmp[11]);
  assign return_mult_generic_AC_RND_CONV_false_and_nl = (return_mult_generic_AC_RND_CONV_false_res_bef_rnd_3_53_1_lpi_2_dfm_1[0])
      & (return_mult_generic_AC_RND_CONV_false_mux_8_nl | (return_mult_generic_AC_RND_CONV_false_res_bef_rnd_3_53_1_lpi_2_dfm_1[1]));
  assign nl_r_rnd_dummy_51_0_sva_1 = (return_mult_generic_AC_RND_CONV_false_res_bef_rnd_3_53_1_lpi_2_dfm_1[52:1])
      + conv_u2u_1_52(return_mult_generic_AC_RND_CONV_false_and_nl);
  assign r_rnd_dummy_51_0_sva_1 = nl_r_rnd_dummy_51_0_sva_1[51:0];
  assign return_mult_generic_AC_RND_CONV_false_op1_nan_sva_1 = operator_11_true_operator_11_true_and_tmp
      & (~ return_extract_m_zero_return_extract_m_zero_nor_tmp);
  assign return_mult_generic_AC_RND_CONV_false_lor_lpi_2_dfm_1 = (operator_11_true_operator_11_true_and_tmp
      & return_extract_m_zero_return_extract_m_zero_nor_tmp) | return_mult_generic_AC_RND_CONV_false_exp_ovf_oif_aif_return_mult_generic_AC_RND_CONV_false_exp_ovf_oif_aelse_and_tmp
      | return_mult_generic_AC_RND_CONV_false_op1_nan_sva_1;
  assign return_mult_generic_AC_RND_CONV_false_exp_ovf_oif_aif_return_mult_generic_AC_RND_CONV_false_exp_ovf_oif_aelse_and_tmp
      = (return_mult_generic_AC_RND_CONV_false_exp_1_10_0_lpi_2_dfm_3==11'b11111111110)
      & return_mult_generic_AC_RND_CONV_false_e_incr_lpi_2_dfm_2;
  assign return_mult_generic_AC_RND_CONV_false_return_mult_generic_AC_RND_CONV_false_nor_nl
      = ~(return_mult_generic_AC_RND_CONV_false_if_1_and_1_tmp_1 | (return_mult_generic_AC_RND_CONV_false_exp_acc_tmp[11]));
  assign return_mult_generic_AC_RND_CONV_false_and_2_nl = return_mult_generic_AC_RND_CONV_false_if_1_and_1_tmp_1
      & (~ (return_mult_generic_AC_RND_CONV_false_exp_acc_tmp[11]));
  assign return_mult_generic_AC_RND_CONV_false_res_bef_rnd_3_53_1_lpi_2_dfm_1 = MUX1HOT_v_53_3_2((return_mult_generic_AC_RND_CONV_false_p_sva_1[104:52]),
      (return_mult_generic_AC_RND_CONV_false_p_sva_1[103:51]), (return_mult_generic_AC_RND_CONV_false_else_1_rshift_itm[53:1]),
      {return_mult_generic_AC_RND_CONV_false_return_mult_generic_AC_RND_CONV_false_nor_nl
      , return_mult_generic_AC_RND_CONV_false_and_2_nl , (return_mult_generic_AC_RND_CONV_false_exp_acc_tmp[11])});
  assign operator_11_true_operator_11_true_and_tmp = (line_buf0_f_d_rsci_q_d[62:52]==11'b11111111111);
  assign return_extract_m_zero_return_extract_m_zero_nor_tmp = ~((line_buf0_f_d_rsci_q_d[51:0]!=52'b0000000000000000000000000000000000000000000000000000));
  assign return_mult_generic_AC_RND_CONV_false_do_shift_left_1_mux_1_nl = MUX_s_1_2_2(return_mult_generic_AC_RND_CONV_false_if_acc_1_itm_11_1,
      return_mult_generic_AC_RND_CONV_false_do_shift_left_1_sva, return_mult_generic_AC_RND_CONV_false_exp_acc_tmp[11]);
  assign return_mult_generic_AC_RND_CONV_false_if_1_and_1_tmp_1 = return_mult_generic_AC_RND_CONV_false_do_shift_left_1_mux_1_nl
      & (~ (return_mult_generic_AC_RND_CONV_false_p_sva_1[105]));
  assign nl_Out_state_monty_mul_acc_2_psp_sva_1 = operator_32_false_acc_psp_1_sva_1
      + conv_u2s_14_15(signext_14_13({(operator_32_false_acc_psp_1_sva_1[14]) , 11'b00000000000
      , (operator_32_false_acc_psp_1_sva_1[14])}));
  assign Out_state_monty_mul_acc_2_psp_sva_1 = nl_Out_state_monty_mul_acc_2_psp_sva_1[14:0];
  assign nl_operator_32_false_acc_5_nl = conv_u2u_10_11(~ operator_32_false_mul_atp_sva_1)
      + conv_u2u_4_11(line_buf0_u_rsci_q_d[15:12]);
  assign operator_32_false_acc_5_nl = nl_operator_32_false_acc_5_nl[10:0];
  assign nl_operator_32_false_acc_6_nl = operator_32_false_acc_5_nl + 11'b10000000001;
  assign operator_32_false_acc_6_nl = nl_operator_32_false_acc_6_nl[10:0];
  assign nl_operator_32_false_acc_2_nl = conv_s2u_23_24({operator_32_false_acc_6_nl
      , (line_buf0_u_rsci_q_d[11:0])}) + ({operator_32_false_mul_atp_sva_1 , 4'b0000
      , operator_32_false_mul_atp_sva_1});
  assign operator_32_false_acc_2_nl = nl_operator_32_false_acc_2_nl[23:0];
  assign nl_operator_32_false_acc_psp_1_sva_1 = conv_u2s_14_15(readslicef_24_14_10(operator_32_false_acc_2_nl))
      + 15'b100111111111111;
  assign operator_32_false_acc_psp_1_sva_1 = nl_operator_32_false_acc_psp_1_sva_1[14:0];
  assign nl_operator_32_false_mul_atp_sva_1 = (~ (line_buf0_u_rsci_q_d[9:0])) + 10'b0000000001;
  assign operator_32_false_mul_atp_sva_1 = nl_operator_32_false_mul_atp_sva_1[9:0];
  assign and_dcpl_19 = ~((for_io_read_mode_rsc_cse_sva[7:6]!=2'b00));
  assign and_dcpl_22 = ~((for_io_read_mode_rsc_cse_sva[9:8]!=2'b00));
  assign and_dcpl_23 = ~((for_io_read_mode_rsc_cse_sva[11:10]!=2'b00));
  assign and_dcpl_26 = ~((for_io_read_mode_rsc_cse_sva[15:14]!=2'b00));
  assign or_dcpl_1 = (for_io_read_mode_rsc_cse_sva[3:2]!=2'b00);
  assign or_dcpl_5 = (for_io_read_mode_rsc_cse_sva[7:4]!=4'b0000);
  assign or_dcpl_11 = (for_io_read_mode_rsc_cse_sva[15:14]!=2'b00);
  assign or_dcpl_13 = or_dcpl_11 | (for_io_read_mode_rsc_cse_sva[13:8]!=6'b000000);
  assign and_dcpl_30 = ~((for_io_read_mode_rsc_cse_sva[4:3]!=2'b00));
  assign and_dcpl_65 = and_dcpl_26 & (for_io_read_mode_rsc_cse_sva[13:12]==2'b00)
      & and_dcpl_23 & and_dcpl_22 & and_dcpl_19 & (for_io_read_mode_rsc_cse_sva[5:0]==6'b000011);
  assign and_70_cse = (or_dcpl_13 | or_dcpl_5 | or_dcpl_1 | (for_io_read_mode_rsc_cse_sva[1:0]!=2'b01))
      & (fsm_output[3]);
  assign and_104_cse = ((mode_rsci_idat!=16'b0000000000000001)) & (fsm_output[2]);
  assign out1_rsci_idat_51_mx0c0 = (~((~((return_extract_m_zero_return_extract_m_zero_nor_tmp
      & return_extract_return_extract_nor_tmp) | operator_11_true_operator_11_true_and_tmp
      | return_mult_generic_AC_RND_CONV_false_exp_ovf_oif_aif_return_mult_generic_AC_RND_CONV_false_exp_ovf_oif_aelse_and_tmp))
      | (for_io_read_mode_rsc_cse_sva[15]))) & (for_io_read_mode_rsc_cse_sva[14:12]==3'b000)
      & and_dcpl_23 & and_dcpl_22 & (for_io_read_mode_rsc_cse_sva[7:5]==3'b000) &
      and_dcpl_30 & (for_io_read_mode_rsc_cse_sva[2:0]==3'b001) & (fsm_output[3]);
  assign out1_rsci_idat_51_mx0c1 = and_dcpl_26 & (for_io_read_mode_rsc_cse_sva[13:8]==6'b000000)
      & return_mult_generic_AC_RND_CONV_false_zero_m_return_mult_generic_AC_RND_CONV_false_zero_m_oelse_return_mult_generic_AC_RND_CONV_false_r_zero_return_extract_nand_mdf_sva_1
      & and_dcpl_19 & (~ (for_io_read_mode_rsc_cse_sva[5])) & and_dcpl_30 & (for_io_read_mode_rsc_cse_sva[2:0]==3'b001)
      & (~(operator_11_true_operator_11_true_and_tmp | return_mult_generic_AC_RND_CONV_false_exp_ovf_oif_aif_return_mult_generic_AC_RND_CONV_false_exp_ovf_oif_aelse_and_tmp))
      & (fsm_output[3]);
  assign line_buf0_f_d_rsci_adr_d_pff = for_x_10_0_sva_9_0;
  assign line_buf0_f_d_rsci_port_0_rw_ram_ir_internal_RMASK_B_d = fsm_output[2];
  assign line_buf0_u_rsci_d_d = {{1{Out_state_monty_mul_acc_2_psp_sva_1[14]}}, Out_state_monty_mul_acc_2_psp_sva_1};
  assign line_buf0_u_rsci_we_d_pff = and_dcpl_65 & (fsm_output[3]);
  assign line_buf0_u_rsci_port_0_rw_ram_ir_internal_RMASK_B_d = and_104_cse;
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      out1_rsci_idat_50_0 <= 51'b000000000000000000000000000000000000000000000000000;
      out1_rsci_idat_62_52 <= 11'b00000000000;
      out1_rsci_idat_63 <= 1'b0;
      out1_rsci_idat_79_64 <= 16'b0000000000000000;
    end
    else if ( rst ) begin
      out1_rsci_idat_50_0 <= 51'b000000000000000000000000000000000000000000000000000;
      out1_rsci_idat_62_52 <= 11'b00000000000;
      out1_rsci_idat_63 <= 1'b0;
      out1_rsci_idat_79_64 <= 16'b0000000000000000;
    end
    else if ( for_if_and_cse ) begin
      out1_rsci_idat_50_0 <= MUX_v_51_2_2(return_mult_generic_AC_RND_CONV_false_return_mult_generic_AC_RND_CONV_false_and_1_nl,
          (line_buf0_f_d_rsci_q_d[50:0]), and_70_cse);
      out1_rsci_idat_62_52 <= MUX_v_11_2_2(return_mult_generic_AC_RND_CONV_false_return_mult_generic_AC_RND_CONV_false_or_nl,
          (line_buf0_f_d_rsci_q_d[62:52]), and_70_cse);
      out1_rsci_idat_63 <= line_buf0_f_d_rsci_q_d[63];
      out1_rsci_idat_79_64 <= MUX_v_16_2_2(({{1{Out_state_monty_mul_acc_2_psp_sva_1[14]}},
          Out_state_monty_mul_acc_2_psp_sva_1}), line_buf0_u_rsci_q_d, and_96_nl);
    end
  end
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      out1_rsci_idat_51 <= 1'b0;
    end
    else if ( rst ) begin
      out1_rsci_idat_51 <= 1'b0;
    end
    else if ( run_wen & (out1_rsci_idat_51_mx0c0 | out1_rsci_idat_51_mx0c1 | and_70_cse)
        ) begin
      out1_rsci_idat_51 <= MUX1HOT_s_1_3_2(return_mult_generic_AC_RND_CONV_false_op1_nan_sva_1,
          (r_rnd_dummy_51_0_sva_1[51]), (line_buf0_f_d_rsci_q_d[51]), {out1_rsci_idat_51_mx0c0
          , out1_rsci_idat_51_mx0c1 , and_70_cse});
    end
  end
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      reg_line_buf0_u_triosy_obj_iswt0_cse <= 1'b0;
      reg_line_buf0_u_rsci_cgo_ir_cse <= 1'b0;
      reg_line_buf0_f_d_rsci_cgo_ir_cse <= 1'b0;
      reg_out1_rsci_iswt0_cse <= 1'b0;
      reg_ap_start_rsci_iswt0_cse <= 1'b0;
    end
    else if ( rst ) begin
      reg_line_buf0_u_triosy_obj_iswt0_cse <= 1'b0;
      reg_line_buf0_u_rsci_cgo_ir_cse <= 1'b0;
      reg_line_buf0_f_d_rsci_cgo_ir_cse <= 1'b0;
      reg_out1_rsci_iswt0_cse <= 1'b0;
      reg_ap_start_rsci_iswt0_cse <= 1'b0;
    end
    else if ( run_wen ) begin
      reg_line_buf0_u_triosy_obj_iswt0_cse <= (for_x_10_0_sva_1[10]) & (fsm_output[4]);
      reg_line_buf0_u_rsci_cgo_ir_cse <= or_69_rmff;
      reg_line_buf0_f_d_rsci_cgo_ir_cse <= or_70_rmff;
      reg_out1_rsci_iswt0_cse <= fsm_output[3];
      reg_ap_start_rsci_iswt0_cse <= (fsm_output[0]) | (fsm_output[5]);
    end
  end
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      return_mult_generic_AC_RND_CONV_false_do_shift_left_1_sva <= 1'b0;
    end
    else if ( rst ) begin
      return_mult_generic_AC_RND_CONV_false_do_shift_left_1_sva <= 1'b0;
    end
    else if ( run_wen & (~(or_dcpl_11 | (for_io_read_mode_rsc_cse_sva[13:0]!=14'b00000000000001)
        | (return_mult_generic_AC_RND_CONV_false_exp_acc_tmp[11]) | (~ (fsm_output[3]))))
        ) begin
      return_mult_generic_AC_RND_CONV_false_do_shift_left_1_sva <= return_mult_generic_AC_RND_CONV_false_if_acc_1_itm_11_1;
    end
  end
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      for_x_10_0_sva_9_0 <= 10'b0000000000;
    end
    else if ( rst ) begin
      for_x_10_0_sva_9_0 <= 10'b0000000000;
    end
    else if ( run_wen & (~ (fsm_output[2])) ) begin
      for_x_10_0_sva_9_0 <= MUX_v_10_2_2(10'b0000000000, (for_x_10_0_sva_1[9:0]),
          (fsm_output[4]));
    end
  end
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      for_io_read_mode_rsc_cse_sva <= 16'b0000000000000000;
      for_x_10_0_sva_1 <= 11'b00000000000;
    end
    else if ( rst ) begin
      for_io_read_mode_rsc_cse_sva <= 16'b0000000000000000;
      for_x_10_0_sva_1 <= 11'b00000000000;
    end
    else if ( for_and_cse ) begin
      for_io_read_mode_rsc_cse_sva <= mode_rsci_idat;
      for_x_10_0_sva_1 <= z_out;
    end
  end
  assign return_mult_generic_AC_RND_CONV_false_oelse_3_return_mult_generic_AC_RND_CONV_false_if_3_nor_nl
      = ~((~ return_mult_generic_AC_RND_CONV_false_zero_m_return_mult_generic_AC_RND_CONV_false_zero_m_oelse_return_mult_generic_AC_RND_CONV_false_r_zero_return_extract_nand_mdf_sva_1)
      | return_mult_generic_AC_RND_CONV_false_lor_lpi_2_dfm_1);
  assign return_mult_generic_AC_RND_CONV_false_return_mult_generic_AC_RND_CONV_false_and_1_nl
      = MUX_v_51_2_2(51'b000000000000000000000000000000000000000000000000000, (r_rnd_dummy_51_0_sva_1[50:0]),
      return_mult_generic_AC_RND_CONV_false_oelse_3_return_mult_generic_AC_RND_CONV_false_if_3_nor_nl);
  assign return_mult_generic_AC_RND_CONV_false_else_2_else_and_nl = (~ return_mult_generic_AC_RND_CONV_false_e_incr_lpi_2_dfm_2)
      & return_mult_generic_AC_RND_CONV_false_zero_m_return_mult_generic_AC_RND_CONV_false_zero_m_oelse_return_mult_generic_AC_RND_CONV_false_r_zero_return_extract_nand_mdf_sva_1;
  assign return_mult_generic_AC_RND_CONV_false_else_2_else_mux_nl = MUX_v_11_2_2(z_out,
      return_mult_generic_AC_RND_CONV_false_exp_1_10_0_lpi_2_dfm_3, return_mult_generic_AC_RND_CONV_false_else_2_else_and_nl);
  assign return_mult_generic_AC_RND_CONV_false_else_2_else_return_mult_generic_AC_RND_CONV_false_else_2_else_and_nl
      = MUX_v_11_2_2(11'b00000000000, return_mult_generic_AC_RND_CONV_false_else_2_else_mux_nl,
      return_mult_generic_AC_RND_CONV_false_zero_m_return_mult_generic_AC_RND_CONV_false_zero_m_oelse_return_mult_generic_AC_RND_CONV_false_r_zero_return_extract_nand_mdf_sva_1);
  assign return_mult_generic_AC_RND_CONV_false_return_mult_generic_AC_RND_CONV_false_or_nl
      = MUX_v_11_2_2(return_mult_generic_AC_RND_CONV_false_else_2_else_return_mult_generic_AC_RND_CONV_false_else_2_else_and_nl,
      11'b11111111111, return_mult_generic_AC_RND_CONV_false_lor_lpi_2_dfm_1);
  assign and_96_nl = (or_dcpl_13 | or_dcpl_5 | or_dcpl_1 | (~ (for_io_read_mode_rsc_cse_sva[0])))
      & (fsm_output[3]);
  assign return_mult_generic_AC_RND_CONV_false_exp_plus_1_return_mult_generic_AC_RND_CONV_false_exp_plus_1_and_1_nl
      = (return_mult_generic_AC_RND_CONV_false_exp_1_10_0_lpi_2_dfm_3[10]) & (~ (fsm_output[2]));
  assign return_mult_generic_AC_RND_CONV_false_exp_plus_1_mux_2_nl = MUX_v_10_2_2((return_mult_generic_AC_RND_CONV_false_exp_1_10_0_lpi_2_dfm_3[9:0]),
      for_x_10_0_sva_9_0, fsm_output[2]);
  assign nl_z_out = ({return_mult_generic_AC_RND_CONV_false_exp_plus_1_return_mult_generic_AC_RND_CONV_false_exp_plus_1_and_1_nl
      , return_mult_generic_AC_RND_CONV_false_exp_plus_1_mux_2_nl}) + 11'b00000000001;
  assign z_out = nl_z_out[10:0];

  function automatic  MUX1HOT_s_1_3_2;
    input  input_2;
    input  input_1;
    input  input_0;
    input [2:0] sel;
    reg  result;
  begin
    result = input_0 & sel[0];
    result = result | (input_1 & sel[1]);
    result = result | (input_2 & sel[2]);
    MUX1HOT_s_1_3_2 = result;
  end
  endfunction


  function automatic [52:0] MUX1HOT_v_53_3_2;
    input [52:0] input_2;
    input [52:0] input_1;
    input [52:0] input_0;
    input [2:0] sel;
    reg [52:0] result;
  begin
    result = input_0 & {53{sel[0]}};
    result = result | (input_1 & {53{sel[1]}});
    result = result | (input_2 & {53{sel[2]}});
    MUX1HOT_v_53_3_2 = result;
  end
  endfunction


  function automatic  MUX_s_1_2_2;
    input  input_0;
    input  input_1;
    input  sel;
    reg  result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_s_1_2_2 = result;
  end
  endfunction


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


  function automatic [10:0] MUX_v_11_2_2;
    input [10:0] input_0;
    input [10:0] input_1;
    input  sel;
    reg [10:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_11_2_2 = result;
  end
  endfunction


  function automatic [15:0] MUX_v_16_2_2;
    input [15:0] input_0;
    input [15:0] input_1;
    input  sel;
    reg [15:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_16_2_2 = result;
  end
  endfunction


  function automatic [50:0] MUX_v_51_2_2;
    input [50:0] input_0;
    input [50:0] input_1;
    input  sel;
    reg [50:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_51_2_2 = result;
  end
  endfunction


  function automatic [51:0] MUX_v_52_2_2;
    input [51:0] input_0;
    input [51:0] input_1;
    input  sel;
    reg [51:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_52_2_2 = result;
  end
  endfunction


  function automatic [5:0] MUX_v_6_2_2;
    input [5:0] input_0;
    input [5:0] input_1;
    input  sel;
    reg [5:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_6_2_2 = result;
  end
  endfunction


  function automatic [0:0] readslicef_12_1_11;
    input [11:0] vector;
    reg [11:0] tmp;
  begin
    tmp = vector >> 11;
    readslicef_12_1_11 = tmp[0:0];
  end
  endfunction


  function automatic [13:0] readslicef_24_14_10;
    input [23:0] vector;
    reg [23:0] tmp;
  begin
    tmp = vector >> 10;
    readslicef_24_14_10 = tmp[13:0];
  end
  endfunction


  function automatic [13:0] signext_14_13;
    input [12:0] vector;
  begin
    signext_14_13= {{1{vector[12]}}, vector};
  end
  endfunction


  function automatic [11:0] conv_s2s_5_12 ;
    input [4:0]  vector ;
  begin
    conv_s2s_5_12 = {{7{vector[4]}}, vector};
  end
  endfunction


  function automatic [11:0] conv_s2s_7_12 ;
    input [6:0]  vector ;
  begin
    conv_s2s_7_12 = {{5{vector[6]}}, vector};
  end
  endfunction


  function automatic [23:0] conv_s2u_23_24 ;
    input [22:0]  vector ;
  begin
    conv_s2u_23_24 = {vector[22], vector};
  end
  endfunction


  function automatic [11:0] conv_u2s_11_12 ;
    input [10:0]  vector ;
  begin
    conv_u2s_11_12 =  {1'b0, vector};
  end
  endfunction


  function automatic [14:0] conv_u2s_14_15 ;
    input [13:0]  vector ;
  begin
    conv_u2s_14_15 =  {1'b0, vector};
  end
  endfunction


  function automatic [51:0] conv_u2u_1_52 ;
    input [0:0]  vector ;
  begin
    conv_u2u_1_52 = {{51{1'b0}}, vector};
  end
  endfunction


  function automatic [10:0] conv_u2u_4_11 ;
    input [3:0]  vector ;
  begin
    conv_u2u_4_11 = {{7{1'b0}}, vector};
  end
  endfunction


  function automatic [10:0] conv_u2u_10_11 ;
    input [9:0]  vector ;
  begin
    conv_u2u_10_11 = {1'b0, vector};
  end
  endfunction

endmodule

// ------------------------------------------------------------------
//  Design Unit:    Out_state_struct
// ------------------------------------------------------------------


module Out_state_struct (
  clk, rst, arst_n, ap_start_rsc_dat, ap_start_rsc_vld, ap_start_rsc_rdy, ap_done_rsc_dat,
      ap_done_rsc_vld, ap_done_rsc_rdy, out1_rsc_dat_u, out1_rsc_dat_d, out1_rsc_vld,
      out1_rsc_rdy, mode_rsc_dat, mode_triosy_lz, line_buf0_f_d_rsc_adr, line_buf0_f_d_rsc_d,
      line_buf0_f_d_rsc_we, line_buf0_f_d_rsc_q, line_buf0_f_d_rsc_en, line_buf0_f_d_triosy_lz,
      line_buf0_u_rsc_adr, line_buf0_u_rsc_d, line_buf0_u_rsc_we, line_buf0_u_rsc_q,
      line_buf0_u_rsc_en, line_buf0_u_triosy_lz
);
  input clk;
  input rst;
  input arst_n;
  input ap_start_rsc_dat;
  input ap_start_rsc_vld;
  output ap_start_rsc_rdy;
  output ap_done_rsc_dat;
  output ap_done_rsc_vld;
  input ap_done_rsc_rdy;
  output [15:0] out1_rsc_dat_u;
  output [63:0] out1_rsc_dat_d;
  output out1_rsc_vld;
  input out1_rsc_rdy;
  input [15:0] mode_rsc_dat;
  output mode_triosy_lz;
  output [9:0] line_buf0_f_d_rsc_adr;
  output [63:0] line_buf0_f_d_rsc_d;
  output line_buf0_f_d_rsc_we;
  input [63:0] line_buf0_f_d_rsc_q;
  output line_buf0_f_d_rsc_en;
  output line_buf0_f_d_triosy_lz;
  output [9:0] line_buf0_u_rsc_adr;
  output [15:0] line_buf0_u_rsc_d;
  output line_buf0_u_rsc_we;
  input [15:0] line_buf0_u_rsc_q;
  output line_buf0_u_rsc_en;
  output line_buf0_u_triosy_lz;


  // Interconnect Declarations
  wire line_buf0_f_d_rsci_en_d;
  wire [63:0] line_buf0_f_d_rsci_q_d;
  wire line_buf0_f_d_rsci_port_0_rw_ram_ir_internal_RMASK_B_d;
  wire [15:0] line_buf0_u_rsci_d_d;
  wire line_buf0_u_rsci_en_d;
  wire [15:0] line_buf0_u_rsci_q_d;
  wire line_buf0_u_rsci_port_0_rw_ram_ir_internal_RMASK_B_d;
  wire [79:0] out1_rsc_dat;
  wire [9:0] line_buf0_f_d_rsci_adr_d_iff;
  wire line_buf0_u_rsci_we_d_iff;


  // Interconnect Declarations for Component Instantiations 
  Out_state_ccs_sample_mem_ccs_ram_sync_singleport_rwport_en_5_64_10_1024_1024_64_5_gen
      line_buf0_f_d_rsci (
      .en(line_buf0_f_d_rsc_en),
      .q(line_buf0_f_d_rsc_q),
      .we(line_buf0_f_d_rsc_we),
      .d(line_buf0_f_d_rsc_d),
      .adr(line_buf0_f_d_rsc_adr),
      .adr_d(line_buf0_f_d_rsci_adr_d_iff),
      .d_d(64'b0000000000000000000000000000000000000000000000000000000000000000),
      .en_d(line_buf0_f_d_rsci_en_d),
      .we_d(1'b0),
      .q_d(line_buf0_f_d_rsci_q_d),
      .port_0_rw_ram_ir_internal_RMASK_B_d(line_buf0_f_d_rsci_port_0_rw_ram_ir_internal_RMASK_B_d),
      .port_0_rw_ram_ir_internal_WMASK_B_d(1'b0)
    );
  Out_state_ccs_sample_mem_ccs_ram_sync_singleport_rwport_en_6_16_10_1024_1024_16_5_gen
      line_buf0_u_rsci (
      .en(line_buf0_u_rsc_en),
      .q(line_buf0_u_rsc_q),
      .we(line_buf0_u_rsc_we),
      .d(line_buf0_u_rsc_d),
      .adr(line_buf0_u_rsc_adr),
      .adr_d(line_buf0_f_d_rsci_adr_d_iff),
      .d_d(line_buf0_u_rsci_d_d),
      .en_d(line_buf0_u_rsci_en_d),
      .we_d(line_buf0_u_rsci_we_d_iff),
      .q_d(line_buf0_u_rsci_q_d),
      .port_0_rw_ram_ir_internal_RMASK_B_d(line_buf0_u_rsci_port_0_rw_ram_ir_internal_RMASK_B_d),
      .port_0_rw_ram_ir_internal_WMASK_B_d(line_buf0_u_rsci_we_d_iff)
    );
  Out_state_run Out_state_run_inst (
      .clk(clk),
      .rst(rst),
      .arst_n(arst_n),
      .ap_start_rsc_dat(ap_start_rsc_dat),
      .ap_start_rsc_vld(ap_start_rsc_vld),
      .ap_start_rsc_rdy(ap_start_rsc_rdy),
      .ap_done_rsc_dat(ap_done_rsc_dat),
      .ap_done_rsc_vld(ap_done_rsc_vld),
      .ap_done_rsc_rdy(ap_done_rsc_rdy),
      .out1_rsc_dat(out1_rsc_dat),
      .out1_rsc_vld(out1_rsc_vld),
      .out1_rsc_rdy(out1_rsc_rdy),
      .mode_rsc_dat(mode_rsc_dat),
      .mode_triosy_lz(mode_triosy_lz),
      .line_buf0_f_d_triosy_lz(line_buf0_f_d_triosy_lz),
      .line_buf0_u_triosy_lz(line_buf0_u_triosy_lz),
      .line_buf0_f_d_rsci_en_d(line_buf0_f_d_rsci_en_d),
      .line_buf0_f_d_rsci_q_d(line_buf0_f_d_rsci_q_d),
      .line_buf0_f_d_rsci_port_0_rw_ram_ir_internal_RMASK_B_d(line_buf0_f_d_rsci_port_0_rw_ram_ir_internal_RMASK_B_d),
      .line_buf0_u_rsci_d_d(line_buf0_u_rsci_d_d),
      .line_buf0_u_rsci_en_d(line_buf0_u_rsci_en_d),
      .line_buf0_u_rsci_q_d(line_buf0_u_rsci_q_d),
      .line_buf0_u_rsci_port_0_rw_ram_ir_internal_RMASK_B_d(line_buf0_u_rsci_port_0_rw_ram_ir_internal_RMASK_B_d),
      .line_buf0_f_d_rsci_adr_d_pff(line_buf0_f_d_rsci_adr_d_iff),
      .line_buf0_u_rsci_we_d_pff(line_buf0_u_rsci_we_d_iff)
    );
  assign out1_rsc_dat_d = out1_rsc_dat[63:0];
  assign out1_rsc_dat_u = out1_rsc_dat[79:64];
endmodule

// ------------------------------------------------------------------
//  Design Unit:    Out_state
// ------------------------------------------------------------------


module OUT_copy (
  clk, rst, arst_n, ap_start_rsc_dat, ap_start_rsc_vld, ap_start_rsc_rdy, ap_done_rsc_dat,
      ap_done_rsc_vld, ap_done_rsc_rdy, out1_rsc_dat, out1_rsc_vld, out1_rsc_rdy,
      mode_rsc_dat, mode_triosy_lz, line_buf0_f_d_rsc_adr, line_buf0_f_d_rsc_d, line_buf0_f_d_rsc_we,
      line_buf0_f_d_rsc_q, line_buf0_f_d_rsc_en, line_buf0_f_d_triosy_lz, line_buf0_u_rsc_adr,
      line_buf0_u_rsc_d, line_buf0_u_rsc_we, line_buf0_u_rsc_q, line_buf0_u_rsc_en,
      line_buf0_u_triosy_lz
);
  input clk;
  input rst;
  input arst_n;
  input ap_start_rsc_dat;
  input ap_start_rsc_vld;
  output ap_start_rsc_rdy;
  output ap_done_rsc_dat;
  output ap_done_rsc_vld;
  input ap_done_rsc_rdy;
  output [79:0] out1_rsc_dat;
  output out1_rsc_vld;
  input out1_rsc_rdy;
  input [15:0] mode_rsc_dat;
  output mode_triosy_lz;
  output [9:0] line_buf0_f_d_rsc_adr;
  output [63:0] line_buf0_f_d_rsc_d;
  output line_buf0_f_d_rsc_we;
  input [63:0] line_buf0_f_d_rsc_q;
  output line_buf0_f_d_rsc_en;
  output line_buf0_f_d_triosy_lz;
  output [9:0] line_buf0_u_rsc_adr;
  output [15:0] line_buf0_u_rsc_d;
  output line_buf0_u_rsc_we;
  input [15:0] line_buf0_u_rsc_q;
  output line_buf0_u_rsc_en;
  output line_buf0_u_triosy_lz;


  // Interconnect Declarations
  wire [15:0] out1_rsc_dat_u;
  wire [63:0] out1_rsc_dat_d;


  // Interconnect Declarations for Component Instantiations 
  Out_state_struct Out_state_struct_inst (
      .clk(clk),
      .rst(rst),
      .arst_n(arst_n),
      .ap_start_rsc_dat(ap_start_rsc_dat),
      .ap_start_rsc_vld(ap_start_rsc_vld),
      .ap_start_rsc_rdy(ap_start_rsc_rdy),
      .ap_done_rsc_dat(ap_done_rsc_dat),
      .ap_done_rsc_vld(ap_done_rsc_vld),
      .ap_done_rsc_rdy(ap_done_rsc_rdy),
      .out1_rsc_dat_u(out1_rsc_dat_u),
      .out1_rsc_dat_d(out1_rsc_dat_d),
      .out1_rsc_vld(out1_rsc_vld),
      .out1_rsc_rdy(out1_rsc_rdy),
      .mode_rsc_dat(mode_rsc_dat),
      .mode_triosy_lz(mode_triosy_lz),
      .line_buf0_f_d_rsc_adr(line_buf0_f_d_rsc_adr),
      .line_buf0_f_d_rsc_d(line_buf0_f_d_rsc_d),
      .line_buf0_f_d_rsc_we(line_buf0_f_d_rsc_we),
      .line_buf0_f_d_rsc_q(line_buf0_f_d_rsc_q),
      .line_buf0_f_d_rsc_en(line_buf0_f_d_rsc_en),
      .line_buf0_f_d_triosy_lz(line_buf0_f_d_triosy_lz),
      .line_buf0_u_rsc_adr(line_buf0_u_rsc_adr),
      .line_buf0_u_rsc_d(line_buf0_u_rsc_d),
      .line_buf0_u_rsc_we(line_buf0_u_rsc_we),
      .line_buf0_u_rsc_q(line_buf0_u_rsc_q),
      .line_buf0_u_rsc_en(line_buf0_u_rsc_en),
      .line_buf0_u_triosy_lz(line_buf0_u_triosy_lz)
    );
  assign out1_rsc_dat = {out1_rsc_dat_u , out1_rsc_dat_d};
endmodule



