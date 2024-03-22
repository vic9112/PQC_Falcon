# This script segment is generated automatically by AutoPilot

# Memory (RAM/ROM)  definition:
set ID 1
set hasByteEnable 0
set MemName keygen_process_block_111_112_RC_ROM_AUTO_1R
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 64
set AddrRange 24
set AddrWd 5
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "0000000000000000000000000000000000000000000000000000000000000001" "0000000000000000000000000000000000000000000000001000000010000010" "1000000000000000000000000000000000000000000000001000000010001010" "1000000000000000000000000000000010000000000000001000000000000000" "0000000000000000000000000000000000000000000000001000000010001011" "0000000000000000000000000000000010000000000000000000000000000001" "1000000000000000000000000000000010000000000000001000000010000001" "1000000000000000000000000000000000000000000000001000000000001001" "0000000000000000000000000000000000000000000000000000000010001010" "0000000000000000000000000000000000000000000000000000000010001000" "0000000000000000000000000000000010000000000000001000000000001001" "0000000000000000000000000000000010000000000000000000000000001010" "0000000000000000000000000000000010000000000000001000000010001011" "1000000000000000000000000000000000000000000000000000000010001011" "1000000000000000000000000000000000000000000000001000000010001001" "1000000000000000000000000000000000000000000000001000000000000011" "1000000000000000000000000000000000000000000000001000000000000010" "1000000000000000000000000000000000000000000000000000000010000000" "0000000000000000000000000000000000000000000000001000000000001010" "1000000000000000000000000000000010000000000000000000000000001010" "1000000000000000000000000000000010000000000000001000000010000001" "1000000000000000000000000000000000000000000000001000000010000000" "0000000000000000000000000000000010000000000000000000000000000001" "1000000000000000000000000000000010000000000000001000000000001000" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set DelayBudget 3.254
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem  \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $MemName BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


set CoreName ROM
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem  \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2 \
    name state_0_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_state_0_read \
    op interface \
    ports { state_0_read { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3 \
    name state_1_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_state_1_read \
    op interface \
    ports { state_1_read { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4 \
    name state_2_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_state_2_read \
    op interface \
    ports { state_2_read { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5 \
    name state_3_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_state_3_read \
    op interface \
    ports { state_3_read { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6 \
    name state_4_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_state_4_read \
    op interface \
    ports { state_4_read { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7 \
    name state_5_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_state_5_read \
    op interface \
    ports { state_5_read { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8 \
    name state_6_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_state_6_read \
    op interface \
    ports { state_6_read { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9 \
    name state_7_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_state_7_read \
    op interface \
    ports { state_7_read { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10 \
    name state_8_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_state_8_read \
    op interface \
    ports { state_8_read { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 11 \
    name state_9_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_state_9_read \
    op interface \
    ports { state_9_read { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12 \
    name state_10_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_state_10_read \
    op interface \
    ports { state_10_read { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13 \
    name state_11_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_state_11_read \
    op interface \
    ports { state_11_read { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14 \
    name state_1213_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_state_1213_read \
    op interface \
    ports { state_1213_read { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 15 \
    name state_13_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_state_13_read \
    op interface \
    ports { state_13_read { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 16 \
    name state_14_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_state_14_read \
    op interface \
    ports { state_14_read { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 17 \
    name state_15_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_state_15_read \
    op interface \
    ports { state_15_read { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18 \
    name state_16_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_state_16_read \
    op interface \
    ports { state_16_read { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19 \
    name state_17_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_state_17_read \
    op interface \
    ports { state_17_read { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20 \
    name state_18_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_state_18_read \
    op interface \
    ports { state_18_read { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 21 \
    name state_19_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_state_19_read \
    op interface \
    ports { state_19_read { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 22 \
    name state_20_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_state_20_read \
    op interface \
    ports { state_20_read { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 23 \
    name state_21_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_state_21_read \
    op interface \
    ports { state_21_read { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 24 \
    name state_22_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_state_22_read \
    op interface \
    ports { state_22_read { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 25 \
    name state_2325_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_state_2325_read \
    op interface \
    ports { state_2325_read { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 26 \
    name state_24_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_state_24_read \
    op interface \
    ports { state_24_read { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -2 \
    name ap_return \
    type ap_return \
    reset_level 1 \
    sync_rst true \
    corename ap_return \
    op interface \
    ports { ap_return { O 1 vector } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -4 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


