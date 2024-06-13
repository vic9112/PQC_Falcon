; ModuleID = '/home/ubuntu/fsic_pqc/vivado/vitis_prj/hls_userdma/hls_userdma.prj/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"class.hls::stream<hls::axis<ap_uint<32>, 2, 0, 0>, 0>" = type { %"struct.hls::axis<ap_uint<32>, 2, 0, 0>" }
%"struct.hls::axis<ap_uint<32>, 2, 0, 0>" = type { %"struct.ap_int<32>", %"struct.ap_uint<4>", %"struct.ap_uint<4>", %"struct.ap_uint<2>", %"struct.ap_int<1>", %"struct.ap_int<1>", %"struct.ap_int<1>" }
%"struct.ap_int<32>" = type { %"struct.ap_int_base<32, true>" }
%"struct.ap_int_base<32, true>" = type { %"struct.ssdm_int<32, true>" }
%"struct.ssdm_int<32, true>" = type { i32 }
%"struct.ap_uint<4>" = type { %"struct.ap_int_base<4, false>" }
%"struct.ap_int_base<4, false>" = type { %"struct.ssdm_int<4, false>" }
%"struct.ssdm_int<4, false>" = type { i4 }
%"struct.ap_uint<2>" = type { %"struct.ap_int_base<2, false>" }
%"struct.ap_int_base<2, false>" = type { %"struct.ssdm_int<2, false>" }
%"struct.ssdm_int<2, false>" = type { i2 }
%"struct.ap_int<1>" = type { %"struct.ap_int_base<1, true>" }
%"struct.ap_int_base<1, true>" = type { %"struct.ssdm_int<1, true>" }
%"struct.ssdm_int<1, true>" = type { i1 }
%struct.memcell = type { %"struct.ap_int<32>", %"struct.ap_int<32>" }

; Function Attrs: noinline
define void @apatb_userdma_ir(%"class.hls::stream<hls::axis<ap_uint<32>, 2, 0, 0>, 0>"* noalias nonnull dereferenceable(12) %inStreamTop, %"class.hls::stream<hls::axis<ap_uint<32>, 2, 0, 0>, 0>"* noalias nonnull dereferenceable(12) %outStreamTop, %"struct.ap_uint<2>"* nocapture readonly %kernel_mode, i1* noalias nonnull %s2m_buf_sts, i1* noalias nonnull %m2s_buf_sts, %struct.memcell* noalias nocapture nonnull "fpga.decayed.dim.hint"="1024" %s2mbuf, %struct.memcell* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="1024" %m2sbuf, %"struct.ap_uint<2>"* noalias nocapture nonnull %s2m_err) local_unnamed_addr #0 {
entry:
  %inStreamTop_copy.data = alloca i32
  %inStreamTop_copy.keep = alloca i4
  %inStreamTop_copy.strb = alloca i4
  %inStreamTop_copy.user = alloca i2
  %inStreamTop_copy.last = alloca i1
  %outStreamTop_copy.data = alloca i32
  %outStreamTop_copy.keep = alloca i4
  %outStreamTop_copy.strb = alloca i4
  %outStreamTop_copy.user = alloca i2
  %outStreamTop_copy.last = alloca i1
  %s2m_buf_sts_copy = alloca i1, align 512
  %m2s_buf_sts_copy = alloca i1, align 512
  %malloccall = tail call i8* @malloc(i64 8192)
  %s2mbuf_copy = bitcast i8* %malloccall to [1024 x %struct.memcell]*
  %malloccall1 = tail call i8* @malloc(i64 8192)
  %m2sbuf_copy = bitcast i8* %malloccall1 to [1024 x %struct.memcell]*
  %s2m_err_copy = alloca %"struct.ap_uint<2>", align 512
  %0 = bitcast %struct.memcell* %s2mbuf to [1024 x %struct.memcell]*
  %1 = bitcast %struct.memcell* %m2sbuf to [1024 x %struct.memcell]*
  call fastcc void @copy_in(%"class.hls::stream<hls::axis<ap_uint<32>, 2, 0, 0>, 0>"* nonnull %inStreamTop, i32* %inStreamTop_copy.data, i4* %inStreamTop_copy.keep, i4* %inStreamTop_copy.strb, i2* %inStreamTop_copy.user, i1* %inStreamTop_copy.last, %"class.hls::stream<hls::axis<ap_uint<32>, 2, 0, 0>, 0>"* nonnull %outStreamTop, i32* %outStreamTop_copy.data, i4* %outStreamTop_copy.keep, i4* %outStreamTop_copy.strb, i2* %outStreamTop_copy.user, i1* %outStreamTop_copy.last, i1* nonnull %s2m_buf_sts, i1* nonnull align 512 %s2m_buf_sts_copy, i1* nonnull %m2s_buf_sts, i1* nonnull align 512 %m2s_buf_sts_copy, [1024 x %struct.memcell]* nonnull %0, [1024 x %struct.memcell]* %s2mbuf_copy, [1024 x %struct.memcell]* nonnull %1, [1024 x %struct.memcell]* %m2sbuf_copy, %"struct.ap_uint<2>"* nonnull %s2m_err, %"struct.ap_uint<2>"* nonnull align 512 %s2m_err_copy)
  %2 = getelementptr inbounds [1024 x %struct.memcell], [1024 x %struct.memcell]* %s2mbuf_copy, i32 0, i32 0
  %3 = getelementptr inbounds [1024 x %struct.memcell], [1024 x %struct.memcell]* %m2sbuf_copy, i32 0, i32 0
  call void @apatb_userdma_hw(i32* %inStreamTop_copy.data, i4* %inStreamTop_copy.keep, i4* %inStreamTop_copy.strb, i2* %inStreamTop_copy.user, i1* %inStreamTop_copy.last, i32* %outStreamTop_copy.data, i4* %outStreamTop_copy.keep, i4* %outStreamTop_copy.strb, i2* %outStreamTop_copy.user, i1* %outStreamTop_copy.last, %"struct.ap_uint<2>"* %kernel_mode, i1* %s2m_buf_sts_copy, i1* %m2s_buf_sts_copy, %struct.memcell* %2, %struct.memcell* %3, %"struct.ap_uint<2>"* %s2m_err_copy)
  call void @copy_back(%"class.hls::stream<hls::axis<ap_uint<32>, 2, 0, 0>, 0>"* %inStreamTop, i32* %inStreamTop_copy.data, i4* %inStreamTop_copy.keep, i4* %inStreamTop_copy.strb, i2* %inStreamTop_copy.user, i1* %inStreamTop_copy.last, %"class.hls::stream<hls::axis<ap_uint<32>, 2, 0, 0>, 0>"* %outStreamTop, i32* %outStreamTop_copy.data, i4* %outStreamTop_copy.keep, i4* %outStreamTop_copy.strb, i2* %outStreamTop_copy.user, i1* %outStreamTop_copy.last, i1* %s2m_buf_sts, i1* %s2m_buf_sts_copy, i1* %m2s_buf_sts, i1* %m2s_buf_sts_copy, [1024 x %struct.memcell]* %0, [1024 x %struct.memcell]* %s2mbuf_copy, [1024 x %struct.memcell]* %1, [1024 x %struct.memcell]* %m2sbuf_copy, %"struct.ap_uint<2>"* %s2m_err, %"struct.ap_uint<2>"* %s2m_err_copy)
  tail call void @free(i8* %malloccall)
  tail call void @free(i8* %malloccall1)
  ret void
}

declare noalias i8* @malloc(i64) local_unnamed_addr

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_in(%"class.hls::stream<hls::axis<ap_uint<32>, 2, 0, 0>, 0>"* noalias, i32* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i2* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_user_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.4" %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<32>, 2, 0, 0>, 0>"* noalias, i32* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="7.0" %_V_data_V1, i4* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="7.1" %_V_keep_V2, i4* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="7.2" %_V_strb_V3, i2* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="7.3" %_V_user_V4, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="7.4" %_V_last_V5, i1* noalias readonly, i1* noalias align 512, i1* noalias readonly, i1* noalias align 512, [1024 x %struct.memcell]* noalias readonly, [1024 x %struct.memcell]* noalias, [1024 x %struct.memcell]* noalias readonly, [1024 x %struct.memcell]* noalias, %"struct.ap_uint<2>"* noalias readonly, %"struct.ap_uint<2>"* noalias align 512) unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<32>, 2, 0, 0>, 0>.26"(i32* %_V_data_V, i4* %_V_keep_V, i4* %_V_strb_V, i2* %_V_user_V, i1* %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<32>, 2, 0, 0>, 0>"* %0)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<32>, 2, 0, 0>, 0>.26"(i32* %_V_data_V1, i4* %_V_keep_V2, i4* %_V_strb_V3, i2* %_V_user_V4, i1* %_V_last_V5, %"class.hls::stream<hls::axis<ap_uint<32>, 2, 0, 0>, 0>"* %1)
  call fastcc void @onebyonecpy_hls.p0i1(i1* align 512 %3, i1* %2)
  call fastcc void @onebyonecpy_hls.p0i1(i1* align 512 %5, i1* %4)
  call fastcc void @onebyonecpy_hls.p0a1024struct.memcell([1024 x %struct.memcell]* %7, [1024 x %struct.memcell]* %6)
  call fastcc void @onebyonecpy_hls.p0a1024struct.memcell([1024 x %struct.memcell]* %9, [1024 x %struct.memcell]* %8)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<2>"(%"struct.ap_uint<2>"* align 512 %11, %"struct.ap_uint<2>"* %10)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0i1(i1* noalias align 512, i1* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq i1* %0, null
  %3 = icmp eq i1* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %5 = bitcast i1* %1 to i8*
  %6 = load i8, i8* %5
  %7 = trunc i8 %6 to i1
  store i1 %7, i1* %0, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a1024struct.memcell([1024 x %struct.memcell]* noalias, [1024 x %struct.memcell]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [1024 x %struct.memcell]* %0, null
  %3 = icmp eq [1024 x %struct.memcell]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx17 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.0.07 = getelementptr [1024 x %struct.memcell], [1024 x %struct.memcell]* %1, i64 0, i64 %for.loop.idx17, i32 0, i32 0, i32 0, i32 0
  %dst.addr.0.0.0.08 = getelementptr [1024 x %struct.memcell], [1024 x %struct.memcell]* %0, i64 0, i64 %for.loop.idx17, i32 0, i32 0, i32 0, i32 0
  %5 = load i32, i32* %src.addr.0.0.0.07, align 4
  store i32 %5, i32* %dst.addr.0.0.0.08, align 4
  %src.addr.1.0.0.015 = getelementptr [1024 x %struct.memcell], [1024 x %struct.memcell]* %1, i64 0, i64 %for.loop.idx17, i32 1, i32 0, i32 0, i32 0
  %dst.addr.1.0.0.016 = getelementptr [1024 x %struct.memcell], [1024 x %struct.memcell]* %0, i64 0, i64 %for.loop.idx17, i32 1, i32 0, i32 0, i32 0
  %6 = load i32, i32* %src.addr.1.0.0.015, align 4
  store i32 %6, i32* %dst.addr.1.0.0.016, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx17, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 1024
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_uint<2>"(%"struct.ap_uint<2>"* noalias align 512, %"struct.ap_uint<2>"* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq %"struct.ap_uint<2>"* %0, null
  %3 = icmp eq %"struct.ap_uint<2>"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %.0.0.04 = getelementptr %"struct.ap_uint<2>", %"struct.ap_uint<2>"* %1, i32 0, i32 0, i32 0, i32 0
  %.01.0.05 = getelementptr %"struct.ap_uint<2>", %"struct.ap_uint<2>"* %0, i32 0, i32 0, i32 0, i32 0
  %5 = bitcast i2* %.0.0.04 to i8*
  %6 = load i8, i8* %5
  %7 = trunc i8 %6 to i2
  store i2 %7, i2* %.01.0.05, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_out(%"class.hls::stream<hls::axis<ap_uint<32>, 2, 0, 0>, 0>"* noalias, i32* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i2* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_user_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.4" %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<32>, 2, 0, 0>, 0>"* noalias, i32* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="7.0" %_V_data_V1, i4* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="7.1" %_V_keep_V2, i4* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="7.2" %_V_strb_V3, i2* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="7.3" %_V_user_V4, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="7.4" %_V_last_V5, i1* noalias, i1* noalias readonly align 512, i1* noalias, i1* noalias readonly align 512, [1024 x %struct.memcell]* noalias, [1024 x %struct.memcell]* noalias readonly, [1024 x %struct.memcell]* noalias, [1024 x %struct.memcell]* noalias readonly, %"struct.ap_uint<2>"* noalias, %"struct.ap_uint<2>"* noalias readonly align 512) unnamed_addr #3 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<32>, 2, 0, 0>, 0>"(%"class.hls::stream<hls::axis<ap_uint<32>, 2, 0, 0>, 0>"* %0, i32* %_V_data_V, i4* %_V_keep_V, i4* %_V_strb_V, i2* %_V_user_V, i1* %_V_last_V)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<32>, 2, 0, 0>, 0>"(%"class.hls::stream<hls::axis<ap_uint<32>, 2, 0, 0>, 0>"* %1, i32* %_V_data_V1, i4* %_V_keep_V2, i4* %_V_strb_V3, i2* %_V_user_V4, i1* %_V_last_V5)
  call fastcc void @onebyonecpy_hls.p0i1(i1* %2, i1* align 512 %3)
  call fastcc void @onebyonecpy_hls.p0i1(i1* %4, i1* align 512 %5)
  call fastcc void @onebyonecpy_hls.p0a1024struct.memcell([1024 x %struct.memcell]* %6, [1024 x %struct.memcell]* %7)
  call fastcc void @onebyonecpy_hls.p0a1024struct.memcell([1024 x %struct.memcell]* %8, [1024 x %struct.memcell]* %9)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<2>"(%"struct.ap_uint<2>"* %10, %"struct.ap_uint<2>"* align 512 %11)
  ret void
}

declare void @free(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<32>, 2, 0, 0>, 0>"(%"class.hls::stream<hls::axis<ap_uint<32>, 2, 0, 0>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", i32* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i2* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_user_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.4" %_V_last_V) unnamed_addr #4 {
entry:
  %1 = icmp eq %"class.hls::stream<hls::axis<ap_uint<32>, 2, 0, 0>, 0>"* %0, null
  %2 = or i1 %1, false
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<32>, 2, 0, 0>, 0>.20"(%"class.hls::stream<hls::axis<ap_uint<32>, 2, 0, 0>, 0>"* nonnull align 512 %0, i32* %_V_data_V, i4* %_V_keep_V, i4* %_V_strb_V, i2* %_V_user_V, i1* %_V_last_V)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<32>, 2, 0, 0>, 0>.20"(%"class.hls::stream<hls::axis<ap_uint<32>, 2, 0, 0>, 0>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed", i32* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i4* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i4* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i2* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_user_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.4" %_V_last_V) unnamed_addr #5 {
entry:
  %1 = alloca %"class.hls::stream<hls::axis<ap_uint<32>, 2, 0, 0>, 0>"
  %2 = alloca i32
  %3 = alloca i4
  %4 = alloca i4
  %5 = alloca i2
  %6 = alloca i1
  br label %empty

empty:                                            ; preds = %push, %entry
  %7 = bitcast i32* %_V_data_V to i8*
  %8 = call i1 @fpga_fifo_not_empty_4(i8* %7)
  br i1 %8, label %push, label %ret

push:                                             ; preds = %empty
  %9 = bitcast i32* %2 to i8*
  %10 = bitcast i32* %_V_data_V to i8*
  call void @fpga_fifo_pop_4(i8* %9, i8* %10)
  %11 = load volatile i32, i32* %2
  %12 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<32>, 2, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<32>, 2, 0, 0>, 0>"* %1, i32 0, i32 0, i32 0
  %13 = bitcast %"struct.ap_int<32>"* %12 to i32*
  store i32 %11, i32* %13
  %14 = bitcast i4* %4 to i8*
  %15 = bitcast i4* %_V_keep_V to i8*
  call void @fpga_fifo_pop_1(i8* %14, i8* %15)
  %16 = bitcast i4* %4 to i8*
  %17 = load i8, i8* %16
  %18 = trunc i8 %17 to i4
  %19 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<32>, 2, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<32>, 2, 0, 0>, 0>"* %1, i32 0, i32 0, i32 1
  %20 = bitcast %"struct.ap_uint<4>"* %19 to i4*
  store i4 %18, i4* %20
  %21 = bitcast i4* %3 to i8*
  %22 = bitcast i4* %_V_strb_V to i8*
  call void @fpga_fifo_pop_1(i8* %21, i8* %22)
  %23 = bitcast i4* %3 to i8*
  %24 = load i8, i8* %23
  %25 = trunc i8 %24 to i4
  %26 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<32>, 2, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<32>, 2, 0, 0>, 0>"* %1, i32 0, i32 0, i32 2
  %27 = bitcast %"struct.ap_uint<4>"* %26 to i4*
  store i4 %25, i4* %27
  %28 = bitcast i2* %5 to i8*
  %29 = bitcast i2* %_V_user_V to i8*
  call void @fpga_fifo_pop_1(i8* %28, i8* %29)
  %30 = bitcast i2* %5 to i8*
  %31 = load i8, i8* %30
  %32 = trunc i8 %31 to i2
  %33 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<32>, 2, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<32>, 2, 0, 0>, 0>"* %1, i32 0, i32 0, i32 3
  %34 = bitcast %"struct.ap_uint<2>"* %33 to i2*
  store i2 %32, i2* %34
  %35 = bitcast i1* %6 to i8*
  %36 = bitcast i1* %_V_last_V to i8*
  call void @fpga_fifo_pop_1(i8* %35, i8* %36)
  %37 = bitcast i1* %6 to i8*
  %38 = load i8, i8* %37
  %39 = trunc i8 %38 to i1
  %40 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<32>, 2, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<32>, 2, 0, 0>, 0>"* %1, i32 0, i32 0, i32 4
  %41 = bitcast %"struct.ap_int<1>"* %40 to i1*
  store i1 %39, i1* %41
  %42 = bitcast %"class.hls::stream<hls::axis<ap_uint<32>, 2, 0, 0>, 0>"* %1 to i8*
  %43 = bitcast %"class.hls::stream<hls::axis<ap_uint<32>, 2, 0, 0>, 0>"* %0 to i8*
  call void @fpga_fifo_push_12(i8* %42, i8* %43)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<32>, 2, 0, 0>, 0>.26"(i32* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.0" %_V_data_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.1" %_V_keep_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.2" %_V_strb_V, i2* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.3" %_V_user_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.4" %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<32>, 2, 0, 0>, 0>"* noalias "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
entry:
  %1 = icmp eq %"class.hls::stream<hls::axis<ap_uint<32>, 2, 0, 0>, 0>"* %0, null
  %2 = or i1 false, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<32>, 2, 0, 0>, 0>.29"(i32* %_V_data_V, i4* %_V_keep_V, i4* %_V_strb_V, i2* %_V_user_V, i1* %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<32>, 2, 0, 0>, 0>"* nonnull %0)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<32>, 2, 0, 0>, 0>.29"(i32* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.0" %_V_data_V, i4* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.1" %_V_keep_V, i4* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.2" %_V_strb_V, i2* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.3" %_V_user_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.4" %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<32>, 2, 0, 0>, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed") unnamed_addr #5 {
entry:
  %1 = alloca %"class.hls::stream<hls::axis<ap_uint<32>, 2, 0, 0>, 0>"
  %2 = alloca %"class.hls::stream<hls::axis<ap_uint<32>, 2, 0, 0>, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %"class.hls::stream<hls::axis<ap_uint<32>, 2, 0, 0>, 0>"* %0 to i8*
  %4 = call i1 @fpga_fifo_not_empty_12(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %"class.hls::stream<hls::axis<ap_uint<32>, 2, 0, 0>, 0>"* %2 to i8*
  %6 = bitcast %"class.hls::stream<hls::axis<ap_uint<32>, 2, 0, 0>, 0>"* %0 to i8*
  call void @fpga_fifo_pop_12(i8* %5, i8* %6)
  %7 = load volatile %"class.hls::stream<hls::axis<ap_uint<32>, 2, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<32>, 2, 0, 0>, 0>"* %2
  store %"class.hls::stream<hls::axis<ap_uint<32>, 2, 0, 0>, 0>" %7, %"class.hls::stream<hls::axis<ap_uint<32>, 2, 0, 0>, 0>"* %1
  %8 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<32>, 2, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<32>, 2, 0, 0>, 0>"* %1, i32 0, i32 0, i32 0
  %9 = bitcast %"struct.ap_int<32>"* %8 to i32*
  %10 = bitcast i32* %9 to i8*
  %11 = bitcast i32* %_V_data_V to i8*
  call void @fpga_fifo_push_4(i8* %10, i8* %11)
  %12 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<32>, 2, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<32>, 2, 0, 0>, 0>"* %1, i32 0, i32 0, i32 1
  %13 = bitcast %"struct.ap_uint<4>"* %12 to i4*
  %14 = bitcast i4* %13 to i8*
  %15 = bitcast i4* %_V_keep_V to i8*
  call void @fpga_fifo_push_1(i8* %14, i8* %15)
  %16 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<32>, 2, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<32>, 2, 0, 0>, 0>"* %1, i32 0, i32 0, i32 2
  %17 = bitcast %"struct.ap_uint<4>"* %16 to i4*
  %18 = bitcast i4* %17 to i8*
  %19 = bitcast i4* %_V_strb_V to i8*
  call void @fpga_fifo_push_1(i8* %18, i8* %19)
  %20 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<32>, 2, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<32>, 2, 0, 0>, 0>"* %1, i32 0, i32 0, i32 3
  %21 = bitcast %"struct.ap_uint<2>"* %20 to i2*
  %22 = bitcast i2* %21 to i8*
  %23 = bitcast i2* %_V_user_V to i8*
  call void @fpga_fifo_push_1(i8* %22, i8* %23)
  %24 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<32>, 2, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<32>, 2, 0, 0>, 0>"* %1, i32 0, i32 0, i32 4
  %25 = bitcast %"struct.ap_int<1>"* %24 to i1*
  %26 = bitcast i1* %25 to i8*
  %27 = bitcast i1* %_V_last_V to i8*
  call void @fpga_fifo_push_1(i8* %26, i8* %27)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

declare void @apatb_userdma_hw(i32*, i4*, i4*, i2*, i1*, i32*, i4*, i4*, i2*, i1*, %"struct.ap_uint<2>"*, i1*, i1*, %struct.memcell*, %struct.memcell*, %"struct.ap_uint<2>"*)

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_back(%"class.hls::stream<hls::axis<ap_uint<32>, 2, 0, 0>, 0>"* noalias, i32* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i2* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_user_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.4" %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<32>, 2, 0, 0>, 0>"* noalias, i32* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="7.0" %_V_data_V1, i4* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="7.1" %_V_keep_V2, i4* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="7.2" %_V_strb_V3, i2* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="7.3" %_V_user_V4, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="7.4" %_V_last_V5, i1* noalias, i1* noalias readonly align 512, i1* noalias, i1* noalias readonly align 512, [1024 x %struct.memcell]* noalias, [1024 x %struct.memcell]* noalias readonly, [1024 x %struct.memcell]* noalias, [1024 x %struct.memcell]* noalias readonly, %"struct.ap_uint<2>"* noalias, %"struct.ap_uint<2>"* noalias readonly align 512) unnamed_addr #3 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<32>, 2, 0, 0>, 0>"(%"class.hls::stream<hls::axis<ap_uint<32>, 2, 0, 0>, 0>"* %0, i32* %_V_data_V, i4* %_V_keep_V, i4* %_V_strb_V, i2* %_V_user_V, i1* %_V_last_V)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<32>, 2, 0, 0>, 0>"(%"class.hls::stream<hls::axis<ap_uint<32>, 2, 0, 0>, 0>"* %1, i32* %_V_data_V1, i4* %_V_keep_V2, i4* %_V_strb_V3, i2* %_V_user_V4, i1* %_V_last_V5)
  call fastcc void @onebyonecpy_hls.p0i1(i1* %2, i1* align 512 %3)
  call fastcc void @onebyonecpy_hls.p0i1(i1* %4, i1* align 512 %5)
  call fastcc void @onebyonecpy_hls.p0a1024struct.memcell([1024 x %struct.memcell]* %6, [1024 x %struct.memcell]* %7)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<2>"(%"struct.ap_uint<2>"* %10, %"struct.ap_uint<2>"* align 512 %11)
  ret void
}

define void @userdma_hw_stub_wrapper(i32*, i4*, i4*, i2*, i1*, i32*, i4*, i4*, i2*, i1*, %"struct.ap_uint<2>"*, i1*, i1*, %struct.memcell*, %struct.memcell*, %"struct.ap_uint<2>"*) #6 {
entry:
  %16 = alloca %"class.hls::stream<hls::axis<ap_uint<32>, 2, 0, 0>, 0>"
  %17 = alloca %"class.hls::stream<hls::axis<ap_uint<32>, 2, 0, 0>, 0>"
  %18 = bitcast %struct.memcell* %13 to [1024 x %struct.memcell]*
  %19 = bitcast %struct.memcell* %14 to [1024 x %struct.memcell]*
  call void @copy_out(%"class.hls::stream<hls::axis<ap_uint<32>, 2, 0, 0>, 0>"* %16, i32* %0, i4* %1, i4* %2, i2* %3, i1* %4, %"class.hls::stream<hls::axis<ap_uint<32>, 2, 0, 0>, 0>"* %17, i32* %5, i4* %6, i4* %7, i2* %8, i1* %9, i1* null, i1* %11, i1* null, i1* %12, [1024 x %struct.memcell]* null, [1024 x %struct.memcell]* %18, [1024 x %struct.memcell]* null, [1024 x %struct.memcell]* %19, %"struct.ap_uint<2>"* null, %"struct.ap_uint<2>"* %15)
  %20 = bitcast [1024 x %struct.memcell]* %18 to %struct.memcell*
  %21 = bitcast [1024 x %struct.memcell]* %19 to %struct.memcell*
  call void @userdma_hw_stub(%"class.hls::stream<hls::axis<ap_uint<32>, 2, 0, 0>, 0>"* %16, %"class.hls::stream<hls::axis<ap_uint<32>, 2, 0, 0>, 0>"* %17, %"struct.ap_uint<2>"* %10, i1* %11, i1* %12, %struct.memcell* %20, %struct.memcell* %21, %"struct.ap_uint<2>"* %15)
  call void @copy_in(%"class.hls::stream<hls::axis<ap_uint<32>, 2, 0, 0>, 0>"* %16, i32* %0, i4* %1, i4* %2, i2* %3, i1* %4, %"class.hls::stream<hls::axis<ap_uint<32>, 2, 0, 0>, 0>"* %17, i32* %5, i4* %6, i4* %7, i2* %8, i1* %9, i1* null, i1* %11, i1* null, i1* %12, [1024 x %struct.memcell]* null, [1024 x %struct.memcell]* %18, [1024 x %struct.memcell]* null, [1024 x %struct.memcell]* %19, %"struct.ap_uint<2>"* null, %"struct.ap_uint<2>"* %15)
  ret void
}

declare void @userdma_hw_stub(%"class.hls::stream<hls::axis<ap_uint<32>, 2, 0, 0>, 0>"*, %"class.hls::stream<hls::axis<ap_uint<32>, 2, 0, 0>, 0>"*, %"struct.ap_uint<2>"*, i1*, i1*, %struct.memcell*, %struct.memcell*, %"struct.ap_uint<2>"*)

declare i1 @fpga_fifo_not_empty_12(i8*)

declare i1 @fpga_fifo_not_empty_4(i8*)

declare void @fpga_fifo_pop_4(i8*, i8*)

declare void @fpga_fifo_pop_12(i8*, i8*)

declare void @fpga_fifo_pop_1(i8*, i8*)

declare void @fpga_fifo_push_4(i8*, i8*)

declare void @fpga_fifo_push_12(i8*, i8*)

declare void @fpga_fifo_push_1(i8*, i8*)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline "fpga.wrapper.func"="copyout" }
attributes #4 = { argmemonly noinline "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #5 = { argmemonly noinline "fpga.wrapper.func"="streamcpy_hls" }
attributes #6 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.rotate.disable"}
