; ModuleID = '/home/ubuntu/falconlab/hls_ip/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: noinline
define void @apatb_keygen_ir(i8* noalias nocapture nonnull "fpga.decayed.dim.hint"="1024" %f_out, i8* noalias nocapture nonnull "fpga.decayed.dim.hint"="1024" %g_out, i8* noalias nocapture nonnull "fpga.decayed.dim.hint"="1024" %F_upper_out, i8* noalias nocapture nonnull "fpga.decayed.dim.hint"="1024" %G_upper_out, i16* noalias nocapture nonnull "fpga.decayed.dim.hint"="1024" %h_out, i8* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="48" %seed) local_unnamed_addr #0 {
entry:
  %f_out_copy = alloca [1024 x i8], align 512
  %g_out_copy = alloca [1024 x i8], align 512
  %F_upper_out_copy = alloca [1024 x i8], align 512
  %G_upper_out_copy = alloca [1024 x i8], align 512
  %h_out_copy = alloca [1024 x i16], align 512
  %seed_copy = alloca [48 x i8], align 512
  %0 = bitcast i8* %f_out to [1024 x i8]*
  %1 = bitcast i8* %g_out to [1024 x i8]*
  %2 = bitcast i8* %F_upper_out to [1024 x i8]*
  %3 = bitcast i8* %G_upper_out to [1024 x i8]*
  %4 = bitcast i16* %h_out to [1024 x i16]*
  %5 = bitcast i8* %seed to [48 x i8]*
  call fastcc void @copy_in([1024 x i8]* nonnull %0, [1024 x i8]* nonnull align 512 %f_out_copy, [1024 x i8]* nonnull %1, [1024 x i8]* nonnull align 512 %g_out_copy, [1024 x i8]* nonnull %2, [1024 x i8]* nonnull align 512 %F_upper_out_copy, [1024 x i8]* nonnull %3, [1024 x i8]* nonnull align 512 %G_upper_out_copy, [1024 x i16]* nonnull %4, [1024 x i16]* nonnull align 512 %h_out_copy, [48 x i8]* nonnull %5, [48 x i8]* nonnull align 512 %seed_copy)
  %6 = getelementptr inbounds [1024 x i8], [1024 x i8]* %f_out_copy, i32 0, i32 0
  %7 = getelementptr inbounds [1024 x i8], [1024 x i8]* %g_out_copy, i32 0, i32 0
  %8 = getelementptr inbounds [1024 x i8], [1024 x i8]* %F_upper_out_copy, i32 0, i32 0
  %9 = getelementptr inbounds [1024 x i8], [1024 x i8]* %G_upper_out_copy, i32 0, i32 0
  %10 = getelementptr inbounds [1024 x i16], [1024 x i16]* %h_out_copy, i32 0, i32 0
  %11 = getelementptr inbounds [48 x i8], [48 x i8]* %seed_copy, i32 0, i32 0
  call void @apatb_keygen_hw(i8* %6, i8* %7, i8* %8, i8* %9, i16* %10, i8* %11)
  call void @copy_back([1024 x i8]* %0, [1024 x i8]* %f_out_copy, [1024 x i8]* %1, [1024 x i8]* %g_out_copy, [1024 x i8]* %2, [1024 x i8]* %F_upper_out_copy, [1024 x i8]* %3, [1024 x i8]* %G_upper_out_copy, [1024 x i16]* %4, [1024 x i16]* %h_out_copy, [48 x i8]* %5, [48 x i8]* %seed_copy)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_in([1024 x i8]* noalias readonly, [1024 x i8]* noalias align 512, [1024 x i8]* noalias readonly, [1024 x i8]* noalias align 512, [1024 x i8]* noalias readonly, [1024 x i8]* noalias align 512, [1024 x i8]* noalias readonly, [1024 x i8]* noalias align 512, [1024 x i16]* noalias readonly, [1024 x i16]* noalias align 512, [48 x i8]* noalias readonly, [48 x i8]* noalias align 512) unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0a1024i8([1024 x i8]* align 512 %1, [1024 x i8]* %0)
  call fastcc void @onebyonecpy_hls.p0a1024i8([1024 x i8]* align 512 %3, [1024 x i8]* %2)
  call fastcc void @onebyonecpy_hls.p0a1024i8([1024 x i8]* align 512 %5, [1024 x i8]* %4)
  call fastcc void @onebyonecpy_hls.p0a1024i8([1024 x i8]* align 512 %7, [1024 x i8]* %6)
  call fastcc void @onebyonecpy_hls.p0a1024i16([1024 x i16]* align 512 %9, [1024 x i16]* %8)
  call fastcc void @onebyonecpy_hls.p0a48i8([48 x i8]* align 512 %11, [48 x i8]* %10)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a1024i8([1024 x i8]* noalias align 512, [1024 x i8]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [1024 x i8]* %0, null
  %3 = icmp eq [1024 x i8]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [1024 x i8], [1024 x i8]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [1024 x i8], [1024 x i8]* %1, i64 0, i64 %for.loop.idx1
  %5 = load i8, i8* %src.addr, align 1
  store i8 %5, i8* %dst.addr, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 1024
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a1024i16([1024 x i16]* noalias align 512, [1024 x i16]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [1024 x i16]* %0, null
  %3 = icmp eq [1024 x i16]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [1024 x i16], [1024 x i16]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [1024 x i16], [1024 x i16]* %1, i64 0, i64 %for.loop.idx1
  %5 = load i16, i16* %src.addr, align 2
  store i16 %5, i16* %dst.addr, align 2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 1024
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a48i8([48 x i8]* noalias align 512, [48 x i8]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [48 x i8]* %0, null
  %3 = icmp eq [48 x i8]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [48 x i8], [48 x i8]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [48 x i8], [48 x i8]* %1, i64 0, i64 %for.loop.idx1
  %5 = load i8, i8* %src.addr, align 1
  store i8 %5, i8* %dst.addr, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 48
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_out([1024 x i8]* noalias, [1024 x i8]* noalias readonly align 512, [1024 x i8]* noalias, [1024 x i8]* noalias readonly align 512, [1024 x i8]* noalias, [1024 x i8]* noalias readonly align 512, [1024 x i8]* noalias, [1024 x i8]* noalias readonly align 512, [1024 x i16]* noalias, [1024 x i16]* noalias readonly align 512, [48 x i8]* noalias, [48 x i8]* noalias readonly align 512) unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0a1024i8([1024 x i8]* %0, [1024 x i8]* align 512 %1)
  call fastcc void @onebyonecpy_hls.p0a1024i8([1024 x i8]* %2, [1024 x i8]* align 512 %3)
  call fastcc void @onebyonecpy_hls.p0a1024i8([1024 x i8]* %4, [1024 x i8]* align 512 %5)
  call fastcc void @onebyonecpy_hls.p0a1024i8([1024 x i8]* %6, [1024 x i8]* align 512 %7)
  call fastcc void @onebyonecpy_hls.p0a1024i16([1024 x i16]* %8, [1024 x i16]* align 512 %9)
  call fastcc void @onebyonecpy_hls.p0a48i8([48 x i8]* %10, [48 x i8]* align 512 %11)
  ret void
}

declare void @apatb_keygen_hw(i8*, i8*, i8*, i8*, i16*, i8*)

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_back([1024 x i8]* noalias, [1024 x i8]* noalias readonly align 512, [1024 x i8]* noalias, [1024 x i8]* noalias readonly align 512, [1024 x i8]* noalias, [1024 x i8]* noalias readonly align 512, [1024 x i8]* noalias, [1024 x i8]* noalias readonly align 512, [1024 x i16]* noalias, [1024 x i16]* noalias readonly align 512, [48 x i8]* noalias, [48 x i8]* noalias readonly align 512) unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0a1024i8([1024 x i8]* %0, [1024 x i8]* align 512 %1)
  call fastcc void @onebyonecpy_hls.p0a1024i8([1024 x i8]* %2, [1024 x i8]* align 512 %3)
  call fastcc void @onebyonecpy_hls.p0a1024i8([1024 x i8]* %4, [1024 x i8]* align 512 %5)
  call fastcc void @onebyonecpy_hls.p0a1024i8([1024 x i8]* %6, [1024 x i8]* align 512 %7)
  call fastcc void @onebyonecpy_hls.p0a1024i16([1024 x i16]* %8, [1024 x i16]* align 512 %9)
  ret void
}

define void @keygen_hw_stub_wrapper(i8*, i8*, i8*, i8*, i16*, i8*) #4 {
entry:
  %6 = bitcast i8* %0 to [1024 x i8]*
  %7 = bitcast i8* %1 to [1024 x i8]*
  %8 = bitcast i8* %2 to [1024 x i8]*
  %9 = bitcast i8* %3 to [1024 x i8]*
  %10 = bitcast i16* %4 to [1024 x i16]*
  %11 = bitcast i8* %5 to [48 x i8]*
  call void @copy_out([1024 x i8]* null, [1024 x i8]* %6, [1024 x i8]* null, [1024 x i8]* %7, [1024 x i8]* null, [1024 x i8]* %8, [1024 x i8]* null, [1024 x i8]* %9, [1024 x i16]* null, [1024 x i16]* %10, [48 x i8]* null, [48 x i8]* %11)
  %12 = bitcast [1024 x i8]* %6 to i8*
  %13 = bitcast [1024 x i8]* %7 to i8*
  %14 = bitcast [1024 x i8]* %8 to i8*
  %15 = bitcast [1024 x i8]* %9 to i8*
  %16 = bitcast [1024 x i16]* %10 to i16*
  %17 = bitcast [48 x i8]* %11 to i8*
  call void @keygen_hw_stub(i8* %12, i8* %13, i8* %14, i8* %15, i16* %16, i8* %17)
  call void @copy_in([1024 x i8]* null, [1024 x i8]* %6, [1024 x i8]* null, [1024 x i8]* %7, [1024 x i8]* null, [1024 x i8]* %8, [1024 x i8]* null, [1024 x i8]* %9, [1024 x i16]* null, [1024 x i16]* %10, [48 x i8]* null, [48 x i8]* %11)
  ret void
}

declare void @keygen_hw_stub(i8*, i8*, i8*, i8*, i16*, i8*)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyout" }
attributes #4 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
