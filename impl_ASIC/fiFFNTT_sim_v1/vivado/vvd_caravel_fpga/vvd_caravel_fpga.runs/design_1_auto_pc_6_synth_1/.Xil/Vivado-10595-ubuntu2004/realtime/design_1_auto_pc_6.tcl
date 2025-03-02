# 
# Synthesis run script generated by Vivado
# 

namespace eval rt {
    variable rc
}
set rt::rc [catch {
  uplevel #0 {
    set ::env(BUILTIN_SYNTH) true
    source $::env(HRT_TCL_PATH)/rtSynthPrep.tcl
    rt::HARTNDb_startJobStats
    set rt::cmdEcho 0
    rt::set_parameter writeXmsg true
    rt::set_parameter enableParallelHelperSpawn true
    set ::env(RT_TMP) "./.Xil/Vivado-10595-ubuntu2004/realtime/tmp"
    if { [ info exists ::env(RT_TMP) ] } {
      file mkdir $::env(RT_TMP)
    }

    rt::delete_design

    rt::set_parameter datapathDensePacking false
    set rt::partid xc7z020clg400-1
     file delete -force synth_hints.os

    set rt::multiChipSynthesisFlow false
    source $::env(SYNTH_COMMON)/common.tcl
    set rt::defaultWorkLibName xil_defaultlib

    # Skipping read_* RTL commands because this is post-elab optimize flow
    set rt::useElabCache true
    if {$rt::useElabCache == false} {
      rt::read_verilog -sv -include /home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v1/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/ipshared/ec67/hdl {
      /tools/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv
      /tools/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv
      /tools/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv
    }
      rt::read_verilog -include /home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v1/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/ipshared/ec67/hdl {
      /home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v1/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v
      /home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v1/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/ipshared/5390/hdl/axi_data_fifo_v2_1_vl_rfs.v
      /home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v1/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v
      /home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v1/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/ipshared/0a3f/hdl/axi_register_slice_v2_1_vl_rfs.v
      /home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v1/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/ipshared/90c8/hdl/axi_protocol_converter_v2_1_vl_rfs.v
      /home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v1/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/ip/design_1_auto_pc_6/synth/design_1_auto_pc_6.v
    }
      rt::read_vhdl -lib xpm /tools/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_VCOMP.vhd
      rt::read_vhdl -lib blk_mem_gen_v8_4_5 /home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v1/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/ipshared/25a8/hdl/blk_mem_gen_v8_4_vhsyn_rfs.vhd
      rt::read_vhdl -lib fifo_generator_v13_2_7 /home/ubuntu/PQC_Falcon/impl_ASIC/fiFFNTT_sim_v1/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/ipshared/83df/hdl/fifo_generator_v13_2_vhsyn_rfs.vhd
      rt::filesetChecksum
    }
    rt::set_parameter usePostFindUniquification true
    set rt::SDCFileList ./.Xil/Vivado-10595-ubuntu2004/realtime/design_1_auto_pc_6_synth.xdc
    rt::sdcChecksum
    set rt::top design_1_auto_pc_6
    rt::set_parameter enableIncremental true
    rt::set_parameter markDebugPreservationLevel "enable"
    set rt::ioInsertion false
    set rt::reportTiming false
    rt::set_parameter elaborateOnly false
    rt::set_parameter elaborateRtl false
    rt::set_parameter eliminateRedundantBitOperator true
    rt::set_parameter dataflowBusHighlighting false
    rt::set_parameter generateDataflowBusNetlist false
    rt::set_parameter dataFlowViewInElab false
    rt::set_parameter busViewFixBrokenConnections false
    set_param edifin.funnel true
    rt::set_parameter elaborateRtlOnlyFlow false
    rt::set_parameter writeBlackboxInterface true
    rt::set_parameter ramStyle auto
    rt::set_parameter merge_flipflops true
# MODE: out_of_context
    rt::set_parameter webTalkPath {}
    rt::set_parameter synthDebugLog false
    rt::set_parameter printModuleName false
    rt::set_parameter enableSplitFlowPath "./.Xil/Vivado-10595-ubuntu2004/"
    set ok_to_delete_rt_tmp true 
    if { [rt::get_parameter parallelDebug] } { 
       set ok_to_delete_rt_tmp false 
    } 
    if {$rt::useElabCache == false} {
        set oldMIITMVal [rt::get_parameter maxInputIncreaseToMerge]; rt::set_parameter maxInputIncreaseToMerge 1000
        set oldCDPCRL [rt::get_parameter createDfgPartConstrRecurLimit]; rt::set_parameter createDfgPartConstrRecurLimit 1
        $rt::db readXRFFile
      rt::run_synthesis -module $rt::top
        rt::set_parameter maxInputIncreaseToMerge $oldMIITMVal
        rt::set_parameter createDfgPartConstrRecurLimit $oldCDPCRL
    }

    set rt::flowresult [ source $::env(SYNTH_COMMON)/flow.tcl ]
    rt::HARTNDb_stopJobStats
    rt::HARTNDb_reportJobStats "Synthesis Optimization Runtime"
    rt::HARTNDb_stopSystemStats
    if { $rt::flowresult == 1 } { return -code error }


  set hsKey [rt::get_parameter helper_shm_key] 
  if { $hsKey != "" && [info exists ::env(BUILTIN_SYNTH)] && [rt::get_parameter enableParallelHelperSpawn] } { 
     $rt::db killSynthHelper $hsKey
  } 
  rt::set_parameter helper_shm_key "" 
    if { [ info exists ::env(RT_TMP) ] } {
      if { [info exists ok_to_delete_rt_tmp] && $ok_to_delete_rt_tmp } { 
        file delete -force $::env(RT_TMP)
      }
    }

    source $::env(HRT_TCL_PATH)/rtSynthCleanup.tcl
  } ; #end uplevel
} rt::result]

if { $rt::rc } {
  $rt::db resetHdlParse
  set hsKey [rt::get_parameter helper_shm_key] 
  if { $hsKey != "" && [info exists ::env(BUILTIN_SYNTH)] && [rt::get_parameter enableParallelHelperSpawn] } { 
     $rt::db killSynthHelper $hsKey
  } 
  source $::env(HRT_TCL_PATH)/rtSynthCleanup.tcl
  return -code "error" $rt::result
}
