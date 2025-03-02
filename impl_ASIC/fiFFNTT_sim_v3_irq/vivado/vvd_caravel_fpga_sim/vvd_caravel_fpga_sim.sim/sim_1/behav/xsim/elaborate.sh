#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2022.1 (64-bit)
#
# Filename    : elaborate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for elaborating the compiled design
#
# Generated by Vivado on Thu Jun 13 14:35:27 EDT 2024
# SW Build 3526262 on Mon Apr 18 15:47:01 MDT 2022
#
# IP Build 3524634 on Mon Apr 18 20:55:01 MDT 2022
#
# usage: elaborate.sh
#
# ****************************************************************************
set -Eeuo pipefail
# elaborate design
echo "xelab --incr --debug typical --relax --mt 8 -d "USER_PROJECT_SIDEBAND_SUPPORT=1" -d "USE_EDGEDETECT_IP=1" -d "pSERIALIO_WIDTH=13" -L xil_defaultlib -L xlconstant_v1_1_7 -L lib_cdc_v1_0_2 -L proc_sys_reset_v5_0_13 -L smartconnect_v1_0 -L axi_infrastructure_v1_1_0 -L axi_register_slice_v2_1_26 -L axi_vip_v1_1_12 -L generic_baseblocks_v2_1_0 -L fifo_generator_v13_2_7 -L axi_data_fifo_v2_1_25 -L axi_crossbar_v2_1_27 -L blk_mem_gen_v8_4_5 -L uvm -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -L xpm --snapshot fsic_tb_behav xil_defaultlib.fsic_tb xil_defaultlib.glbl -log elaborate.log"
xelab --incr --debug typical --relax --mt 8 -d "USER_PROJECT_SIDEBAND_SUPPORT=1" -d "USE_EDGEDETECT_IP=1" -d "pSERIALIO_WIDTH=13" -L xil_defaultlib -L xlconstant_v1_1_7 -L lib_cdc_v1_0_2 -L proc_sys_reset_v5_0_13 -L smartconnect_v1_0 -L axi_infrastructure_v1_1_0 -L axi_register_slice_v2_1_26 -L axi_vip_v1_1_12 -L generic_baseblocks_v2_1_0 -L fifo_generator_v13_2_7 -L axi_data_fifo_v2_1_25 -L axi_crossbar_v2_1_27 -L blk_mem_gen_v8_4_5 -L uvm -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -L xpm --snapshot fsic_tb_behav xil_defaultlib.fsic_tb xil_defaultlib.glbl -log elaborate.log

