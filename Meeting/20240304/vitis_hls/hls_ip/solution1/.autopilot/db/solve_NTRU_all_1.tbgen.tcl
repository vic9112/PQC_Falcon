set moduleName solve_NTRU_all_1
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {solve_NTRU_all.1}
set C_modelType { int 64 }
set C_modelArgList {
	{ f int 8 regular {array 1024 { 1 3 } 1 1 }  }
	{ g int 8 regular {array 1024 { 1 3 } 1 1 }  }
	{ depth_offset int 32 regular  }
	{ vla18 int 32 regular {array 7168 { 2 2 } 1 1 }  }
	{ p_read int 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "f", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "g", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "depth_offset", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "vla18", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "p_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 64} ]}
# RTL Port declarations: 
set portNum 26
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ f_address0 sc_out sc_lv 10 signal 0 } 
	{ f_ce0 sc_out sc_logic 1 signal 0 } 
	{ f_q0 sc_in sc_lv 8 signal 0 } 
	{ g_address0 sc_out sc_lv 10 signal 1 } 
	{ g_ce0 sc_out sc_logic 1 signal 1 } 
	{ g_q0 sc_in sc_lv 8 signal 1 } 
	{ depth_offset sc_in sc_lv 32 signal 2 } 
	{ vla18_address0 sc_out sc_lv 13 signal 3 } 
	{ vla18_ce0 sc_out sc_logic 1 signal 3 } 
	{ vla18_we0 sc_out sc_lv 4 signal 3 } 
	{ vla18_d0 sc_out sc_lv 32 signal 3 } 
	{ vla18_q0 sc_in sc_lv 32 signal 3 } 
	{ vla18_address1 sc_out sc_lv 13 signal 3 } 
	{ vla18_ce1 sc_out sc_logic 1 signal 3 } 
	{ vla18_we1 sc_out sc_lv 4 signal 3 } 
	{ vla18_d1 sc_out sc_lv 32 signal 3 } 
	{ vla18_q1 sc_in sc_lv 32 signal 3 } 
	{ p_read sc_in sc_lv 32 signal 4 } 
	{ ap_return_0 sc_out sc_lv 32 signal -1 } 
	{ ap_return_1 sc_out sc_lv 32 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "f_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "f", "role": "address0" }} , 
 	{ "name": "f_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "f", "role": "ce0" }} , 
 	{ "name": "f_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "f", "role": "q0" }} , 
 	{ "name": "g_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "g", "role": "address0" }} , 
 	{ "name": "g_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "g", "role": "ce0" }} , 
 	{ "name": "g_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "g", "role": "q0" }} , 
 	{ "name": "depth_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "depth_offset", "role": "default" }} , 
 	{ "name": "vla18_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "vla18", "role": "address0" }} , 
 	{ "name": "vla18_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vla18", "role": "ce0" }} , 
 	{ "name": "vla18_we0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "vla18", "role": "we0" }} , 
 	{ "name": "vla18_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "vla18", "role": "d0" }} , 
 	{ "name": "vla18_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "vla18", "role": "q0" }} , 
 	{ "name": "vla18_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "vla18", "role": "address1" }} , 
 	{ "name": "vla18_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vla18", "role": "ce1" }} , 
 	{ "name": "vla18_we1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "vla18", "role": "we1" }} , 
 	{ "name": "vla18_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "vla18", "role": "d1" }} , 
 	{ "name": "vla18_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "vla18", "role": "q1" }} , 
 	{ "name": "p_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read", "role": "default" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "17", "102", "109", "118", "122", "126", "130", "134", "138", "142", "150", "152", "161", "165", "169", "190", "195", "202", "236", "238", "282", "283", "284", "285", "286", "287", "288", "289", "290", "291", "292", "293", "294", "295", "296", "297", "298", "299", "300", "301", "302", "303", "304", "305", "306", "307", "308", "309", "310", "311", "312", "313", "314", "315", "316", "317", "318", "319", "320", "321", "322", "323", "324", "325", "326", "327", "328"],
		"CDFG" : "solve_NTRU_all_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "f", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_make_fg_1_fu_3330", "Port" : "f", "Inst_start_state" : "274", "Inst_end_state" : "275"}]},
			{"Name" : "g", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_make_fg_1_fu_3330", "Port" : "g", "Inst_start_state" : "274", "Inst_end_state" : "275"}]},
			{"Name" : "depth_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "vla18", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "152", "SubInstance" : "grp_iFFT_1_fu_3522", "Port" : "vla18", "Inst_start_state" : "386", "Inst_end_state" : "394"},
					{"ID" : "142", "SubInstance" : "grp_FFT_1_fu_3500", "Port" : "vla18", "Inst_start_state" : "376", "Inst_end_state" : "377"},
					{"ID" : "238", "SubInstance" : "grp_poly_sub_scaled_ntt_1_fu_3649", "Port" : "vla18", "Inst_start_state" : "442", "Inst_end_state" : "440"},
					{"ID" : "109", "SubInstance" : "grp_modp_iNTT2_ext_1_fu_3386", "Port" : "vla18", "Inst_start_state" : "338", "Inst_end_state" : "339"},
					{"ID" : "102", "SubInstance" : "grp_modp_NTT2_ext_1_fu_3357", "Port" : "vla18", "Inst_start_state" : "328", "Inst_end_state" : "329"},
					{"ID" : "236", "SubInstance" : "grp_poly_sub_scaled_1_fu_3632", "Port" : "vla18", "Inst_start_state" : "439", "Inst_end_state" : "440"},
					{"ID" : "195", "SubInstance" : "grp_poly_mul_fft_1_fu_3613", "Port" : "vla18", "Inst_start_state" : "380", "Inst_end_state" : "381"},
					{"ID" : "202", "SubInstance" : "grp_zint_bezout_1_fu_3626", "Port" : "vla18", "Inst_start_state" : "268", "Inst_end_state" : "269"},
					{"ID" : "190", "SubInstance" : "grp_poly_big_to_fp_1_fu_3592", "Port" : "vla18", "Inst_start_state" : "372", "Inst_end_state" : "373"},
					{"ID" : "17", "SubInstance" : "grp_make_fg_1_fu_3330", "Port" : "vla18", "Inst_start_state" : "274", "Inst_end_state" : "275"},
					{"ID" : "165", "SubInstance" : "grp_zint_mod_small_signed_1_fu_3545", "Port" : "vla18", "Inst_start_state" : "310", "Inst_end_state" : "311"},
					{"ID" : "7", "SubInstance" : "grp_modp_mkgm2_1_fu_3306", "Port" : "vla18", "Inst_start_state" : "303", "Inst_end_state" : "304"},
					{"ID" : "169", "SubInstance" : "grp_zint_rebuild_CRT_1_fu_3561", "Port" : "vla18", "Inst_start_state" : "341", "Inst_end_state" : "342"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "REV10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "238", "SubInstance" : "grp_poly_sub_scaled_ntt_1_fu_3649", "Port" : "REV10", "Inst_start_state" : "442", "Inst_end_state" : "440"},
					{"ID" : "17", "SubInstance" : "grp_make_fg_1_fu_3330", "Port" : "REV10", "Inst_start_state" : "274", "Inst_end_state" : "275"},
					{"ID" : "7", "SubInstance" : "grp_modp_mkgm2_1_fu_3306", "Port" : "REV10", "Inst_start_state" : "303", "Inst_end_state" : "304"}]},
			{"Name" : "MAX_BL_SMALL", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_make_fg_1_fu_3330", "Port" : "MAX_BL_SMALL", "Inst_start_state" : "274", "Inst_end_state" : "275"}]},
			{"Name" : "PRIMES_p", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "238", "SubInstance" : "grp_poly_sub_scaled_ntt_1_fu_3649", "Port" : "PRIMES_p", "Inst_start_state" : "442", "Inst_end_state" : "440"},
					{"ID" : "17", "SubInstance" : "grp_make_fg_1_fu_3330", "Port" : "PRIMES_p", "Inst_start_state" : "274", "Inst_end_state" : "275"},
					{"ID" : "169", "SubInstance" : "grp_zint_rebuild_CRT_1_fu_3561", "Port" : "PRIMES_p", "Inst_start_state" : "341", "Inst_end_state" : "342"}]},
			{"Name" : "PRIMES_g", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "238", "SubInstance" : "grp_poly_sub_scaled_ntt_1_fu_3649", "Port" : "PRIMES_g", "Inst_start_state" : "442", "Inst_end_state" : "440"},
					{"ID" : "17", "SubInstance" : "grp_make_fg_1_fu_3330", "Port" : "PRIMES_g", "Inst_start_state" : "274", "Inst_end_state" : "275"}]},
			{"Name" : "PRIMES_s", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "238", "SubInstance" : "grp_poly_sub_scaled_ntt_1_fu_3649", "Port" : "PRIMES_s", "Inst_start_state" : "442", "Inst_end_state" : "440"},
					{"ID" : "17", "SubInstance" : "grp_make_fg_1_fu_3330", "Port" : "PRIMES_s", "Inst_start_state" : "274", "Inst_end_state" : "275"},
					{"ID" : "169", "SubInstance" : "grp_zint_rebuild_CRT_1_fu_3561", "Port" : "PRIMES_s", "Inst_start_state" : "341", "Inst_end_state" : "342"}]},
			{"Name" : "fpr_gm_tab", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "152", "SubInstance" : "grp_iFFT_1_fu_3522", "Port" : "fpr_gm_tab", "Inst_start_state" : "386", "Inst_end_state" : "394"},
					{"ID" : "142", "SubInstance" : "grp_FFT_1_fu_3500", "Port" : "fpr_gm_tab", "Inst_start_state" : "376", "Inst_end_state" : "377"}]},
			{"Name" : "fpr_p2_tab", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "152", "SubInstance" : "grp_iFFT_1_fu_3522", "Port" : "fpr_p2_tab", "Inst_start_state" : "386", "Inst_end_state" : "394"}]},
			{"Name" : "MAX_BL_LARGE", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "BITLENGTH_avg", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "BITLENGTH_std", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1487_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state270", "LastState" : ["ap_ST_fsm_state271"], "QuitState" : ["ap_ST_fsm_state270"], "PreState" : ["ap_ST_fsm_state269"], "PostState" : ["ap_ST_fsm_state272"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1487_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state272", "LastState" : ["ap_ST_fsm_state273"], "QuitState" : ["ap_ST_fsm_state272"], "PreState" : ["ap_ST_fsm_state270"], "PostState" : ["ap_ST_fsm_state452"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_779_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state111", "LastState" : ["ap_ST_fsm_state112"], "QuitState" : ["ap_ST_fsm_state111"], "PreState" : ["ap_ST_fsm_state110"], "PostState" : ["ap_ST_fsm_state113"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_4640_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state113", "LastState" : ["ap_ST_fsm_state118"], "QuitState" : ["ap_ST_fsm_state113"], "PreState" : ["ap_ST_fsm_state111"], "PostState" : ["ap_ST_fsm_state106"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_4631_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state106", "LastState" : ["ap_ST_fsm_state113"], "QuitState" : ["ap_ST_fsm_state106"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state119"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "Loop 4", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state119", "LastState" : ["ap_ST_fsm_state120"], "QuitState" : ["ap_ST_fsm_state120"], "PreState" : ["ap_ST_fsm_state106"], "PostState" : ["ap_ST_fsm_state121"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "Loop 5", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state121", "LastState" : ["ap_ST_fsm_state122"], "QuitState" : ["ap_ST_fsm_state122"], "PreState" : ["ap_ST_fsm_state120"], "PostState" : ["ap_ST_fsm_state123"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_4694_4", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state128", "LastState" : ["ap_ST_fsm_state129"], "QuitState" : ["ap_ST_fsm_state128"], "PreState" : ["ap_ST_fsm_state127"], "PostState" : ["ap_ST_fsm_state130"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1407_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state133", "LastState" : ["ap_ST_fsm_state135"], "QuitState" : ["ap_ST_fsm_state133"], "PreState" : ["ap_ST_fsm_state132"], "PostState" : ["ap_ST_fsm_state136"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1407_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state136", "LastState" : ["ap_ST_fsm_state138"], "QuitState" : ["ap_ST_fsm_state136"], "PreState" : ["ap_ST_fsm_state133"], "PostState" : ["ap_ST_fsm_state139"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_4664_3.4", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state139", "LastState" : ["ap_ST_fsm_state140"], "QuitState" : ["ap_ST_fsm_state140"], "PreState" : ["ap_ST_fsm_state136"], "PostState" : ["ap_ST_fsm_state141"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_4664_3.5", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state141", "LastState" : ["ap_ST_fsm_state142"], "QuitState" : ["ap_ST_fsm_state142"], "PreState" : ["ap_ST_fsm_state140"], "PostState" : ["ap_ST_fsm_state143"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_4664_3.6", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state143", "LastState" : ["ap_ST_fsm_state144"], "QuitState" : ["ap_ST_fsm_state144"], "PreState" : ["ap_ST_fsm_state142"], "PostState" : ["ap_ST_fsm_state145"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_4729_6", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state145", "LastState" : ["ap_ST_fsm_state148"], "QuitState" : ["ap_ST_fsm_state145"], "PreState" : ["ap_ST_fsm_state144"], "PostState" : ["ap_ST_fsm_state149"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_4775_7", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state152", "LastState" : ["ap_ST_fsm_state158"], "QuitState" : ["ap_ST_fsm_state152"], "PreState" : ["ap_ST_fsm_state151"], "PostState" : ["ap_ST_fsm_state159"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_4801_8", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state166", "LastState" : ["ap_ST_fsm_state167"], "QuitState" : ["ap_ST_fsm_state166"], "PreState" : ["ap_ST_fsm_state161", "ap_ST_fsm_state165"], "PostState" : ["ap_ST_fsm_state123"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_4664_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state123", "LastState" : ["ap_ST_fsm_state166"], "QuitState" : ["ap_ST_fsm_state123"], "PreState" : ["ap_ST_fsm_state122"], "PostState" : ["ap_ST_fsm_state168"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "Loop 7", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state175", "LastState" : ["ap_ST_fsm_state176"], "QuitState" : ["ap_ST_fsm_state176"], "PreState" : ["ap_ST_fsm_state174"], "PostState" : ["ap_ST_fsm_state177"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "Loop 8", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state177", "LastState" : ["ap_ST_fsm_state178"], "QuitState" : ["ap_ST_fsm_state178"], "PreState" : ["ap_ST_fsm_state176"], "PostState" : ["ap_ST_fsm_state179"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "Loop 9", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state183", "LastState" : ["ap_ST_fsm_state184"], "QuitState" : ["ap_ST_fsm_state184"], "PreState" : ["ap_ST_fsm_state182"], "PostState" : ["ap_ST_fsm_state185"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_480_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state193", "LastState" : ["ap_ST_fsm_state207"], "QuitState" : ["ap_ST_fsm_state193"], "PreState" : ["ap_ST_fsm_state192"], "PostState" : ["ap_ST_fsm_state208"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_225_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state208", "LastState" : ["ap_ST_fsm_state223"], "QuitState" : ["ap_ST_fsm_state208"], "PreState" : ["ap_ST_fsm_state193"], "PostState" : ["ap_ST_fsm_state224"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_580_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state224", "LastState" : ["ap_ST_fsm_state233"], "QuitState" : ["ap_ST_fsm_state224"], "PreState" : ["ap_ST_fsm_state208"], "PostState" : ["ap_ST_fsm_state234"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_4901_9", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state235", "LastState" : ["ap_ST_fsm_state239"], "QuitState" : ["ap_ST_fsm_state235", "ap_ST_fsm_state236"], "PreState" : ["ap_ST_fsm_state234"], "PostState" : ["ap_ST_fsm_state240", "ap_ST_fsm_state452"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_464_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state245", "LastState" : ["ap_ST_fsm_state248"], "QuitState" : ["ap_ST_fsm_state245"], "PreState" : ["ap_ST_fsm_state244"], "PostState" : ["ap_ST_fsm_state249"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_464_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state249", "LastState" : ["ap_ST_fsm_state253"], "QuitState" : ["ap_ST_fsm_state249"], "PreState" : ["ap_ST_fsm_state245"], "PostState" : ["ap_ST_fsm_state254"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "Loop 16", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state257", "LastState" : ["ap_ST_fsm_state258"], "QuitState" : ["ap_ST_fsm_state258"], "PreState" : ["ap_ST_fsm_state256"], "PostState" : ["ap_ST_fsm_state259"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_4932_10", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state259", "LastState" : ["ap_ST_fsm_state264"], "QuitState" : ["ap_ST_fsm_state259"], "PreState" : ["ap_ST_fsm_state258"], "PostState" : ["ap_ST_fsm_state452"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_4980_11", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state5"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_4990_12", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state8", "LastState" : ["ap_ST_fsm_state9"], "QuitState" : ["ap_ST_fsm_state8"], "PreState" : ["ap_ST_fsm_state7"], "PostState" : ["ap_ST_fsm_state10"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_5000_13", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state13", "LastState" : ["ap_ST_fsm_state18"], "QuitState" : ["ap_ST_fsm_state13"], "PreState" : ["ap_ST_fsm_state12"], "PostState" : ["ap_ST_fsm_state19"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "Loop 21", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state22", "LastState" : ["ap_ST_fsm_state23"], "QuitState" : ["ap_ST_fsm_state23"], "PreState" : ["ap_ST_fsm_state21"], "PostState" : ["ap_ST_fsm_state24"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_5052_14", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state31", "LastState" : ["ap_ST_fsm_state33"], "QuitState" : ["ap_ST_fsm_state31"], "PreState" : ["ap_ST_fsm_state30"], "PostState" : ["ap_ST_fsm_state34"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_5062_15", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state37", "LastState" : ["ap_ST_fsm_state39"], "QuitState" : ["ap_ST_fsm_state37"], "PreState" : ["ap_ST_fsm_state36"], "PostState" : ["ap_ST_fsm_state40"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_5075_16", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state41", "LastState" : ["ap_ST_fsm_state43"], "QuitState" : ["ap_ST_fsm_state41"], "PreState" : ["ap_ST_fsm_state40"], "PostState" : ["ap_ST_fsm_state44"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_5085_17", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state47", "LastState" : ["ap_ST_fsm_state50"], "QuitState" : ["ap_ST_fsm_state47"], "PreState" : ["ap_ST_fsm_state46"], "PostState" : ["ap_ST_fsm_state51"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_5104_18", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state56", "LastState" : ["ap_ST_fsm_state57"], "QuitState" : ["ap_ST_fsm_state56"], "PreState" : ["ap_ST_fsm_state55"], "PostState" : ["ap_ST_fsm_state58"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_5128_19", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state58", "LastState" : ["ap_ST_fsm_state61"], "QuitState" : ["ap_ST_fsm_state58"], "PreState" : ["ap_ST_fsm_state56"], "PostState" : ["ap_ST_fsm_state62"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "Loop 28", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state63", "LastState" : ["ap_ST_fsm_state64"], "QuitState" : ["ap_ST_fsm_state64"], "PreState" : ["ap_ST_fsm_state62"], "PostState" : ["ap_ST_fsm_state65"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_5139_20", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state65", "LastState" : ["ap_ST_fsm_state68"], "QuitState" : ["ap_ST_fsm_state65"], "PreState" : ["ap_ST_fsm_state64"], "PostState" : ["ap_ST_fsm_state69"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_248_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state70", "LastState" : ["ap_ST_fsm_state84"], "QuitState" : ["ap_ST_fsm_state70"], "PreState" : ["ap_ST_fsm_state69"], "PostState" : ["ap_ST_fsm_state85"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_5150_21", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state86", "LastState" : ["ap_ST_fsm_state88"], "QuitState" : ["ap_ST_fsm_state86"], "PreState" : ["ap_ST_fsm_state85"], "PostState" : ["ap_ST_fsm_state89"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_5168_22", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state90", "LastState" : ["ap_ST_fsm_state91"], "QuitState" : ["ap_ST_fsm_state90"], "PreState" : ["ap_ST_fsm_state89"], "PostState" : ["ap_ST_fsm_state92"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_5175_23", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state97", "LastState" : ["ap_ST_fsm_state100"], "QuitState" : ["ap_ST_fsm_state97"], "PreState" : ["ap_ST_fsm_state96"], "PostState" : ["ap_ST_fsm_state101"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_5186_24", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state104", "LastState" : ["ap_ST_fsm_state105"], "QuitState" : ["ap_ST_fsm_state104"], "PreState" : ["ap_ST_fsm_state103"], "PostState" : ["ap_ST_fsm_state452"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "Loop 35", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state277", "LastState" : ["ap_ST_fsm_state278"], "QuitState" : ["ap_ST_fsm_state277"], "PreState" : ["ap_ST_fsm_state275", "ap_ST_fsm_state276"], "PostState" : ["ap_ST_fsm_state276", "ap_ST_fsm_state280", "ap_ST_fsm_state279", "ap_ST_fsm_state281"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "Loop 36", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state276", "LastState" : ["ap_ST_fsm_state277"], "QuitState" : ["ap_ST_fsm_state277"], "PreState" : ["ap_ST_fsm_state275"], "PostState" : ["ap_ST_fsm_state278", "ap_ST_fsm_state280", "ap_ST_fsm_state279", "ap_ST_fsm_state281"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "Loop 37", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state279", "LastState" : ["ap_ST_fsm_state280"], "QuitState" : ["ap_ST_fsm_state280"], "PreState" : ["ap_ST_fsm_state277"], "PostState" : ["ap_ST_fsm_state281", "ap_ST_fsm_state282"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "Loop 38", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state280", "LastState" : ["ap_ST_fsm_state281"], "QuitState" : ["ap_ST_fsm_state280"], "PreState" : ["ap_ST_fsm_state277", "ap_ST_fsm_state279"], "PostState" : ["ap_ST_fsm_state279", "ap_ST_fsm_state282"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_779_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state287", "LastState" : ["ap_ST_fsm_state288"], "QuitState" : ["ap_ST_fsm_state287"], "PreState" : ["ap_ST_fsm_state286"], "PostState" : ["ap_ST_fsm_state289"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "solve_NTRU_intermediate_loop11", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state289", "LastState" : ["ap_ST_fsm_state294"], "QuitState" : ["ap_ST_fsm_state289"], "PreState" : ["ap_ST_fsm_state287"], "PostState" : ["ap_ST_fsm_state282"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "solve_NTRU_intermediate_loop1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state282", "LastState" : ["ap_ST_fsm_state289"], "QuitState" : ["ap_ST_fsm_state282"], "PreState" : ["ap_ST_fsm_state280"], "PostState" : ["ap_ST_fsm_state295"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "solve_NTRU_intermediate_loop21", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state316", "LastState" : ["ap_ST_fsm_state319"], "QuitState" : ["ap_ST_fsm_state316"], "PreState" : ["ap_ST_fsm_state304"], "PostState" : ["ap_ST_fsm_state320"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_779_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state305", "LastState" : ["ap_ST_fsm_state306"], "QuitState" : ["ap_ST_fsm_state305"], "PreState" : ["ap_ST_fsm_state304"], "PostState" : ["ap_ST_fsm_state307"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "solve_NTRU_intermediate_loop22", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state307", "LastState" : ["ap_ST_fsm_state312"], "QuitState" : ["ap_ST_fsm_state307"], "PreState" : ["ap_ST_fsm_state305"], "PostState" : ["ap_ST_fsm_state313"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "solve_NTRU_intermediate_loop23", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state323", "LastState" : ["ap_ST_fsm_state326"], "QuitState" : ["ap_ST_fsm_state323"], "PreState" : ["ap_ST_fsm_state315"], "PostState" : ["ap_ST_fsm_state327"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "solve_NTRU_intermediate_loop24", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state330", "LastState" : ["ap_ST_fsm_state336"], "QuitState" : ["ap_ST_fsm_state330"], "PreState" : ["ap_ST_fsm_state329"], "PostState" : ["ap_ST_fsm_state337"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "solve_NTRU_intermediate_loop2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state295", "LastState" : ["ap_ST_fsm_state339"], "QuitState" : ["ap_ST_fsm_state295"], "PreState" : ["ap_ST_fsm_state282"], "PostState" : ["ap_ST_fsm_state340"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_225_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state351", "LastState" : ["ap_ST_fsm_state365"], "QuitState" : ["ap_ST_fsm_state351"], "PreState" : ["ap_ST_fsm_state350"], "PostState" : ["ap_ST_fsm_state368", "ap_ST_fsm_state366"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_546_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state366", "LastState" : ["ap_ST_fsm_state367"], "QuitState" : ["ap_ST_fsm_state366"], "PreState" : ["ap_ST_fsm_state351"], "PostState" : ["ap_ST_fsm_state368"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_546_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state368", "LastState" : ["ap_ST_fsm_state369"], "QuitState" : ["ap_ST_fsm_state368"], "PreState" : ["ap_ST_fsm_state351", "ap_ST_fsm_state366"], "PostState" : ["ap_ST_fsm_state370"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_532_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state382", "LastState" : ["ap_ST_fsm_state385"], "QuitState" : ["ap_ST_fsm_state382"], "PreState" : ["ap_ST_fsm_state381"], "PostState" : ["ap_ST_fsm_state386"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_580_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state386", "LastState" : ["ap_ST_fsm_state393"], "QuitState" : ["ap_ST_fsm_state386"], "PreState" : ["ap_ST_fsm_state382"], "PostState" : ["ap_ST_fsm_state394"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_5623_25", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state395", "LastState" : ["ap_ST_fsm_state397"], "QuitState" : ["ap_ST_fsm_state395"], "PreState" : ["ap_ST_fsm_state394"], "PostState" : ["ap_ST_fsm_state398"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "solve_NTRU_intermediate_loop31", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state398", "LastState" : ["ap_ST_fsm_state402"], "QuitState" : ["ap_ST_fsm_state398", "ap_ST_fsm_state400"], "PreState" : ["ap_ST_fsm_state395"], "PostState" : ["ap_ST_fsm_state403", "ap_ST_fsm_state452"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "solve_NTRU_intermediate_loop3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state370", "LastState" : ["ap_ST_fsm_state440"], "QuitState" : ["ap_ST_fsm_state400", "ap_ST_fsm_state440"], "PreState" : ["ap_ST_fsm_state368"], "PostState" : ["ap_ST_fsm_state452", "ap_ST_fsm_state443"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "solve_NTRU_intermediate_loop41", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state445", "LastState" : ["ap_ST_fsm_state445"], "QuitState" : ["ap_ST_fsm_state445"], "PreState" : ["ap_ST_fsm_state444"], "PostState" : ["ap_ST_fsm_state446"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state445_blk"}},
			{"Name" : "solve_NTRU_intermediate_loop42", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state447", "LastState" : ["ap_ST_fsm_state447"], "QuitState" : ["ap_ST_fsm_state447"], "PreState" : ["ap_ST_fsm_state446"], "PostState" : ["ap_ST_fsm_state443"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state447_blk"}},
			{"Name" : "solve_NTRU_intermediate_loop4", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state443", "LastState" : ["ap_ST_fsm_state447"], "QuitState" : ["ap_ST_fsm_state443"], "PreState" : ["ap_ST_fsm_state440"], "PostState" : ["ap_ST_fsm_state448"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "solve_NTRU_intermediate_loop5.1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state450", "LastState" : ["ap_ST_fsm_state451"], "QuitState" : ["ap_ST_fsm_state450"], "PreState" : ["ap_ST_fsm_state449"], "PostState" : ["ap_ST_fsm_state449", "ap_ST_fsm_state448"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "solve_NTRU_intermediate_loop5.2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state449", "LastState" : ["ap_ST_fsm_state450"], "QuitState" : ["ap_ST_fsm_state450"], "PreState" : ["ap_ST_fsm_state448"], "PostState" : ["ap_ST_fsm_state451", "ap_ST_fsm_state448"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "solve_NTRU_intermediate_loop5", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "452", "FirstState" : "ap_ST_fsm_state448", "LastState" : ["ap_ST_fsm_state450"], "QuitState" : ["ap_ST_fsm_state448"], "PreState" : ["ap_ST_fsm_state443"], "PostState" : ["ap_ST_fsm_state452"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MAX_BL_SMALL_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PRIMES_p_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PRIMES_g_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MAX_BL_LARGE_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.BITLENGTH_avg_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.BITLENGTH_std_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_modp_mkgm2_1_fu_3306", "Parent" : "0", "Child" : ["8", "9", "13"],
		"CDFG" : "modp_mkgm2_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "vla18", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "gm", "Type" : "None", "Direction" : "I"},
			{"Name" : "igm", "Type" : "None", "Direction" : "I"},
			{"Name" : "logn", "Type" : "None", "Direction" : "I"},
			{"Name" : "g", "Type" : "None", "Direction" : "I"},
			{"Name" : "p", "Type" : "None", "Direction" : "I"},
			{"Name" : "p0i", "Type" : "None", "Direction" : "I"},
			{"Name" : "REV10", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_954_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "10", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state5_blk"}},
			{"Name" : "VITIS_LOOP_808_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "10", "FirstState" : "ap_ST_fsm_state6", "LastState" : ["ap_ST_fsm_state7"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state5"], "PostState" : ["ap_ST_fsm_state8"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_962_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "10", "FirstState" : "ap_ST_fsm_state8", "LastState" : ["ap_ST_fsm_state10"], "QuitState" : ["ap_ST_fsm_state8"], "PreState" : ["ap_ST_fsm_state6"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_modp_mkgm2_1_fu_3306.REV10_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_modp_mkgm2_1_fu_3306.grp_modp_montymul_fu_184", "Parent" : "7", "Child" : ["10", "11", "12"],
		"CDFG" : "modp_montymul",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "p", "Type" : "None", "Direction" : "I"},
			{"Name" : "p0i", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_modp_mkgm2_1_fu_3306.grp_modp_montymul_fu_184.mul_32ns_32ns_63_1_1_U169", "Parent" : "9"},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_modp_mkgm2_1_fu_3306.grp_modp_montymul_fu_184.mul_31s_31s_31_1_1_U170", "Parent" : "9"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_modp_mkgm2_1_fu_3306.grp_modp_montymul_fu_184.mul_31ns_32ns_62_1_1_U171", "Parent" : "9"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_modp_mkgm2_1_fu_3306.grp_modp_montymul_fu_192", "Parent" : "7", "Child" : ["14", "15", "16"],
		"CDFG" : "modp_montymul",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "p", "Type" : "None", "Direction" : "I"},
			{"Name" : "p0i", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_modp_mkgm2_1_fu_3306.grp_modp_montymul_fu_192.mul_32ns_32ns_63_1_1_U169", "Parent" : "13"},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_modp_mkgm2_1_fu_3306.grp_modp_montymul_fu_192.mul_31s_31s_31_1_1_U170", "Parent" : "13"},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_modp_mkgm2_1_fu_3306.grp_modp_montymul_fu_192.mul_31ns_32ns_62_1_1_U171", "Parent" : "13"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_make_fg_1_fu_3330", "Parent" : "0", "Child" : ["18", "19", "87", "91", "95"],
		"CDFG" : "make_fg_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "vla18", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_make_fg_step_1_fu_234", "Port" : "vla18", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "95", "SubInstance" : "grp_modp_NTT2_ext_1_fu_281", "Port" : "vla18", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "data", "Type" : "None", "Direction" : "I"},
			{"Name" : "f", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "g", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "depth", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_ntt_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "REV10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_make_fg_step_1_fu_234", "Port" : "REV10", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "MAX_BL_SMALL", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_make_fg_step_1_fu_234", "Port" : "MAX_BL_SMALL", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "PRIMES_p", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_make_fg_step_1_fu_234", "Port" : "PRIMES_p", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "PRIMES_g", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_make_fg_step_1_fu_234", "Port" : "PRIMES_g", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "PRIMES_s", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_make_fg_step_1_fu_234", "Port" : "PRIMES_s", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}],
		"Loop" : [
			{"Name" : "make_fg_loop1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "14", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state5", "ap_ST_fsm_state7"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_808_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "14", "FirstState" : "ap_ST_fsm_state7", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state7"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state9"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_962_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "14", "FirstState" : "ap_ST_fsm_state9", "LastState" : ["ap_ST_fsm_state11"], "QuitState" : ["ap_ST_fsm_state9"], "PreState" : ["ap_ST_fsm_state7"], "PostState" : ["ap_ST_fsm_state12"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "make_fg_loop2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "14", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state14"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_make_fg_1_fu_3330.REV10_U", "Parent" : "17"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234", "Parent" : "17", "Child" : ["20", "21", "22", "23", "44", "54", "61", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86"],
		"CDFG" : "make_fg_step_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "vla18", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "44", "SubInstance" : "grp_modp_mkgm2_1_fu_826", "Port" : "vla18", "Inst_start_state" : "40", "Inst_end_state" : "41"},
					{"ID" : "23", "SubInstance" : "grp_zint_rebuild_CRT_1_fu_780", "Port" : "vla18", "Inst_start_state" : "31", "Inst_end_state" : "32"},
					{"ID" : "54", "SubInstance" : "grp_modp_NTT2_ext_1_fu_841", "Port" : "vla18", "Inst_start_state" : "50", "Inst_end_state" : "54"},
					{"ID" : "61", "SubInstance" : "grp_modp_iNTT2_ext_1_fu_854", "Port" : "vla18", "Inst_start_state" : "59", "Inst_end_state" : "60"}]},
			{"Name" : "data", "Type" : "None", "Direction" : "I"},
			{"Name" : "logn", "Type" : "None", "Direction" : "I"},
			{"Name" : "depth", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_ntt", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_ntt", "Type" : "None", "Direction" : "I"},
			{"Name" : "MAX_BL_SMALL", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "PRIMES_p", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_zint_rebuild_CRT_1_fu_780", "Port" : "PRIMES_p", "Inst_start_state" : "31", "Inst_end_state" : "32"}]},
			{"Name" : "PRIMES_g", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "REV10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "44", "SubInstance" : "grp_modp_mkgm2_1_fu_826", "Port" : "REV10", "Inst_start_state" : "40", "Inst_end_state" : "41"}]},
			{"Name" : "PRIMES_s", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_zint_rebuild_CRT_1_fu_780", "Port" : "PRIMES_s", "Inst_start_state" : "31", "Inst_end_state" : "32"}]}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "60", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state2", "ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state3", "ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "Loop 2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "60", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state5", "ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_2880_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "60", "FirstState" : "ap_ST_fsm_state11", "LastState" : ["ap_ST_fsm_state12"], "QuitState" : ["ap_ST_fsm_state11"], "PreState" : ["ap_ST_fsm_state10"], "PostState" : ["ap_ST_fsm_state13"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_2886_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "60", "FirstState" : "ap_ST_fsm_state15", "LastState" : ["ap_ST_fsm_state17"], "QuitState" : ["ap_ST_fsm_state15"], "PreState" : ["ap_ST_fsm_state14"], "PostState" : ["ap_ST_fsm_state18"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_2898_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "60", "FirstState" : "ap_ST_fsm_state19", "LastState" : ["ap_ST_fsm_state20"], "QuitState" : ["ap_ST_fsm_state19"], "PreState" : ["ap_ST_fsm_state18"], "PostState" : ["ap_ST_fsm_state21"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_2904_4", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "60", "FirstState" : "ap_ST_fsm_state22", "LastState" : ["ap_ST_fsm_state24"], "QuitState" : ["ap_ST_fsm_state22"], "PreState" : ["ap_ST_fsm_state21"], "PostState" : ["ap_ST_fsm_state25"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "make_fg_step_loop1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "60", "FirstState" : "ap_ST_fsm_state6", "LastState" : ["ap_ST_fsm_state29"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state30"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_779_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "60", "FirstState" : "ap_ST_fsm_state38", "LastState" : ["ap_ST_fsm_state39"], "QuitState" : ["ap_ST_fsm_state38"], "PreState" : ["ap_ST_fsm_state37"], "PostState" : ["ap_ST_fsm_state40"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1520_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "60", "FirstState" : "ap_ST_fsm_state43", "LastState" : ["ap_ST_fsm_state44"], "QuitState" : ["ap_ST_fsm_state44"], "PreState" : ["ap_ST_fsm_state42"], "PostState" : ["ap_ST_fsm_state45"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_2943_5", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "60", "FirstState" : "ap_ST_fsm_state42", "LastState" : ["ap_ST_fsm_state45"], "QuitState" : ["ap_ST_fsm_state42"], "PreState" : ["ap_ST_fsm_state41"], "PostState" : ["ap_ST_fsm_state46"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_2947_6", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "60", "FirstState" : "ap_ST_fsm_state47", "LastState" : ["ap_ST_fsm_state49"], "QuitState" : ["ap_ST_fsm_state47"], "PreState" : ["ap_ST_fsm_state46"], "PostState" : ["ap_ST_fsm_state50"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1520_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "60", "FirstState" : "ap_ST_fsm_state51", "LastState" : ["ap_ST_fsm_state52"], "QuitState" : ["ap_ST_fsm_state52"], "PreState" : ["ap_ST_fsm_state50"], "PostState" : ["ap_ST_fsm_state53"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_2956_7", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "60", "FirstState" : "ap_ST_fsm_state50", "LastState" : ["ap_ST_fsm_state53"], "QuitState" : ["ap_ST_fsm_state50"], "PreState" : ["ap_ST_fsm_state47"], "PostState" : ["ap_ST_fsm_state54"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_2961_8", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "60", "FirstState" : "ap_ST_fsm_state55", "LastState" : ["ap_ST_fsm_state57"], "QuitState" : ["ap_ST_fsm_state55"], "PreState" : ["ap_ST_fsm_state54"], "PostState" : ["ap_ST_fsm_state58", "ap_ST_fsm_state60"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "make_fg_step_loop2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "60", "FirstState" : "ap_ST_fsm_state33", "LastState" : ["ap_ST_fsm_state60"], "QuitState" : ["ap_ST_fsm_state33"], "PreState" : ["ap_ST_fsm_state32"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.MAX_BL_SMALL_U", "Parent" : "19"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.PRIMES_p_U", "Parent" : "19"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.PRIMES_g_U", "Parent" : "19"},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_zint_rebuild_CRT_1_fu_780", "Parent" : "19", "Child" : ["24", "25", "26", "30", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43"],
		"CDFG" : "zint_rebuild_CRT_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "vla18", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "xx", "Type" : "None", "Direction" : "I"},
			{"Name" : "xlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "xstride", "Type" : "None", "Direction" : "I"},
			{"Name" : "num", "Type" : "None", "Direction" : "I"},
			{"Name" : "normalize_signed", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp", "Type" : "None", "Direction" : "I"},
			{"Name" : "PRIMES_p", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "PRIMES_s", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1520_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "19", "FirstState" : "ap_ST_fsm_state9", "LastState" : ["ap_ST_fsm_state10"], "QuitState" : ["ap_ST_fsm_state10"], "PreState" : ["ap_ST_fsm_state8"], "PostState" : ["ap_ST_fsm_state11"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1560_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "19", "FirstState" : "ap_ST_fsm_state11", "LastState" : ["ap_ST_fsm_state12"], "QuitState" : ["ap_ST_fsm_state11"], "PreState" : ["ap_ST_fsm_state10"], "PostState" : ["ap_ST_fsm_state7"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1665_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "19", "FirstState" : "ap_ST_fsm_state7", "LastState" : ["ap_ST_fsm_state11"], "QuitState" : ["ap_ST_fsm_state7"], "PreState" : ["ap_ST_fsm_state6"], "PostState" : ["ap_ST_fsm_state13"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1487_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "19", "FirstState" : "ap_ST_fsm_state13", "LastState" : ["ap_ST_fsm_state14"], "QuitState" : ["ap_ST_fsm_state13"], "PreState" : ["ap_ST_fsm_state7"], "PostState" : ["ap_ST_fsm_state2"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "zint_rebuild_CRTloop1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "19", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state13"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state15"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1591_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "19", "FirstState" : "ap_ST_fsm_state16", "LastState" : ["ap_ST_fsm_state17"], "QuitState" : ["ap_ST_fsm_state17"], "PreState" : ["ap_ST_fsm_state15"], "PostState" : ["ap_ST_fsm_state18"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1465_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "19", "FirstState" : "ap_ST_fsm_state18", "LastState" : ["ap_ST_fsm_state19"], "QuitState" : ["ap_ST_fsm_state18"], "PreState" : ["ap_ST_fsm_state17"], "PostState" : ["ap_ST_fsm_state15"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1693_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "19", "FirstState" : "ap_ST_fsm_state15", "LastState" : ["ap_ST_fsm_state18"], "QuitState" : ["ap_ST_fsm_state15"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "24", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_zint_rebuild_CRT_1_fu_780.PRIMES_p_U", "Parent" : "23"},
	{"ID" : "25", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_zint_rebuild_CRT_1_fu_780.PRIMES_s_U", "Parent" : "23"},
	{"ID" : "26", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_zint_rebuild_CRT_1_fu_780.grp_modp_montymul_fu_442", "Parent" : "23", "Child" : ["27", "28", "29"],
		"CDFG" : "modp_montymul",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "p", "Type" : "None", "Direction" : "I"},
			{"Name" : "p0i", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "27", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_zint_rebuild_CRT_1_fu_780.grp_modp_montymul_fu_442.mul_32ns_32ns_63_1_1_U169", "Parent" : "26"},
	{"ID" : "28", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_zint_rebuild_CRT_1_fu_780.grp_modp_montymul_fu_442.mul_31s_31s_31_1_1_U170", "Parent" : "26"},
	{"ID" : "29", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_zint_rebuild_CRT_1_fu_780.grp_modp_montymul_fu_442.mul_31ns_32ns_62_1_1_U171", "Parent" : "26"},
	{"ID" : "30", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_zint_rebuild_CRT_1_fu_780.grp_modp_montymul_fu_450", "Parent" : "23", "Child" : ["31", "32", "33"],
		"CDFG" : "modp_montymul",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "p", "Type" : "None", "Direction" : "I"},
			{"Name" : "p0i", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "31", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_zint_rebuild_CRT_1_fu_780.grp_modp_montymul_fu_450.mul_32ns_32ns_63_1_1_U169", "Parent" : "30"},
	{"ID" : "32", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_zint_rebuild_CRT_1_fu_780.grp_modp_montymul_fu_450.mul_31s_31s_31_1_1_U170", "Parent" : "30"},
	{"ID" : "33", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_zint_rebuild_CRT_1_fu_780.grp_modp_montymul_fu_450.mul_31ns_32ns_62_1_1_U171", "Parent" : "30"},
	{"ID" : "34", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_zint_rebuild_CRT_1_fu_780.mul_25s_24ns_31_1_1_U248", "Parent" : "23"},
	{"ID" : "35", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_zint_rebuild_CRT_1_fu_780.mul_31s_24ns_31_1_1_U249", "Parent" : "23"},
	{"ID" : "36", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_zint_rebuild_CRT_1_fu_780.mul_25s_31s_31_1_1_U250", "Parent" : "23"},
	{"ID" : "37", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_zint_rebuild_CRT_1_fu_780.mul_31s_31s_31_1_1_U251", "Parent" : "23"},
	{"ID" : "38", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_zint_rebuild_CRT_1_fu_780.mul_25s_31s_31_1_1_U252", "Parent" : "23"},
	{"ID" : "39", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_zint_rebuild_CRT_1_fu_780.mul_31s_31s_31_1_1_U253", "Parent" : "23"},
	{"ID" : "40", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_zint_rebuild_CRT_1_fu_780.mul_25s_31s_31_1_1_U254", "Parent" : "23"},
	{"ID" : "41", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_zint_rebuild_CRT_1_fu_780.mul_31s_31s_31_1_1_U255", "Parent" : "23"},
	{"ID" : "42", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_zint_rebuild_CRT_1_fu_780.mul_32ns_32ns_63_1_1_U256", "Parent" : "23"},
	{"ID" : "43", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_zint_rebuild_CRT_1_fu_780.mul_32ns_31ns_63_1_1_U257", "Parent" : "23"},
	{"ID" : "44", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_modp_mkgm2_1_fu_826", "Parent" : "19", "Child" : ["45", "46", "50"],
		"CDFG" : "modp_mkgm2_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "vla18", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "gm", "Type" : "None", "Direction" : "I"},
			{"Name" : "igm", "Type" : "None", "Direction" : "I"},
			{"Name" : "logn", "Type" : "None", "Direction" : "I"},
			{"Name" : "g", "Type" : "None", "Direction" : "I"},
			{"Name" : "p", "Type" : "None", "Direction" : "I"},
			{"Name" : "p0i", "Type" : "None", "Direction" : "I"},
			{"Name" : "REV10", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_954_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "10", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state5_blk"}},
			{"Name" : "VITIS_LOOP_808_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "10", "FirstState" : "ap_ST_fsm_state6", "LastState" : ["ap_ST_fsm_state7"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state5"], "PostState" : ["ap_ST_fsm_state8"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_962_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "10", "FirstState" : "ap_ST_fsm_state8", "LastState" : ["ap_ST_fsm_state10"], "QuitState" : ["ap_ST_fsm_state8"], "PreState" : ["ap_ST_fsm_state6"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "45", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_modp_mkgm2_1_fu_826.REV10_U", "Parent" : "44"},
	{"ID" : "46", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_modp_mkgm2_1_fu_826.grp_modp_montymul_fu_184", "Parent" : "44", "Child" : ["47", "48", "49"],
		"CDFG" : "modp_montymul",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "p", "Type" : "None", "Direction" : "I"},
			{"Name" : "p0i", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "47", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_modp_mkgm2_1_fu_826.grp_modp_montymul_fu_184.mul_32ns_32ns_63_1_1_U169", "Parent" : "46"},
	{"ID" : "48", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_modp_mkgm2_1_fu_826.grp_modp_montymul_fu_184.mul_31s_31s_31_1_1_U170", "Parent" : "46"},
	{"ID" : "49", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_modp_mkgm2_1_fu_826.grp_modp_montymul_fu_184.mul_31ns_32ns_62_1_1_U171", "Parent" : "46"},
	{"ID" : "50", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_modp_mkgm2_1_fu_826.grp_modp_montymul_fu_192", "Parent" : "44", "Child" : ["51", "52", "53"],
		"CDFG" : "modp_montymul",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "p", "Type" : "None", "Direction" : "I"},
			{"Name" : "p0i", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "51", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_modp_mkgm2_1_fu_826.grp_modp_montymul_fu_192.mul_32ns_32ns_63_1_1_U169", "Parent" : "50"},
	{"ID" : "52", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_modp_mkgm2_1_fu_826.grp_modp_montymul_fu_192.mul_31s_31s_31_1_1_U170", "Parent" : "50"},
	{"ID" : "53", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_modp_mkgm2_1_fu_826.grp_modp_montymul_fu_192.mul_31ns_32ns_62_1_1_U171", "Parent" : "50"},
	{"ID" : "54", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_modp_NTT2_ext_1_fu_841", "Parent" : "19", "Child" : ["55", "59", "60"],
		"CDFG" : "modp_NTT2_ext_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "vla18", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "stride", "Type" : "None", "Direction" : "I"},
			{"Name" : "gm", "Type" : "None", "Direction" : "I"},
			{"Name" : "logn", "Type" : "None", "Direction" : "I"},
			{"Name" : "p", "Type" : "None", "Direction" : "I"},
			{"Name" : "p0i", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1244_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state7", "LastState" : ["ap_ST_fsm_state9"], "QuitState" : ["ap_ST_fsm_state7"], "PreState" : ["ap_ST_fsm_state6"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1236_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state7"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state2"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1231_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "55", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_modp_NTT2_ext_1_fu_841.y_modp_montymul_fu_200", "Parent" : "54", "Child" : ["56", "57", "58"],
		"CDFG" : "modp_montymul",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "p", "Type" : "None", "Direction" : "I"},
			{"Name" : "p0i", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "56", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_modp_NTT2_ext_1_fu_841.y_modp_montymul_fu_200.mul_32ns_32ns_63_1_1_U169", "Parent" : "55"},
	{"ID" : "57", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_modp_NTT2_ext_1_fu_841.y_modp_montymul_fu_200.mul_31s_31s_31_1_1_U170", "Parent" : "55"},
	{"ID" : "58", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_modp_NTT2_ext_1_fu_841.y_modp_montymul_fu_200.mul_31ns_32ns_62_1_1_U171", "Parent" : "55"},
	{"ID" : "59", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_modp_NTT2_ext_1_fu_841.mul_mul_13s_8ns_13_4_1_U187", "Parent" : "54"},
	{"ID" : "60", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_modp_NTT2_ext_1_fu_841.mul_mul_13s_8ns_13_4_1_U188", "Parent" : "54"},
	{"ID" : "61", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_modp_iNTT2_ext_1_fu_854", "Parent" : "19", "Child" : ["62", "63", "64", "65", "66", "67", "68", "69"],
		"CDFG" : "modp_iNTT2_ext_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "vla18", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "stride", "Type" : "None", "Direction" : "I"},
			{"Name" : "igm", "Type" : "None", "Direction" : "I"},
			{"Name" : "logn", "Type" : "None", "Direction" : "I"},
			{"Name" : "p", "Type" : "None", "Direction" : "I"},
			{"Name" : "p0i", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "iNTT_loop3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "11", "FirstState" : "ap_ST_fsm_state7", "LastState" : ["ap_ST_fsm_state9"], "QuitState" : ["ap_ST_fsm_state7"], "PreState" : ["ap_ST_fsm_state6"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "iNTT_loop2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "11", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state7"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state2"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "iNTT_loop1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "11", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state10"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1373_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "11", "FirstState" : "ap_ST_fsm_state10", "LastState" : ["ap_ST_fsm_state11"], "QuitState" : ["ap_ST_fsm_state10"], "PreState" : ["ap_ST_fsm_state1", "ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "62", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_modp_iNTT2_ext_1_fu_854.mul_32ns_32ns_63_1_1_U197", "Parent" : "61"},
	{"ID" : "63", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_modp_iNTT2_ext_1_fu_854.mul_31s_31s_31_1_1_U198", "Parent" : "61"},
	{"ID" : "64", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_modp_iNTT2_ext_1_fu_854.mul_31ns_31ns_62_1_1_U199", "Parent" : "61"},
	{"ID" : "65", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_modp_iNTT2_ext_1_fu_854.mul_32ns_32ns_63_1_1_U200", "Parent" : "61"},
	{"ID" : "66", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_modp_iNTT2_ext_1_fu_854.mul_31s_31s_31_1_1_U201", "Parent" : "61"},
	{"ID" : "67", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_modp_iNTT2_ext_1_fu_854.mul_31ns_31ns_62_1_1_U202", "Parent" : "61"},
	{"ID" : "68", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_modp_iNTT2_ext_1_fu_854.mul_mul_13s_9ns_13_4_1_U203", "Parent" : "61"},
	{"ID" : "69", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_modp_iNTT2_ext_1_fu_854.mul_mul_13s_9ns_13_4_1_U204", "Parent" : "61"},
	{"ID" : "70", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.mul_8ns_61s_61_1_1_U289", "Parent" : "19"},
	{"ID" : "71", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.mul_25s_24ns_31_1_1_U290", "Parent" : "19"},
	{"ID" : "72", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.mul_31s_24ns_31_1_1_U291", "Parent" : "19"},
	{"ID" : "73", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.mul_25s_31s_31_1_1_U292", "Parent" : "19"},
	{"ID" : "74", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.mul_31s_31s_31_1_1_U293", "Parent" : "19"},
	{"ID" : "75", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.mul_25s_31s_31_1_1_U294", "Parent" : "19"},
	{"ID" : "76", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.mul_31s_31s_31_1_1_U295", "Parent" : "19"},
	{"ID" : "77", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.mul_25s_31s_31_1_1_U296", "Parent" : "19"},
	{"ID" : "78", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.mul_31s_31s_31_1_1_U297", "Parent" : "19"},
	{"ID" : "79", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.mul_25s_24ns_31_1_1_U298", "Parent" : "19"},
	{"ID" : "80", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.mul_31s_24ns_31_1_1_U299", "Parent" : "19"},
	{"ID" : "81", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.mul_25s_31s_31_1_1_U300", "Parent" : "19"},
	{"ID" : "82", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.mul_31s_31s_31_1_1_U301", "Parent" : "19"},
	{"ID" : "83", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.mul_25s_31s_31_1_1_U302", "Parent" : "19"},
	{"ID" : "84", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.mul_31s_31s_31_1_1_U303", "Parent" : "19"},
	{"ID" : "85", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.mul_25s_31s_31_1_1_U304", "Parent" : "19"},
	{"ID" : "86", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.mul_31s_31s_31_1_1_U305", "Parent" : "19"},
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_make_fg_1_fu_3330.grp_modp_montymul_fu_255", "Parent" : "17", "Child" : ["88", "89", "90"],
		"CDFG" : "modp_montymul",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "p", "Type" : "None", "Direction" : "I"},
			{"Name" : "p0i", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "88", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_make_fg_1_fu_3330.grp_modp_montymul_fu_255.mul_32ns_32ns_63_1_1_U169", "Parent" : "87"},
	{"ID" : "89", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_make_fg_1_fu_3330.grp_modp_montymul_fu_255.mul_31s_31s_31_1_1_U170", "Parent" : "87"},
	{"ID" : "90", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_make_fg_1_fu_3330.grp_modp_montymul_fu_255.mul_31ns_32ns_62_1_1_U171", "Parent" : "87"},
	{"ID" : "91", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_make_fg_1_fu_3330.grp_modp_montymul_fu_265", "Parent" : "17", "Child" : ["92", "93", "94"],
		"CDFG" : "modp_montymul",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "p", "Type" : "None", "Direction" : "I"},
			{"Name" : "p0i", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "92", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_make_fg_1_fu_3330.grp_modp_montymul_fu_265.mul_32ns_32ns_63_1_1_U169", "Parent" : "91"},
	{"ID" : "93", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_make_fg_1_fu_3330.grp_modp_montymul_fu_265.mul_31s_31s_31_1_1_U170", "Parent" : "91"},
	{"ID" : "94", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_make_fg_1_fu_3330.grp_modp_montymul_fu_265.mul_31ns_32ns_62_1_1_U171", "Parent" : "91"},
	{"ID" : "95", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_make_fg_1_fu_3330.grp_modp_NTT2_ext_1_fu_281", "Parent" : "17", "Child" : ["96", "100", "101"],
		"CDFG" : "modp_NTT2_ext_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "vla18", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "stride", "Type" : "None", "Direction" : "I"},
			{"Name" : "gm", "Type" : "None", "Direction" : "I"},
			{"Name" : "logn", "Type" : "None", "Direction" : "I"},
			{"Name" : "p", "Type" : "None", "Direction" : "I"},
			{"Name" : "p0i", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1244_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state7", "LastState" : ["ap_ST_fsm_state9"], "QuitState" : ["ap_ST_fsm_state7"], "PreState" : ["ap_ST_fsm_state6"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1236_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state7"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state2"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1231_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "96", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_make_fg_1_fu_3330.grp_modp_NTT2_ext_1_fu_281.y_modp_montymul_fu_200", "Parent" : "95", "Child" : ["97", "98", "99"],
		"CDFG" : "modp_montymul",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "p", "Type" : "None", "Direction" : "I"},
			{"Name" : "p0i", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "97", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_make_fg_1_fu_3330.grp_modp_NTT2_ext_1_fu_281.y_modp_montymul_fu_200.mul_32ns_32ns_63_1_1_U169", "Parent" : "96"},
	{"ID" : "98", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_make_fg_1_fu_3330.grp_modp_NTT2_ext_1_fu_281.y_modp_montymul_fu_200.mul_31s_31s_31_1_1_U170", "Parent" : "96"},
	{"ID" : "99", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_make_fg_1_fu_3330.grp_modp_NTT2_ext_1_fu_281.y_modp_montymul_fu_200.mul_31ns_32ns_62_1_1_U171", "Parent" : "96"},
	{"ID" : "100", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_make_fg_1_fu_3330.grp_modp_NTT2_ext_1_fu_281.mul_mul_13s_8ns_13_4_1_U187", "Parent" : "95"},
	{"ID" : "101", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_make_fg_1_fu_3330.grp_modp_NTT2_ext_1_fu_281.mul_mul_13s_8ns_13_4_1_U188", "Parent" : "95"},
	{"ID" : "102", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_modp_NTT2_ext_1_fu_3357", "Parent" : "0", "Child" : ["103", "107", "108"],
		"CDFG" : "modp_NTT2_ext_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "vla18", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "stride", "Type" : "None", "Direction" : "I"},
			{"Name" : "gm", "Type" : "None", "Direction" : "I"},
			{"Name" : "logn", "Type" : "None", "Direction" : "I"},
			{"Name" : "p", "Type" : "None", "Direction" : "I"},
			{"Name" : "p0i", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1244_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state7", "LastState" : ["ap_ST_fsm_state9"], "QuitState" : ["ap_ST_fsm_state7"], "PreState" : ["ap_ST_fsm_state6"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1236_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state7"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state2"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1231_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "103", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_modp_NTT2_ext_1_fu_3357.y_modp_montymul_fu_200", "Parent" : "102", "Child" : ["104", "105", "106"],
		"CDFG" : "modp_montymul",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "p", "Type" : "None", "Direction" : "I"},
			{"Name" : "p0i", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "104", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_modp_NTT2_ext_1_fu_3357.y_modp_montymul_fu_200.mul_32ns_32ns_63_1_1_U169", "Parent" : "103"},
	{"ID" : "105", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_modp_NTT2_ext_1_fu_3357.y_modp_montymul_fu_200.mul_31s_31s_31_1_1_U170", "Parent" : "103"},
	{"ID" : "106", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_modp_NTT2_ext_1_fu_3357.y_modp_montymul_fu_200.mul_31ns_32ns_62_1_1_U171", "Parent" : "103"},
	{"ID" : "107", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_modp_NTT2_ext_1_fu_3357.mul_mul_13s_8ns_13_4_1_U187", "Parent" : "102"},
	{"ID" : "108", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_modp_NTT2_ext_1_fu_3357.mul_mul_13s_8ns_13_4_1_U188", "Parent" : "102"},
	{"ID" : "109", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_modp_iNTT2_ext_1_fu_3386", "Parent" : "0", "Child" : ["110", "111", "112", "113", "114", "115", "116", "117"],
		"CDFG" : "modp_iNTT2_ext_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "vla18", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "stride", "Type" : "None", "Direction" : "I"},
			{"Name" : "igm", "Type" : "None", "Direction" : "I"},
			{"Name" : "logn", "Type" : "None", "Direction" : "I"},
			{"Name" : "p", "Type" : "None", "Direction" : "I"},
			{"Name" : "p0i", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "iNTT_loop3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "11", "FirstState" : "ap_ST_fsm_state7", "LastState" : ["ap_ST_fsm_state9"], "QuitState" : ["ap_ST_fsm_state7"], "PreState" : ["ap_ST_fsm_state6"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "iNTT_loop2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "11", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state7"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state2"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "iNTT_loop1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "11", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state10"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1373_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "11", "FirstState" : "ap_ST_fsm_state10", "LastState" : ["ap_ST_fsm_state11"], "QuitState" : ["ap_ST_fsm_state10"], "PreState" : ["ap_ST_fsm_state1", "ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "110", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_modp_iNTT2_ext_1_fu_3386.mul_32ns_32ns_63_1_1_U197", "Parent" : "109"},
	{"ID" : "111", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_modp_iNTT2_ext_1_fu_3386.mul_31s_31s_31_1_1_U198", "Parent" : "109"},
	{"ID" : "112", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_modp_iNTT2_ext_1_fu_3386.mul_31ns_31ns_62_1_1_U199", "Parent" : "109"},
	{"ID" : "113", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_modp_iNTT2_ext_1_fu_3386.mul_32ns_32ns_63_1_1_U200", "Parent" : "109"},
	{"ID" : "114", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_modp_iNTT2_ext_1_fu_3386.mul_31s_31s_31_1_1_U201", "Parent" : "109"},
	{"ID" : "115", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_modp_iNTT2_ext_1_fu_3386.mul_31ns_31ns_62_1_1_U202", "Parent" : "109"},
	{"ID" : "116", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_modp_iNTT2_ext_1_fu_3386.mul_mul_13s_9ns_13_4_1_U203", "Parent" : "109"},
	{"ID" : "117", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_modp_iNTT2_ext_1_fu_3386.mul_mul_13s_9ns_13_4_1_U204", "Parent" : "109"},
	{"ID" : "118", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_modp_montymul_fu_3413", "Parent" : "0", "Child" : ["119", "120", "121"],
		"CDFG" : "modp_montymul",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "p", "Type" : "None", "Direction" : "I"},
			{"Name" : "p0i", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "119", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_modp_montymul_fu_3413.mul_32ns_32ns_63_1_1_U169", "Parent" : "118"},
	{"ID" : "120", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_modp_montymul_fu_3413.mul_31s_31s_31_1_1_U170", "Parent" : "118"},
	{"ID" : "121", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_modp_montymul_fu_3413.mul_31ns_32ns_62_1_1_U171", "Parent" : "118"},
	{"ID" : "122", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_modp_montymul_fu_3425", "Parent" : "0", "Child" : ["123", "124", "125"],
		"CDFG" : "modp_montymul",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "p", "Type" : "None", "Direction" : "I"},
			{"Name" : "p0i", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "123", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_modp_montymul_fu_3425.mul_32ns_32ns_63_1_1_U169", "Parent" : "122"},
	{"ID" : "124", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_modp_montymul_fu_3425.mul_31s_31s_31_1_1_U170", "Parent" : "122"},
	{"ID" : "125", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_modp_montymul_fu_3425.mul_31ns_32ns_62_1_1_U171", "Parent" : "122"},
	{"ID" : "126", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_modp_montymul_fu_3437", "Parent" : "0", "Child" : ["127", "128", "129"],
		"CDFG" : "modp_montymul",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "p", "Type" : "None", "Direction" : "I"},
			{"Name" : "p0i", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "127", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_modp_montymul_fu_3437.mul_32ns_32ns_63_1_1_U169", "Parent" : "126"},
	{"ID" : "128", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_modp_montymul_fu_3437.mul_31s_31s_31_1_1_U170", "Parent" : "126"},
	{"ID" : "129", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_modp_montymul_fu_3437.mul_31ns_32ns_62_1_1_U171", "Parent" : "126"},
	{"ID" : "130", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_modp_montymul_fu_3463", "Parent" : "0", "Child" : ["131", "132", "133"],
		"CDFG" : "modp_montymul",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "p", "Type" : "None", "Direction" : "I"},
			{"Name" : "p0i", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "131", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_modp_montymul_fu_3463.mul_32ns_32ns_63_1_1_U169", "Parent" : "130"},
	{"ID" : "132", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_modp_montymul_fu_3463.mul_31s_31s_31_1_1_U170", "Parent" : "130"},
	{"ID" : "133", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_modp_montymul_fu_3463.mul_31ns_32ns_62_1_1_U171", "Parent" : "130"},
	{"ID" : "134", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_47_modp_montymul_fu_3473", "Parent" : "0", "Child" : ["135", "136", "137"],
		"CDFG" : "modp_montymul",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "p", "Type" : "None", "Direction" : "I"},
			{"Name" : "p0i", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "135", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.tmp_47_modp_montymul_fu_3473.mul_32ns_32ns_63_1_1_U169", "Parent" : "134"},
	{"ID" : "136", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.tmp_47_modp_montymul_fu_3473.mul_31s_31s_31_1_1_U170", "Parent" : "134"},
	{"ID" : "137", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.tmp_47_modp_montymul_fu_3473.mul_31ns_32ns_62_1_1_U171", "Parent" : "134"},
	{"ID" : "138", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_48_modp_montymul_fu_3482", "Parent" : "0", "Child" : ["139", "140", "141"],
		"CDFG" : "modp_montymul",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "p", "Type" : "None", "Direction" : "I"},
			{"Name" : "p0i", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "139", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.tmp_48_modp_montymul_fu_3482.mul_32ns_32ns_63_1_1_U169", "Parent" : "138"},
	{"ID" : "140", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.tmp_48_modp_montymul_fu_3482.mul_31s_31s_31_1_1_U170", "Parent" : "138"},
	{"ID" : "141", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.tmp_48_modp_montymul_fu_3482.mul_31ns_32ns_62_1_1_U171", "Parent" : "138"},
	{"ID" : "142", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_FFT_1_fu_3500", "Parent" : "0", "Child" : ["143", "144", "145", "146", "147", "148", "149"],
		"CDFG" : "FFT_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "255547",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "vla18", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "f", "Type" : "None", "Direction" : "I"},
			{"Name" : "logn", "Type" : "None", "Direction" : "I"},
			{"Name" : "fpr_gm_tab", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_968_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "13", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state13"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_959_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "13", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state2"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_953_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "13", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "143", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_FFT_1_fu_3500.fpr_gm_tab_U", "Parent" : "142"},
	{"ID" : "144", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_FFT_1_fu_3500.dadddsub_64ns_64ns_64_2_full_dsp_1_U214", "Parent" : "142"},
	{"ID" : "145", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_FFT_1_fu_3500.dadddsub_64ns_64ns_64_2_full_dsp_1_U215", "Parent" : "142"},
	{"ID" : "146", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_FFT_1_fu_3500.dmul_64ns_64ns_64_2_max_dsp_1_U216", "Parent" : "142"},
	{"ID" : "147", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_FFT_1_fu_3500.dmul_64ns_64ns_64_2_max_dsp_1_U217", "Parent" : "142"},
	{"ID" : "148", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_FFT_1_fu_3500.dmul_64ns_64ns_64_2_max_dsp_1_U218", "Parent" : "142"},
	{"ID" : "149", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_FFT_1_fu_3500.dmul_64ns_64ns_64_2_max_dsp_1_U219", "Parent" : "142"},
	{"ID" : "150", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fpr_of_fu_3517", "Parent" : "0", "Child" : ["151"],
		"CDFG" : "fpr_of",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "i", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "151", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpr_of_fu_3517.sitodp_64ns_64_2_no_dsp_1_U84", "Parent" : "150"},
	{"ID" : "152", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_iFFT_1_fu_3522", "Parent" : "0", "Child" : ["153", "154", "155", "156", "157", "158", "159", "160"],
		"CDFG" : "iFFT_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "vla18", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "f", "Type" : "None", "Direction" : "I"},
			{"Name" : "logn", "Type" : "None", "Direction" : "I"},
			{"Name" : "fpr_gm_tab", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fpr_p2_tab", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1468_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "17", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state13"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1459_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "17", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state2"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1453_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "17", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state14", "ap_ST_fsm_state15"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1493_4", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "17", "FirstState" : "ap_ST_fsm_state15", "LastState" : ["ap_ST_fsm_state17"], "QuitState" : ["ap_ST_fsm_state15"], "PreState" : ["ap_ST_fsm_state2", "ap_ST_fsm_state14"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "153", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_iFFT_1_fu_3522.fpr_gm_tab_U", "Parent" : "152"},
	{"ID" : "154", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_iFFT_1_fu_3522.fpr_p2_tab_U", "Parent" : "152"},
	{"ID" : "155", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_iFFT_1_fu_3522.dadddsub_64ns_64ns_64_2_full_dsp_1_U223", "Parent" : "152"},
	{"ID" : "156", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_iFFT_1_fu_3522.dadddsub_64ns_64ns_64_2_full_dsp_1_U224", "Parent" : "152"},
	{"ID" : "157", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_iFFT_1_fu_3522.dmul_64ns_64ns_64_2_max_dsp_1_U225", "Parent" : "152"},
	{"ID" : "158", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_iFFT_1_fu_3522.dmul_64ns_64ns_64_2_max_dsp_1_U226", "Parent" : "152"},
	{"ID" : "159", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_iFFT_1_fu_3522.dmul_64ns_64ns_64_2_max_dsp_1_U227", "Parent" : "152"},
	{"ID" : "160", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_iFFT_1_fu_3522.dmul_64ns_64ns_64_2_max_dsp_1_U228", "Parent" : "152"},
	{"ID" : "161", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fpr_rint_fu_3539", "Parent" : "0", "Child" : ["162", "163", "164"],
		"CDFG" : "fpr_rint",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "162", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpr_rint_fu_3539.dadd_64ns_64ns_64_2_full_dsp_1_U233", "Parent" : "161"},
	{"ID" : "163", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpr_rint_fu_3539.dadd_64ns_64ns_64_2_full_dsp_1_U234", "Parent" : "161"},
	{"ID" : "164", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpr_rint_fu_3539.dadd_64ns_64ns_64_2_full_dsp_1_U235", "Parent" : "161"},
	{"ID" : "165", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_zint_mod_small_signed_1_fu_3545", "Parent" : "0", "Child" : ["166", "167", "168"],
		"CDFG" : "zint_mod_small_signed_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "421",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "vla18", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "d", "Type" : "None", "Direction" : "I"},
			{"Name" : "dlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "p", "Type" : "None", "Direction" : "I"},
			{"Name" : "p0i", "Type" : "None", "Direction" : "I"},
			{"Name" : "R2", "Type" : "None", "Direction" : "I"},
			{"Name" : "Rx", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1520_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state4"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "166", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_zint_mod_small_signed_1_fu_3545.mul_31ns_32ns_63_1_1_U237", "Parent" : "165"},
	{"ID" : "167", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_zint_mod_small_signed_1_fu_3545.mul_31s_31s_31_1_1_U238", "Parent" : "165"},
	{"ID" : "168", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_zint_mod_small_signed_1_fu_3545.mul_31ns_31ns_62_1_1_U239", "Parent" : "165"},
	{"ID" : "169", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_zint_rebuild_CRT_1_fu_3561", "Parent" : "0", "Child" : ["170", "171", "172", "176", "180", "181", "182", "183", "184", "185", "186", "187", "188", "189"],
		"CDFG" : "zint_rebuild_CRT_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "vla18", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "xx", "Type" : "None", "Direction" : "I"},
			{"Name" : "xlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "xstride", "Type" : "None", "Direction" : "I"},
			{"Name" : "num", "Type" : "None", "Direction" : "I"},
			{"Name" : "normalize_signed", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp", "Type" : "None", "Direction" : "I"},
			{"Name" : "PRIMES_p", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "PRIMES_s", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1520_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "19", "FirstState" : "ap_ST_fsm_state9", "LastState" : ["ap_ST_fsm_state10"], "QuitState" : ["ap_ST_fsm_state10"], "PreState" : ["ap_ST_fsm_state8"], "PostState" : ["ap_ST_fsm_state11"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1560_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "19", "FirstState" : "ap_ST_fsm_state11", "LastState" : ["ap_ST_fsm_state12"], "QuitState" : ["ap_ST_fsm_state11"], "PreState" : ["ap_ST_fsm_state10"], "PostState" : ["ap_ST_fsm_state7"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1665_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "19", "FirstState" : "ap_ST_fsm_state7", "LastState" : ["ap_ST_fsm_state11"], "QuitState" : ["ap_ST_fsm_state7"], "PreState" : ["ap_ST_fsm_state6"], "PostState" : ["ap_ST_fsm_state13"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1487_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "19", "FirstState" : "ap_ST_fsm_state13", "LastState" : ["ap_ST_fsm_state14"], "QuitState" : ["ap_ST_fsm_state13"], "PreState" : ["ap_ST_fsm_state7"], "PostState" : ["ap_ST_fsm_state2"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "zint_rebuild_CRTloop1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "19", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state13"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state15"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1591_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "19", "FirstState" : "ap_ST_fsm_state16", "LastState" : ["ap_ST_fsm_state17"], "QuitState" : ["ap_ST_fsm_state17"], "PreState" : ["ap_ST_fsm_state15"], "PostState" : ["ap_ST_fsm_state18"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1465_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "19", "FirstState" : "ap_ST_fsm_state18", "LastState" : ["ap_ST_fsm_state19"], "QuitState" : ["ap_ST_fsm_state18"], "PreState" : ["ap_ST_fsm_state17"], "PostState" : ["ap_ST_fsm_state15"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1693_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "19", "FirstState" : "ap_ST_fsm_state15", "LastState" : ["ap_ST_fsm_state18"], "QuitState" : ["ap_ST_fsm_state15"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "170", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_zint_rebuild_CRT_1_fu_3561.PRIMES_p_U", "Parent" : "169"},
	{"ID" : "171", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_zint_rebuild_CRT_1_fu_3561.PRIMES_s_U", "Parent" : "169"},
	{"ID" : "172", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_zint_rebuild_CRT_1_fu_3561.grp_modp_montymul_fu_442", "Parent" : "169", "Child" : ["173", "174", "175"],
		"CDFG" : "modp_montymul",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "p", "Type" : "None", "Direction" : "I"},
			{"Name" : "p0i", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "173", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_zint_rebuild_CRT_1_fu_3561.grp_modp_montymul_fu_442.mul_32ns_32ns_63_1_1_U169", "Parent" : "172"},
	{"ID" : "174", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_zint_rebuild_CRT_1_fu_3561.grp_modp_montymul_fu_442.mul_31s_31s_31_1_1_U170", "Parent" : "172"},
	{"ID" : "175", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_zint_rebuild_CRT_1_fu_3561.grp_modp_montymul_fu_442.mul_31ns_32ns_62_1_1_U171", "Parent" : "172"},
	{"ID" : "176", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_zint_rebuild_CRT_1_fu_3561.grp_modp_montymul_fu_450", "Parent" : "169", "Child" : ["177", "178", "179"],
		"CDFG" : "modp_montymul",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "p", "Type" : "None", "Direction" : "I"},
			{"Name" : "p0i", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "177", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_zint_rebuild_CRT_1_fu_3561.grp_modp_montymul_fu_450.mul_32ns_32ns_63_1_1_U169", "Parent" : "176"},
	{"ID" : "178", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_zint_rebuild_CRT_1_fu_3561.grp_modp_montymul_fu_450.mul_31s_31s_31_1_1_U170", "Parent" : "176"},
	{"ID" : "179", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_zint_rebuild_CRT_1_fu_3561.grp_modp_montymul_fu_450.mul_31ns_32ns_62_1_1_U171", "Parent" : "176"},
	{"ID" : "180", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_zint_rebuild_CRT_1_fu_3561.mul_25s_24ns_31_1_1_U248", "Parent" : "169"},
	{"ID" : "181", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_zint_rebuild_CRT_1_fu_3561.mul_31s_24ns_31_1_1_U249", "Parent" : "169"},
	{"ID" : "182", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_zint_rebuild_CRT_1_fu_3561.mul_25s_31s_31_1_1_U250", "Parent" : "169"},
	{"ID" : "183", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_zint_rebuild_CRT_1_fu_3561.mul_31s_31s_31_1_1_U251", "Parent" : "169"},
	{"ID" : "184", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_zint_rebuild_CRT_1_fu_3561.mul_25s_31s_31_1_1_U252", "Parent" : "169"},
	{"ID" : "185", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_zint_rebuild_CRT_1_fu_3561.mul_31s_31s_31_1_1_U253", "Parent" : "169"},
	{"ID" : "186", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_zint_rebuild_CRT_1_fu_3561.mul_25s_31s_31_1_1_U254", "Parent" : "169"},
	{"ID" : "187", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_zint_rebuild_CRT_1_fu_3561.mul_31s_31s_31_1_1_U255", "Parent" : "169"},
	{"ID" : "188", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_zint_rebuild_CRT_1_fu_3561.mul_32ns_32ns_63_1_1_U256", "Parent" : "169"},
	{"ID" : "189", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_zint_rebuild_CRT_1_fu_3561.mul_32ns_31ns_63_1_1_U257", "Parent" : "169"},
	{"ID" : "190", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_poly_big_to_fp_1_fu_3592", "Parent" : "0", "Child" : ["191", "193", "194"],
		"CDFG" : "poly_big_to_fp_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "vla18", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "d", "Type" : "None", "Direction" : "I"},
			{"Name" : "f", "Type" : "None", "Direction" : "I"},
			{"Name" : "flen", "Type" : "None", "Direction" : "I"},
			{"Name" : "fstride", "Type" : "None", "Direction" : "I"},
			{"Name" : "logn", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_2337_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state2"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1", "ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state2_blk"}},
			{"Name" : "VITIS_LOOP_2357_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state2"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_2342_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state4", "ap_ST_fsm_state2"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "191", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poly_big_to_fp_1_fu_3592.grp_fpr_of_fu_228", "Parent" : "190", "Child" : ["192"],
		"CDFG" : "fpr_of",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "i", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "192", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_poly_big_to_fp_1_fu_3592.grp_fpr_of_fu_228.sitodp_64ns_64_2_no_dsp_1_U84", "Parent" : "191"},
	{"ID" : "193", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poly_big_to_fp_1_fu_3592.dadd_64ns_64ns_64_2_full_dsp_1_U271", "Parent" : "190"},
	{"ID" : "194", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poly_big_to_fp_1_fu_3592.dmul_64ns_64ns_64_2_max_dsp_1_U272", "Parent" : "190"},
	{"ID" : "195", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_poly_mul_fft_1_fu_3613", "Parent" : "0", "Child" : ["196", "197", "198", "199", "200", "201"],
		"CDFG" : "poly_mul_fft_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "817",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "vla18", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "logn", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_511_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state9"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "196", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poly_mul_fft_1_fu_3613.dsub_64ns_64ns_64_2_full_dsp_1_U279", "Parent" : "195"},
	{"ID" : "197", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poly_mul_fft_1_fu_3613.dadd_64ns_64ns_64_2_full_dsp_1_U280", "Parent" : "195"},
	{"ID" : "198", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poly_mul_fft_1_fu_3613.dmul_64ns_64ns_64_2_max_dsp_1_U281", "Parent" : "195"},
	{"ID" : "199", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poly_mul_fft_1_fu_3613.dmul_64ns_64ns_64_2_max_dsp_1_U282", "Parent" : "195"},
	{"ID" : "200", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poly_mul_fft_1_fu_3613.dmul_64ns_64ns_64_2_max_dsp_1_U283", "Parent" : "195"},
	{"ID" : "201", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poly_mul_fft_1_fu_3613.dmul_64ns_64ns_64_2_max_dsp_1_U284", "Parent" : "195"},
	{"ID" : "202", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_zint_bezout_1_fu_3626", "Parent" : "0", "Child" : ["203", "216", "217", "218", "219", "220", "221", "222", "223", "224", "225", "226", "227", "228", "229", "230", "231", "232", "233", "234", "235"],
		"CDFG" : "zint_bezout_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2915067", "EstimateLatencyMax" : "2915067",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "vla18", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "grp_zint_co_reduce_mod_1_fu_674", "Port" : "vla18", "Inst_start_state" : "28", "Inst_end_state" : "29"}]}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "33", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state5"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "Loop 2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "33", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state7"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "Loop 3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "33", "FirstState" : "ap_ST_fsm_state8", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state8"], "PreState" : ["ap_ST_fsm_state7"], "PostState" : ["ap_ST_fsm_state9"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state8_blk"}},
			{"Name" : "Loop 4", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "33", "FirstState" : "ap_ST_fsm_state9", "LastState" : ["ap_ST_fsm_state9"], "QuitState" : ["ap_ST_fsm_state9"], "PreState" : ["ap_ST_fsm_state8"], "PostState" : ["ap_ST_fsm_state10"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state9_blk"}},
			{"Name" : "Loop 5", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "33", "FirstState" : "ap_ST_fsm_state10", "LastState" : ["ap_ST_fsm_state11"], "QuitState" : ["ap_ST_fsm_state11"], "PreState" : ["ap_ST_fsm_state9"], "PostState" : ["ap_ST_fsm_state12"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "Loop 6", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "33", "FirstState" : "ap_ST_fsm_state12", "LastState" : ["ap_ST_fsm_state13"], "QuitState" : ["ap_ST_fsm_state13"], "PreState" : ["ap_ST_fsm_state11"], "PostState" : ["ap_ST_fsm_state14"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_2066_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "33", "FirstState" : "ap_ST_fsm_state17", "LastState" : ["ap_ST_fsm_state18"], "QuitState" : ["ap_ST_fsm_state18"], "PreState" : ["ap_ST_fsm_state16"], "PostState" : ["ap_ST_fsm_state19"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_2107_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "33", "FirstState" : "ap_ST_fsm_state20", "LastState" : ["ap_ST_fsm_state20"], "QuitState" : ["ap_ST_fsm_state20"], "PreState" : ["ap_ST_fsm_state19"], "PostState" : ["ap_ST_fsm_state21"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state20_blk"}},
			{"Name" : "VITIS_LOOP_1749_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "33", "FirstState" : "ap_ST_fsm_state21", "LastState" : ["ap_ST_fsm_state22"], "QuitState" : ["ap_ST_fsm_state21"], "PreState" : ["ap_ST_fsm_state20"], "PostState" : ["ap_ST_fsm_state23"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1716_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "33", "FirstState" : "ap_ST_fsm_state23", "LastState" : ["ap_ST_fsm_state24"], "QuitState" : ["ap_ST_fsm_state23"], "PreState" : ["ap_ST_fsm_state21"], "PostState" : ["ap_ST_fsm_state25"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1716_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "33", "FirstState" : "ap_ST_fsm_state25", "LastState" : ["ap_ST_fsm_state26"], "QuitState" : ["ap_ST_fsm_state25"], "PreState" : ["ap_ST_fsm_state23"], "PostState" : ["ap_ST_fsm_state27"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_2043_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "33", "FirstState" : "ap_ST_fsm_state16", "LastState" : ["ap_ST_fsm_state29"], "QuitState" : ["ap_ST_fsm_state16"], "PreState" : ["ap_ST_fsm_state15"], "PostState" : ["ap_ST_fsm_state30"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_2193_4", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "33", "FirstState" : "ap_ST_fsm_state31", "LastState" : ["ap_ST_fsm_state32"], "QuitState" : ["ap_ST_fsm_state31"], "PreState" : ["ap_ST_fsm_state30"], "PostState" : ["ap_ST_fsm_state33"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "203", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_zint_bezout_1_fu_3626.grp_zint_co_reduce_mod_1_fu_674", "Parent" : "202", "Child" : ["204", "205", "206", "207", "208", "209", "210", "211", "212", "213", "214", "215"],
		"CDFG" : "zint_co_reduce_mod_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2515", "EstimateLatencyMax" : "2515",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "vla18", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "m", "Type" : "None", "Direction" : "I"},
			{"Name" : "m0i", "Type" : "None", "Direction" : "I"},
			{"Name" : "xa", "Type" : "None", "Direction" : "I"},
			{"Name" : "xb", "Type" : "None", "Direction" : "I"},
			{"Name" : "ya", "Type" : "None", "Direction" : "I"},
			{"Name" : "yb", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1840_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "15", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state7"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1795_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "15", "FirstState" : "ap_ST_fsm_state8", "LastState" : ["ap_ST_fsm_state9"], "QuitState" : ["ap_ST_fsm_state8"], "PreState" : ["ap_ST_fsm_state7"], "PostState" : ["ap_ST_fsm_state10"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1811_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "15", "FirstState" : "ap_ST_fsm_state10", "LastState" : ["ap_ST_fsm_state11"], "QuitState" : ["ap_ST_fsm_state10"], "PreState" : ["ap_ST_fsm_state8"], "PostState" : ["ap_ST_fsm_state12"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1795_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "15", "FirstState" : "ap_ST_fsm_state12", "LastState" : ["ap_ST_fsm_state13"], "QuitState" : ["ap_ST_fsm_state12"], "PreState" : ["ap_ST_fsm_state10"], "PostState" : ["ap_ST_fsm_state14"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1811_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "15", "FirstState" : "ap_ST_fsm_state14", "LastState" : ["ap_ST_fsm_state15"], "QuitState" : ["ap_ST_fsm_state14"], "PreState" : ["ap_ST_fsm_state12"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "204", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_zint_bezout_1_fu_3626.grp_zint_co_reduce_mod_1_fu_674.mul_31s_31s_31_1_1_U321", "Parent" : "203"},
	{"ID" : "205", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_zint_bezout_1_fu_3626.grp_zint_co_reduce_mod_1_fu_674.mul_31s_31s_31_1_1_U322", "Parent" : "203"},
	{"ID" : "206", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_zint_bezout_1_fu_3626.grp_zint_co_reduce_mod_1_fu_674.mul_31s_31s_31_1_1_U323", "Parent" : "203"},
	{"ID" : "207", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_zint_bezout_1_fu_3626.grp_zint_co_reduce_mod_1_fu_674.mul_31s_31s_31_1_1_U324", "Parent" : "203"},
	{"ID" : "208", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_zint_bezout_1_fu_3626.grp_zint_co_reduce_mod_1_fu_674.mul_31s_31s_31_1_1_U325", "Parent" : "203"},
	{"ID" : "209", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_zint_bezout_1_fu_3626.grp_zint_co_reduce_mod_1_fu_674.mul_31s_31s_31_1_1_U326", "Parent" : "203"},
	{"ID" : "210", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_zint_bezout_1_fu_3626.grp_zint_co_reduce_mod_1_fu_674.mul_32ns_64s_64_1_1_U327", "Parent" : "203"},
	{"ID" : "211", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_zint_bezout_1_fu_3626.grp_zint_co_reduce_mod_1_fu_674.mul_32ns_64s_64_1_1_U328", "Parent" : "203"},
	{"ID" : "212", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_zint_bezout_1_fu_3626.grp_zint_co_reduce_mod_1_fu_674.mul_32ns_64s_64_1_1_U329", "Parent" : "203"},
	{"ID" : "213", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_zint_bezout_1_fu_3626.grp_zint_co_reduce_mod_1_fu_674.mul_32ns_31ns_63_1_1_U330", "Parent" : "203"},
	{"ID" : "214", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_zint_bezout_1_fu_3626.grp_zint_co_reduce_mod_1_fu_674.mul_32ns_64s_64_1_1_U331", "Parent" : "203"},
	{"ID" : "215", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_zint_bezout_1_fu_3626.grp_zint_co_reduce_mod_1_fu_674.mul_32ns_31ns_63_1_1_U332", "Parent" : "203"},
	{"ID" : "216", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_zint_bezout_1_fu_3626.mul_31s_31s_31_1_1_U343", "Parent" : "202"},
	{"ID" : "217", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_zint_bezout_1_fu_3626.mul_31s_31s_31_1_1_U344", "Parent" : "202"},
	{"ID" : "218", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_zint_bezout_1_fu_3626.mul_31s_31s_31_1_1_U345", "Parent" : "202"},
	{"ID" : "219", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_zint_bezout_1_fu_3626.mul_31s_31s_31_1_1_U346", "Parent" : "202"},
	{"ID" : "220", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_zint_bezout_1_fu_3626.mul_31s_31s_31_1_1_U347", "Parent" : "202"},
	{"ID" : "221", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_zint_bezout_1_fu_3626.mul_31s_31s_31_1_1_U348", "Parent" : "202"},
	{"ID" : "222", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_zint_bezout_1_fu_3626.mul_31s_31s_31_1_1_U349", "Parent" : "202"},
	{"ID" : "223", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_zint_bezout_1_fu_3626.mul_31s_31s_31_1_1_U350", "Parent" : "202"},
	{"ID" : "224", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_zint_bezout_1_fu_3626.mul_31s_31s_31_1_1_U351", "Parent" : "202"},
	{"ID" : "225", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_zint_bezout_1_fu_3626.mul_31s_31s_31_1_1_U352", "Parent" : "202"},
	{"ID" : "226", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_zint_bezout_1_fu_3626.mul_31s_31s_31_1_1_U353", "Parent" : "202"},
	{"ID" : "227", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_zint_bezout_1_fu_3626.mul_31s_31s_31_1_1_U354", "Parent" : "202"},
	{"ID" : "228", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_zint_bezout_1_fu_3626.mul_31s_31s_31_1_1_U355", "Parent" : "202"},
	{"ID" : "229", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_zint_bezout_1_fu_3626.mul_31s_31s_31_1_1_U356", "Parent" : "202"},
	{"ID" : "230", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_zint_bezout_1_fu_3626.mul_31s_31s_31_1_1_U357", "Parent" : "202"},
	{"ID" : "231", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_zint_bezout_1_fu_3626.mul_31s_31s_31_1_1_U358", "Parent" : "202"},
	{"ID" : "232", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_zint_bezout_1_fu_3626.mul_64s_32ns_64_1_1_U359", "Parent" : "202"},
	{"ID" : "233", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_zint_bezout_1_fu_3626.mul_64s_32ns_64_1_1_U360", "Parent" : "202"},
	{"ID" : "234", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_zint_bezout_1_fu_3626.mul_64s_32ns_64_1_1_U361", "Parent" : "202"},
	{"ID" : "235", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_zint_bezout_1_fu_3626.mul_64s_32ns_64_1_1_U362", "Parent" : "202"},
	{"ID" : "236", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_poly_sub_scaled_1_fu_3632", "Parent" : "0", "Child" : ["237"],
		"CDFG" : "poly_sub_scaled_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "vla18", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "F", "Type" : "None", "Direction" : "I"},
			{"Name" : "Flen", "Type" : "None", "Direction" : "I"},
			{"Name" : "Fstride", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "flen_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "fstride_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "k", "Type" : "None", "Direction" : "I"},
			{"Name" : "sch", "Type" : "None", "Direction" : "I"},
			{"Name" : "scl", "Type" : "None", "Direction" : "I"},
			{"Name" : "logn", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_2225_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_state6", "LastState" : ["ap_ST_fsm_state7"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state5"], "PostState" : ["ap_ST_fsm_state4"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_2427_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state2"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_2415_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "237", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poly_sub_scaled_1_fu_3632.mul_31ns_32s_63_1_1_U365", "Parent" : "236"},
	{"ID" : "238", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_poly_sub_scaled_ntt_1_fu_3649", "Parent" : "0", "Child" : ["239", "240", "244", "265", "272", "273", "274", "275", "276", "277", "278", "279", "280", "281"],
		"CDFG" : "poly_sub_scaled_ntt_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "vla18", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "265", "SubInstance" : "grp_modp_NTT2_ext_1_fu_1171", "Port" : "vla18", "Inst_start_state" : "22", "Inst_end_state" : "26"},
					{"ID" : "244", "SubInstance" : "grp_zint_rebuild_CRT_1_fu_1154", "Port" : "vla18", "Inst_start_state" : "2", "Inst_end_state" : "40"}]},
			{"Name" : "F", "Type" : "None", "Direction" : "I"},
			{"Name" : "Flen", "Type" : "None", "Direction" : "I"},
			{"Name" : "Fstride", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "flen_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "fstride_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "k", "Type" : "None", "Direction" : "I"},
			{"Name" : "sch", "Type" : "None", "Direction" : "I"},
			{"Name" : "scl", "Type" : "None", "Direction" : "I"},
			{"Name" : "logn", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp", "Type" : "None", "Direction" : "I"},
			{"Name" : "PRIMES_p", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "244", "SubInstance" : "grp_zint_rebuild_CRT_1_fu_1154", "Port" : "PRIMES_p", "Inst_start_state" : "2", "Inst_end_state" : "40"}]},
			{"Name" : "PRIMES_g", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "REV10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "PRIMES_s", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "244", "SubInstance" : "grp_zint_rebuild_CRT_1_fu_1154", "Port" : "PRIMES_s", "Inst_start_state" : "2", "Inst_end_state" : "40"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_779_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "44", "FirstState" : "ap_ST_fsm_state9", "LastState" : ["ap_ST_fsm_state10"], "QuitState" : ["ap_ST_fsm_state9"], "PreState" : ["ap_ST_fsm_state8"], "PostState" : ["ap_ST_fsm_state11"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_954_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "44", "FirstState" : "ap_ST_fsm_state12", "LastState" : ["ap_ST_fsm_state12"], "QuitState" : ["ap_ST_fsm_state12"], "PreState" : ["ap_ST_fsm_state11"], "PostState" : ["ap_ST_fsm_state13"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state12_blk"}},
			{"Name" : "VITIS_LOOP_808_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "44", "FirstState" : "ap_ST_fsm_state13", "LastState" : ["ap_ST_fsm_state14"], "QuitState" : ["ap_ST_fsm_state13"], "PreState" : ["ap_ST_fsm_state12"], "PostState" : ["ap_ST_fsm_state15"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_962_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "44", "FirstState" : "ap_ST_fsm_state16", "LastState" : ["ap_ST_fsm_state18"], "QuitState" : ["ap_ST_fsm_state16"], "PreState" : ["ap_ST_fsm_state15"], "PostState" : ["ap_ST_fsm_state19"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_2485_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "44", "FirstState" : "ap_ST_fsm_state19", "LastState" : ["ap_ST_fsm_state20"], "QuitState" : ["ap_ST_fsm_state19"], "PreState" : ["ap_ST_fsm_state16"], "PostState" : ["ap_ST_fsm_state21"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1520_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "44", "FirstState" : "ap_ST_fsm_state23", "LastState" : ["ap_ST_fsm_state24"], "QuitState" : ["ap_ST_fsm_state24"], "PreState" : ["ap_ST_fsm_state22"], "PostState" : ["ap_ST_fsm_state25"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_2490_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "44", "FirstState" : "ap_ST_fsm_state22", "LastState" : ["ap_ST_fsm_state25"], "QuitState" : ["ap_ST_fsm_state22"], "PreState" : ["ap_ST_fsm_state21"], "PostState" : ["ap_ST_fsm_state26"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_2497_4", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "44", "FirstState" : "ap_ST_fsm_state27", "LastState" : ["ap_ST_fsm_state29"], "QuitState" : ["ap_ST_fsm_state27"], "PreState" : ["ap_ST_fsm_state26"], "PostState" : ["ap_ST_fsm_state30"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "iNTT_loop3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "44", "FirstState" : "ap_ST_fsm_state35", "LastState" : ["ap_ST_fsm_state37"], "QuitState" : ["ap_ST_fsm_state35"], "PreState" : ["ap_ST_fsm_state34"], "PostState" : ["ap_ST_fsm_state31"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "iNTT_loop2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "44", "FirstState" : "ap_ST_fsm_state31", "LastState" : ["ap_ST_fsm_state35"], "QuitState" : ["ap_ST_fsm_state31"], "PreState" : ["ap_ST_fsm_state30"], "PostState" : ["ap_ST_fsm_state30"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "iNTT_loop1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "44", "FirstState" : "ap_ST_fsm_state30", "LastState" : ["ap_ST_fsm_state31"], "QuitState" : ["ap_ST_fsm_state30"], "PreState" : ["ap_ST_fsm_state27"], "PostState" : ["ap_ST_fsm_state38"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1373_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "44", "FirstState" : "ap_ST_fsm_state38", "LastState" : ["ap_ST_fsm_state39"], "QuitState" : ["ap_ST_fsm_state38"], "PreState" : ["ap_ST_fsm_state30"], "PostState" : ["ap_ST_fsm_state2"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_2474_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "44", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state38"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state40"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_2284_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "44", "FirstState" : "ap_ST_fsm_state43", "LastState" : ["ap_ST_fsm_state44"], "QuitState" : ["ap_ST_fsm_state43"], "PreState" : ["ap_ST_fsm_state42"], "PostState" : ["ap_ST_fsm_state41"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_2513_5", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "44", "FirstState" : "ap_ST_fsm_state41", "LastState" : ["ap_ST_fsm_state43"], "QuitState" : ["ap_ST_fsm_state41"], "PreState" : ["ap_ST_fsm_state40"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "239", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poly_sub_scaled_ntt_1_fu_3649.REV10_U", "Parent" : "238"},
	{"ID" : "240", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poly_sub_scaled_ntt_1_fu_3649.grp_modp_montymul_fu_800", "Parent" : "238", "Child" : ["241", "242", "243"],
		"CDFG" : "modp_montymul",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "p", "Type" : "None", "Direction" : "I"},
			{"Name" : "p0i", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "241", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_poly_sub_scaled_ntt_1_fu_3649.grp_modp_montymul_fu_800.mul_32ns_32ns_63_1_1_U169", "Parent" : "240"},
	{"ID" : "242", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_poly_sub_scaled_ntt_1_fu_3649.grp_modp_montymul_fu_800.mul_31s_31s_31_1_1_U170", "Parent" : "240"},
	{"ID" : "243", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_poly_sub_scaled_ntt_1_fu_3649.grp_modp_montymul_fu_800.mul_31ns_32ns_62_1_1_U171", "Parent" : "240"},
	{"ID" : "244", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poly_sub_scaled_ntt_1_fu_3649.grp_zint_rebuild_CRT_1_fu_1154", "Parent" : "238", "Child" : ["245", "246", "247", "251", "255", "256", "257", "258", "259", "260", "261", "262", "263", "264"],
		"CDFG" : "zint_rebuild_CRT_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "vla18", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "xx", "Type" : "None", "Direction" : "I"},
			{"Name" : "xlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "xstride", "Type" : "None", "Direction" : "I"},
			{"Name" : "num", "Type" : "None", "Direction" : "I"},
			{"Name" : "normalize_signed", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp", "Type" : "None", "Direction" : "I"},
			{"Name" : "PRIMES_p", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "PRIMES_s", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1520_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "19", "FirstState" : "ap_ST_fsm_state9", "LastState" : ["ap_ST_fsm_state10"], "QuitState" : ["ap_ST_fsm_state10"], "PreState" : ["ap_ST_fsm_state8"], "PostState" : ["ap_ST_fsm_state11"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1560_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "19", "FirstState" : "ap_ST_fsm_state11", "LastState" : ["ap_ST_fsm_state12"], "QuitState" : ["ap_ST_fsm_state11"], "PreState" : ["ap_ST_fsm_state10"], "PostState" : ["ap_ST_fsm_state7"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1665_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "19", "FirstState" : "ap_ST_fsm_state7", "LastState" : ["ap_ST_fsm_state11"], "QuitState" : ["ap_ST_fsm_state7"], "PreState" : ["ap_ST_fsm_state6"], "PostState" : ["ap_ST_fsm_state13"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1487_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "19", "FirstState" : "ap_ST_fsm_state13", "LastState" : ["ap_ST_fsm_state14"], "QuitState" : ["ap_ST_fsm_state13"], "PreState" : ["ap_ST_fsm_state7"], "PostState" : ["ap_ST_fsm_state2"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "zint_rebuild_CRTloop1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "19", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state13"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state15"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1591_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "19", "FirstState" : "ap_ST_fsm_state16", "LastState" : ["ap_ST_fsm_state17"], "QuitState" : ["ap_ST_fsm_state17"], "PreState" : ["ap_ST_fsm_state15"], "PostState" : ["ap_ST_fsm_state18"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1465_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "19", "FirstState" : "ap_ST_fsm_state18", "LastState" : ["ap_ST_fsm_state19"], "QuitState" : ["ap_ST_fsm_state18"], "PreState" : ["ap_ST_fsm_state17"], "PostState" : ["ap_ST_fsm_state15"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1693_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "19", "FirstState" : "ap_ST_fsm_state15", "LastState" : ["ap_ST_fsm_state18"], "QuitState" : ["ap_ST_fsm_state15"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "245", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_poly_sub_scaled_ntt_1_fu_3649.grp_zint_rebuild_CRT_1_fu_1154.PRIMES_p_U", "Parent" : "244"},
	{"ID" : "246", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_poly_sub_scaled_ntt_1_fu_3649.grp_zint_rebuild_CRT_1_fu_1154.PRIMES_s_U", "Parent" : "244"},
	{"ID" : "247", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_poly_sub_scaled_ntt_1_fu_3649.grp_zint_rebuild_CRT_1_fu_1154.grp_modp_montymul_fu_442", "Parent" : "244", "Child" : ["248", "249", "250"],
		"CDFG" : "modp_montymul",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "p", "Type" : "None", "Direction" : "I"},
			{"Name" : "p0i", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "248", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_poly_sub_scaled_ntt_1_fu_3649.grp_zint_rebuild_CRT_1_fu_1154.grp_modp_montymul_fu_442.mul_32ns_32ns_63_1_1_U169", "Parent" : "247"},
	{"ID" : "249", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_poly_sub_scaled_ntt_1_fu_3649.grp_zint_rebuild_CRT_1_fu_1154.grp_modp_montymul_fu_442.mul_31s_31s_31_1_1_U170", "Parent" : "247"},
	{"ID" : "250", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_poly_sub_scaled_ntt_1_fu_3649.grp_zint_rebuild_CRT_1_fu_1154.grp_modp_montymul_fu_442.mul_31ns_32ns_62_1_1_U171", "Parent" : "247"},
	{"ID" : "251", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_poly_sub_scaled_ntt_1_fu_3649.grp_zint_rebuild_CRT_1_fu_1154.grp_modp_montymul_fu_450", "Parent" : "244", "Child" : ["252", "253", "254"],
		"CDFG" : "modp_montymul",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "p", "Type" : "None", "Direction" : "I"},
			{"Name" : "p0i", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "252", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_poly_sub_scaled_ntt_1_fu_3649.grp_zint_rebuild_CRT_1_fu_1154.grp_modp_montymul_fu_450.mul_32ns_32ns_63_1_1_U169", "Parent" : "251"},
	{"ID" : "253", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_poly_sub_scaled_ntt_1_fu_3649.grp_zint_rebuild_CRT_1_fu_1154.grp_modp_montymul_fu_450.mul_31s_31s_31_1_1_U170", "Parent" : "251"},
	{"ID" : "254", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_poly_sub_scaled_ntt_1_fu_3649.grp_zint_rebuild_CRT_1_fu_1154.grp_modp_montymul_fu_450.mul_31ns_32ns_62_1_1_U171", "Parent" : "251"},
	{"ID" : "255", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_poly_sub_scaled_ntt_1_fu_3649.grp_zint_rebuild_CRT_1_fu_1154.mul_25s_24ns_31_1_1_U248", "Parent" : "244"},
	{"ID" : "256", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_poly_sub_scaled_ntt_1_fu_3649.grp_zint_rebuild_CRT_1_fu_1154.mul_31s_24ns_31_1_1_U249", "Parent" : "244"},
	{"ID" : "257", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_poly_sub_scaled_ntt_1_fu_3649.grp_zint_rebuild_CRT_1_fu_1154.mul_25s_31s_31_1_1_U250", "Parent" : "244"},
	{"ID" : "258", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_poly_sub_scaled_ntt_1_fu_3649.grp_zint_rebuild_CRT_1_fu_1154.mul_31s_31s_31_1_1_U251", "Parent" : "244"},
	{"ID" : "259", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_poly_sub_scaled_ntt_1_fu_3649.grp_zint_rebuild_CRT_1_fu_1154.mul_25s_31s_31_1_1_U252", "Parent" : "244"},
	{"ID" : "260", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_poly_sub_scaled_ntt_1_fu_3649.grp_zint_rebuild_CRT_1_fu_1154.mul_31s_31s_31_1_1_U253", "Parent" : "244"},
	{"ID" : "261", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_poly_sub_scaled_ntt_1_fu_3649.grp_zint_rebuild_CRT_1_fu_1154.mul_25s_31s_31_1_1_U254", "Parent" : "244"},
	{"ID" : "262", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_poly_sub_scaled_ntt_1_fu_3649.grp_zint_rebuild_CRT_1_fu_1154.mul_31s_31s_31_1_1_U255", "Parent" : "244"},
	{"ID" : "263", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_poly_sub_scaled_ntt_1_fu_3649.grp_zint_rebuild_CRT_1_fu_1154.mul_32ns_32ns_63_1_1_U256", "Parent" : "244"},
	{"ID" : "264", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_poly_sub_scaled_ntt_1_fu_3649.grp_zint_rebuild_CRT_1_fu_1154.mul_32ns_31ns_63_1_1_U257", "Parent" : "244"},
	{"ID" : "265", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poly_sub_scaled_ntt_1_fu_3649.grp_modp_NTT2_ext_1_fu_1171", "Parent" : "238", "Child" : ["266", "270", "271"],
		"CDFG" : "modp_NTT2_ext_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "vla18", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "stride", "Type" : "None", "Direction" : "I"},
			{"Name" : "gm", "Type" : "None", "Direction" : "I"},
			{"Name" : "logn", "Type" : "None", "Direction" : "I"},
			{"Name" : "p", "Type" : "None", "Direction" : "I"},
			{"Name" : "p0i", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1244_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state7", "LastState" : ["ap_ST_fsm_state9"], "QuitState" : ["ap_ST_fsm_state7"], "PreState" : ["ap_ST_fsm_state6"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1236_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state7"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state2"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_1231_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "266", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_poly_sub_scaled_ntt_1_fu_3649.grp_modp_NTT2_ext_1_fu_1171.y_modp_montymul_fu_200", "Parent" : "265", "Child" : ["267", "268", "269"],
		"CDFG" : "modp_montymul",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "p", "Type" : "None", "Direction" : "I"},
			{"Name" : "p0i", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "267", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_poly_sub_scaled_ntt_1_fu_3649.grp_modp_NTT2_ext_1_fu_1171.y_modp_montymul_fu_200.mul_32ns_32ns_63_1_1_U169", "Parent" : "266"},
	{"ID" : "268", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_poly_sub_scaled_ntt_1_fu_3649.grp_modp_NTT2_ext_1_fu_1171.y_modp_montymul_fu_200.mul_31s_31s_31_1_1_U170", "Parent" : "266"},
	{"ID" : "269", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_poly_sub_scaled_ntt_1_fu_3649.grp_modp_NTT2_ext_1_fu_1171.y_modp_montymul_fu_200.mul_31ns_32ns_62_1_1_U171", "Parent" : "266"},
	{"ID" : "270", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_poly_sub_scaled_ntt_1_fu_3649.grp_modp_NTT2_ext_1_fu_1171.mul_mul_13s_8ns_13_4_1_U187", "Parent" : "265"},
	{"ID" : "271", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_poly_sub_scaled_ntt_1_fu_3649.grp_modp_NTT2_ext_1_fu_1171.mul_mul_13s_8ns_13_4_1_U188", "Parent" : "265"},
	{"ID" : "272", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poly_sub_scaled_ntt_1_fu_3649.mul_25s_24ns_31_1_1_U378", "Parent" : "238"},
	{"ID" : "273", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poly_sub_scaled_ntt_1_fu_3649.mul_31s_24ns_31_1_1_U379", "Parent" : "238"},
	{"ID" : "274", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poly_sub_scaled_ntt_1_fu_3649.mul_25s_31s_31_1_1_U380", "Parent" : "238"},
	{"ID" : "275", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poly_sub_scaled_ntt_1_fu_3649.mul_31s_31s_31_1_1_U381", "Parent" : "238"},
	{"ID" : "276", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poly_sub_scaled_ntt_1_fu_3649.mul_25s_31s_31_1_1_U382", "Parent" : "238"},
	{"ID" : "277", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poly_sub_scaled_ntt_1_fu_3649.mul_31s_31s_31_1_1_U383", "Parent" : "238"},
	{"ID" : "278", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poly_sub_scaled_ntt_1_fu_3649.mul_25s_31s_31_1_1_U384", "Parent" : "238"},
	{"ID" : "279", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poly_sub_scaled_ntt_1_fu_3649.mul_31s_31s_31_1_1_U385", "Parent" : "238"},
	{"ID" : "280", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poly_sub_scaled_ntt_1_fu_3649.mac_muladd_13s_8ns_12ns_13_4_1_U386", "Parent" : "238"},
	{"ID" : "281", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_poly_sub_scaled_ntt_1_fu_3649.ama_addmuladd_13s_13ns_8ns_12ns_13_4_1_U387", "Parent" : "238"},
	{"ID" : "282", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dadddsub_64ns_64ns_64_2_full_dsp_1_U404", "Parent" : "0"},
	{"ID" : "283", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dadd_64ns_64ns_64_2_full_dsp_1_U405", "Parent" : "0"},
	{"ID" : "284", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmul_64ns_64ns_64_2_max_dsp_1_U406", "Parent" : "0"},
	{"ID" : "285", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmul_64ns_64ns_64_2_max_dsp_1_U407", "Parent" : "0"},
	{"ID" : "286", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmul_64ns_64ns_64_2_max_dsp_1_U408", "Parent" : "0"},
	{"ID" : "287", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmul_64ns_64ns_64_2_max_dsp_1_U409", "Parent" : "0"},
	{"ID" : "288", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ddiv_64ns_64ns_64_6_no_dsp_1_U410", "Parent" : "0"},
	{"ID" : "289", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dcmp_64ns_64ns_1_1_no_dsp_1_U411", "Parent" : "0"},
	{"ID" : "290", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dcmp_64ns_64ns_1_1_no_dsp_1_U412", "Parent" : "0"},
	{"ID" : "291", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_25s_24ns_31_1_1_U413", "Parent" : "0"},
	{"ID" : "292", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_31s_24ns_31_1_1_U414", "Parent" : "0"},
	{"ID" : "293", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_25s_31s_31_1_1_U415", "Parent" : "0"},
	{"ID" : "294", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_31s_31s_31_1_1_U416", "Parent" : "0"},
	{"ID" : "295", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_25s_31s_31_1_1_U417", "Parent" : "0"},
	{"ID" : "296", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_31s_31s_31_1_1_U418", "Parent" : "0"},
	{"ID" : "297", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_25s_31s_31_1_1_U419", "Parent" : "0"},
	{"ID" : "298", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_31s_31s_31_1_1_U420", "Parent" : "0"},
	{"ID" : "299", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_25s_24ns_31_1_1_U421", "Parent" : "0"},
	{"ID" : "300", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_31s_24ns_31_1_1_U422", "Parent" : "0"},
	{"ID" : "301", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_25s_31s_31_1_1_U423", "Parent" : "0"},
	{"ID" : "302", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_31s_31s_31_1_1_U424", "Parent" : "0"},
	{"ID" : "303", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_25s_31s_31_1_1_U425", "Parent" : "0"},
	{"ID" : "304", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_31s_31s_31_1_1_U426", "Parent" : "0"},
	{"ID" : "305", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_25s_31s_31_1_1_U427", "Parent" : "0"},
	{"ID" : "306", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_31s_31s_31_1_1_U428", "Parent" : "0"},
	{"ID" : "307", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_15ns_46_1_1_U429", "Parent" : "0"},
	{"ID" : "308", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_15ns_46_1_1_U430", "Parent" : "0"},
	{"ID" : "309", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_61s_61_1_1_U431", "Parent" : "0"},
	{"ID" : "310", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_64s_64_1_1_U432", "Parent" : "0"},
	{"ID" : "311", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_25s_24ns_31_1_1_U433", "Parent" : "0"},
	{"ID" : "312", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_31s_24ns_31_1_1_U434", "Parent" : "0"},
	{"ID" : "313", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_25s_31s_31_1_1_U435", "Parent" : "0"},
	{"ID" : "314", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_31s_31s_31_1_1_U436", "Parent" : "0"},
	{"ID" : "315", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_25s_31s_31_1_1_U437", "Parent" : "0"},
	{"ID" : "316", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_31s_31s_31_1_1_U438", "Parent" : "0"},
	{"ID" : "317", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_25s_31s_31_1_1_U439", "Parent" : "0"},
	{"ID" : "318", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_31s_31s_31_1_1_U440", "Parent" : "0"},
	{"ID" : "319", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_25s_24ns_31_1_1_U441", "Parent" : "0"},
	{"ID" : "320", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_31s_24ns_31_1_1_U442", "Parent" : "0"},
	{"ID" : "321", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_25s_31s_31_1_1_U443", "Parent" : "0"},
	{"ID" : "322", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_31s_31s_31_1_1_U444", "Parent" : "0"},
	{"ID" : "323", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_25s_31s_31_1_1_U445", "Parent" : "0"},
	{"ID" : "324", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_31s_31s_31_1_1_U446", "Parent" : "0"},
	{"ID" : "325", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_25s_31s_31_1_1_U447", "Parent" : "0"},
	{"ID" : "326", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_31s_31s_31_1_1_U448", "Parent" : "0"},
	{"ID" : "327", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_34ns_65_1_1_U449", "Parent" : "0"},
	{"ID" : "328", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.srem_32s_6ns_6_36_seq_1_U450", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	solve_NTRU_all_1 {
		f {Type I LastRead 50 FirstWrite -1}
		g {Type I LastRead 50 FirstWrite -1}
		depth_offset {Type I LastRead 0 FirstWrite -1}
		vla18 {Type IO LastRead 81 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}
		REV10 {Type I LastRead -1 FirstWrite -1}
		MAX_BL_SMALL {Type I LastRead -1 FirstWrite -1}
		PRIMES_p {Type I LastRead -1 FirstWrite -1}
		PRIMES_g {Type I LastRead -1 FirstWrite -1}
		PRIMES_s {Type I LastRead -1 FirstWrite -1}
		fpr_gm_tab {Type I LastRead -1 FirstWrite -1}
		fpr_p2_tab {Type I LastRead -1 FirstWrite -1}
		MAX_BL_LARGE {Type I LastRead -1 FirstWrite -1}
		BITLENGTH_avg {Type I LastRead -1 FirstWrite -1}
		BITLENGTH_std {Type I LastRead -1 FirstWrite -1}}
	modp_mkgm2_1 {
		vla18 {Type O LastRead -1 FirstWrite 7}
		gm {Type I LastRead 3 FirstWrite -1}
		igm {Type I LastRead 3 FirstWrite -1}
		logn {Type I LastRead 3 FirstWrite -1}
		g {Type I LastRead 3 FirstWrite -1}
		p {Type I LastRead 0 FirstWrite -1}
		p0i {Type I LastRead 1 FirstWrite -1}
		REV10 {Type I LastRead -1 FirstWrite -1}}
	modp_montymul {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		p {Type I LastRead 0 FirstWrite -1}
		p0i {Type I LastRead 0 FirstWrite -1}}
	modp_montymul {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		p {Type I LastRead 0 FirstWrite -1}
		p0i {Type I LastRead 0 FirstWrite -1}}
	make_fg_1 {
		vla18 {Type IO LastRead 22 FirstWrite 0}
		data {Type I LastRead 0 FirstWrite -1}
		f {Type I LastRead 1 FirstWrite -1}
		g {Type I LastRead 1 FirstWrite -1}
		depth {Type I LastRead 0 FirstWrite -1}
		out_ntt_offset {Type I LastRead 0 FirstWrite -1}
		REV10 {Type I LastRead -1 FirstWrite -1}
		MAX_BL_SMALL {Type I LastRead -1 FirstWrite -1}
		PRIMES_p {Type I LastRead -1 FirstWrite -1}
		PRIMES_g {Type I LastRead -1 FirstWrite -1}
		PRIMES_s {Type I LastRead -1 FirstWrite -1}}
	make_fg_step_1 {
		vla18 {Type IO LastRead 22 FirstWrite 0}
		data {Type I LastRead 1 FirstWrite -1}
		logn {Type I LastRead 1 FirstWrite -1}
		depth {Type I LastRead 0 FirstWrite -1}
		in_ntt {Type I LastRead 1 FirstWrite -1}
		out_ntt {Type I LastRead 1 FirstWrite -1}
		MAX_BL_SMALL {Type I LastRead -1 FirstWrite -1}
		PRIMES_p {Type I LastRead -1 FirstWrite -1}
		PRIMES_g {Type I LastRead -1 FirstWrite -1}
		REV10 {Type I LastRead -1 FirstWrite -1}
		PRIMES_s {Type I LastRead -1 FirstWrite -1}}
	zint_rebuild_CRT_1 {
		vla18 {Type IO LastRead 11 FirstWrite 0}
		xx {Type I LastRead 0 FirstWrite -1}
		xlen {Type I LastRead 0 FirstWrite -1}
		xstride {Type I LastRead 0 FirstWrite -1}
		num {Type I LastRead 0 FirstWrite -1}
		normalize_signed {Type I LastRead 0 FirstWrite -1}
		tmp {Type I LastRead 0 FirstWrite -1}
		PRIMES_p {Type I LastRead -1 FirstWrite -1}
		PRIMES_s {Type I LastRead -1 FirstWrite -1}}
	modp_montymul {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		p {Type I LastRead 0 FirstWrite -1}
		p0i {Type I LastRead 0 FirstWrite -1}}
	modp_montymul {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		p {Type I LastRead 0 FirstWrite -1}
		p0i {Type I LastRead 0 FirstWrite -1}}
	modp_mkgm2_1 {
		vla18 {Type O LastRead -1 FirstWrite 7}
		gm {Type I LastRead 3 FirstWrite -1}
		igm {Type I LastRead 3 FirstWrite -1}
		logn {Type I LastRead 3 FirstWrite -1}
		g {Type I LastRead 3 FirstWrite -1}
		p {Type I LastRead 0 FirstWrite -1}
		p0i {Type I LastRead 1 FirstWrite -1}
		REV10 {Type I LastRead -1 FirstWrite -1}}
	modp_montymul {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		p {Type I LastRead 0 FirstWrite -1}
		p0i {Type I LastRead 0 FirstWrite -1}}
	modp_montymul {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		p {Type I LastRead 0 FirstWrite -1}
		p0i {Type I LastRead 0 FirstWrite -1}}
	modp_NTT2_ext_1 {
		vla18 {Type IO LastRead 7 FirstWrite 7}
		a {Type I LastRead 0 FirstWrite -1}
		stride {Type I LastRead 0 FirstWrite -1}
		gm {Type I LastRead 0 FirstWrite -1}
		logn {Type I LastRead 0 FirstWrite -1}
		p {Type I LastRead 0 FirstWrite -1}
		p0i {Type I LastRead 0 FirstWrite -1}}
	modp_montymul {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		p {Type I LastRead 0 FirstWrite -1}
		p0i {Type I LastRead 0 FirstWrite -1}}
	modp_iNTT2_ext_1 {
		vla18 {Type IO LastRead 7 FirstWrite 3}
		a {Type I LastRead 0 FirstWrite -1}
		stride {Type I LastRead 0 FirstWrite -1}
		igm {Type I LastRead 0 FirstWrite -1}
		logn {Type I LastRead 0 FirstWrite -1}
		p {Type I LastRead 0 FirstWrite -1}
		p0i {Type I LastRead 0 FirstWrite -1}}
	modp_montymul {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		p {Type I LastRead 0 FirstWrite -1}
		p0i {Type I LastRead 0 FirstWrite -1}}
	modp_montymul {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		p {Type I LastRead 0 FirstWrite -1}
		p0i {Type I LastRead 0 FirstWrite -1}}
	modp_NTT2_ext_1 {
		vla18 {Type IO LastRead 7 FirstWrite 7}
		a {Type I LastRead 0 FirstWrite -1}
		stride {Type I LastRead 0 FirstWrite -1}
		gm {Type I LastRead 0 FirstWrite -1}
		logn {Type I LastRead 0 FirstWrite -1}
		p {Type I LastRead 0 FirstWrite -1}
		p0i {Type I LastRead 0 FirstWrite -1}}
	modp_montymul {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		p {Type I LastRead 0 FirstWrite -1}
		p0i {Type I LastRead 0 FirstWrite -1}}
	modp_NTT2_ext_1 {
		vla18 {Type IO LastRead 7 FirstWrite 7}
		a {Type I LastRead 0 FirstWrite -1}
		stride {Type I LastRead 0 FirstWrite -1}
		gm {Type I LastRead 0 FirstWrite -1}
		logn {Type I LastRead 0 FirstWrite -1}
		p {Type I LastRead 0 FirstWrite -1}
		p0i {Type I LastRead 0 FirstWrite -1}}
	modp_montymul {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		p {Type I LastRead 0 FirstWrite -1}
		p0i {Type I LastRead 0 FirstWrite -1}}
	modp_iNTT2_ext_1 {
		vla18 {Type IO LastRead 7 FirstWrite 3}
		a {Type I LastRead 0 FirstWrite -1}
		stride {Type I LastRead 0 FirstWrite -1}
		igm {Type I LastRead 0 FirstWrite -1}
		logn {Type I LastRead 0 FirstWrite -1}
		p {Type I LastRead 0 FirstWrite -1}
		p0i {Type I LastRead 0 FirstWrite -1}}
	modp_montymul {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		p {Type I LastRead 0 FirstWrite -1}
		p0i {Type I LastRead 0 FirstWrite -1}}
	modp_montymul {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		p {Type I LastRead 0 FirstWrite -1}
		p0i {Type I LastRead 0 FirstWrite -1}}
	modp_montymul {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		p {Type I LastRead 0 FirstWrite -1}
		p0i {Type I LastRead 0 FirstWrite -1}}
	modp_montymul {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		p {Type I LastRead 0 FirstWrite -1}
		p0i {Type I LastRead 0 FirstWrite -1}}
	modp_montymul {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		p {Type I LastRead 0 FirstWrite -1}
		p0i {Type I LastRead 0 FirstWrite -1}}
	modp_montymul {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		p {Type I LastRead 0 FirstWrite -1}
		p0i {Type I LastRead 0 FirstWrite -1}}
	FFT_1 {
		vla18 {Type IO LastRead 9 FirstWrite 9}
		f {Type I LastRead 0 FirstWrite -1}
		logn {Type I LastRead 0 FirstWrite -1}
		fpr_gm_tab {Type I LastRead -1 FirstWrite -1}}
	fpr_of {
		i {Type I LastRead 0 FirstWrite -1}}
	iFFT_1 {
		vla18 {Type IO LastRead 8 FirstWrite 5}
		f {Type I LastRead 0 FirstWrite -1}
		logn {Type I LastRead 0 FirstWrite -1}
		fpr_gm_tab {Type I LastRead -1 FirstWrite -1}
		fpr_p2_tab {Type I LastRead -1 FirstWrite -1}}
	fpr_rint {
		x {Type I LastRead 0 FirstWrite -1}}
	zint_mod_small_signed_1 {
		vla18 {Type I LastRead 2 FirstWrite -1}
		d {Type I LastRead 0 FirstWrite -1}
		dlen {Type I LastRead 0 FirstWrite -1}
		p {Type I LastRead 0 FirstWrite -1}
		p0i {Type I LastRead 0 FirstWrite -1}
		R2 {Type I LastRead 0 FirstWrite -1}
		Rx {Type I LastRead 0 FirstWrite -1}}
	zint_rebuild_CRT_1 {
		vla18 {Type IO LastRead 11 FirstWrite 0}
		xx {Type I LastRead 0 FirstWrite -1}
		xlen {Type I LastRead 0 FirstWrite -1}
		xstride {Type I LastRead 0 FirstWrite -1}
		num {Type I LastRead 0 FirstWrite -1}
		normalize_signed {Type I LastRead 0 FirstWrite -1}
		tmp {Type I LastRead 0 FirstWrite -1}
		PRIMES_p {Type I LastRead -1 FirstWrite -1}
		PRIMES_s {Type I LastRead -1 FirstWrite -1}}
	modp_montymul {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		p {Type I LastRead 0 FirstWrite -1}
		p0i {Type I LastRead 0 FirstWrite -1}}
	modp_montymul {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		p {Type I LastRead 0 FirstWrite -1}
		p0i {Type I LastRead 0 FirstWrite -1}}
	poly_big_to_fp_1 {
		vla18 {Type IO LastRead 3 FirstWrite 1}
		d {Type I LastRead 0 FirstWrite -1}
		f {Type I LastRead 0 FirstWrite -1}
		flen {Type I LastRead 0 FirstWrite -1}
		fstride {Type I LastRead 0 FirstWrite -1}
		logn {Type I LastRead 0 FirstWrite -1}}
	fpr_of {
		i {Type I LastRead 0 FirstWrite -1}}
	poly_mul_fft_1 {
		vla18 {Type IO LastRead 5 FirstWrite 7}
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		logn {Type I LastRead 0 FirstWrite -1}}
	zint_bezout_1 {
		vla18 {Type IO LastRead 23 FirstWrite 2}}
	zint_co_reduce_mod_1 {
		vla18 {Type IO LastRead 8 FirstWrite 2}
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		m {Type I LastRead 1 FirstWrite -1}
		m0i {Type I LastRead 1 FirstWrite -1}
		xa {Type I LastRead 1 FirstWrite -1}
		xb {Type I LastRead 1 FirstWrite -1}
		ya {Type I LastRead 1 FirstWrite -1}
		yb {Type I LastRead 1 FirstWrite -1}}
	poly_sub_scaled_1 {
		vla18 {Type IO LastRead 6 FirstWrite 6}
		F {Type I LastRead 0 FirstWrite -1}
		Flen {Type I LastRead 0 FirstWrite -1}
		Fstride {Type I LastRead 0 FirstWrite -1}
		f_r {Type I LastRead 0 FirstWrite -1}
		flen_r {Type I LastRead 0 FirstWrite -1}
		fstride_r {Type I LastRead 0 FirstWrite -1}
		k {Type I LastRead 0 FirstWrite -1}
		sch {Type I LastRead 0 FirstWrite -1}
		scl {Type I LastRead 0 FirstWrite -1}
		logn {Type I LastRead 0 FirstWrite -1}}
	poly_sub_scaled_ntt_1 {
		vla18 {Type IO LastRead 25 FirstWrite 0}
		F {Type I LastRead 0 FirstWrite -1}
		Flen {Type I LastRead 0 FirstWrite -1}
		Fstride {Type I LastRead 0 FirstWrite -1}
		f_r {Type I LastRead 0 FirstWrite -1}
		flen_r {Type I LastRead 0 FirstWrite -1}
		fstride_r {Type I LastRead 0 FirstWrite -1}
		k {Type I LastRead 0 FirstWrite -1}
		sch {Type I LastRead 0 FirstWrite -1}
		scl {Type I LastRead 0 FirstWrite -1}
		logn {Type I LastRead 0 FirstWrite -1}
		tmp {Type I LastRead 0 FirstWrite -1}
		PRIMES_p {Type I LastRead 1 FirstWrite -1}
		PRIMES_g {Type I LastRead 8 FirstWrite -1}
		REV10 {Type I LastRead -1 FirstWrite -1}
		PRIMES_s {Type I LastRead -1 FirstWrite -1}}
	modp_montymul {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		p {Type I LastRead 0 FirstWrite -1}
		p0i {Type I LastRead 0 FirstWrite -1}}
	zint_rebuild_CRT_1 {
		vla18 {Type IO LastRead 11 FirstWrite 0}
		xx {Type I LastRead 0 FirstWrite -1}
		xlen {Type I LastRead 0 FirstWrite -1}
		xstride {Type I LastRead 0 FirstWrite -1}
		num {Type I LastRead 0 FirstWrite -1}
		normalize_signed {Type I LastRead 0 FirstWrite -1}
		tmp {Type I LastRead 0 FirstWrite -1}
		PRIMES_p {Type I LastRead -1 FirstWrite -1}
		PRIMES_s {Type I LastRead -1 FirstWrite -1}}
	modp_montymul {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		p {Type I LastRead 0 FirstWrite -1}
		p0i {Type I LastRead 0 FirstWrite -1}}
	modp_montymul {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		p {Type I LastRead 0 FirstWrite -1}
		p0i {Type I LastRead 0 FirstWrite -1}}
	modp_NTT2_ext_1 {
		vla18 {Type IO LastRead 7 FirstWrite 7}
		a {Type I LastRead 0 FirstWrite -1}
		stride {Type I LastRead 0 FirstWrite -1}
		gm {Type I LastRead 0 FirstWrite -1}
		logn {Type I LastRead 0 FirstWrite -1}
		p {Type I LastRead 0 FirstWrite -1}
		p0i {Type I LastRead 0 FirstWrite -1}}
	modp_montymul {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		p {Type I LastRead 0 FirstWrite -1}
		p0i {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	f { ap_memory {  { f_address0 mem_address 1 10 }  { f_ce0 mem_ce 1 1 }  { f_q0 in_data 0 8 } } }
	g { ap_memory {  { g_address0 mem_address 1 10 }  { g_ce0 mem_ce 1 1 }  { g_q0 in_data 0 8 } } }
	depth_offset { ap_none {  { depth_offset in_data 0 32 } } }
	vla18 { ap_memory {  { vla18_address0 mem_address 1 13 }  { vla18_ce0 mem_ce 1 1 }  { vla18_we0 mem_we 1 4 }  { vla18_d0 mem_din 1 32 }  { vla18_q0 in_data 0 32 }  { vla18_address1 MemPortADDR2 1 13 }  { vla18_ce1 MemPortCE2 1 1 }  { vla18_we1 MemPortWE2 1 4 }  { vla18_d1 MemPortDIN2 1 32 }  { vla18_q1 in_data 0 32 } } }
	p_read { ap_none {  { p_read in_data 0 32 } } }
}
