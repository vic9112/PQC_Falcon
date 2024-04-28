set moduleName solve_NTRU
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
set C_modelName {solve_NTRU}
set C_modelType { int 64 }
set C_modelArgList {
	{ F_upper int 8 regular {array 1024 { 2 3 } 1 1 }  }
	{ G_upper int 8 regular {array 1024 { 2 3 } 1 1 }  }
	{ f int 8 regular {array 1024 { 1 3 } 1 1 }  }
	{ g int 8 regular {array 1024 { 1 3 } 1 1 }  }
	{ p_read int 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "F_upper", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "G_upper", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "f", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "g", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 64} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ F_upper_address0 sc_out sc_lv 10 signal 0 } 
	{ F_upper_ce0 sc_out sc_logic 1 signal 0 } 
	{ F_upper_we0 sc_out sc_logic 1 signal 0 } 
	{ F_upper_d0 sc_out sc_lv 8 signal 0 } 
	{ F_upper_q0 sc_in sc_lv 8 signal 0 } 
	{ G_upper_address0 sc_out sc_lv 10 signal 1 } 
	{ G_upper_ce0 sc_out sc_logic 1 signal 1 } 
	{ G_upper_we0 sc_out sc_logic 1 signal 1 } 
	{ G_upper_d0 sc_out sc_lv 8 signal 1 } 
	{ G_upper_q0 sc_in sc_lv 8 signal 1 } 
	{ f_address0 sc_out sc_lv 10 signal 2 } 
	{ f_ce0 sc_out sc_logic 1 signal 2 } 
	{ f_q0 sc_in sc_lv 8 signal 2 } 
	{ g_address0 sc_out sc_lv 10 signal 3 } 
	{ g_ce0 sc_out sc_logic 1 signal 3 } 
	{ g_q0 sc_in sc_lv 8 signal 3 } 
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
 	{ "name": "F_upper_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "F_upper", "role": "address0" }} , 
 	{ "name": "F_upper_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "F_upper", "role": "ce0" }} , 
 	{ "name": "F_upper_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "F_upper", "role": "we0" }} , 
 	{ "name": "F_upper_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "F_upper", "role": "d0" }} , 
 	{ "name": "F_upper_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "F_upper", "role": "q0" }} , 
 	{ "name": "G_upper_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "G_upper", "role": "address0" }} , 
 	{ "name": "G_upper_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "G_upper", "role": "ce0" }} , 
 	{ "name": "G_upper_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "G_upper", "role": "we0" }} , 
 	{ "name": "G_upper_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "G_upper", "role": "d0" }} , 
 	{ "name": "G_upper_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "G_upper", "role": "q0" }} , 
 	{ "name": "f_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "f", "role": "address0" }} , 
 	{ "name": "f_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "f", "role": "ce0" }} , 
 	{ "name": "f_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "f", "role": "q0" }} , 
 	{ "name": "g_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "g", "role": "address0" }} , 
 	{ "name": "g_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "g", "role": "ce0" }} , 
 	{ "name": "g_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "g", "role": "q0" }} , 
 	{ "name": "p_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read", "role": "default" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "332", "336", "340"],
		"CDFG" : "solve_NTRU",
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
			{"Name" : "F_upper", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "G_upper", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "f", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_solve_NTRU_all_1_fu_478", "Port" : "f", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "g", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_solve_NTRU_all_1_fu_478", "Port" : "g", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "REV10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_solve_NTRU_all_1_fu_478", "Port" : "REV10", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "MAX_BL_SMALL", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_solve_NTRU_all_1_fu_478", "Port" : "MAX_BL_SMALL", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "PRIMES_p", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_solve_NTRU_all_1_fu_478", "Port" : "PRIMES_p", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "PRIMES_g", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_solve_NTRU_all_1_fu_478", "Port" : "PRIMES_g", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "PRIMES_s", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_solve_NTRU_all_1_fu_478", "Port" : "PRIMES_s", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "fpr_gm_tab", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_solve_NTRU_all_1_fu_478", "Port" : "fpr_gm_tab", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "fpr_p2_tab", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_solve_NTRU_all_1_fu_478", "Port" : "fpr_p2_tab", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "MAX_BL_LARGE", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_solve_NTRU_all_1_fu_478", "Port" : "MAX_BL_LARGE", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "BITLENGTH_avg", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_solve_NTRU_all_1_fu_478", "Port" : "BITLENGTH_avg", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "BITLENGTH_std", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_solve_NTRU_all_1_fu_478", "Port" : "BITLENGTH_std", "Inst_start_state" : "7", "Inst_end_state" : "8"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_4378_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "31", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state5", "ap_ST_fsm_state31"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_2385_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "31", "FirstState" : "ap_ST_fsm_state9", "LastState" : ["ap_ST_fsm_state10"], "QuitState" : ["ap_ST_fsm_state9", "ap_ST_fsm_state10"], "PreState" : ["ap_ST_fsm_state8"], "PostState" : ["ap_ST_fsm_state11", "ap_ST_fsm_state12"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_2385_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "31", "FirstState" : "ap_ST_fsm_state11", "LastState" : ["ap_ST_fsm_state12"], "QuitState" : ["ap_ST_fsm_state11", "ap_ST_fsm_state12"], "PreState" : ["ap_ST_fsm_state9"], "PostState" : ["ap_ST_fsm_state13", "ap_ST_fsm_state31"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_808_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "31", "FirstState" : "ap_ST_fsm_state13", "LastState" : ["ap_ST_fsm_state14"], "QuitState" : ["ap_ST_fsm_state13"], "PreState" : ["ap_ST_fsm_state11"], "PostState" : ["ap_ST_fsm_state15"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_962_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "31", "FirstState" : "ap_ST_fsm_state15", "LastState" : ["ap_ST_fsm_state16"], "QuitState" : ["ap_ST_fsm_state15"], "PreState" : ["ap_ST_fsm_state13"], "PostState" : ["ap_ST_fsm_state17"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_4432_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "31", "FirstState" : "ap_ST_fsm_state17", "LastState" : ["ap_ST_fsm_state18"], "QuitState" : ["ap_ST_fsm_state17"], "PreState" : ["ap_ST_fsm_state15"], "PostState" : ["ap_ST_fsm_state19"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_4435_4", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "31", "FirstState" : "ap_ST_fsm_state19", "LastState" : ["ap_ST_fsm_state21"], "QuitState" : ["ap_ST_fsm_state19"], "PreState" : ["ap_ST_fsm_state17"], "PostState" : ["ap_ST_fsm_state22"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_4447_5", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "31", "FirstState" : "ap_ST_fsm_state29", "LastState" : ["ap_ST_fsm_state31"], "QuitState" : ["ap_ST_fsm_state29"], "PreState" : ["ap_ST_fsm_state28"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.REV10_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vla18_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478", "Parent" : "0", "Child" : ["4", "5", "6", "7", "8", "9", "10", "20", "105", "112", "121", "125", "129", "133", "137", "141", "145", "153", "155", "164", "168", "172", "193", "198", "205", "239", "241", "285", "286", "287", "288", "289", "290", "291", "292", "293", "294", "295", "296", "297", "298", "299", "300", "301", "302", "303", "304", "305", "306", "307", "308", "309", "310", "311", "312", "313", "314", "315", "316", "317", "318", "319", "320", "321", "322", "323", "324", "325", "326", "327", "328", "329", "330", "331"],
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
					{"ID" : "20", "SubInstance" : "grp_make_fg_1_fu_3330", "Port" : "f", "Inst_start_state" : "274", "Inst_end_state" : "275"}]},
			{"Name" : "g", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_make_fg_1_fu_3330", "Port" : "g", "Inst_start_state" : "274", "Inst_end_state" : "275"}]},
			{"Name" : "depth_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "vla18", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "155", "SubInstance" : "grp_iFFT_1_fu_3522", "Port" : "vla18", "Inst_start_state" : "386", "Inst_end_state" : "394"},
					{"ID" : "145", "SubInstance" : "grp_FFT_1_fu_3500", "Port" : "vla18", "Inst_start_state" : "376", "Inst_end_state" : "377"},
					{"ID" : "241", "SubInstance" : "grp_poly_sub_scaled_ntt_1_fu_3649", "Port" : "vla18", "Inst_start_state" : "442", "Inst_end_state" : "440"},
					{"ID" : "112", "SubInstance" : "grp_modp_iNTT2_ext_1_fu_3386", "Port" : "vla18", "Inst_start_state" : "338", "Inst_end_state" : "339"},
					{"ID" : "105", "SubInstance" : "grp_modp_NTT2_ext_1_fu_3357", "Port" : "vla18", "Inst_start_state" : "328", "Inst_end_state" : "329"},
					{"ID" : "239", "SubInstance" : "grp_poly_sub_scaled_1_fu_3632", "Port" : "vla18", "Inst_start_state" : "439", "Inst_end_state" : "440"},
					{"ID" : "198", "SubInstance" : "grp_poly_mul_fft_1_fu_3613", "Port" : "vla18", "Inst_start_state" : "380", "Inst_end_state" : "381"},
					{"ID" : "205", "SubInstance" : "grp_zint_bezout_1_fu_3626", "Port" : "vla18", "Inst_start_state" : "268", "Inst_end_state" : "269"},
					{"ID" : "193", "SubInstance" : "grp_poly_big_to_fp_1_fu_3592", "Port" : "vla18", "Inst_start_state" : "372", "Inst_end_state" : "373"},
					{"ID" : "20", "SubInstance" : "grp_make_fg_1_fu_3330", "Port" : "vla18", "Inst_start_state" : "274", "Inst_end_state" : "275"},
					{"ID" : "168", "SubInstance" : "grp_zint_mod_small_signed_1_fu_3545", "Port" : "vla18", "Inst_start_state" : "310", "Inst_end_state" : "311"},
					{"ID" : "10", "SubInstance" : "grp_modp_mkgm2_1_fu_3306", "Port" : "vla18", "Inst_start_state" : "303", "Inst_end_state" : "304"},
					{"ID" : "172", "SubInstance" : "grp_zint_rebuild_CRT_1_fu_3561", "Port" : "vla18", "Inst_start_state" : "341", "Inst_end_state" : "342"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "REV10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "241", "SubInstance" : "grp_poly_sub_scaled_ntt_1_fu_3649", "Port" : "REV10", "Inst_start_state" : "442", "Inst_end_state" : "440"},
					{"ID" : "20", "SubInstance" : "grp_make_fg_1_fu_3330", "Port" : "REV10", "Inst_start_state" : "274", "Inst_end_state" : "275"},
					{"ID" : "10", "SubInstance" : "grp_modp_mkgm2_1_fu_3306", "Port" : "REV10", "Inst_start_state" : "303", "Inst_end_state" : "304"}]},
			{"Name" : "MAX_BL_SMALL", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_make_fg_1_fu_3330", "Port" : "MAX_BL_SMALL", "Inst_start_state" : "274", "Inst_end_state" : "275"}]},
			{"Name" : "PRIMES_p", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "241", "SubInstance" : "grp_poly_sub_scaled_ntt_1_fu_3649", "Port" : "PRIMES_p", "Inst_start_state" : "442", "Inst_end_state" : "440"},
					{"ID" : "20", "SubInstance" : "grp_make_fg_1_fu_3330", "Port" : "PRIMES_p", "Inst_start_state" : "274", "Inst_end_state" : "275"},
					{"ID" : "172", "SubInstance" : "grp_zint_rebuild_CRT_1_fu_3561", "Port" : "PRIMES_p", "Inst_start_state" : "341", "Inst_end_state" : "342"}]},
			{"Name" : "PRIMES_g", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "241", "SubInstance" : "grp_poly_sub_scaled_ntt_1_fu_3649", "Port" : "PRIMES_g", "Inst_start_state" : "442", "Inst_end_state" : "440"},
					{"ID" : "20", "SubInstance" : "grp_make_fg_1_fu_3330", "Port" : "PRIMES_g", "Inst_start_state" : "274", "Inst_end_state" : "275"}]},
			{"Name" : "PRIMES_s", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "241", "SubInstance" : "grp_poly_sub_scaled_ntt_1_fu_3649", "Port" : "PRIMES_s", "Inst_start_state" : "442", "Inst_end_state" : "440"},
					{"ID" : "20", "SubInstance" : "grp_make_fg_1_fu_3330", "Port" : "PRIMES_s", "Inst_start_state" : "274", "Inst_end_state" : "275"},
					{"ID" : "172", "SubInstance" : "grp_zint_rebuild_CRT_1_fu_3561", "Port" : "PRIMES_s", "Inst_start_state" : "341", "Inst_end_state" : "342"}]},
			{"Name" : "fpr_gm_tab", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "155", "SubInstance" : "grp_iFFT_1_fu_3522", "Port" : "fpr_gm_tab", "Inst_start_state" : "386", "Inst_end_state" : "394"},
					{"ID" : "145", "SubInstance" : "grp_FFT_1_fu_3500", "Port" : "fpr_gm_tab", "Inst_start_state" : "376", "Inst_end_state" : "377"}]},
			{"Name" : "fpr_p2_tab", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "155", "SubInstance" : "grp_iFFT_1_fu_3522", "Port" : "fpr_p2_tab", "Inst_start_state" : "386", "Inst_end_state" : "394"}]},
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
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.MAX_BL_SMALL_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.PRIMES_p_U", "Parent" : "3"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.PRIMES_g_U", "Parent" : "3"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.MAX_BL_LARGE_U", "Parent" : "3"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.BITLENGTH_avg_U", "Parent" : "3"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.BITLENGTH_std_U", "Parent" : "3"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_modp_mkgm2_1_fu_3306", "Parent" : "3", "Child" : ["11", "12", "16"],
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
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_modp_mkgm2_1_fu_3306.REV10_U", "Parent" : "10"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_modp_mkgm2_1_fu_3306.grp_modp_montymul_fu_184", "Parent" : "10", "Child" : ["13", "14", "15"],
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
	{"ID" : "13", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_modp_mkgm2_1_fu_3306.grp_modp_montymul_fu_184.mul_32ns_32ns_63_1_1_U169", "Parent" : "12"},
	{"ID" : "14", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_modp_mkgm2_1_fu_3306.grp_modp_montymul_fu_184.mul_31s_31s_31_1_1_U170", "Parent" : "12"},
	{"ID" : "15", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_modp_mkgm2_1_fu_3306.grp_modp_montymul_fu_184.mul_31ns_32ns_62_1_1_U171", "Parent" : "12"},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_modp_mkgm2_1_fu_3306.grp_modp_montymul_fu_192", "Parent" : "10", "Child" : ["17", "18", "19"],
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
	{"ID" : "17", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_modp_mkgm2_1_fu_3306.grp_modp_montymul_fu_192.mul_32ns_32ns_63_1_1_U169", "Parent" : "16"},
	{"ID" : "18", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_modp_mkgm2_1_fu_3306.grp_modp_montymul_fu_192.mul_31s_31s_31_1_1_U170", "Parent" : "16"},
	{"ID" : "19", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_modp_mkgm2_1_fu_3306.grp_modp_montymul_fu_192.mul_31ns_32ns_62_1_1_U171", "Parent" : "16"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330", "Parent" : "3", "Child" : ["21", "22", "90", "94", "98"],
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
					{"ID" : "22", "SubInstance" : "grp_make_fg_step_1_fu_234", "Port" : "vla18", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "98", "SubInstance" : "grp_modp_NTT2_ext_1_fu_281", "Port" : "vla18", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "data", "Type" : "None", "Direction" : "I"},
			{"Name" : "f", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "g", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "depth", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_ntt_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "REV10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_make_fg_step_1_fu_234", "Port" : "REV10", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "MAX_BL_SMALL", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_make_fg_step_1_fu_234", "Port" : "MAX_BL_SMALL", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "PRIMES_p", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_make_fg_step_1_fu_234", "Port" : "PRIMES_p", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "PRIMES_g", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_make_fg_step_1_fu_234", "Port" : "PRIMES_g", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "PRIMES_s", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_make_fg_step_1_fu_234", "Port" : "PRIMES_s", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}],
		"Loop" : [
			{"Name" : "make_fg_loop1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "14", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state5", "ap_ST_fsm_state7"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_808_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "14", "FirstState" : "ap_ST_fsm_state7", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state7"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state9"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_962_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "14", "FirstState" : "ap_ST_fsm_state9", "LastState" : ["ap_ST_fsm_state11"], "QuitState" : ["ap_ST_fsm_state9"], "PreState" : ["ap_ST_fsm_state7"], "PostState" : ["ap_ST_fsm_state12"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "make_fg_loop2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "14", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state14"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.REV10_U", "Parent" : "20"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234", "Parent" : "20", "Child" : ["23", "24", "25", "26", "47", "57", "64", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89"],
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
					{"ID" : "47", "SubInstance" : "grp_modp_mkgm2_1_fu_826", "Port" : "vla18", "Inst_start_state" : "40", "Inst_end_state" : "41"},
					{"ID" : "26", "SubInstance" : "grp_zint_rebuild_CRT_1_fu_780", "Port" : "vla18", "Inst_start_state" : "31", "Inst_end_state" : "32"},
					{"ID" : "57", "SubInstance" : "grp_modp_NTT2_ext_1_fu_841", "Port" : "vla18", "Inst_start_state" : "50", "Inst_end_state" : "54"},
					{"ID" : "64", "SubInstance" : "grp_modp_iNTT2_ext_1_fu_854", "Port" : "vla18", "Inst_start_state" : "59", "Inst_end_state" : "60"}]},
			{"Name" : "data", "Type" : "None", "Direction" : "I"},
			{"Name" : "logn", "Type" : "None", "Direction" : "I"},
			{"Name" : "depth", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_ntt", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_ntt", "Type" : "None", "Direction" : "I"},
			{"Name" : "MAX_BL_SMALL", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "PRIMES_p", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_zint_rebuild_CRT_1_fu_780", "Port" : "PRIMES_p", "Inst_start_state" : "31", "Inst_end_state" : "32"}]},
			{"Name" : "PRIMES_g", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "REV10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "grp_modp_mkgm2_1_fu_826", "Port" : "REV10", "Inst_start_state" : "40", "Inst_end_state" : "41"}]},
			{"Name" : "PRIMES_s", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_zint_rebuild_CRT_1_fu_780", "Port" : "PRIMES_s", "Inst_start_state" : "31", "Inst_end_state" : "32"}]}],
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
	{"ID" : "23", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.MAX_BL_SMALL_U", "Parent" : "22"},
	{"ID" : "24", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.PRIMES_p_U", "Parent" : "22"},
	{"ID" : "25", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.PRIMES_g_U", "Parent" : "22"},
	{"ID" : "26", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_zint_rebuild_CRT_1_fu_780", "Parent" : "22", "Child" : ["27", "28", "29", "33", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46"],
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
	{"ID" : "27", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_zint_rebuild_CRT_1_fu_780.PRIMES_p_U", "Parent" : "26"},
	{"ID" : "28", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_zint_rebuild_CRT_1_fu_780.PRIMES_s_U", "Parent" : "26"},
	{"ID" : "29", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_zint_rebuild_CRT_1_fu_780.grp_modp_montymul_fu_442", "Parent" : "26", "Child" : ["30", "31", "32"],
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
	{"ID" : "30", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_zint_rebuild_CRT_1_fu_780.grp_modp_montymul_fu_442.mul_32ns_32ns_63_1_1_U169", "Parent" : "29"},
	{"ID" : "31", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_zint_rebuild_CRT_1_fu_780.grp_modp_montymul_fu_442.mul_31s_31s_31_1_1_U170", "Parent" : "29"},
	{"ID" : "32", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_zint_rebuild_CRT_1_fu_780.grp_modp_montymul_fu_442.mul_31ns_32ns_62_1_1_U171", "Parent" : "29"},
	{"ID" : "33", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_zint_rebuild_CRT_1_fu_780.grp_modp_montymul_fu_450", "Parent" : "26", "Child" : ["34", "35", "36"],
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
	{"ID" : "34", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_zint_rebuild_CRT_1_fu_780.grp_modp_montymul_fu_450.mul_32ns_32ns_63_1_1_U169", "Parent" : "33"},
	{"ID" : "35", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_zint_rebuild_CRT_1_fu_780.grp_modp_montymul_fu_450.mul_31s_31s_31_1_1_U170", "Parent" : "33"},
	{"ID" : "36", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_zint_rebuild_CRT_1_fu_780.grp_modp_montymul_fu_450.mul_31ns_32ns_62_1_1_U171", "Parent" : "33"},
	{"ID" : "37", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_zint_rebuild_CRT_1_fu_780.mul_25s_24ns_31_1_1_U248", "Parent" : "26"},
	{"ID" : "38", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_zint_rebuild_CRT_1_fu_780.mul_31s_24ns_31_1_1_U249", "Parent" : "26"},
	{"ID" : "39", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_zint_rebuild_CRT_1_fu_780.mul_25s_31s_31_1_1_U250", "Parent" : "26"},
	{"ID" : "40", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_zint_rebuild_CRT_1_fu_780.mul_31s_31s_31_1_1_U251", "Parent" : "26"},
	{"ID" : "41", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_zint_rebuild_CRT_1_fu_780.mul_25s_31s_31_1_1_U252", "Parent" : "26"},
	{"ID" : "42", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_zint_rebuild_CRT_1_fu_780.mul_31s_31s_31_1_1_U253", "Parent" : "26"},
	{"ID" : "43", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_zint_rebuild_CRT_1_fu_780.mul_25s_31s_31_1_1_U254", "Parent" : "26"},
	{"ID" : "44", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_zint_rebuild_CRT_1_fu_780.mul_31s_31s_31_1_1_U255", "Parent" : "26"},
	{"ID" : "45", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_zint_rebuild_CRT_1_fu_780.mul_32ns_32ns_63_1_1_U256", "Parent" : "26"},
	{"ID" : "46", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_zint_rebuild_CRT_1_fu_780.mul_32ns_31ns_63_1_1_U257", "Parent" : "26"},
	{"ID" : "47", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_modp_mkgm2_1_fu_826", "Parent" : "22", "Child" : ["48", "49", "53"],
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
	{"ID" : "48", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_modp_mkgm2_1_fu_826.REV10_U", "Parent" : "47"},
	{"ID" : "49", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_modp_mkgm2_1_fu_826.grp_modp_montymul_fu_184", "Parent" : "47", "Child" : ["50", "51", "52"],
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
	{"ID" : "50", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_modp_mkgm2_1_fu_826.grp_modp_montymul_fu_184.mul_32ns_32ns_63_1_1_U169", "Parent" : "49"},
	{"ID" : "51", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_modp_mkgm2_1_fu_826.grp_modp_montymul_fu_184.mul_31s_31s_31_1_1_U170", "Parent" : "49"},
	{"ID" : "52", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_modp_mkgm2_1_fu_826.grp_modp_montymul_fu_184.mul_31ns_32ns_62_1_1_U171", "Parent" : "49"},
	{"ID" : "53", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_modp_mkgm2_1_fu_826.grp_modp_montymul_fu_192", "Parent" : "47", "Child" : ["54", "55", "56"],
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
	{"ID" : "54", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_modp_mkgm2_1_fu_826.grp_modp_montymul_fu_192.mul_32ns_32ns_63_1_1_U169", "Parent" : "53"},
	{"ID" : "55", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_modp_mkgm2_1_fu_826.grp_modp_montymul_fu_192.mul_31s_31s_31_1_1_U170", "Parent" : "53"},
	{"ID" : "56", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_modp_mkgm2_1_fu_826.grp_modp_montymul_fu_192.mul_31ns_32ns_62_1_1_U171", "Parent" : "53"},
	{"ID" : "57", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_modp_NTT2_ext_1_fu_841", "Parent" : "22", "Child" : ["58", "62", "63"],
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
	{"ID" : "58", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_modp_NTT2_ext_1_fu_841.y_modp_montymul_fu_200", "Parent" : "57", "Child" : ["59", "60", "61"],
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
	{"ID" : "59", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_modp_NTT2_ext_1_fu_841.y_modp_montymul_fu_200.mul_32ns_32ns_63_1_1_U169", "Parent" : "58"},
	{"ID" : "60", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_modp_NTT2_ext_1_fu_841.y_modp_montymul_fu_200.mul_31s_31s_31_1_1_U170", "Parent" : "58"},
	{"ID" : "61", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_modp_NTT2_ext_1_fu_841.y_modp_montymul_fu_200.mul_31ns_32ns_62_1_1_U171", "Parent" : "58"},
	{"ID" : "62", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_modp_NTT2_ext_1_fu_841.mul_mul_13s_8ns_13_4_1_U187", "Parent" : "57"},
	{"ID" : "63", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_modp_NTT2_ext_1_fu_841.mul_mul_13s_8ns_13_4_1_U188", "Parent" : "57"},
	{"ID" : "64", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_modp_iNTT2_ext_1_fu_854", "Parent" : "22", "Child" : ["65", "66", "67", "68", "69", "70", "71", "72"],
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
	{"ID" : "65", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_modp_iNTT2_ext_1_fu_854.mul_32ns_32ns_63_1_1_U197", "Parent" : "64"},
	{"ID" : "66", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_modp_iNTT2_ext_1_fu_854.mul_31s_31s_31_1_1_U198", "Parent" : "64"},
	{"ID" : "67", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_modp_iNTT2_ext_1_fu_854.mul_31ns_31ns_62_1_1_U199", "Parent" : "64"},
	{"ID" : "68", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_modp_iNTT2_ext_1_fu_854.mul_32ns_32ns_63_1_1_U200", "Parent" : "64"},
	{"ID" : "69", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_modp_iNTT2_ext_1_fu_854.mul_31s_31s_31_1_1_U201", "Parent" : "64"},
	{"ID" : "70", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_modp_iNTT2_ext_1_fu_854.mul_31ns_31ns_62_1_1_U202", "Parent" : "64"},
	{"ID" : "71", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_modp_iNTT2_ext_1_fu_854.mul_mul_13s_9ns_13_4_1_U203", "Parent" : "64"},
	{"ID" : "72", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.grp_modp_iNTT2_ext_1_fu_854.mul_mul_13s_9ns_13_4_1_U204", "Parent" : "64"},
	{"ID" : "73", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.mul_8ns_61s_61_1_1_U289", "Parent" : "22"},
	{"ID" : "74", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.mul_25s_24ns_31_1_1_U290", "Parent" : "22"},
	{"ID" : "75", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.mul_31s_24ns_31_1_1_U291", "Parent" : "22"},
	{"ID" : "76", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.mul_25s_31s_31_1_1_U292", "Parent" : "22"},
	{"ID" : "77", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.mul_31s_31s_31_1_1_U293", "Parent" : "22"},
	{"ID" : "78", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.mul_25s_31s_31_1_1_U294", "Parent" : "22"},
	{"ID" : "79", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.mul_31s_31s_31_1_1_U295", "Parent" : "22"},
	{"ID" : "80", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.mul_25s_31s_31_1_1_U296", "Parent" : "22"},
	{"ID" : "81", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.mul_31s_31s_31_1_1_U297", "Parent" : "22"},
	{"ID" : "82", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.mul_25s_24ns_31_1_1_U298", "Parent" : "22"},
	{"ID" : "83", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.mul_31s_24ns_31_1_1_U299", "Parent" : "22"},
	{"ID" : "84", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.mul_25s_31s_31_1_1_U300", "Parent" : "22"},
	{"ID" : "85", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.mul_31s_31s_31_1_1_U301", "Parent" : "22"},
	{"ID" : "86", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.mul_25s_31s_31_1_1_U302", "Parent" : "22"},
	{"ID" : "87", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.mul_31s_31s_31_1_1_U303", "Parent" : "22"},
	{"ID" : "88", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.mul_25s_31s_31_1_1_U304", "Parent" : "22"},
	{"ID" : "89", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_make_fg_step_1_fu_234.mul_31s_31s_31_1_1_U305", "Parent" : "22"},
	{"ID" : "90", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_modp_montymul_fu_255", "Parent" : "20", "Child" : ["91", "92", "93"],
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
	{"ID" : "91", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_modp_montymul_fu_255.mul_32ns_32ns_63_1_1_U169", "Parent" : "90"},
	{"ID" : "92", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_modp_montymul_fu_255.mul_31s_31s_31_1_1_U170", "Parent" : "90"},
	{"ID" : "93", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_modp_montymul_fu_255.mul_31ns_32ns_62_1_1_U171", "Parent" : "90"},
	{"ID" : "94", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_modp_montymul_fu_265", "Parent" : "20", "Child" : ["95", "96", "97"],
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
	{"ID" : "95", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_modp_montymul_fu_265.mul_32ns_32ns_63_1_1_U169", "Parent" : "94"},
	{"ID" : "96", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_modp_montymul_fu_265.mul_31s_31s_31_1_1_U170", "Parent" : "94"},
	{"ID" : "97", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_modp_montymul_fu_265.mul_31ns_32ns_62_1_1_U171", "Parent" : "94"},
	{"ID" : "98", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_modp_NTT2_ext_1_fu_281", "Parent" : "20", "Child" : ["99", "103", "104"],
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
	{"ID" : "99", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_modp_NTT2_ext_1_fu_281.y_modp_montymul_fu_200", "Parent" : "98", "Child" : ["100", "101", "102"],
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
	{"ID" : "100", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_modp_NTT2_ext_1_fu_281.y_modp_montymul_fu_200.mul_32ns_32ns_63_1_1_U169", "Parent" : "99"},
	{"ID" : "101", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_modp_NTT2_ext_1_fu_281.y_modp_montymul_fu_200.mul_31s_31s_31_1_1_U170", "Parent" : "99"},
	{"ID" : "102", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_modp_NTT2_ext_1_fu_281.y_modp_montymul_fu_200.mul_31ns_32ns_62_1_1_U171", "Parent" : "99"},
	{"ID" : "103", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_modp_NTT2_ext_1_fu_281.mul_mul_13s_8ns_13_4_1_U187", "Parent" : "98"},
	{"ID" : "104", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_make_fg_1_fu_3330.grp_modp_NTT2_ext_1_fu_281.mul_mul_13s_8ns_13_4_1_U188", "Parent" : "98"},
	{"ID" : "105", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_modp_NTT2_ext_1_fu_3357", "Parent" : "3", "Child" : ["106", "110", "111"],
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
	{"ID" : "106", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_modp_NTT2_ext_1_fu_3357.y_modp_montymul_fu_200", "Parent" : "105", "Child" : ["107", "108", "109"],
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
	{"ID" : "107", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_modp_NTT2_ext_1_fu_3357.y_modp_montymul_fu_200.mul_32ns_32ns_63_1_1_U169", "Parent" : "106"},
	{"ID" : "108", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_modp_NTT2_ext_1_fu_3357.y_modp_montymul_fu_200.mul_31s_31s_31_1_1_U170", "Parent" : "106"},
	{"ID" : "109", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_modp_NTT2_ext_1_fu_3357.y_modp_montymul_fu_200.mul_31ns_32ns_62_1_1_U171", "Parent" : "106"},
	{"ID" : "110", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_modp_NTT2_ext_1_fu_3357.mul_mul_13s_8ns_13_4_1_U187", "Parent" : "105"},
	{"ID" : "111", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_modp_NTT2_ext_1_fu_3357.mul_mul_13s_8ns_13_4_1_U188", "Parent" : "105"},
	{"ID" : "112", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_modp_iNTT2_ext_1_fu_3386", "Parent" : "3", "Child" : ["113", "114", "115", "116", "117", "118", "119", "120"],
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
	{"ID" : "113", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_modp_iNTT2_ext_1_fu_3386.mul_32ns_32ns_63_1_1_U197", "Parent" : "112"},
	{"ID" : "114", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_modp_iNTT2_ext_1_fu_3386.mul_31s_31s_31_1_1_U198", "Parent" : "112"},
	{"ID" : "115", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_modp_iNTT2_ext_1_fu_3386.mul_31ns_31ns_62_1_1_U199", "Parent" : "112"},
	{"ID" : "116", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_modp_iNTT2_ext_1_fu_3386.mul_32ns_32ns_63_1_1_U200", "Parent" : "112"},
	{"ID" : "117", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_modp_iNTT2_ext_1_fu_3386.mul_31s_31s_31_1_1_U201", "Parent" : "112"},
	{"ID" : "118", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_modp_iNTT2_ext_1_fu_3386.mul_31ns_31ns_62_1_1_U202", "Parent" : "112"},
	{"ID" : "119", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_modp_iNTT2_ext_1_fu_3386.mul_mul_13s_9ns_13_4_1_U203", "Parent" : "112"},
	{"ID" : "120", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_modp_iNTT2_ext_1_fu_3386.mul_mul_13s_9ns_13_4_1_U204", "Parent" : "112"},
	{"ID" : "121", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_modp_montymul_fu_3413", "Parent" : "3", "Child" : ["122", "123", "124"],
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
	{"ID" : "122", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_modp_montymul_fu_3413.mul_32ns_32ns_63_1_1_U169", "Parent" : "121"},
	{"ID" : "123", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_modp_montymul_fu_3413.mul_31s_31s_31_1_1_U170", "Parent" : "121"},
	{"ID" : "124", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_modp_montymul_fu_3413.mul_31ns_32ns_62_1_1_U171", "Parent" : "121"},
	{"ID" : "125", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_modp_montymul_fu_3425", "Parent" : "3", "Child" : ["126", "127", "128"],
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
	{"ID" : "126", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_modp_montymul_fu_3425.mul_32ns_32ns_63_1_1_U169", "Parent" : "125"},
	{"ID" : "127", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_modp_montymul_fu_3425.mul_31s_31s_31_1_1_U170", "Parent" : "125"},
	{"ID" : "128", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_modp_montymul_fu_3425.mul_31ns_32ns_62_1_1_U171", "Parent" : "125"},
	{"ID" : "129", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_modp_montymul_fu_3437", "Parent" : "3", "Child" : ["130", "131", "132"],
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
	{"ID" : "130", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_modp_montymul_fu_3437.mul_32ns_32ns_63_1_1_U169", "Parent" : "129"},
	{"ID" : "131", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_modp_montymul_fu_3437.mul_31s_31s_31_1_1_U170", "Parent" : "129"},
	{"ID" : "132", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_modp_montymul_fu_3437.mul_31ns_32ns_62_1_1_U171", "Parent" : "129"},
	{"ID" : "133", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_modp_montymul_fu_3463", "Parent" : "3", "Child" : ["134", "135", "136"],
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
	{"ID" : "134", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_modp_montymul_fu_3463.mul_32ns_32ns_63_1_1_U169", "Parent" : "133"},
	{"ID" : "135", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_modp_montymul_fu_3463.mul_31s_31s_31_1_1_U170", "Parent" : "133"},
	{"ID" : "136", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_modp_montymul_fu_3463.mul_31ns_32ns_62_1_1_U171", "Parent" : "133"},
	{"ID" : "137", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.tmp_47_modp_montymul_fu_3473", "Parent" : "3", "Child" : ["138", "139", "140"],
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
	{"ID" : "138", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.tmp_47_modp_montymul_fu_3473.mul_32ns_32ns_63_1_1_U169", "Parent" : "137"},
	{"ID" : "139", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.tmp_47_modp_montymul_fu_3473.mul_31s_31s_31_1_1_U170", "Parent" : "137"},
	{"ID" : "140", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.tmp_47_modp_montymul_fu_3473.mul_31ns_32ns_62_1_1_U171", "Parent" : "137"},
	{"ID" : "141", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.tmp_48_modp_montymul_fu_3482", "Parent" : "3", "Child" : ["142", "143", "144"],
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
	{"ID" : "142", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.tmp_48_modp_montymul_fu_3482.mul_32ns_32ns_63_1_1_U169", "Parent" : "141"},
	{"ID" : "143", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.tmp_48_modp_montymul_fu_3482.mul_31s_31s_31_1_1_U170", "Parent" : "141"},
	{"ID" : "144", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.tmp_48_modp_montymul_fu_3482.mul_31ns_32ns_62_1_1_U171", "Parent" : "141"},
	{"ID" : "145", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_FFT_1_fu_3500", "Parent" : "3", "Child" : ["146", "147", "148", "149", "150", "151", "152"],
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
	{"ID" : "146", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_FFT_1_fu_3500.fpr_gm_tab_U", "Parent" : "145"},
	{"ID" : "147", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_FFT_1_fu_3500.dadddsub_64ns_64ns_64_2_full_dsp_1_U214", "Parent" : "145"},
	{"ID" : "148", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_FFT_1_fu_3500.dadddsub_64ns_64ns_64_2_full_dsp_1_U215", "Parent" : "145"},
	{"ID" : "149", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_FFT_1_fu_3500.dmul_64ns_64ns_64_2_max_dsp_1_U216", "Parent" : "145"},
	{"ID" : "150", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_FFT_1_fu_3500.dmul_64ns_64ns_64_2_max_dsp_1_U217", "Parent" : "145"},
	{"ID" : "151", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_FFT_1_fu_3500.dmul_64ns_64ns_64_2_max_dsp_1_U218", "Parent" : "145"},
	{"ID" : "152", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_FFT_1_fu_3500.dmul_64ns_64ns_64_2_max_dsp_1_U219", "Parent" : "145"},
	{"ID" : "153", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_fpr_of_fu_3517", "Parent" : "3", "Child" : ["154"],
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
	{"ID" : "154", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_fpr_of_fu_3517.sitodp_64ns_64_2_no_dsp_1_U84", "Parent" : "153"},
	{"ID" : "155", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_iFFT_1_fu_3522", "Parent" : "3", "Child" : ["156", "157", "158", "159", "160", "161", "162", "163"],
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
	{"ID" : "156", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_iFFT_1_fu_3522.fpr_gm_tab_U", "Parent" : "155"},
	{"ID" : "157", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_iFFT_1_fu_3522.fpr_p2_tab_U", "Parent" : "155"},
	{"ID" : "158", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_iFFT_1_fu_3522.dadddsub_64ns_64ns_64_2_full_dsp_1_U223", "Parent" : "155"},
	{"ID" : "159", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_iFFT_1_fu_3522.dadddsub_64ns_64ns_64_2_full_dsp_1_U224", "Parent" : "155"},
	{"ID" : "160", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_iFFT_1_fu_3522.dmul_64ns_64ns_64_2_max_dsp_1_U225", "Parent" : "155"},
	{"ID" : "161", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_iFFT_1_fu_3522.dmul_64ns_64ns_64_2_max_dsp_1_U226", "Parent" : "155"},
	{"ID" : "162", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_iFFT_1_fu_3522.dmul_64ns_64ns_64_2_max_dsp_1_U227", "Parent" : "155"},
	{"ID" : "163", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_iFFT_1_fu_3522.dmul_64ns_64ns_64_2_max_dsp_1_U228", "Parent" : "155"},
	{"ID" : "164", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_fpr_rint_fu_3539", "Parent" : "3", "Child" : ["165", "166", "167"],
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
	{"ID" : "165", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_fpr_rint_fu_3539.dadd_64ns_64ns_64_2_full_dsp_1_U233", "Parent" : "164"},
	{"ID" : "166", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_fpr_rint_fu_3539.dadd_64ns_64ns_64_2_full_dsp_1_U234", "Parent" : "164"},
	{"ID" : "167", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_fpr_rint_fu_3539.dadd_64ns_64ns_64_2_full_dsp_1_U235", "Parent" : "164"},
	{"ID" : "168", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_zint_mod_small_signed_1_fu_3545", "Parent" : "3", "Child" : ["169", "170", "171"],
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
	{"ID" : "169", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_zint_mod_small_signed_1_fu_3545.mul_31ns_32ns_63_1_1_U237", "Parent" : "168"},
	{"ID" : "170", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_zint_mod_small_signed_1_fu_3545.mul_31s_31s_31_1_1_U238", "Parent" : "168"},
	{"ID" : "171", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_zint_mod_small_signed_1_fu_3545.mul_31ns_31ns_62_1_1_U239", "Parent" : "168"},
	{"ID" : "172", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_zint_rebuild_CRT_1_fu_3561", "Parent" : "3", "Child" : ["173", "174", "175", "179", "183", "184", "185", "186", "187", "188", "189", "190", "191", "192"],
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
	{"ID" : "173", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_zint_rebuild_CRT_1_fu_3561.PRIMES_p_U", "Parent" : "172"},
	{"ID" : "174", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_zint_rebuild_CRT_1_fu_3561.PRIMES_s_U", "Parent" : "172"},
	{"ID" : "175", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_zint_rebuild_CRT_1_fu_3561.grp_modp_montymul_fu_442", "Parent" : "172", "Child" : ["176", "177", "178"],
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
	{"ID" : "176", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_zint_rebuild_CRT_1_fu_3561.grp_modp_montymul_fu_442.mul_32ns_32ns_63_1_1_U169", "Parent" : "175"},
	{"ID" : "177", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_zint_rebuild_CRT_1_fu_3561.grp_modp_montymul_fu_442.mul_31s_31s_31_1_1_U170", "Parent" : "175"},
	{"ID" : "178", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_zint_rebuild_CRT_1_fu_3561.grp_modp_montymul_fu_442.mul_31ns_32ns_62_1_1_U171", "Parent" : "175"},
	{"ID" : "179", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_zint_rebuild_CRT_1_fu_3561.grp_modp_montymul_fu_450", "Parent" : "172", "Child" : ["180", "181", "182"],
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
	{"ID" : "180", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_zint_rebuild_CRT_1_fu_3561.grp_modp_montymul_fu_450.mul_32ns_32ns_63_1_1_U169", "Parent" : "179"},
	{"ID" : "181", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_zint_rebuild_CRT_1_fu_3561.grp_modp_montymul_fu_450.mul_31s_31s_31_1_1_U170", "Parent" : "179"},
	{"ID" : "182", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_zint_rebuild_CRT_1_fu_3561.grp_modp_montymul_fu_450.mul_31ns_32ns_62_1_1_U171", "Parent" : "179"},
	{"ID" : "183", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_zint_rebuild_CRT_1_fu_3561.mul_25s_24ns_31_1_1_U248", "Parent" : "172"},
	{"ID" : "184", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_zint_rebuild_CRT_1_fu_3561.mul_31s_24ns_31_1_1_U249", "Parent" : "172"},
	{"ID" : "185", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_zint_rebuild_CRT_1_fu_3561.mul_25s_31s_31_1_1_U250", "Parent" : "172"},
	{"ID" : "186", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_zint_rebuild_CRT_1_fu_3561.mul_31s_31s_31_1_1_U251", "Parent" : "172"},
	{"ID" : "187", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_zint_rebuild_CRT_1_fu_3561.mul_25s_31s_31_1_1_U252", "Parent" : "172"},
	{"ID" : "188", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_zint_rebuild_CRT_1_fu_3561.mul_31s_31s_31_1_1_U253", "Parent" : "172"},
	{"ID" : "189", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_zint_rebuild_CRT_1_fu_3561.mul_25s_31s_31_1_1_U254", "Parent" : "172"},
	{"ID" : "190", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_zint_rebuild_CRT_1_fu_3561.mul_31s_31s_31_1_1_U255", "Parent" : "172"},
	{"ID" : "191", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_zint_rebuild_CRT_1_fu_3561.mul_32ns_32ns_63_1_1_U256", "Parent" : "172"},
	{"ID" : "192", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_zint_rebuild_CRT_1_fu_3561.mul_32ns_31ns_63_1_1_U257", "Parent" : "172"},
	{"ID" : "193", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_poly_big_to_fp_1_fu_3592", "Parent" : "3", "Child" : ["194", "196", "197"],
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
	{"ID" : "194", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_poly_big_to_fp_1_fu_3592.grp_fpr_of_fu_228", "Parent" : "193", "Child" : ["195"],
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
	{"ID" : "195", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_poly_big_to_fp_1_fu_3592.grp_fpr_of_fu_228.sitodp_64ns_64_2_no_dsp_1_U84", "Parent" : "194"},
	{"ID" : "196", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_poly_big_to_fp_1_fu_3592.dadd_64ns_64ns_64_2_full_dsp_1_U271", "Parent" : "193"},
	{"ID" : "197", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_poly_big_to_fp_1_fu_3592.dmul_64ns_64ns_64_2_max_dsp_1_U272", "Parent" : "193"},
	{"ID" : "198", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_poly_mul_fft_1_fu_3613", "Parent" : "3", "Child" : ["199", "200", "201", "202", "203", "204"],
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
	{"ID" : "199", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_poly_mul_fft_1_fu_3613.dsub_64ns_64ns_64_2_full_dsp_1_U279", "Parent" : "198"},
	{"ID" : "200", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_poly_mul_fft_1_fu_3613.dadd_64ns_64ns_64_2_full_dsp_1_U280", "Parent" : "198"},
	{"ID" : "201", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_poly_mul_fft_1_fu_3613.dmul_64ns_64ns_64_2_max_dsp_1_U281", "Parent" : "198"},
	{"ID" : "202", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_poly_mul_fft_1_fu_3613.dmul_64ns_64ns_64_2_max_dsp_1_U282", "Parent" : "198"},
	{"ID" : "203", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_poly_mul_fft_1_fu_3613.dmul_64ns_64ns_64_2_max_dsp_1_U283", "Parent" : "198"},
	{"ID" : "204", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_poly_mul_fft_1_fu_3613.dmul_64ns_64ns_64_2_max_dsp_1_U284", "Parent" : "198"},
	{"ID" : "205", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_zint_bezout_1_fu_3626", "Parent" : "3", "Child" : ["206", "219", "220", "221", "222", "223", "224", "225", "226", "227", "228", "229", "230", "231", "232", "233", "234", "235", "236", "237", "238"],
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
					{"ID" : "206", "SubInstance" : "grp_zint_co_reduce_mod_1_fu_674", "Port" : "vla18", "Inst_start_state" : "28", "Inst_end_state" : "29"}]}],
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
	{"ID" : "206", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_zint_bezout_1_fu_3626.grp_zint_co_reduce_mod_1_fu_674", "Parent" : "205", "Child" : ["207", "208", "209", "210", "211", "212", "213", "214", "215", "216", "217", "218"],
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
	{"ID" : "207", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_zint_bezout_1_fu_3626.grp_zint_co_reduce_mod_1_fu_674.mul_31s_31s_31_1_1_U321", "Parent" : "206"},
	{"ID" : "208", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_zint_bezout_1_fu_3626.grp_zint_co_reduce_mod_1_fu_674.mul_31s_31s_31_1_1_U322", "Parent" : "206"},
	{"ID" : "209", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_zint_bezout_1_fu_3626.grp_zint_co_reduce_mod_1_fu_674.mul_31s_31s_31_1_1_U323", "Parent" : "206"},
	{"ID" : "210", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_zint_bezout_1_fu_3626.grp_zint_co_reduce_mod_1_fu_674.mul_31s_31s_31_1_1_U324", "Parent" : "206"},
	{"ID" : "211", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_zint_bezout_1_fu_3626.grp_zint_co_reduce_mod_1_fu_674.mul_31s_31s_31_1_1_U325", "Parent" : "206"},
	{"ID" : "212", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_zint_bezout_1_fu_3626.grp_zint_co_reduce_mod_1_fu_674.mul_31s_31s_31_1_1_U326", "Parent" : "206"},
	{"ID" : "213", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_zint_bezout_1_fu_3626.grp_zint_co_reduce_mod_1_fu_674.mul_32ns_64s_64_1_1_U327", "Parent" : "206"},
	{"ID" : "214", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_zint_bezout_1_fu_3626.grp_zint_co_reduce_mod_1_fu_674.mul_32ns_64s_64_1_1_U328", "Parent" : "206"},
	{"ID" : "215", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_zint_bezout_1_fu_3626.grp_zint_co_reduce_mod_1_fu_674.mul_32ns_64s_64_1_1_U329", "Parent" : "206"},
	{"ID" : "216", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_zint_bezout_1_fu_3626.grp_zint_co_reduce_mod_1_fu_674.mul_32ns_31ns_63_1_1_U330", "Parent" : "206"},
	{"ID" : "217", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_zint_bezout_1_fu_3626.grp_zint_co_reduce_mod_1_fu_674.mul_32ns_64s_64_1_1_U331", "Parent" : "206"},
	{"ID" : "218", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_zint_bezout_1_fu_3626.grp_zint_co_reduce_mod_1_fu_674.mul_32ns_31ns_63_1_1_U332", "Parent" : "206"},
	{"ID" : "219", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_zint_bezout_1_fu_3626.mul_31s_31s_31_1_1_U343", "Parent" : "205"},
	{"ID" : "220", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_zint_bezout_1_fu_3626.mul_31s_31s_31_1_1_U344", "Parent" : "205"},
	{"ID" : "221", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_zint_bezout_1_fu_3626.mul_31s_31s_31_1_1_U345", "Parent" : "205"},
	{"ID" : "222", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_zint_bezout_1_fu_3626.mul_31s_31s_31_1_1_U346", "Parent" : "205"},
	{"ID" : "223", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_zint_bezout_1_fu_3626.mul_31s_31s_31_1_1_U347", "Parent" : "205"},
	{"ID" : "224", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_zint_bezout_1_fu_3626.mul_31s_31s_31_1_1_U348", "Parent" : "205"},
	{"ID" : "225", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_zint_bezout_1_fu_3626.mul_31s_31s_31_1_1_U349", "Parent" : "205"},
	{"ID" : "226", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_zint_bezout_1_fu_3626.mul_31s_31s_31_1_1_U350", "Parent" : "205"},
	{"ID" : "227", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_zint_bezout_1_fu_3626.mul_31s_31s_31_1_1_U351", "Parent" : "205"},
	{"ID" : "228", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_zint_bezout_1_fu_3626.mul_31s_31s_31_1_1_U352", "Parent" : "205"},
	{"ID" : "229", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_zint_bezout_1_fu_3626.mul_31s_31s_31_1_1_U353", "Parent" : "205"},
	{"ID" : "230", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_zint_bezout_1_fu_3626.mul_31s_31s_31_1_1_U354", "Parent" : "205"},
	{"ID" : "231", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_zint_bezout_1_fu_3626.mul_31s_31s_31_1_1_U355", "Parent" : "205"},
	{"ID" : "232", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_zint_bezout_1_fu_3626.mul_31s_31s_31_1_1_U356", "Parent" : "205"},
	{"ID" : "233", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_zint_bezout_1_fu_3626.mul_31s_31s_31_1_1_U357", "Parent" : "205"},
	{"ID" : "234", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_zint_bezout_1_fu_3626.mul_31s_31s_31_1_1_U358", "Parent" : "205"},
	{"ID" : "235", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_zint_bezout_1_fu_3626.mul_64s_32ns_64_1_1_U359", "Parent" : "205"},
	{"ID" : "236", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_zint_bezout_1_fu_3626.mul_64s_32ns_64_1_1_U360", "Parent" : "205"},
	{"ID" : "237", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_zint_bezout_1_fu_3626.mul_64s_32ns_64_1_1_U361", "Parent" : "205"},
	{"ID" : "238", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_zint_bezout_1_fu_3626.mul_64s_32ns_64_1_1_U362", "Parent" : "205"},
	{"ID" : "239", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_poly_sub_scaled_1_fu_3632", "Parent" : "3", "Child" : ["240"],
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
	{"ID" : "240", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_poly_sub_scaled_1_fu_3632.mul_31ns_32s_63_1_1_U365", "Parent" : "239"},
	{"ID" : "241", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_poly_sub_scaled_ntt_1_fu_3649", "Parent" : "3", "Child" : ["242", "243", "247", "268", "275", "276", "277", "278", "279", "280", "281", "282", "283", "284"],
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
					{"ID" : "268", "SubInstance" : "grp_modp_NTT2_ext_1_fu_1171", "Port" : "vla18", "Inst_start_state" : "22", "Inst_end_state" : "26"},
					{"ID" : "247", "SubInstance" : "grp_zint_rebuild_CRT_1_fu_1154", "Port" : "vla18", "Inst_start_state" : "2", "Inst_end_state" : "40"}]},
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
					{"ID" : "247", "SubInstance" : "grp_zint_rebuild_CRT_1_fu_1154", "Port" : "PRIMES_p", "Inst_start_state" : "2", "Inst_end_state" : "40"}]},
			{"Name" : "PRIMES_g", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "REV10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "PRIMES_s", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "247", "SubInstance" : "grp_zint_rebuild_CRT_1_fu_1154", "Port" : "PRIMES_s", "Inst_start_state" : "2", "Inst_end_state" : "40"}]}],
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
	{"ID" : "242", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_poly_sub_scaled_ntt_1_fu_3649.REV10_U", "Parent" : "241"},
	{"ID" : "243", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_poly_sub_scaled_ntt_1_fu_3649.grp_modp_montymul_fu_800", "Parent" : "241", "Child" : ["244", "245", "246"],
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
	{"ID" : "244", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_poly_sub_scaled_ntt_1_fu_3649.grp_modp_montymul_fu_800.mul_32ns_32ns_63_1_1_U169", "Parent" : "243"},
	{"ID" : "245", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_poly_sub_scaled_ntt_1_fu_3649.grp_modp_montymul_fu_800.mul_31s_31s_31_1_1_U170", "Parent" : "243"},
	{"ID" : "246", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_poly_sub_scaled_ntt_1_fu_3649.grp_modp_montymul_fu_800.mul_31ns_32ns_62_1_1_U171", "Parent" : "243"},
	{"ID" : "247", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_poly_sub_scaled_ntt_1_fu_3649.grp_zint_rebuild_CRT_1_fu_1154", "Parent" : "241", "Child" : ["248", "249", "250", "254", "258", "259", "260", "261", "262", "263", "264", "265", "266", "267"],
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
	{"ID" : "248", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_poly_sub_scaled_ntt_1_fu_3649.grp_zint_rebuild_CRT_1_fu_1154.PRIMES_p_U", "Parent" : "247"},
	{"ID" : "249", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_poly_sub_scaled_ntt_1_fu_3649.grp_zint_rebuild_CRT_1_fu_1154.PRIMES_s_U", "Parent" : "247"},
	{"ID" : "250", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_poly_sub_scaled_ntt_1_fu_3649.grp_zint_rebuild_CRT_1_fu_1154.grp_modp_montymul_fu_442", "Parent" : "247", "Child" : ["251", "252", "253"],
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
	{"ID" : "251", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_poly_sub_scaled_ntt_1_fu_3649.grp_zint_rebuild_CRT_1_fu_1154.grp_modp_montymul_fu_442.mul_32ns_32ns_63_1_1_U169", "Parent" : "250"},
	{"ID" : "252", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_poly_sub_scaled_ntt_1_fu_3649.grp_zint_rebuild_CRT_1_fu_1154.grp_modp_montymul_fu_442.mul_31s_31s_31_1_1_U170", "Parent" : "250"},
	{"ID" : "253", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_poly_sub_scaled_ntt_1_fu_3649.grp_zint_rebuild_CRT_1_fu_1154.grp_modp_montymul_fu_442.mul_31ns_32ns_62_1_1_U171", "Parent" : "250"},
	{"ID" : "254", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_poly_sub_scaled_ntt_1_fu_3649.grp_zint_rebuild_CRT_1_fu_1154.grp_modp_montymul_fu_450", "Parent" : "247", "Child" : ["255", "256", "257"],
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
	{"ID" : "255", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_poly_sub_scaled_ntt_1_fu_3649.grp_zint_rebuild_CRT_1_fu_1154.grp_modp_montymul_fu_450.mul_32ns_32ns_63_1_1_U169", "Parent" : "254"},
	{"ID" : "256", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_poly_sub_scaled_ntt_1_fu_3649.grp_zint_rebuild_CRT_1_fu_1154.grp_modp_montymul_fu_450.mul_31s_31s_31_1_1_U170", "Parent" : "254"},
	{"ID" : "257", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_poly_sub_scaled_ntt_1_fu_3649.grp_zint_rebuild_CRT_1_fu_1154.grp_modp_montymul_fu_450.mul_31ns_32ns_62_1_1_U171", "Parent" : "254"},
	{"ID" : "258", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_poly_sub_scaled_ntt_1_fu_3649.grp_zint_rebuild_CRT_1_fu_1154.mul_25s_24ns_31_1_1_U248", "Parent" : "247"},
	{"ID" : "259", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_poly_sub_scaled_ntt_1_fu_3649.grp_zint_rebuild_CRT_1_fu_1154.mul_31s_24ns_31_1_1_U249", "Parent" : "247"},
	{"ID" : "260", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_poly_sub_scaled_ntt_1_fu_3649.grp_zint_rebuild_CRT_1_fu_1154.mul_25s_31s_31_1_1_U250", "Parent" : "247"},
	{"ID" : "261", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_poly_sub_scaled_ntt_1_fu_3649.grp_zint_rebuild_CRT_1_fu_1154.mul_31s_31s_31_1_1_U251", "Parent" : "247"},
	{"ID" : "262", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_poly_sub_scaled_ntt_1_fu_3649.grp_zint_rebuild_CRT_1_fu_1154.mul_25s_31s_31_1_1_U252", "Parent" : "247"},
	{"ID" : "263", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_poly_sub_scaled_ntt_1_fu_3649.grp_zint_rebuild_CRT_1_fu_1154.mul_31s_31s_31_1_1_U253", "Parent" : "247"},
	{"ID" : "264", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_poly_sub_scaled_ntt_1_fu_3649.grp_zint_rebuild_CRT_1_fu_1154.mul_25s_31s_31_1_1_U254", "Parent" : "247"},
	{"ID" : "265", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_poly_sub_scaled_ntt_1_fu_3649.grp_zint_rebuild_CRT_1_fu_1154.mul_31s_31s_31_1_1_U255", "Parent" : "247"},
	{"ID" : "266", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_poly_sub_scaled_ntt_1_fu_3649.grp_zint_rebuild_CRT_1_fu_1154.mul_32ns_32ns_63_1_1_U256", "Parent" : "247"},
	{"ID" : "267", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_poly_sub_scaled_ntt_1_fu_3649.grp_zint_rebuild_CRT_1_fu_1154.mul_32ns_31ns_63_1_1_U257", "Parent" : "247"},
	{"ID" : "268", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_poly_sub_scaled_ntt_1_fu_3649.grp_modp_NTT2_ext_1_fu_1171", "Parent" : "241", "Child" : ["269", "273", "274"],
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
	{"ID" : "269", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_poly_sub_scaled_ntt_1_fu_3649.grp_modp_NTT2_ext_1_fu_1171.y_modp_montymul_fu_200", "Parent" : "268", "Child" : ["270", "271", "272"],
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
	{"ID" : "270", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_poly_sub_scaled_ntt_1_fu_3649.grp_modp_NTT2_ext_1_fu_1171.y_modp_montymul_fu_200.mul_32ns_32ns_63_1_1_U169", "Parent" : "269"},
	{"ID" : "271", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_poly_sub_scaled_ntt_1_fu_3649.grp_modp_NTT2_ext_1_fu_1171.y_modp_montymul_fu_200.mul_31s_31s_31_1_1_U170", "Parent" : "269"},
	{"ID" : "272", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_poly_sub_scaled_ntt_1_fu_3649.grp_modp_NTT2_ext_1_fu_1171.y_modp_montymul_fu_200.mul_31ns_32ns_62_1_1_U171", "Parent" : "269"},
	{"ID" : "273", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_poly_sub_scaled_ntt_1_fu_3649.grp_modp_NTT2_ext_1_fu_1171.mul_mul_13s_8ns_13_4_1_U187", "Parent" : "268"},
	{"ID" : "274", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_poly_sub_scaled_ntt_1_fu_3649.grp_modp_NTT2_ext_1_fu_1171.mul_mul_13s_8ns_13_4_1_U188", "Parent" : "268"},
	{"ID" : "275", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_poly_sub_scaled_ntt_1_fu_3649.mul_25s_24ns_31_1_1_U378", "Parent" : "241"},
	{"ID" : "276", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_poly_sub_scaled_ntt_1_fu_3649.mul_31s_24ns_31_1_1_U379", "Parent" : "241"},
	{"ID" : "277", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_poly_sub_scaled_ntt_1_fu_3649.mul_25s_31s_31_1_1_U380", "Parent" : "241"},
	{"ID" : "278", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_poly_sub_scaled_ntt_1_fu_3649.mul_31s_31s_31_1_1_U381", "Parent" : "241"},
	{"ID" : "279", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_poly_sub_scaled_ntt_1_fu_3649.mul_25s_31s_31_1_1_U382", "Parent" : "241"},
	{"ID" : "280", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_poly_sub_scaled_ntt_1_fu_3649.mul_31s_31s_31_1_1_U383", "Parent" : "241"},
	{"ID" : "281", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_poly_sub_scaled_ntt_1_fu_3649.mul_25s_31s_31_1_1_U384", "Parent" : "241"},
	{"ID" : "282", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_poly_sub_scaled_ntt_1_fu_3649.mul_31s_31s_31_1_1_U385", "Parent" : "241"},
	{"ID" : "283", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_poly_sub_scaled_ntt_1_fu_3649.mac_muladd_13s_8ns_12ns_13_4_1_U386", "Parent" : "241"},
	{"ID" : "284", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.grp_poly_sub_scaled_ntt_1_fu_3649.ama_addmuladd_13s_13ns_8ns_12ns_13_4_1_U387", "Parent" : "241"},
	{"ID" : "285", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.dadddsub_64ns_64ns_64_2_full_dsp_1_U404", "Parent" : "3"},
	{"ID" : "286", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.dadd_64ns_64ns_64_2_full_dsp_1_U405", "Parent" : "3"},
	{"ID" : "287", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.dmul_64ns_64ns_64_2_max_dsp_1_U406", "Parent" : "3"},
	{"ID" : "288", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.dmul_64ns_64ns_64_2_max_dsp_1_U407", "Parent" : "3"},
	{"ID" : "289", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.dmul_64ns_64ns_64_2_max_dsp_1_U408", "Parent" : "3"},
	{"ID" : "290", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.dmul_64ns_64ns_64_2_max_dsp_1_U409", "Parent" : "3"},
	{"ID" : "291", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.ddiv_64ns_64ns_64_6_no_dsp_1_U410", "Parent" : "3"},
	{"ID" : "292", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.dcmp_64ns_64ns_1_1_no_dsp_1_U411", "Parent" : "3"},
	{"ID" : "293", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.dcmp_64ns_64ns_1_1_no_dsp_1_U412", "Parent" : "3"},
	{"ID" : "294", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.mul_25s_24ns_31_1_1_U413", "Parent" : "3"},
	{"ID" : "295", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.mul_31s_24ns_31_1_1_U414", "Parent" : "3"},
	{"ID" : "296", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.mul_25s_31s_31_1_1_U415", "Parent" : "3"},
	{"ID" : "297", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.mul_31s_31s_31_1_1_U416", "Parent" : "3"},
	{"ID" : "298", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.mul_25s_31s_31_1_1_U417", "Parent" : "3"},
	{"ID" : "299", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.mul_31s_31s_31_1_1_U418", "Parent" : "3"},
	{"ID" : "300", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.mul_25s_31s_31_1_1_U419", "Parent" : "3"},
	{"ID" : "301", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.mul_31s_31s_31_1_1_U420", "Parent" : "3"},
	{"ID" : "302", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.mul_25s_24ns_31_1_1_U421", "Parent" : "3"},
	{"ID" : "303", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.mul_31s_24ns_31_1_1_U422", "Parent" : "3"},
	{"ID" : "304", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.mul_25s_31s_31_1_1_U423", "Parent" : "3"},
	{"ID" : "305", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.mul_31s_31s_31_1_1_U424", "Parent" : "3"},
	{"ID" : "306", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.mul_25s_31s_31_1_1_U425", "Parent" : "3"},
	{"ID" : "307", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.mul_31s_31s_31_1_1_U426", "Parent" : "3"},
	{"ID" : "308", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.mul_25s_31s_31_1_1_U427", "Parent" : "3"},
	{"ID" : "309", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.mul_31s_31s_31_1_1_U428", "Parent" : "3"},
	{"ID" : "310", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.mul_32ns_15ns_46_1_1_U429", "Parent" : "3"},
	{"ID" : "311", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.mul_32ns_15ns_46_1_1_U430", "Parent" : "3"},
	{"ID" : "312", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.mul_8ns_61s_61_1_1_U431", "Parent" : "3"},
	{"ID" : "313", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.mul_8ns_64s_64_1_1_U432", "Parent" : "3"},
	{"ID" : "314", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.mul_25s_24ns_31_1_1_U433", "Parent" : "3"},
	{"ID" : "315", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.mul_31s_24ns_31_1_1_U434", "Parent" : "3"},
	{"ID" : "316", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.mul_25s_31s_31_1_1_U435", "Parent" : "3"},
	{"ID" : "317", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.mul_31s_31s_31_1_1_U436", "Parent" : "3"},
	{"ID" : "318", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.mul_25s_31s_31_1_1_U437", "Parent" : "3"},
	{"ID" : "319", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.mul_31s_31s_31_1_1_U438", "Parent" : "3"},
	{"ID" : "320", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.mul_25s_31s_31_1_1_U439", "Parent" : "3"},
	{"ID" : "321", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.mul_31s_31s_31_1_1_U440", "Parent" : "3"},
	{"ID" : "322", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.mul_25s_24ns_31_1_1_U441", "Parent" : "3"},
	{"ID" : "323", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.mul_31s_24ns_31_1_1_U442", "Parent" : "3"},
	{"ID" : "324", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.mul_25s_31s_31_1_1_U443", "Parent" : "3"},
	{"ID" : "325", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.mul_31s_31s_31_1_1_U444", "Parent" : "3"},
	{"ID" : "326", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.mul_25s_31s_31_1_1_U445", "Parent" : "3"},
	{"ID" : "327", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.mul_31s_31s_31_1_1_U446", "Parent" : "3"},
	{"ID" : "328", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.mul_25s_31s_31_1_1_U447", "Parent" : "3"},
	{"ID" : "329", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.mul_31s_31s_31_1_1_U448", "Parent" : "3"},
	{"ID" : "330", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.mul_32s_34ns_65_1_1_U449", "Parent" : "3"},
	{"ID" : "331", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_solve_NTRU_all_1_fu_478.srem_32s_6ns_6_36_seq_1_U450", "Parent" : "3"},
	{"ID" : "332", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_modp_montymul_fu_514", "Parent" : "0", "Child" : ["333", "334", "335"],
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
	{"ID" : "333", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_modp_montymul_fu_514.mul_32ns_32ns_63_1_1_U169", "Parent" : "332"},
	{"ID" : "334", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_modp_montymul_fu_514.mul_31s_31s_31_1_1_U170", "Parent" : "332"},
	{"ID" : "335", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_modp_montymul_fu_514.mul_31ns_32ns_62_1_1_U171", "Parent" : "332"},
	{"ID" : "336", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_modp_montymul_fu_524", "Parent" : "0", "Child" : ["337", "338", "339"],
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
	{"ID" : "337", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_modp_montymul_fu_524.mul_32ns_32ns_63_1_1_U169", "Parent" : "336"},
	{"ID" : "338", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_modp_montymul_fu_524.mul_31s_31s_31_1_1_U170", "Parent" : "336"},
	{"ID" : "339", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_modp_montymul_fu_524.mul_31ns_32ns_62_1_1_U171", "Parent" : "336"},
	{"ID" : "340", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_modp_NTT2_ext_1_fu_542", "Parent" : "0", "Child" : ["341", "345", "346"],
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
	{"ID" : "341", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_modp_NTT2_ext_1_fu_542.y_modp_montymul_fu_200", "Parent" : "340", "Child" : ["342", "343", "344"],
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
	{"ID" : "342", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_modp_NTT2_ext_1_fu_542.y_modp_montymul_fu_200.mul_32ns_32ns_63_1_1_U169", "Parent" : "341"},
	{"ID" : "343", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_modp_NTT2_ext_1_fu_542.y_modp_montymul_fu_200.mul_31s_31s_31_1_1_U170", "Parent" : "341"},
	{"ID" : "344", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_modp_NTT2_ext_1_fu_542.y_modp_montymul_fu_200.mul_31ns_32ns_62_1_1_U171", "Parent" : "341"},
	{"ID" : "345", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_modp_NTT2_ext_1_fu_542.mul_mul_13s_8ns_13_4_1_U187", "Parent" : "340"},
	{"ID" : "346", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_modp_NTT2_ext_1_fu_542.mul_mul_13s_8ns_13_4_1_U188", "Parent" : "340"}]}


set ArgLastReadFirstWriteLatency {
	solve_NTRU {
		F_upper {Type IO LastRead 13 FirstWrite 9}
		G_upper {Type IO LastRead 12 FirstWrite 10}
		f {Type I LastRead 50 FirstWrite -1}
		g {Type I LastRead 50 FirstWrite -1}
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
		p0i {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	F_upper { ap_memory {  { F_upper_address0 mem_address 1 10 }  { F_upper_ce0 mem_ce 1 1 }  { F_upper_we0 mem_we 1 1 }  { F_upper_d0 mem_din 1 8 }  { F_upper_q0 in_data 0 8 } } }
	G_upper { ap_memory {  { G_upper_address0 mem_address 1 10 }  { G_upper_ce0 mem_ce 1 1 }  { G_upper_we0 mem_we 1 1 }  { G_upper_d0 mem_din 1 8 }  { G_upper_q0 in_data 0 8 } } }
	f { ap_memory {  { f_address0 mem_address 1 10 }  { f_ce0 mem_ce 1 1 }  { f_q0 in_data 0 8 } } }
	g { ap_memory {  { g_address0 mem_address 1 10 }  { g_ce0 mem_ce 1 1 }  { g_q0 in_data 0 8 } } }
	p_read { ap_none {  { p_read in_data 0 32 } } }
}
