set SynModuleInfo {
  {SRCNAME entry_proc MODELNAME entry_proc RTLNAME mq_iNTT_entry_proc}
  {SRCNAME Block_entry47_proc MODELNAME Block_entry47_proc RTLNAME mq_iNTT_Block_entry47_proc}
  {SRCNAME Loop_VITIS_LOOP_154_1_proc_Pipeline_VITIS_LOOP_165_3 MODELNAME Loop_VITIS_LOOP_154_1_proc_Pipeline_VITIS_LOOP_165_3 RTLNAME mq_iNTT_Loop_VITIS_LOOP_154_1_proc_Pipeline_VITIS_LOOP_165_3
    SUBMODULES {
      {MODELNAME mq_iNTT_am_addmul_15s_17s_14ns_32_4_1 RTLNAME mq_iNTT_am_addmul_15s_17s_14ns_32_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME mq_iNTT_mul_mul_16s_14ns_16_4_1 RTLNAME mq_iNTT_mul_mul_16s_14ns_16_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME mq_iNTT_mac_muladd_16ns_14ns_32s_32_4_1 RTLNAME mq_iNTT_mac_muladd_16ns_14ns_32s_32_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME mq_iNTT_flow_control_loop_pipe_sequential_init RTLNAME mq_iNTT_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME mq_iNTT_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME Loop_VITIS_LOOP_154_1_proc_Pipeline_VITIS_LOOP_194_4 MODELNAME Loop_VITIS_LOOP_154_1_proc_Pipeline_VITIS_LOOP_194_4 RTLNAME mq_iNTT_Loop_VITIS_LOOP_154_1_proc_Pipeline_VITIS_LOOP_194_4}
  {SRCNAME Loop_VITIS_LOOP_154_1_proc_Pipeline_VITIS_LOOP_199_5 MODELNAME Loop_VITIS_LOOP_154_1_proc_Pipeline_VITIS_LOOP_199_5 RTLNAME mq_iNTT_Loop_VITIS_LOOP_154_1_proc_Pipeline_VITIS_LOOP_199_5
    SUBMODULES {
      {MODELNAME mq_iNTT_mul_31ns_16ns_32_1_1 RTLNAME mq_iNTT_mul_31ns_16ns_32_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME mq_iNTT_mac_muladd_16ns_14ns_32ns_32_4_1 RTLNAME mq_iNTT_mac_muladd_16ns_14ns_32ns_32_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME Loop_VITIS_LOOP_154_1_proc MODELNAME Loop_VITIS_LOOP_154_1_proc RTLNAME mq_iNTT_Loop_VITIS_LOOP_154_1_proc
    SUBMODULES {
      {MODELNAME mq_iNTT_Loop_VITIS_LOOP_154_1_proc_iGMb_ROM_AUTO_1R RTLNAME mq_iNTT_Loop_VITIS_LOOP_154_1_proc_iGMb_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME mq_iNTT MODELNAME mq_iNTT RTLNAME mq_iNTT IS_TOP 1
    SUBMODULES {
      {MODELNAME mq_iNTT_fifo_w64_d3_S RTLNAME mq_iNTT_fifo_w64_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME mq_iNTT_fifo_w64_d2_S RTLNAME mq_iNTT_fifo_w64_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME mq_iNTT_gmem0_m_axi RTLNAME mq_iNTT_gmem0_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME mq_iNTT_control_s_axi RTLNAME mq_iNTT_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
