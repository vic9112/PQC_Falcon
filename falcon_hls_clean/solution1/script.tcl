############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project falcon_hls_clean
set_top mq_iNTT
add_files hls_source/codec.c
add_files hls_source/common.c
add_files hls_source/fft.c
add_files hls_source/fpr.c
add_files hls_source/header.h
add_files hls_source/keygen.c
add_files hls_source/my_intt.c
add_files hls_source/my_ntt.c
add_files hls_source/rng.c
add_files hls_source/shake.c
add_files hls_source/sign.c
add_files hls_source/vrfy.c
add_files -tb hls_source/tb.c
add_files -tb hls_source/tb_data.h
open_solution "solution1" -flow_target vivado
set_part {xck26-sfvc784-2LV-c}
create_clock -period 10 -name default
config_export -format ip_catalog -rtl verilog -vivado_clock 10
#source "./falcon_hls_clean/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -flow syn -rtl verilog -format ip_catalog
