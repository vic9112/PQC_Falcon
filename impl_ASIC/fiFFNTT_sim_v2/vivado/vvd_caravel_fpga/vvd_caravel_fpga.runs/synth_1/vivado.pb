
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2$
create_project: 2default:default2
00:00:072default:default2
00:00:072default:default2
2866.4572default:default2
0.0232default:default2
45402default:default2
164442default:defaultZ17-722h px� 
>
Refreshing IP repositories
234*coregenZ19-234h px� 
�
 Loaded user IP repository '%s'.
1135*coregen2d
P/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vitis_prj/hls_caravel_ps2default:defaultZ19-1700h px� 
�
 Loaded user IP repository '%s'.
1135*coregen2a
M/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vitis_prj/hls_userdma2default:defaultZ19-1700h px� 
�
 Loaded user IP repository '%s'.
1135*coregen2d
P/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vitis_prj/hls_output_pin2default:defaultZ19-1700h px� 
�
"Loaded Vivado IP repository '%s'.
1332*coregen27
#/tools/Xilinx/Vivado/2022.1/data/ip2default:defaultZ19-2313h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
add_files: 2default:default2
00:00:072default:default2
00:00:072default:default2
2866.4692default:default2
0.0122default:default2
44812default:default2
163852default:defaultZ17-722h px� 
�
Command: %s
1870*	planAhead2�
�read_checkpoint -auto_incremental -incremental /home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.srcs/utils_1/imports/synth_1/design_1_wrapper.dcp2default:defaultZ12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.srcs/utils_1/imports/synth_1/design_1_wrapper.dcp2default:defaultZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
}
Command: %s
53*	vivadotcl2L
8synth_design -top design_1_wrapper -part xc7z020clg400-12default:defaultZ4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7z0202default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7z0202default:defaultZ17-349h px� 
V
Loading part %s157*device2#
xc7z020clg400-12default:defaultZ21-403h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
�
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
42default:defaultZ8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
`
#Helper process launched with PID %s4824*oasys2
161762default:defaultZ8-7075h px� 
�
Ygenerate block is allowed only inside loop and conditional generate in SystemVerilog mode5759*oasys2V
@/tools/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2default:default2
40232default:default8@Z8-9501h px� 
�
%s*synth2�
�Starting RTL Elaboration : Time (s): cpu = 00:00:06 ; elapsed = 00:00:06 . Memory (MB): peak = 2866.469 ; gain = 0.000 ; free physical = 3690 ; free virtual = 15594
2default:defaulth px� 
�
synthesizing module '%s'%s4497*oasys2$
design_1_wrapper2default:default2
 2default:default2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/hdl/design_1_wrapper.v2default:default2
122default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
design_12default:default2
 2default:default2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
122default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2)
design_1_axi_intc_0_02default:default2
 2default:default2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.runs/synth_1/.Xil/Vivado-16105-ubuntu2004/realtime/design_1_axi_intc_0_0_stub.v2default:default2
52default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2)
design_1_axi_intc_0_02default:default2
 2default:default2
02default:default2
12default:default2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.runs/synth_1/.Xil/Vivado-16105-ubuntu2004/realtime/design_1_axi_intc_0_0_stub.v2default:default2
52default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2/
design_1_axi_mem_intercon_02default:default2
 2default:default2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
12142default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2,
m00_couplers_imp_1R706YB2default:default2
 2default:default2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
36482default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2&
design_1_auto_pc_02default:default2
 2default:default2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.runs/synth_1/.Xil/Vivado-16105-ubuntu2004/realtime/design_1_auto_pc_0_stub.v2default:default2
52default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2&
design_1_auto_pc_02default:default2
 2default:default2
02default:default2
12default:default2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.runs/synth_1/.Xil/Vivado-16105-ubuntu2004/realtime/design_1_auto_pc_0_stub.v2default:default2
52default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2,
m00_couplers_imp_1R706YB2default:default2
 2default:default2
02default:default2
12default:default2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
36482default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2+
s00_couplers_imp_7HNO1D2default:default2
 2default:default2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
48452default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2&
design_1_auto_us_02default:default2
 2default:default2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.runs/synth_1/.Xil/Vivado-16105-ubuntu2004/realtime/design_1_auto_us_0_stub.v2default:default2
52default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2&
design_1_auto_us_02default:default2
 2default:default2
02default:default2
12default:default2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.runs/synth_1/.Xil/Vivado-16105-ubuntu2004/realtime/design_1_auto_us_0_stub.v2default:default2
52default:default8@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2"
m_axi_awregion2default:default2&
design_1_auto_us_02default:default2
auto_us2default:default2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
51482default:default8@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2"
m_axi_arregion2default:default2&
design_1_auto_us_02default:default2
auto_us2default:default2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
51482default:default8@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
auto_us2default:default2&
design_1_auto_us_02default:default2
762default:default2
742default:default2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
51482default:default8@Z8-7023h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2+
s00_couplers_imp_7HNO1D2default:default2
 2default:default2
02default:default2
12default:default2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
48452default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2,
s01_couplers_imp_1W60HW02default:default2
 2default:default2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
55302default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2,
s01_couplers_imp_1W60HW02default:default2
 2default:default2
02default:default2
12default:default2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
55302default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2+
s02_couplers_imp_8NCF022default:default2
 2default:default2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
57742default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2+
s02_couplers_imp_8NCF022default:default2
 2default:default2
02default:default2
12default:default2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
57742default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2#
design_1_xbar_12default:default2
 2default:default2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.runs/synth_1/.Xil/Vivado-16105-ubuntu2004/realtime/design_1_xbar_1_stub.v2default:default2
52default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2#
design_1_xbar_12default:default2
 2default:default2
02default:default2
12default:default2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.runs/synth_1/.Xil/Vivado-16105-ubuntu2004/realtime/design_1_xbar_1_stub.v2default:default2
52default:default8@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
	s_axi_bid2default:default2#
design_1_xbar_12default:default2
xbar2default:default2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
22522default:default8@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
	s_axi_rid2default:default2#
design_1_xbar_12default:default2
xbar2default:default2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
22522default:default8@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
xbar2default:default2#
design_1_xbar_12default:default2
782default:default2
762default:default2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
22522default:default8@Z8-7023h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2/
design_1_axi_mem_intercon_02default:default2
 2default:default2
02default:default2
12default:default2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
12142default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2-
design_1_axi_quad_spi_0_02default:default2
 2default:default2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.runs/synth_1/.Xil/Vivado-16105-ubuntu2004/realtime/design_1_axi_quad_spi_0_0_stub.v2default:default2
52default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2-
design_1_axi_quad_spi_0_02default:default2
 2default:default2
02default:default2
12default:default2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.runs/synth_1/.Xil/Vivado-16105-ubuntu2004/realtime/design_1_axi_quad_spi_0_0_stub.v2default:default2
52default:default8@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
io0_t2default:default2-
design_1_axi_quad_spi_0_02default:default2"
axi_quad_spi_02default:default2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
5972default:default8@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
io1_o2default:default2-
design_1_axi_quad_spi_0_02default:default2"
axi_quad_spi_02default:default2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
5972default:default8@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
io1_t2default:default2-
design_1_axi_quad_spi_0_02default:default2"
axi_quad_spi_02default:default2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
5972default:default8@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
sck_t2default:default2-
design_1_axi_quad_spi_0_02default:default2"
axi_quad_spi_02default:default2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
5972default:default8@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
ss_t2default:default2-
design_1_axi_quad_spi_0_02default:default2"
axi_quad_spi_02default:default2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
5972default:default8@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2 
ip2intc_irpt2default:default2-
design_1_axi_quad_spi_0_02default:default2"
axi_quad_spi_02default:default2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
5972default:default8@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2"
axi_quad_spi_02default:default2-
design_1_axi_quad_spi_0_02default:default2
332default:default2
272default:default2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
5972default:default8@Z8-7023h px� 
�
synthesizing module '%s'%s4497*oasys2,
design_1_blk_mem_gen_0_02default:default2
 2default:default2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.runs/synth_1/.Xil/Vivado-16105-ubuntu2004/realtime/design_1_blk_mem_gen_0_0_stub.v2default:default2
52default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2,
design_1_blk_mem_gen_0_02default:default2
 2default:default2
02default:default2
12default:default2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.runs/synth_1/.Xil/Vivado-16105-ubuntu2004/realtime/design_1_blk_mem_gen_0_0_stub.v2default:default2
52default:default8@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
doutb2default:default2,
design_1_blk_mem_gen_0_02default:default2!
blk_mem_gen_02default:default2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
6252default:default8@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
	rsta_busy2default:default2,
design_1_blk_mem_gen_0_02default:default2!
blk_mem_gen_02default:default2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
6252default:default8@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
	rstb_busy2default:default2,
design_1_blk_mem_gen_0_02default:default2!
blk_mem_gen_02default:default2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
6252default:default8@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2!
blk_mem_gen_02default:default2,
design_1_blk_mem_gen_0_02default:default2
162default:default2
132default:default2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
6252default:default8@Z8-7023h px� 
�
synthesizing module '%s'%s4497*oasys2(
design_1_caravel_0_02default:default2
 2default:default2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.runs/synth_1/.Xil/Vivado-16105-ubuntu2004/realtime/design_1_caravel_0_0_stub.v2default:default2
52default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2(
design_1_caravel_0_02default:default2
 2default:default2
02default:default2
12default:default2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.runs/synth_1/.Xil/Vivado-16105-ubuntu2004/realtime/design_1_caravel_0_0_stub.v2default:default2
52default:default8@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
gpio2default:default2(
design_1_caravel_0_02default:default2
	caravel_02default:default2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
6392default:default8@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
	caravel_02default:default2(
design_1_caravel_0_02default:default2
102default:default2
92default:default2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
6392default:default8@Z8-7023h px� 
�
synthesizing module '%s'%s4497*oasys2+
design_1_caravel_ps_0_02default:default2
 2default:default2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.runs/synth_1/.Xil/Vivado-16105-ubuntu2004/realtime/design_1_caravel_ps_0_0_stub.v2default:default2
52default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2+
design_1_caravel_ps_0_02default:default2
 2default:default2
02default:default2
12default:default2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.runs/synth_1/.Xil/Vivado-16105-ubuntu2004/realtime/design_1_caravel_ps_0_0_stub.v2default:default2
52default:default8@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
mprj_in2default:default2+
design_1_caravel_ps_0_02default:default2 
caravel_ps_02default:default2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
6492default:default8@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2 
caravel_ps_02default:default2+
design_1_caravel_ps_0_02default:default2
222default:default2
212default:default2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
6492default:default8@Z8-7023h px� 
�
synthesizing module '%s'%s4497*oasys2(
design_1_clk_wiz_0_02default:default2
 2default:default2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.runs/synth_1/.Xil/Vivado-16105-ubuntu2004/realtime/design_1_clk_wiz_0_0_stub.v2default:default2
52default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2(
design_1_clk_wiz_0_02default:default2
 2default:default2
02default:default2
12default:default2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.runs/synth_1/.Xil/Vivado-16105-ubuntu2004/realtime/design_1_clk_wiz_0_0_stub.v2default:default2
52default:default8@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
locked2default:default2(
design_1_clk_wiz_0_02default:default2
	clk_wiz_02default:default2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
6712default:default8@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
	clk_wiz_02default:default2(
design_1_clk_wiz_0_02default:default2
52default:default2
42default:default2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
6712default:default8@Z8-7023h px� 
�
synthesizing module '%s'%s4497*oasys2+
design_1_output_pin_0_02default:default2
 2default:default2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.runs/synth_1/.Xil/Vivado-16105-ubuntu2004/realtime/design_1_output_pin_0_0_stub.v2default:default2
52default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2+
design_1_output_pin_0_02default:default2
 2default:default2
02default:default2
12default:default2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.runs/synth_1/.Xil/Vivado-16105-ubuntu2004/realtime/design_1_output_pin_0_0_stub.v2default:default2
52default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys23
design_1_processing_system7_0_02default:default2
 2default:default2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.runs/synth_1/.Xil/Vivado-16105-ubuntu2004/realtime/design_1_processing_system7_0_0_stub.v2default:default2
52default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys23
design_1_processing_system7_0_02default:default2
 2default:default2
02default:default2
12default:default2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.runs/synth_1/.Xil/Vivado-16105-ubuntu2004/realtime/design_1_processing_system7_0_0_stub.v2default:default2
52default:default8@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2$
USB0_PORT_INDCTL2default:default23
design_1_processing_system7_0_02default:default2(
processing_system7_02default:default2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
6972default:default8@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2'
USB0_VBUS_PWRSELECT2default:default23
design_1_processing_system7_0_02default:default2(
processing_system7_02default:default2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
6972default:default8@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2$
S_AXI_HP0_RCOUNT2default:default23
design_1_processing_system7_0_02default:default2(
processing_system7_02default:default2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
6972default:default8@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2$
S_AXI_HP0_WCOUNT2default:default23
design_1_processing_system7_0_02default:default2(
processing_system7_02default:default2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
6972default:default8@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2%
S_AXI_HP0_RACOUNT2default:default23
design_1_processing_system7_0_02default:default2(
processing_system7_02default:default2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
6972default:default8@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2%
S_AXI_HP0_WACOUNT2default:default23
design_1_processing_system7_0_02default:default2(
processing_system7_02default:default2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
6972default:default8@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2(
processing_system7_02default:default23
design_1_processing_system7_0_02default:default2
1112default:default2
1052default:default2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
6972default:default8@Z8-7023h px� 
�
synthesizing module '%s'%s4497*oasys2/
design_1_ps7_0_axi_periph_02default:default2
 2default:default2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
23312default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2,
m00_couplers_imp_15SPJYW2default:default2
 2default:default2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
35162default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2,
m00_couplers_imp_15SPJYW2default:default2
 2default:default2
02default:default2
12default:default2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
35162default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2+
m01_couplers_imp_XU9C552default:default2
 2default:default2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
40532default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2+
m01_couplers_imp_XU9C552default:default2
 2default:default2
02default:default2
12default:default2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
40532default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2,
m02_couplers_imp_14WQB4R2default:default2
 2default:default2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
41852default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2,
m02_couplers_imp_14WQB4R2default:default2
 2default:default2
02default:default2
12default:default2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
41852default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2+
m03_couplers_imp_YFYJ3U2default:default2
 2default:default2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
43172default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2+
m03_couplers_imp_YFYJ3U2default:default2
 2default:default2
02default:default2
12default:default2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
43172default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2,
m04_couplers_imp_17KQ7322default:default2
 2default:default2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
44492default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2,
m04_couplers_imp_17KQ7322default:default2
 2default:default2
02default:default2
12default:default2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
44492default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2+
m05_couplers_imp_VQEDA72default:default2
 2default:default2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
45812default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2+
m05_couplers_imp_VQEDA72default:default2
 2default:default2
02default:default2
12default:default2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
45812default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2,
m06_couplers_imp_16EQN6L2default:default2
 2default:default2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
47132default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2,
m06_couplers_imp_16EQN6L2default:default2
 2default:default2
02default:default2
12default:default2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
47132default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2+
s00_couplers_imp_UYSKKA2default:default2
 2default:default2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
52252default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2&
design_1_auto_pc_12default:default2
 2default:default2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.runs/synth_1/.Xil/Vivado-16105-ubuntu2004/realtime/design_1_auto_pc_1_stub.v2default:default2
52default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2&
design_1_auto_pc_12default:default2
 2default:default2
02default:default2
12default:default2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.runs/synth_1/.Xil/Vivado-16105-ubuntu2004/realtime/design_1_auto_pc_1_stub.v2default:default2
52default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2+
s00_couplers_imp_UYSKKA2default:default2
 2default:default2
02default:default2
12default:default2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
52252default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2#
design_1_xbar_02default:default2
 2default:default2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.runs/synth_1/.Xil/Vivado-16105-ubuntu2004/realtime/design_1_xbar_0_stub.v2default:default2
52default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2#
design_1_xbar_02default:default2
 2default:default2
02default:default2
12default:default2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.runs/synth_1/.Xil/Vivado-16105-ubuntu2004/realtime/design_1_xbar_0_stub.v2default:default2
52default:default8@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2 
m_axi_awprot2default:default2#
design_1_xbar_02default:default2
xbar2default:default2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
34752default:default8@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2 
m_axi_arprot2default:default2#
design_1_xbar_02default:default2
xbar2default:default2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
34752default:default8@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
xbar2default:default2#
design_1_xbar_02default:default2
402default:default2
382default:default2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
34752default:default8@Z8-7023h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2/
design_1_ps7_0_axi_periph_02default:default2
 2default:default2
02default:default2
12default:default2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
23312default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2(
design_1_ps_axil_0_02default:default2
 2default:default2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.runs/synth_1/.Xil/Vivado-16105-ubuntu2004/realtime/design_1_ps_axil_0_0_stub.v2default:default2
52default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2(
design_1_ps_axil_0_02default:default2
 2default:default2
02default:default2
12default:default2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.runs/synth_1/.Xil/Vivado-16105-ubuntu2004/realtime/design_1_ps_axil_0_0_stub.v2default:default2
52default:default8@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2#
ladma_mm_aruser2default:default2(
design_1_ps_axil_0_02default:default2
	ps_axil_02default:default2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
9792default:default8@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2#
ladma_mm_awuser2default:default2(
design_1_ps_axil_0_02default:default2
	ps_axil_02default:default2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
9792default:default8@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2"
ladma_mm_wuser2default:default2(
design_1_ps_axil_0_02default:default2
	ps_axil_02default:default2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
9792default:default8@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2#
ladma_interrupt2default:default2(
design_1_ps_axil_0_02default:default2
	ps_axil_02default:default2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
9792default:default8@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
	ps_axil_02default:default2(
design_1_ps_axil_0_02default:default2
1112default:default2
1072default:default2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
9792default:default8@Z8-7023h px� 
�
synthesizing module '%s'%s4497*oasys2,
design_1_rst_ps7_0_10M_02default:default2
 2default:default2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.runs/synth_1/.Xil/Vivado-16105-ubuntu2004/realtime/design_1_rst_ps7_0_10M_0_stub.v2default:default2
52default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2,
design_1_rst_ps7_0_10M_02default:default2
 2default:default2
02default:default2
12default:default2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.runs/synth_1/.Xil/Vivado-16105-ubuntu2004/realtime/design_1_rst_ps7_0_10M_0_stub.v2default:default2
52default:default8@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
mb_reset2default:default2,
design_1_rst_ps7_0_10M_02default:default2!
rst_ps7_0_10M2default:default2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
10872default:default8@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2$
bus_struct_reset2default:default2,
design_1_rst_ps7_0_10M_02default:default2!
rst_ps7_0_10M2default:default2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
10872default:default8@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2(
interconnect_aresetn2default:default2,
design_1_rst_ps7_0_10M_02default:default2!
rst_ps7_0_10M2default:default2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
10872default:default8@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2!
rst_ps7_0_10M2default:default2,
design_1_rst_ps7_0_10M_02default:default2
102default:default2
72default:default2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
10872default:default8@Z8-7023h px� 
�
synthesizing module '%s'%s4497*oasys2)
design_1_spiflash_0_02default:default2
 2default:default2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.runs/synth_1/.Xil/Vivado-16105-ubuntu2004/realtime/design_1_spiflash_0_0_stub.v2default:default2
52default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2)
design_1_spiflash_0_02default:default2
 2default:default2
02default:default2
12default:default2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.runs/synth_1/.Xil/Vivado-16105-ubuntu2004/realtime/design_1_spiflash_0_0_stub.v2default:default2
52default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2(
design_1_userdma_0_02default:default2
 2default:default2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.runs/synth_1/.Xil/Vivado-16105-ubuntu2004/realtime/design_1_userdma_0_0_stub.v2default:default2
52default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2(
design_1_userdma_0_02default:default2
 2default:default2
02default:default2
12default:default2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.runs/synth_1/.Xil/Vivado-16105-ubuntu2004/realtime/design_1_userdma_0_0_stub.v2default:default2
52default:default8@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
	interrupt2default:default2(
design_1_userdma_0_02default:default2
	userdma_02default:default2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
11092default:default8@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2(
m_axi_gmem0_AWREGION2default:default2(
design_1_userdma_0_02default:default2
	userdma_02default:default2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
11092default:default8@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2(
m_axi_gmem0_ARREGION2default:default2(
design_1_userdma_0_02default:default2
	userdma_02default:default2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
11092default:default8@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2(
m_axi_gmem1_AWREGION2default:default2(
design_1_userdma_0_02default:default2
	userdma_02default:default2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
11092default:default8@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2(
m_axi_gmem1_ARREGION2default:default2(
design_1_userdma_0_02default:default2
	userdma_02default:default2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
11092default:default8@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
	userdma_02default:default2(
design_1_userdma_0_02default:default2
1042default:default2
992default:default2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
11092default:default8@Z8-7023h px� 
�
synthesizing module '%s'%s4497*oasys2)
design_1_xlconcat_0_02default:default2
 2default:default2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/ip/design_1_xlconcat_0_0/synth/design_1_xlconcat_0_0.v2default:default2
532default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2,
xlconcat_v2_1_4_xlconcat2default:default2
 2default:default2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/ipshared/4b67/hdl/xlconcat_v2_1_vl_rfs.v2default:default2
142default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2,
xlconcat_v2_1_4_xlconcat2default:default2
 2default:default2
02default:default2
12default:default2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/ipshared/4b67/hdl/xlconcat_v2_1_vl_rfs.v2default:default2
142default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2)
design_1_xlconcat_0_02default:default2
 2default:default2
02default:default2
12default:default2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/ip/design_1_xlconcat_0_0/synth/design_1_xlconcat_0_0.v2default:default2
532default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
design_12default:default2
 2default:default2
02default:default2
12default:default2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
122default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2$
design_1_wrapper2default:default2
 2default:default2
02default:default2
12default:default2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/hdl/design_1_wrapper.v2default:default2
122default:default8@Z8-6155h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
In1[0]2default:default2,
xlconcat_v2_1_4_xlconcat2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
In2[0]2default:default2,
xlconcat_v2_1_4_xlconcat2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
In3[0]2default:default2,
xlconcat_v2_1_4_xlconcat2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
In4[0]2default:default2,
xlconcat_v2_1_4_xlconcat2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
In5[0]2default:default2,
xlconcat_v2_1_4_xlconcat2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
In6[0]2default:default2,
xlconcat_v2_1_4_xlconcat2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
In7[0]2default:default2,
xlconcat_v2_1_4_xlconcat2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
In8[0]2default:default2,
xlconcat_v2_1_4_xlconcat2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
In9[0]2default:default2,
xlconcat_v2_1_4_xlconcat2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
In10[0]2default:default2,
xlconcat_v2_1_4_xlconcat2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
In11[0]2default:default2,
xlconcat_v2_1_4_xlconcat2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
In12[0]2default:default2,
xlconcat_v2_1_4_xlconcat2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
In13[0]2default:default2,
xlconcat_v2_1_4_xlconcat2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
In14[0]2default:default2,
xlconcat_v2_1_4_xlconcat2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
In15[0]2default:default2,
xlconcat_v2_1_4_xlconcat2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
In16[0]2default:default2,
xlconcat_v2_1_4_xlconcat2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
In17[0]2default:default2,
xlconcat_v2_1_4_xlconcat2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
In18[0]2default:default2,
xlconcat_v2_1_4_xlconcat2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
In19[0]2default:default2,
xlconcat_v2_1_4_xlconcat2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
In20[0]2default:default2,
xlconcat_v2_1_4_xlconcat2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
In21[0]2default:default2,
xlconcat_v2_1_4_xlconcat2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
In22[0]2default:default2,
xlconcat_v2_1_4_xlconcat2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
In23[0]2default:default2,
xlconcat_v2_1_4_xlconcat2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
In24[0]2default:default2,
xlconcat_v2_1_4_xlconcat2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
In25[0]2default:default2,
xlconcat_v2_1_4_xlconcat2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
In26[0]2default:default2,
xlconcat_v2_1_4_xlconcat2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
In27[0]2default:default2,
xlconcat_v2_1_4_xlconcat2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
In28[0]2default:default2,
xlconcat_v2_1_4_xlconcat2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
In29[0]2default:default2,
xlconcat_v2_1_4_xlconcat2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
In30[0]2default:default2,
xlconcat_v2_1_4_xlconcat2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
In31[0]2default:default2,
xlconcat_v2_1_4_xlconcat2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
In32[0]2default:default2,
xlconcat_v2_1_4_xlconcat2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
In33[0]2default:default2,
xlconcat_v2_1_4_xlconcat2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
In34[0]2default:default2,
xlconcat_v2_1_4_xlconcat2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
In35[0]2default:default2,
xlconcat_v2_1_4_xlconcat2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
In36[0]2default:default2,
xlconcat_v2_1_4_xlconcat2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
In37[0]2default:default2,
xlconcat_v2_1_4_xlconcat2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
In38[0]2default:default2,
xlconcat_v2_1_4_xlconcat2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
In39[0]2default:default2,
xlconcat_v2_1_4_xlconcat2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
In40[0]2default:default2,
xlconcat_v2_1_4_xlconcat2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
In41[0]2default:default2,
xlconcat_v2_1_4_xlconcat2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
In42[0]2default:default2,
xlconcat_v2_1_4_xlconcat2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
In43[0]2default:default2,
xlconcat_v2_1_4_xlconcat2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
In44[0]2default:default2,
xlconcat_v2_1_4_xlconcat2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
In45[0]2default:default2,
xlconcat_v2_1_4_xlconcat2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
In46[0]2default:default2,
xlconcat_v2_1_4_xlconcat2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
In47[0]2default:default2,
xlconcat_v2_1_4_xlconcat2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
In48[0]2default:default2,
xlconcat_v2_1_4_xlconcat2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
In49[0]2default:default2,
xlconcat_v2_1_4_xlconcat2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
In50[0]2default:default2,
xlconcat_v2_1_4_xlconcat2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
In51[0]2default:default2,
xlconcat_v2_1_4_xlconcat2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
In52[0]2default:default2,
xlconcat_v2_1_4_xlconcat2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
In53[0]2default:default2,
xlconcat_v2_1_4_xlconcat2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
In54[0]2default:default2,
xlconcat_v2_1_4_xlconcat2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
In55[0]2default:default2,
xlconcat_v2_1_4_xlconcat2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
In56[0]2default:default2,
xlconcat_v2_1_4_xlconcat2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
In57[0]2default:default2,
xlconcat_v2_1_4_xlconcat2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
In58[0]2default:default2,
xlconcat_v2_1_4_xlconcat2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
In59[0]2default:default2,
xlconcat_v2_1_4_xlconcat2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
In60[0]2default:default2,
xlconcat_v2_1_4_xlconcat2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
In61[0]2default:default2,
xlconcat_v2_1_4_xlconcat2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
In62[0]2default:default2,
xlconcat_v2_1_4_xlconcat2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
In63[0]2default:default2,
xlconcat_v2_1_4_xlconcat2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
In64[0]2default:default2,
xlconcat_v2_1_4_xlconcat2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
In65[0]2default:default2,
xlconcat_v2_1_4_xlconcat2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
In66[0]2default:default2,
xlconcat_v2_1_4_xlconcat2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
In67[0]2default:default2,
xlconcat_v2_1_4_xlconcat2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
In68[0]2default:default2,
xlconcat_v2_1_4_xlconcat2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
In69[0]2default:default2,
xlconcat_v2_1_4_xlconcat2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
In70[0]2default:default2,
xlconcat_v2_1_4_xlconcat2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
In71[0]2default:default2,
xlconcat_v2_1_4_xlconcat2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
In72[0]2default:default2,
xlconcat_v2_1_4_xlconcat2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
In73[0]2default:default2,
xlconcat_v2_1_4_xlconcat2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
In74[0]2default:default2,
xlconcat_v2_1_4_xlconcat2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
In75[0]2default:default2,
xlconcat_v2_1_4_xlconcat2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
In76[0]2default:default2,
xlconcat_v2_1_4_xlconcat2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
In77[0]2default:default2,
xlconcat_v2_1_4_xlconcat2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
In78[0]2default:default2,
xlconcat_v2_1_4_xlconcat2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
In79[0]2default:default2,
xlconcat_v2_1_4_xlconcat2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
In80[0]2default:default2,
xlconcat_v2_1_4_xlconcat2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
In81[0]2default:default2,
xlconcat_v2_1_4_xlconcat2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
In82[0]2default:default2,
xlconcat_v2_1_4_xlconcat2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
In83[0]2default:default2,
xlconcat_v2_1_4_xlconcat2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
In84[0]2default:default2,
xlconcat_v2_1_4_xlconcat2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
In85[0]2default:default2,
xlconcat_v2_1_4_xlconcat2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
In86[0]2default:default2,
xlconcat_v2_1_4_xlconcat2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
In87[0]2default:default2,
xlconcat_v2_1_4_xlconcat2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
In88[0]2default:default2,
xlconcat_v2_1_4_xlconcat2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
In89[0]2default:default2,
xlconcat_v2_1_4_xlconcat2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
In90[0]2default:default2,
xlconcat_v2_1_4_xlconcat2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
In91[0]2default:default2,
xlconcat_v2_1_4_xlconcat2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
In92[0]2default:default2,
xlconcat_v2_1_4_xlconcat2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
In93[0]2default:default2,
xlconcat_v2_1_4_xlconcat2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
In94[0]2default:default2,
xlconcat_v2_1_4_xlconcat2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
In95[0]2default:default2,
xlconcat_v2_1_4_xlconcat2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
In96[0]2default:default2,
xlconcat_v2_1_4_xlconcat2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
In97[0]2default:default2,
xlconcat_v2_1_4_xlconcat2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
In98[0]2default:default2,
xlconcat_v2_1_4_xlconcat2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
In99[0]2default:default2,
xlconcat_v2_1_4_xlconcat2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
In100[0]2default:default2,
xlconcat_v2_1_4_xlconcat2default:defaultZ8-7129h px� 
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2 
Synth 8-71292default:default2
1002default:defaultZ17-14h px� 
�
%s*synth2�
�Finished RTL Elaboration : Time (s): cpu = 00:00:09 ; elapsed = 00:00:09 . Memory (MB): peak = 2866.469 ; gain = 0.000 ; free physical = 3752 ; free virtual = 15658
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:09 ; elapsed = 00:00:10 . Memory (MB): peak = 2866.469 ; gain = 0.000 ; free physical = 3752 ; free virtual = 15657
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:09 ; elapsed = 00:00:10 . Memory (MB): peak = 2866.469 ; gain = 0.000 ; free physical = 3752 ; free virtual = 15657
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.082default:default2
00:00:00.072default:default2
2866.4692default:default2
0.0002default:default2
37522default:default2
156572default:defaultZ17-722h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/ip/design_1_xbar_1/design_1_xbar_1/design_1_xbar_1_in_context.xdc2default:default26
 design_1_i/axi_mem_intercon/xbar	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/ip/design_1_xbar_1/design_1_xbar_1/design_1_xbar_1_in_context.xdc2default:default26
 design_1_i/axi_mem_intercon/xbar	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/ip/design_1_auto_us_0/design_1_auto_us_0/design_1_auto_us_0_in_context.xdc2default:default2F
0design_1_i/axi_mem_intercon/s00_couplers/auto_us	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/ip/design_1_auto_us_0/design_1_auto_us_0/design_1_auto_us_0_in_context.xdc2default:default2F
0design_1_i/axi_mem_intercon/s00_couplers/auto_us	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/ip/design_1_auto_pc_0/design_1_auto_pc_0/design_1_auto_pc_0_in_context.xdc2default:default2F
0design_1_i/axi_mem_intercon/m00_couplers/auto_pc	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/ip/design_1_auto_pc_0/design_1_auto_pc_0/design_1_auto_pc_0_in_context.xdc2default:default2F
0design_1_i/axi_mem_intercon/m00_couplers/auto_pc	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/ip/design_1_axi_quad_spi_0_0/design_1_axi_quad_spi_0_0/design_1_axi_quad_spi_0_0_in_context.xdc2default:default2/
design_1_i/axi_quad_spi_0	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/ip/design_1_axi_quad_spi_0_0/design_1_axi_quad_spi_0_0/design_1_axi_quad_spi_0_0_in_context.xdc2default:default2/
design_1_i/axi_quad_spi_0	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/ip/design_1_blk_mem_gen_0_0/design_1_blk_mem_gen_0_0/design_1_blk_mem_gen_0_0_in_context.xdc2default:default2.
design_1_i/blk_mem_gen_0	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/ip/design_1_blk_mem_gen_0_0/design_1_blk_mem_gen_0_0/design_1_blk_mem_gen_0_0_in_context.xdc2default:default2.
design_1_i/blk_mem_gen_0	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/ip/design_1_caravel_0_0/design_1_caravel_0_0/design_1_caravel_0_0_in_context.xdc2default:default2*
design_1_i/caravel_0	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/ip/design_1_caravel_0_0/design_1_caravel_0_0/design_1_caravel_0_0_in_context.xdc2default:default2*
design_1_i/caravel_0	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/ip/design_1_caravel_ps_0_0/design_1_caravel_ps_0_0/design_1_caravel_ps_0_0_in_context.xdc2default:default2-
design_1_i/caravel_ps_0	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/ip/design_1_caravel_ps_0_0/design_1_caravel_ps_0_0/design_1_caravel_ps_0_0_in_context.xdc2default:default2-
design_1_i/caravel_ps_0	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0_in_context.xdc2default:default2*
design_1_i/clk_wiz_0	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0_in_context.xdc2default:default2*
design_1_i/clk_wiz_0	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/ip/design_1_output_pin_0_0/design_1_output_pin_0_0/design_1_output_pin_0_0_in_context.xdc2default:default2-
design_1_i/output_pin_0	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/ip/design_1_output_pin_0_0/design_1_output_pin_0_0/design_1_output_pin_0_0_in_context.xdc2default:default2-
design_1_i/output_pin_0	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/ip/design_1_processing_system7_0_0/design_1_processing_system7_0_0/design_1_processing_system7_0_0_in_context.xdc2default:default25
design_1_i/processing_system7_0	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/ip/design_1_processing_system7_0_0/design_1_processing_system7_0_0/design_1_processing_system7_0_0_in_context.xdc2default:default25
design_1_i/processing_system7_0	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/ip/design_1_xbar_0/design_1_xbar_0/design_1_xbar_0_in_context.xdc2default:default26
 design_1_i/ps7_0_axi_periph/xbar	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/ip/design_1_xbar_0/design_1_xbar_0/design_1_xbar_0_in_context.xdc2default:default26
 design_1_i/ps7_0_axi_periph/xbar	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/ip/design_1_auto_pc_1/design_1_auto_pc_1/design_1_auto_pc_1_in_context.xdc2default:default2F
0design_1_i/ps7_0_axi_periph/s00_couplers/auto_pc	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/ip/design_1_auto_pc_1/design_1_auto_pc_1/design_1_auto_pc_1_in_context.xdc2default:default2F
0design_1_i/ps7_0_axi_periph/s00_couplers/auto_pc	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/ip/design_1_ps_axil_0_0/design_1_ps_axil_0_0/design_1_ps_axil_0_0_in_context.xdc2default:default2*
design_1_i/ps_axil_0	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/ip/design_1_ps_axil_0_0/design_1_ps_axil_0_0/design_1_ps_axil_0_0_in_context.xdc2default:default2*
design_1_i/ps_axil_0	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/ip/design_1_rst_ps7_0_10M_0/design_1_rst_ps7_0_10M_0/design_1_rst_ps7_0_10M_0_in_context.xdc2default:default2.
design_1_i/rst_ps7_0_10M	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/ip/design_1_rst_ps7_0_10M_0/design_1_rst_ps7_0_10M_0/design_1_rst_ps7_0_10M_0_in_context.xdc2default:default2.
design_1_i/rst_ps7_0_10M	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/ip/design_1_spiflash_0_0/design_1_spiflash_0_0/design_1_spiflash_0_0_in_context.xdc2default:default2+
design_1_i/spiflash_0	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/ip/design_1_spiflash_0_0/design_1_spiflash_0_0/design_1_spiflash_0_0_in_context.xdc2default:default2+
design_1_i/spiflash_0	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/ip/design_1_userdma_0_0/design_1_userdma_0_0/design_1_userdma_0_0_in_context.xdc2default:default2*
design_1_i/userdma_0	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/ip/design_1_userdma_0_0/design_1_userdma_0_0/design_1_userdma_0_0_in_context.xdc2default:default2*
design_1_i/userdma_0	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/ip/design_1_axi_intc_0_0/design_1_axi_intc_0_0/design_1_axi_intc_0_0_in_context.xdc2default:default2+
design_1_i/axi_intc_0	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/ip/design_1_axi_intc_0_0/design_1_axi_intc_0_0/design_1_axi_intc_0_0_in_context.xdc2default:default2+
design_1_i/axi_intc_0	2default:default8Z20-847h px� 
�
Parsing XDC File [%s]
179*designutils2�
u/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.runs/synth_1/dont_touch.xdc2default:default8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2�
u/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.runs/synth_1/dont_touch.xdc2default:default8Z20-178h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
2882.4652default:default2
0.0002default:default2
36792default:default2
155852default:defaultZ17-722h px� 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common24
 Constraint Validation Runtime : 2default:default2
00:00:00.012default:default2
00:00:002default:default2
2882.4652default:default2
0.0002default:default2
36792default:default2
155852default:defaultZ17-722h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Constraint Validation : Time (s): cpu = 00:00:19 ; elapsed = 00:00:20 . Memory (MB): peak = 2882.465 ; gain = 15.996 ; free physical = 3722 ; free virtual = 15628
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
J
%s
*synth22
Loading part: xc7z020clg400-1
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:19 ; elapsed = 00:00:20 . Memory (MB): peak = 2882.465 ; gain = 15.996 ; free physical = 3722 ; free virtual = 15628
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:19 ; elapsed = 00:00:20 . Memory (MB): peak = 2882.465 ; gain = 15.996 ; free physical = 3722 ; free virtual = 15628
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:20 ; elapsed = 00:00:21 . Memory (MB): peak = 2882.465 ; gain = 15.996 ; free physical = 3722 ; free virtual = 15630
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2k
WPart Resources:
DSPs: 220 (col length:60)
BRAMs: 280 (col length: RAMB18 60 RAMB36 30)
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:21 ; elapsed = 00:00:23 . Memory (MB): peak = 2882.465 ; gain = 15.996 ; free physical = 3720 ; free virtual = 15632
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:28 ; elapsed = 00:00:30 . Memory (MB): peak = 2882.465 ; gain = 15.996 ; free physical = 3603 ; free virtual = 15516
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Timing Optimization : Time (s): cpu = 00:00:28 ; elapsed = 00:00:30 . Memory (MB): peak = 2882.465 ; gain = 15.996 ; free physical = 3603 ; free virtual = 15516
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Technology Mapping : Time (s): cpu = 00:00:29 ; elapsed = 00:00:30 . Memory (MB): peak = 2882.465 ; gain = 15.996 ; free physical = 3586 ; free virtual = 15499
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished IO Insertion : Time (s): cpu = 00:00:35 ; elapsed = 00:00:37 . Memory (MB): peak = 2882.465 ; gain = 15.996 ; free physical = 3586 ; free virtual = 15499
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:35 ; elapsed = 00:00:37 . Memory (MB): peak = 2882.465 ; gain = 15.996 ; free physical = 3586 ; free virtual = 15499
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:35 ; elapsed = 00:00:37 . Memory (MB): peak = 2882.465 ; gain = 15.996 ; free physical = 3586 ; free virtual = 15499
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:35 ; elapsed = 00:00:37 . Memory (MB): peak = 2882.465 ; gain = 15.996 ; free physical = 3586 ; free virtual = 15499
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:35 ; elapsed = 00:00:37 . Memory (MB): peak = 2882.465 ; gain = 15.996 ; free physical = 3586 ; free virtual = 15499
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:35 ; elapsed = 00:00:37 . Memory (MB): peak = 2882.465 ; gain = 15.996 ; free physical = 3586 ; free virtual = 15499
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
� 
a
%s
*synth2I
5+------+--------------------------------+----------+
2default:defaulth p
x
� 
a
%s
*synth2I
5|      |BlackBox name                   |Instances |
2default:defaulth p
x
� 
a
%s
*synth2I
5+------+--------------------------------+----------+
2default:defaulth p
x
� 
a
%s
*synth2I
5|1     |design_1_xbar_1                 |         1|
2default:defaulth p
x
� 
a
%s
*synth2I
5|2     |design_1_auto_pc_0              |         1|
2default:defaulth p
x
� 
a
%s
*synth2I
5|3     |design_1_auto_us_0              |         1|
2default:defaulth p
x
� 
a
%s
*synth2I
5|4     |design_1_xbar_0                 |         1|
2default:defaulth p
x
� 
a
%s
*synth2I
5|5     |design_1_auto_pc_1              |         1|
2default:defaulth p
x
� 
a
%s
*synth2I
5|6     |design_1_axi_intc_0_0           |         1|
2default:defaulth p
x
� 
a
%s
*synth2I
5|7     |design_1_axi_quad_spi_0_0       |         1|
2default:defaulth p
x
� 
a
%s
*synth2I
5|8     |design_1_blk_mem_gen_0_0        |         1|
2default:defaulth p
x
� 
a
%s
*synth2I
5|9     |design_1_caravel_0_0            |         1|
2default:defaulth p
x
� 
a
%s
*synth2I
5|10    |design_1_caravel_ps_0_0         |         1|
2default:defaulth p
x
� 
a
%s
*synth2I
5|11    |design_1_clk_wiz_0_0            |         1|
2default:defaulth p
x
� 
a
%s
*synth2I
5|12    |design_1_output_pin_0_0         |         1|
2default:defaulth p
x
� 
a
%s
*synth2I
5|13    |design_1_processing_system7_0_0 |         1|
2default:defaulth p
x
� 
a
%s
*synth2I
5|14    |design_1_ps_axil_0_0            |         1|
2default:defaulth p
x
� 
a
%s
*synth2I
5|15    |design_1_rst_ps7_0_10M_0        |         1|
2default:defaulth p
x
� 
a
%s
*synth2I
5|16    |design_1_spiflash_0_0           |         1|
2default:defaulth p
x
� 
a
%s
*synth2I
5|17    |design_1_userdma_0_0            |         1|
2default:defaulth p
x
� 
a
%s
*synth2I
5+------+--------------------------------+----------+
2default:defaulth p
x
� 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px� 
[
%s*synth2C
/+------+------------------------------+------+
2default:defaulth px� 
[
%s*synth2C
/|      |Cell                          |Count |
2default:defaulth px� 
[
%s*synth2C
/+------+------------------------------+------+
2default:defaulth px� 
[
%s*synth2C
/|1     |design_1_auto_pc              |     2|
2default:defaulth px� 
[
%s*synth2C
/|3     |design_1_auto_us              |     1|
2default:defaulth px� 
[
%s*synth2C
/|4     |design_1_axi_intc_0           |     1|
2default:defaulth px� 
[
%s*synth2C
/|5     |design_1_axi_quad_spi_0       |     1|
2default:defaulth px� 
[
%s*synth2C
/|6     |design_1_blk_mem_gen_0        |     1|
2default:defaulth px� 
[
%s*synth2C
/|7     |design_1_caravel_0            |     1|
2default:defaulth px� 
[
%s*synth2C
/|8     |design_1_caravel_ps_0         |     1|
2default:defaulth px� 
[
%s*synth2C
/|9     |design_1_clk_wiz_0            |     1|
2default:defaulth px� 
[
%s*synth2C
/|10    |design_1_output_pin_0         |     1|
2default:defaulth px� 
[
%s*synth2C
/|11    |design_1_processing_system7_0 |     1|
2default:defaulth px� 
[
%s*synth2C
/|12    |design_1_ps_axil_0            |     1|
2default:defaulth px� 
[
%s*synth2C
/|13    |design_1_rst_ps7_0_10M        |     1|
2default:defaulth px� 
[
%s*synth2C
/|14    |design_1_spiflash_0           |     1|
2default:defaulth px� 
[
%s*synth2C
/|15    |design_1_userdma_0            |     1|
2default:defaulth px� 
[
%s*synth2C
/|16    |design_1_xbar                 |     2|
2default:defaulth px� 
[
%s*synth2C
/+------+------------------------------+------+
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:35 ; elapsed = 00:00:37 . Memory (MB): peak = 2882.465 ; gain = 15.996 ; free physical = 3586 ; free virtual = 15499
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
s
%s
*synth2[
GSynthesis finished with 0 errors, 0 critical warnings and 39 warnings.
2default:defaulth p
x
� 
�
%s
*synth2�
�Synthesis Optimization Runtime : Time (s): cpu = 00:00:32 ; elapsed = 00:00:33 . Memory (MB): peak = 2882.465 ; gain = 0.000 ; free physical = 3635 ; free virtual = 15548
2default:defaulth p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:36 ; elapsed = 00:00:37 . Memory (MB): peak = 2882.473 ; gain = 15.996 ; free physical = 3635 ; free virtual = 15548
2default:defaulth p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.062default:default2
00:00:00.062default:default2
2882.4732default:default2
0.0002default:default2
37352default:default2
156482default:defaultZ17-722h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
2882.4732default:default2
0.0002default:default2
36812default:default2
155942default:defaultZ17-722h px� 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px� 
g
$Synth Design complete, checksum: %s
562*	vivadotcl2
a5a73c842default:defaultZ4-1430h px� 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
942default:default2
1502default:default2
02default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
synth_design: 2default:default2
00:00:452default:default2
00:00:442default:default2
2882.4732default:default2
16.0042default:default2
38572default:default2
157702default:defaultZ17-722h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2�
{/home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v2/vivado/vvd_caravel_fpga/vvd_caravel_fpga.runs/synth_1/design_1_wrapper.dcp2default:defaultZ17-1381h px� 
�
%s4*runtcl2�
vExecuting : report_utilization -file design_1_wrapper_utilization_synth.rpt -pb design_1_wrapper_utilization_synth.pb
2default:defaulth px� 
�
Exiting %s at %s...
206*common2
Vivado2default:default2,
Thu Jun 13 09:41:40 20242default:defaultZ17-206h px� 


End Record