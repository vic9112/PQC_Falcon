-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Version: 2022.1
-- Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity NTT is
generic (
    C_S_AXI_CONTROL_ADDR_WIDTH : INTEGER := 5;
    C_S_AXI_CONTROL_DATA_WIDTH : INTEGER := 32;
    C_M_AXI_GMEM_ADDR_WIDTH : INTEGER := 64;
    C_M_AXI_GMEM_ID_WIDTH : INTEGER := 1;
    C_M_AXI_GMEM_AWUSER_WIDTH : INTEGER := 1;
    C_M_AXI_GMEM_DATA_WIDTH : INTEGER := 32;
    C_M_AXI_GMEM_WUSER_WIDTH : INTEGER := 1;
    C_M_AXI_GMEM_ARUSER_WIDTH : INTEGER := 1;
    C_M_AXI_GMEM_RUSER_WIDTH : INTEGER := 1;
    C_M_AXI_GMEM_BUSER_WIDTH : INTEGER := 1;
    C_M_AXI_GMEM_USER_VALUE : INTEGER := 0;
    C_M_AXI_GMEM_PROT_VALUE : INTEGER := 0;
    C_M_AXI_GMEM_CACHE_VALUE : INTEGER := 3 );
port (
    s_axi_control_AWVALID : IN STD_LOGIC;
    s_axi_control_AWREADY : OUT STD_LOGIC;
    s_axi_control_AWADDR : IN STD_LOGIC_VECTOR (C_S_AXI_CONTROL_ADDR_WIDTH-1 downto 0);
    s_axi_control_WVALID : IN STD_LOGIC;
    s_axi_control_WREADY : OUT STD_LOGIC;
    s_axi_control_WDATA : IN STD_LOGIC_VECTOR (C_S_AXI_CONTROL_DATA_WIDTH-1 downto 0);
    s_axi_control_WSTRB : IN STD_LOGIC_VECTOR (C_S_AXI_CONTROL_DATA_WIDTH/8-1 downto 0);
    s_axi_control_ARVALID : IN STD_LOGIC;
    s_axi_control_ARREADY : OUT STD_LOGIC;
    s_axi_control_ARADDR : IN STD_LOGIC_VECTOR (C_S_AXI_CONTROL_ADDR_WIDTH-1 downto 0);
    s_axi_control_RVALID : OUT STD_LOGIC;
    s_axi_control_RREADY : IN STD_LOGIC;
    s_axi_control_RDATA : OUT STD_LOGIC_VECTOR (C_S_AXI_CONTROL_DATA_WIDTH-1 downto 0);
    s_axi_control_RRESP : OUT STD_LOGIC_VECTOR (1 downto 0);
    s_axi_control_BVALID : OUT STD_LOGIC;
    s_axi_control_BREADY : IN STD_LOGIC;
    s_axi_control_BRESP : OUT STD_LOGIC_VECTOR (1 downto 0);
    ap_clk : IN STD_LOGIC;
    ap_rst_n : IN STD_LOGIC;
    interrupt : OUT STD_LOGIC;
    m_axi_gmem_AWVALID : OUT STD_LOGIC;
    m_axi_gmem_AWREADY : IN STD_LOGIC;
    m_axi_gmem_AWADDR : OUT STD_LOGIC_VECTOR (C_M_AXI_GMEM_ADDR_WIDTH-1 downto 0);
    m_axi_gmem_AWID : OUT STD_LOGIC_VECTOR (C_M_AXI_GMEM_ID_WIDTH-1 downto 0);
    m_axi_gmem_AWLEN : OUT STD_LOGIC_VECTOR (7 downto 0);
    m_axi_gmem_AWSIZE : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_gmem_AWBURST : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem_AWLOCK : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem_AWCACHE : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem_AWPROT : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_gmem_AWQOS : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem_AWREGION : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem_AWUSER : OUT STD_LOGIC_VECTOR (C_M_AXI_GMEM_AWUSER_WIDTH-1 downto 0);
    m_axi_gmem_WVALID : OUT STD_LOGIC;
    m_axi_gmem_WREADY : IN STD_LOGIC;
    m_axi_gmem_WDATA : OUT STD_LOGIC_VECTOR (C_M_AXI_GMEM_DATA_WIDTH-1 downto 0);
    m_axi_gmem_WSTRB : OUT STD_LOGIC_VECTOR (C_M_AXI_GMEM_DATA_WIDTH/8-1 downto 0);
    m_axi_gmem_WLAST : OUT STD_LOGIC;
    m_axi_gmem_WID : OUT STD_LOGIC_VECTOR (C_M_AXI_GMEM_ID_WIDTH-1 downto 0);
    m_axi_gmem_WUSER : OUT STD_LOGIC_VECTOR (C_M_AXI_GMEM_WUSER_WIDTH-1 downto 0);
    m_axi_gmem_ARVALID : OUT STD_LOGIC;
    m_axi_gmem_ARREADY : IN STD_LOGIC;
    m_axi_gmem_ARADDR : OUT STD_LOGIC_VECTOR (C_M_AXI_GMEM_ADDR_WIDTH-1 downto 0);
    m_axi_gmem_ARID : OUT STD_LOGIC_VECTOR (C_M_AXI_GMEM_ID_WIDTH-1 downto 0);
    m_axi_gmem_ARLEN : OUT STD_LOGIC_VECTOR (7 downto 0);
    m_axi_gmem_ARSIZE : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_gmem_ARBURST : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem_ARLOCK : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem_ARCACHE : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem_ARPROT : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_gmem_ARQOS : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem_ARREGION : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem_ARUSER : OUT STD_LOGIC_VECTOR (C_M_AXI_GMEM_ARUSER_WIDTH-1 downto 0);
    m_axi_gmem_RVALID : IN STD_LOGIC;
    m_axi_gmem_RREADY : OUT STD_LOGIC;
    m_axi_gmem_RDATA : IN STD_LOGIC_VECTOR (C_M_AXI_GMEM_DATA_WIDTH-1 downto 0);
    m_axi_gmem_RLAST : IN STD_LOGIC;
    m_axi_gmem_RID : IN STD_LOGIC_VECTOR (C_M_AXI_GMEM_ID_WIDTH-1 downto 0);
    m_axi_gmem_RUSER : IN STD_LOGIC_VECTOR (C_M_AXI_GMEM_RUSER_WIDTH-1 downto 0);
    m_axi_gmem_RRESP : IN STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem_BVALID : IN STD_LOGIC;
    m_axi_gmem_BREADY : OUT STD_LOGIC;
    m_axi_gmem_BRESP : IN STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem_BID : IN STD_LOGIC_VECTOR (C_M_AXI_GMEM_ID_WIDTH-1 downto 0);
    m_axi_gmem_BUSER : IN STD_LOGIC_VECTOR (C_M_AXI_GMEM_BUSER_WIDTH-1 downto 0) );
end;


architecture behav of NTT is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "NTT_NTT,hls_ip_2022_1,{HLS_INPUT_TYPE=c,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xck26-sfvc784-2LV-c,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=dataflow,HLS_SYN_CLOCK=7.300000,HLS_SYN_LAT=7326,HLS_SYN_TPT=7327,HLS_SYN_MEM=11,HLS_SYN_DSP=0,HLS_SYN_FF=10256,HLS_SYN_LUT=15415,HLS_VERSION=2022_1}";
    constant C_S_AXI_DATA_WIDTH : INTEGER range 63 downto 0 := 20;
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant C_M_AXI_DATA_WIDTH : INTEGER range 63 downto 0 := 20;
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_rst_n_inv : STD_LOGIC;
    signal a : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_start : STD_LOGIC;
    signal ap_ready : STD_LOGIC;
    signal ap_done : STD_LOGIC;
    signal ap_idle : STD_LOGIC;
    signal gmem_AWREADY : STD_LOGIC;
    signal gmem_WREADY : STD_LOGIC;
    signal gmem_ARREADY : STD_LOGIC;
    signal gmem_RVALID : STD_LOGIC;
    signal gmem_RDATA : STD_LOGIC_VECTOR (15 downto 0);
    signal gmem_RLAST : STD_LOGIC;
    signal gmem_RID : STD_LOGIC_VECTOR (0 downto 0);
    signal gmem_RFIFONUM : STD_LOGIC_VECTOR (9 downto 0);
    signal gmem_RUSER : STD_LOGIC_VECTOR (0 downto 0);
    signal gmem_RRESP : STD_LOGIC_VECTOR (1 downto 0);
    signal gmem_BVALID : STD_LOGIC;
    signal gmem_BRESP : STD_LOGIC_VECTOR (1 downto 0);
    signal gmem_BID : STD_LOGIC_VECTOR (0 downto 0);
    signal gmem_BUSER : STD_LOGIC_VECTOR (0 downto 0);
    signal Block_entry3_proc_U0_ap_start : STD_LOGIC;
    signal Block_entry3_proc_U0_ap_done : STD_LOGIC;
    signal Block_entry3_proc_U0_ap_continue : STD_LOGIC;
    signal Block_entry3_proc_U0_ap_idle : STD_LOGIC;
    signal Block_entry3_proc_U0_ap_ready : STD_LOGIC;
    signal Block_entry3_proc_U0_ap_return : STD_LOGIC_VECTOR (62 downto 0);
    signal sext_ln13_loc_channel_full_n : STD_LOGIC;
    signal Loop_1_proc_U0_ap_start : STD_LOGIC;
    signal Loop_1_proc_U0_ap_done : STD_LOGIC;
    signal Loop_1_proc_U0_ap_continue : STD_LOGIC;
    signal Loop_1_proc_U0_ap_idle : STD_LOGIC;
    signal Loop_1_proc_U0_ap_ready : STD_LOGIC;
    signal Loop_1_proc_U0_m_axi_gmem_AWVALID : STD_LOGIC;
    signal Loop_1_proc_U0_m_axi_gmem_AWADDR : STD_LOGIC_VECTOR (63 downto 0);
    signal Loop_1_proc_U0_m_axi_gmem_AWID : STD_LOGIC_VECTOR (0 downto 0);
    signal Loop_1_proc_U0_m_axi_gmem_AWLEN : STD_LOGIC_VECTOR (31 downto 0);
    signal Loop_1_proc_U0_m_axi_gmem_AWSIZE : STD_LOGIC_VECTOR (2 downto 0);
    signal Loop_1_proc_U0_m_axi_gmem_AWBURST : STD_LOGIC_VECTOR (1 downto 0);
    signal Loop_1_proc_U0_m_axi_gmem_AWLOCK : STD_LOGIC_VECTOR (1 downto 0);
    signal Loop_1_proc_U0_m_axi_gmem_AWCACHE : STD_LOGIC_VECTOR (3 downto 0);
    signal Loop_1_proc_U0_m_axi_gmem_AWPROT : STD_LOGIC_VECTOR (2 downto 0);
    signal Loop_1_proc_U0_m_axi_gmem_AWQOS : STD_LOGIC_VECTOR (3 downto 0);
    signal Loop_1_proc_U0_m_axi_gmem_AWREGION : STD_LOGIC_VECTOR (3 downto 0);
    signal Loop_1_proc_U0_m_axi_gmem_AWUSER : STD_LOGIC_VECTOR (0 downto 0);
    signal Loop_1_proc_U0_m_axi_gmem_WVALID : STD_LOGIC;
    signal Loop_1_proc_U0_m_axi_gmem_WDATA : STD_LOGIC_VECTOR (15 downto 0);
    signal Loop_1_proc_U0_m_axi_gmem_WSTRB : STD_LOGIC_VECTOR (1 downto 0);
    signal Loop_1_proc_U0_m_axi_gmem_WLAST : STD_LOGIC;
    signal Loop_1_proc_U0_m_axi_gmem_WID : STD_LOGIC_VECTOR (0 downto 0);
    signal Loop_1_proc_U0_m_axi_gmem_WUSER : STD_LOGIC_VECTOR (0 downto 0);
    signal Loop_1_proc_U0_m_axi_gmem_ARVALID : STD_LOGIC;
    signal Loop_1_proc_U0_m_axi_gmem_ARADDR : STD_LOGIC_VECTOR (63 downto 0);
    signal Loop_1_proc_U0_m_axi_gmem_ARID : STD_LOGIC_VECTOR (0 downto 0);
    signal Loop_1_proc_U0_m_axi_gmem_ARLEN : STD_LOGIC_VECTOR (31 downto 0);
    signal Loop_1_proc_U0_m_axi_gmem_ARSIZE : STD_LOGIC_VECTOR (2 downto 0);
    signal Loop_1_proc_U0_m_axi_gmem_ARBURST : STD_LOGIC_VECTOR (1 downto 0);
    signal Loop_1_proc_U0_m_axi_gmem_ARLOCK : STD_LOGIC_VECTOR (1 downto 0);
    signal Loop_1_proc_U0_m_axi_gmem_ARCACHE : STD_LOGIC_VECTOR (3 downto 0);
    signal Loop_1_proc_U0_m_axi_gmem_ARPROT : STD_LOGIC_VECTOR (2 downto 0);
    signal Loop_1_proc_U0_m_axi_gmem_ARQOS : STD_LOGIC_VECTOR (3 downto 0);
    signal Loop_1_proc_U0_m_axi_gmem_ARREGION : STD_LOGIC_VECTOR (3 downto 0);
    signal Loop_1_proc_U0_m_axi_gmem_ARUSER : STD_LOGIC_VECTOR (0 downto 0);
    signal Loop_1_proc_U0_m_axi_gmem_RREADY : STD_LOGIC;
    signal Loop_1_proc_U0_m_axi_gmem_BREADY : STD_LOGIC;
    signal sext_ln13_loc_channel_dout : STD_LOGIC_VECTOR (62 downto 0);
    signal sext_ln13_loc_channel_num_data_valid : STD_LOGIC_VECTOR (1 downto 0);
    signal sext_ln13_loc_channel_fifo_cap : STD_LOGIC_VECTOR (1 downto 0);
    signal sext_ln13_loc_channel_empty_n : STD_LOGIC;
    signal ap_sync_ready : STD_LOGIC;
    signal ap_sync_reg_Block_entry3_proc_U0_ap_ready : STD_LOGIC := '0';
    signal ap_sync_Block_entry3_proc_U0_ap_ready : STD_LOGIC;
    signal ap_sync_reg_Loop_1_proc_U0_ap_ready : STD_LOGIC := '0';
    signal ap_sync_Loop_1_proc_U0_ap_ready : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component NTT_Block_entry3_proc IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        a : IN STD_LOGIC_VECTOR (63 downto 0);
        ap_return : OUT STD_LOGIC_VECTOR (62 downto 0) );
    end component;


    component NTT_Loop_1_proc IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        m_axi_gmem_AWVALID : OUT STD_LOGIC;
        m_axi_gmem_AWREADY : IN STD_LOGIC;
        m_axi_gmem_AWADDR : OUT STD_LOGIC_VECTOR (63 downto 0);
        m_axi_gmem_AWID : OUT STD_LOGIC_VECTOR (0 downto 0);
        m_axi_gmem_AWLEN : OUT STD_LOGIC_VECTOR (31 downto 0);
        m_axi_gmem_AWSIZE : OUT STD_LOGIC_VECTOR (2 downto 0);
        m_axi_gmem_AWBURST : OUT STD_LOGIC_VECTOR (1 downto 0);
        m_axi_gmem_AWLOCK : OUT STD_LOGIC_VECTOR (1 downto 0);
        m_axi_gmem_AWCACHE : OUT STD_LOGIC_VECTOR (3 downto 0);
        m_axi_gmem_AWPROT : OUT STD_LOGIC_VECTOR (2 downto 0);
        m_axi_gmem_AWQOS : OUT STD_LOGIC_VECTOR (3 downto 0);
        m_axi_gmem_AWREGION : OUT STD_LOGIC_VECTOR (3 downto 0);
        m_axi_gmem_AWUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
        m_axi_gmem_WVALID : OUT STD_LOGIC;
        m_axi_gmem_WREADY : IN STD_LOGIC;
        m_axi_gmem_WDATA : OUT STD_LOGIC_VECTOR (15 downto 0);
        m_axi_gmem_WSTRB : OUT STD_LOGIC_VECTOR (1 downto 0);
        m_axi_gmem_WLAST : OUT STD_LOGIC;
        m_axi_gmem_WID : OUT STD_LOGIC_VECTOR (0 downto 0);
        m_axi_gmem_WUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
        m_axi_gmem_ARVALID : OUT STD_LOGIC;
        m_axi_gmem_ARREADY : IN STD_LOGIC;
        m_axi_gmem_ARADDR : OUT STD_LOGIC_VECTOR (63 downto 0);
        m_axi_gmem_ARID : OUT STD_LOGIC_VECTOR (0 downto 0);
        m_axi_gmem_ARLEN : OUT STD_LOGIC_VECTOR (31 downto 0);
        m_axi_gmem_ARSIZE : OUT STD_LOGIC_VECTOR (2 downto 0);
        m_axi_gmem_ARBURST : OUT STD_LOGIC_VECTOR (1 downto 0);
        m_axi_gmem_ARLOCK : OUT STD_LOGIC_VECTOR (1 downto 0);
        m_axi_gmem_ARCACHE : OUT STD_LOGIC_VECTOR (3 downto 0);
        m_axi_gmem_ARPROT : OUT STD_LOGIC_VECTOR (2 downto 0);
        m_axi_gmem_ARQOS : OUT STD_LOGIC_VECTOR (3 downto 0);
        m_axi_gmem_ARREGION : OUT STD_LOGIC_VECTOR (3 downto 0);
        m_axi_gmem_ARUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
        m_axi_gmem_RVALID : IN STD_LOGIC;
        m_axi_gmem_RREADY : OUT STD_LOGIC;
        m_axi_gmem_RDATA : IN STD_LOGIC_VECTOR (15 downto 0);
        m_axi_gmem_RLAST : IN STD_LOGIC;
        m_axi_gmem_RID : IN STD_LOGIC_VECTOR (0 downto 0);
        m_axi_gmem_RFIFONUM : IN STD_LOGIC_VECTOR (9 downto 0);
        m_axi_gmem_RUSER : IN STD_LOGIC_VECTOR (0 downto 0);
        m_axi_gmem_RRESP : IN STD_LOGIC_VECTOR (1 downto 0);
        m_axi_gmem_BVALID : IN STD_LOGIC;
        m_axi_gmem_BREADY : OUT STD_LOGIC;
        m_axi_gmem_BRESP : IN STD_LOGIC_VECTOR (1 downto 0);
        m_axi_gmem_BID : IN STD_LOGIC_VECTOR (0 downto 0);
        m_axi_gmem_BUSER : IN STD_LOGIC_VECTOR (0 downto 0);
        p_read : IN STD_LOGIC_VECTOR (62 downto 0) );
    end component;


    component NTT_fifo_w63_d2_S IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (62 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (62 downto 0);
        if_num_data_valid : OUT STD_LOGIC_VECTOR (1 downto 0);
        if_fifo_cap : OUT STD_LOGIC_VECTOR (1 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;


    component NTT_control_s_axi IS
    generic (
        C_S_AXI_ADDR_WIDTH : INTEGER;
        C_S_AXI_DATA_WIDTH : INTEGER );
    port (
        AWVALID : IN STD_LOGIC;
        AWREADY : OUT STD_LOGIC;
        AWADDR : IN STD_LOGIC_VECTOR (C_S_AXI_ADDR_WIDTH-1 downto 0);
        WVALID : IN STD_LOGIC;
        WREADY : OUT STD_LOGIC;
        WDATA : IN STD_LOGIC_VECTOR (C_S_AXI_DATA_WIDTH-1 downto 0);
        WSTRB : IN STD_LOGIC_VECTOR (C_S_AXI_DATA_WIDTH/8-1 downto 0);
        ARVALID : IN STD_LOGIC;
        ARREADY : OUT STD_LOGIC;
        ARADDR : IN STD_LOGIC_VECTOR (C_S_AXI_ADDR_WIDTH-1 downto 0);
        RVALID : OUT STD_LOGIC;
        RREADY : IN STD_LOGIC;
        RDATA : OUT STD_LOGIC_VECTOR (C_S_AXI_DATA_WIDTH-1 downto 0);
        RRESP : OUT STD_LOGIC_VECTOR (1 downto 0);
        BVALID : OUT STD_LOGIC;
        BREADY : IN STD_LOGIC;
        BRESP : OUT STD_LOGIC_VECTOR (1 downto 0);
        ACLK : IN STD_LOGIC;
        ARESET : IN STD_LOGIC;
        ACLK_EN : IN STD_LOGIC;
        a : OUT STD_LOGIC_VECTOR (63 downto 0);
        ap_start : OUT STD_LOGIC;
        interrupt : OUT STD_LOGIC;
        ap_ready : IN STD_LOGIC;
        ap_done : IN STD_LOGIC;
        ap_idle : IN STD_LOGIC );
    end component;


    component NTT_gmem_m_axi IS
    generic (
        CONSERVATIVE : INTEGER;
        USER_MAXREQS : INTEGER;
        NUM_READ_OUTSTANDING : INTEGER;
        NUM_WRITE_OUTSTANDING : INTEGER;
        MAX_READ_BURST_LENGTH : INTEGER;
        MAX_WRITE_BURST_LENGTH : INTEGER;
        USER_RFIFONUM_WIDTH : INTEGER;
        C_M_AXI_ID_WIDTH : INTEGER;
        C_M_AXI_ADDR_WIDTH : INTEGER;
        C_M_AXI_DATA_WIDTH : INTEGER;
        C_M_AXI_AWUSER_WIDTH : INTEGER;
        C_M_AXI_ARUSER_WIDTH : INTEGER;
        C_M_AXI_WUSER_WIDTH : INTEGER;
        C_M_AXI_RUSER_WIDTH : INTEGER;
        C_M_AXI_BUSER_WIDTH : INTEGER;
        C_USER_VALUE : INTEGER;
        C_PROT_VALUE : INTEGER;
        C_CACHE_VALUE : INTEGER;
        USER_DW : INTEGER;
        USER_AW : INTEGER );
    port (
        AWVALID : OUT STD_LOGIC;
        AWREADY : IN STD_LOGIC;
        AWADDR : OUT STD_LOGIC_VECTOR (C_M_AXI_ADDR_WIDTH-1 downto 0);
        AWID : OUT STD_LOGIC_VECTOR (C_M_AXI_ID_WIDTH-1 downto 0);
        AWLEN : OUT STD_LOGIC_VECTOR (7 downto 0);
        AWSIZE : OUT STD_LOGIC_VECTOR (2 downto 0);
        AWBURST : OUT STD_LOGIC_VECTOR (1 downto 0);
        AWLOCK : OUT STD_LOGIC_VECTOR (1 downto 0);
        AWCACHE : OUT STD_LOGIC_VECTOR (3 downto 0);
        AWPROT : OUT STD_LOGIC_VECTOR (2 downto 0);
        AWQOS : OUT STD_LOGIC_VECTOR (3 downto 0);
        AWREGION : OUT STD_LOGIC_VECTOR (3 downto 0);
        AWUSER : OUT STD_LOGIC_VECTOR (C_M_AXI_AWUSER_WIDTH-1 downto 0);
        WVALID : OUT STD_LOGIC;
        WREADY : IN STD_LOGIC;
        WDATA : OUT STD_LOGIC_VECTOR (C_M_AXI_DATA_WIDTH-1 downto 0);
        WSTRB : OUT STD_LOGIC_VECTOR (C_M_AXI_DATA_WIDTH/8-1 downto 0);
        WLAST : OUT STD_LOGIC;
        WID : OUT STD_LOGIC_VECTOR (C_M_AXI_ID_WIDTH-1 downto 0);
        WUSER : OUT STD_LOGIC_VECTOR (C_M_AXI_WUSER_WIDTH-1 downto 0);
        ARVALID : OUT STD_LOGIC;
        ARREADY : IN STD_LOGIC;
        ARADDR : OUT STD_LOGIC_VECTOR (C_M_AXI_ADDR_WIDTH-1 downto 0);
        ARID : OUT STD_LOGIC_VECTOR (C_M_AXI_ID_WIDTH-1 downto 0);
        ARLEN : OUT STD_LOGIC_VECTOR (7 downto 0);
        ARSIZE : OUT STD_LOGIC_VECTOR (2 downto 0);
        ARBURST : OUT STD_LOGIC_VECTOR (1 downto 0);
        ARLOCK : OUT STD_LOGIC_VECTOR (1 downto 0);
        ARCACHE : OUT STD_LOGIC_VECTOR (3 downto 0);
        ARPROT : OUT STD_LOGIC_VECTOR (2 downto 0);
        ARQOS : OUT STD_LOGIC_VECTOR (3 downto 0);
        ARREGION : OUT STD_LOGIC_VECTOR (3 downto 0);
        ARUSER : OUT STD_LOGIC_VECTOR (C_M_AXI_ARUSER_WIDTH-1 downto 0);
        RVALID : IN STD_LOGIC;
        RREADY : OUT STD_LOGIC;
        RDATA : IN STD_LOGIC_VECTOR (C_M_AXI_DATA_WIDTH-1 downto 0);
        RLAST : IN STD_LOGIC;
        RID : IN STD_LOGIC_VECTOR (C_M_AXI_ID_WIDTH-1 downto 0);
        RUSER : IN STD_LOGIC_VECTOR (C_M_AXI_RUSER_WIDTH-1 downto 0);
        RRESP : IN STD_LOGIC_VECTOR (1 downto 0);
        BVALID : IN STD_LOGIC;
        BREADY : OUT STD_LOGIC;
        BRESP : IN STD_LOGIC_VECTOR (1 downto 0);
        BID : IN STD_LOGIC_VECTOR (C_M_AXI_ID_WIDTH-1 downto 0);
        BUSER : IN STD_LOGIC_VECTOR (C_M_AXI_BUSER_WIDTH-1 downto 0);
        ACLK : IN STD_LOGIC;
        ARESET : IN STD_LOGIC;
        ACLK_EN : IN STD_LOGIC;
        I_ARVALID : IN STD_LOGIC;
        I_ARREADY : OUT STD_LOGIC;
        I_ARADDR : IN STD_LOGIC_VECTOR (63 downto 0);
        I_ARLEN : IN STD_LOGIC_VECTOR (31 downto 0);
        I_RVALID : OUT STD_LOGIC;
        I_RREADY : IN STD_LOGIC;
        I_RDATA : OUT STD_LOGIC_VECTOR (15 downto 0);
        I_RFIFONUM : OUT STD_LOGIC_VECTOR (9 downto 0);
        I_AWVALID : IN STD_LOGIC;
        I_AWREADY : OUT STD_LOGIC;
        I_AWADDR : IN STD_LOGIC_VECTOR (63 downto 0);
        I_AWLEN : IN STD_LOGIC_VECTOR (31 downto 0);
        I_WVALID : IN STD_LOGIC;
        I_WREADY : OUT STD_LOGIC;
        I_WDATA : IN STD_LOGIC_VECTOR (15 downto 0);
        I_WSTRB : IN STD_LOGIC_VECTOR (1 downto 0);
        I_BVALID : OUT STD_LOGIC;
        I_BREADY : IN STD_LOGIC );
    end component;



begin
    control_s_axi_U : component NTT_control_s_axi
    generic map (
        C_S_AXI_ADDR_WIDTH => C_S_AXI_CONTROL_ADDR_WIDTH,
        C_S_AXI_DATA_WIDTH => C_S_AXI_CONTROL_DATA_WIDTH)
    port map (
        AWVALID => s_axi_control_AWVALID,
        AWREADY => s_axi_control_AWREADY,
        AWADDR => s_axi_control_AWADDR,
        WVALID => s_axi_control_WVALID,
        WREADY => s_axi_control_WREADY,
        WDATA => s_axi_control_WDATA,
        WSTRB => s_axi_control_WSTRB,
        ARVALID => s_axi_control_ARVALID,
        ARREADY => s_axi_control_ARREADY,
        ARADDR => s_axi_control_ARADDR,
        RVALID => s_axi_control_RVALID,
        RREADY => s_axi_control_RREADY,
        RDATA => s_axi_control_RDATA,
        RRESP => s_axi_control_RRESP,
        BVALID => s_axi_control_BVALID,
        BREADY => s_axi_control_BREADY,
        BRESP => s_axi_control_BRESP,
        ACLK => ap_clk,
        ARESET => ap_rst_n_inv,
        ACLK_EN => ap_const_logic_1,
        a => a,
        ap_start => ap_start,
        interrupt => interrupt,
        ap_ready => ap_ready,
        ap_done => ap_done,
        ap_idle => ap_idle);

    gmem_m_axi_U : component NTT_gmem_m_axi
    generic map (
        CONSERVATIVE => 1,
        USER_MAXREQS => 5,
        NUM_READ_OUTSTANDING => 16,
        NUM_WRITE_OUTSTANDING => 16,
        MAX_READ_BURST_LENGTH => 16,
        MAX_WRITE_BURST_LENGTH => 16,
        USER_RFIFONUM_WIDTH => 10,
        C_M_AXI_ID_WIDTH => C_M_AXI_GMEM_ID_WIDTH,
        C_M_AXI_ADDR_WIDTH => C_M_AXI_GMEM_ADDR_WIDTH,
        C_M_AXI_DATA_WIDTH => C_M_AXI_GMEM_DATA_WIDTH,
        C_M_AXI_AWUSER_WIDTH => C_M_AXI_GMEM_AWUSER_WIDTH,
        C_M_AXI_ARUSER_WIDTH => C_M_AXI_GMEM_ARUSER_WIDTH,
        C_M_AXI_WUSER_WIDTH => C_M_AXI_GMEM_WUSER_WIDTH,
        C_M_AXI_RUSER_WIDTH => C_M_AXI_GMEM_RUSER_WIDTH,
        C_M_AXI_BUSER_WIDTH => C_M_AXI_GMEM_BUSER_WIDTH,
        C_USER_VALUE => C_M_AXI_GMEM_USER_VALUE,
        C_PROT_VALUE => C_M_AXI_GMEM_PROT_VALUE,
        C_CACHE_VALUE => C_M_AXI_GMEM_CACHE_VALUE,
        USER_DW => 16,
        USER_AW => 64)
    port map (
        AWVALID => m_axi_gmem_AWVALID,
        AWREADY => m_axi_gmem_AWREADY,
        AWADDR => m_axi_gmem_AWADDR,
        AWID => m_axi_gmem_AWID,
        AWLEN => m_axi_gmem_AWLEN,
        AWSIZE => m_axi_gmem_AWSIZE,
        AWBURST => m_axi_gmem_AWBURST,
        AWLOCK => m_axi_gmem_AWLOCK,
        AWCACHE => m_axi_gmem_AWCACHE,
        AWPROT => m_axi_gmem_AWPROT,
        AWQOS => m_axi_gmem_AWQOS,
        AWREGION => m_axi_gmem_AWREGION,
        AWUSER => m_axi_gmem_AWUSER,
        WVALID => m_axi_gmem_WVALID,
        WREADY => m_axi_gmem_WREADY,
        WDATA => m_axi_gmem_WDATA,
        WSTRB => m_axi_gmem_WSTRB,
        WLAST => m_axi_gmem_WLAST,
        WID => m_axi_gmem_WID,
        WUSER => m_axi_gmem_WUSER,
        ARVALID => m_axi_gmem_ARVALID,
        ARREADY => m_axi_gmem_ARREADY,
        ARADDR => m_axi_gmem_ARADDR,
        ARID => m_axi_gmem_ARID,
        ARLEN => m_axi_gmem_ARLEN,
        ARSIZE => m_axi_gmem_ARSIZE,
        ARBURST => m_axi_gmem_ARBURST,
        ARLOCK => m_axi_gmem_ARLOCK,
        ARCACHE => m_axi_gmem_ARCACHE,
        ARPROT => m_axi_gmem_ARPROT,
        ARQOS => m_axi_gmem_ARQOS,
        ARREGION => m_axi_gmem_ARREGION,
        ARUSER => m_axi_gmem_ARUSER,
        RVALID => m_axi_gmem_RVALID,
        RREADY => m_axi_gmem_RREADY,
        RDATA => m_axi_gmem_RDATA,
        RLAST => m_axi_gmem_RLAST,
        RID => m_axi_gmem_RID,
        RUSER => m_axi_gmem_RUSER,
        RRESP => m_axi_gmem_RRESP,
        BVALID => m_axi_gmem_BVALID,
        BREADY => m_axi_gmem_BREADY,
        BRESP => m_axi_gmem_BRESP,
        BID => m_axi_gmem_BID,
        BUSER => m_axi_gmem_BUSER,
        ACLK => ap_clk,
        ARESET => ap_rst_n_inv,
        ACLK_EN => ap_const_logic_1,
        I_ARVALID => Loop_1_proc_U0_m_axi_gmem_ARVALID,
        I_ARREADY => gmem_ARREADY,
        I_ARADDR => Loop_1_proc_U0_m_axi_gmem_ARADDR,
        I_ARLEN => Loop_1_proc_U0_m_axi_gmem_ARLEN,
        I_RVALID => gmem_RVALID,
        I_RREADY => Loop_1_proc_U0_m_axi_gmem_RREADY,
        I_RDATA => gmem_RDATA,
        I_RFIFONUM => gmem_RFIFONUM,
        I_AWVALID => Loop_1_proc_U0_m_axi_gmem_AWVALID,
        I_AWREADY => gmem_AWREADY,
        I_AWADDR => Loop_1_proc_U0_m_axi_gmem_AWADDR,
        I_AWLEN => Loop_1_proc_U0_m_axi_gmem_AWLEN,
        I_WVALID => Loop_1_proc_U0_m_axi_gmem_WVALID,
        I_WREADY => gmem_WREADY,
        I_WDATA => Loop_1_proc_U0_m_axi_gmem_WDATA,
        I_WSTRB => Loop_1_proc_U0_m_axi_gmem_WSTRB,
        I_BVALID => gmem_BVALID,
        I_BREADY => Loop_1_proc_U0_m_axi_gmem_BREADY);

    Block_entry3_proc_U0 : component NTT_Block_entry3_proc
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        ap_start => Block_entry3_proc_U0_ap_start,
        ap_done => Block_entry3_proc_U0_ap_done,
        ap_continue => Block_entry3_proc_U0_ap_continue,
        ap_idle => Block_entry3_proc_U0_ap_idle,
        ap_ready => Block_entry3_proc_U0_ap_ready,
        a => a,
        ap_return => Block_entry3_proc_U0_ap_return);

    Loop_1_proc_U0 : component NTT_Loop_1_proc
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        ap_start => Loop_1_proc_U0_ap_start,
        ap_done => Loop_1_proc_U0_ap_done,
        ap_continue => Loop_1_proc_U0_ap_continue,
        ap_idle => Loop_1_proc_U0_ap_idle,
        ap_ready => Loop_1_proc_U0_ap_ready,
        m_axi_gmem_AWVALID => Loop_1_proc_U0_m_axi_gmem_AWVALID,
        m_axi_gmem_AWREADY => gmem_AWREADY,
        m_axi_gmem_AWADDR => Loop_1_proc_U0_m_axi_gmem_AWADDR,
        m_axi_gmem_AWID => Loop_1_proc_U0_m_axi_gmem_AWID,
        m_axi_gmem_AWLEN => Loop_1_proc_U0_m_axi_gmem_AWLEN,
        m_axi_gmem_AWSIZE => Loop_1_proc_U0_m_axi_gmem_AWSIZE,
        m_axi_gmem_AWBURST => Loop_1_proc_U0_m_axi_gmem_AWBURST,
        m_axi_gmem_AWLOCK => Loop_1_proc_U0_m_axi_gmem_AWLOCK,
        m_axi_gmem_AWCACHE => Loop_1_proc_U0_m_axi_gmem_AWCACHE,
        m_axi_gmem_AWPROT => Loop_1_proc_U0_m_axi_gmem_AWPROT,
        m_axi_gmem_AWQOS => Loop_1_proc_U0_m_axi_gmem_AWQOS,
        m_axi_gmem_AWREGION => Loop_1_proc_U0_m_axi_gmem_AWREGION,
        m_axi_gmem_AWUSER => Loop_1_proc_U0_m_axi_gmem_AWUSER,
        m_axi_gmem_WVALID => Loop_1_proc_U0_m_axi_gmem_WVALID,
        m_axi_gmem_WREADY => gmem_WREADY,
        m_axi_gmem_WDATA => Loop_1_proc_U0_m_axi_gmem_WDATA,
        m_axi_gmem_WSTRB => Loop_1_proc_U0_m_axi_gmem_WSTRB,
        m_axi_gmem_WLAST => Loop_1_proc_U0_m_axi_gmem_WLAST,
        m_axi_gmem_WID => Loop_1_proc_U0_m_axi_gmem_WID,
        m_axi_gmem_WUSER => Loop_1_proc_U0_m_axi_gmem_WUSER,
        m_axi_gmem_ARVALID => Loop_1_proc_U0_m_axi_gmem_ARVALID,
        m_axi_gmem_ARREADY => gmem_ARREADY,
        m_axi_gmem_ARADDR => Loop_1_proc_U0_m_axi_gmem_ARADDR,
        m_axi_gmem_ARID => Loop_1_proc_U0_m_axi_gmem_ARID,
        m_axi_gmem_ARLEN => Loop_1_proc_U0_m_axi_gmem_ARLEN,
        m_axi_gmem_ARSIZE => Loop_1_proc_U0_m_axi_gmem_ARSIZE,
        m_axi_gmem_ARBURST => Loop_1_proc_U0_m_axi_gmem_ARBURST,
        m_axi_gmem_ARLOCK => Loop_1_proc_U0_m_axi_gmem_ARLOCK,
        m_axi_gmem_ARCACHE => Loop_1_proc_U0_m_axi_gmem_ARCACHE,
        m_axi_gmem_ARPROT => Loop_1_proc_U0_m_axi_gmem_ARPROT,
        m_axi_gmem_ARQOS => Loop_1_proc_U0_m_axi_gmem_ARQOS,
        m_axi_gmem_ARREGION => Loop_1_proc_U0_m_axi_gmem_ARREGION,
        m_axi_gmem_ARUSER => Loop_1_proc_U0_m_axi_gmem_ARUSER,
        m_axi_gmem_RVALID => gmem_RVALID,
        m_axi_gmem_RREADY => Loop_1_proc_U0_m_axi_gmem_RREADY,
        m_axi_gmem_RDATA => gmem_RDATA,
        m_axi_gmem_RLAST => gmem_RLAST,
        m_axi_gmem_RID => gmem_RID,
        m_axi_gmem_RFIFONUM => gmem_RFIFONUM,
        m_axi_gmem_RUSER => gmem_RUSER,
        m_axi_gmem_RRESP => gmem_RRESP,
        m_axi_gmem_BVALID => gmem_BVALID,
        m_axi_gmem_BREADY => Loop_1_proc_U0_m_axi_gmem_BREADY,
        m_axi_gmem_BRESP => gmem_BRESP,
        m_axi_gmem_BID => gmem_BID,
        m_axi_gmem_BUSER => gmem_BUSER,
        p_read => sext_ln13_loc_channel_dout);

    sext_ln13_loc_channel_U : component NTT_fifo_w63_d2_S
    port map (
        clk => ap_clk,
        reset => ap_rst_n_inv,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => Block_entry3_proc_U0_ap_return,
        if_full_n => sext_ln13_loc_channel_full_n,
        if_write => Block_entry3_proc_U0_ap_done,
        if_dout => sext_ln13_loc_channel_dout,
        if_num_data_valid => sext_ln13_loc_channel_num_data_valid,
        if_fifo_cap => sext_ln13_loc_channel_fifo_cap,
        if_empty_n => sext_ln13_loc_channel_empty_n,
        if_read => Loop_1_proc_U0_ap_ready);





    ap_sync_reg_Block_entry3_proc_U0_ap_ready_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                ap_sync_reg_Block_entry3_proc_U0_ap_ready <= ap_const_logic_0;
            else
                if (((ap_sync_ready and ap_start) = ap_const_logic_1)) then 
                    ap_sync_reg_Block_entry3_proc_U0_ap_ready <= ap_const_logic_0;
                else 
                    ap_sync_reg_Block_entry3_proc_U0_ap_ready <= ap_sync_Block_entry3_proc_U0_ap_ready;
                end if; 
            end if;
        end if;
    end process;


    ap_sync_reg_Loop_1_proc_U0_ap_ready_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                ap_sync_reg_Loop_1_proc_U0_ap_ready <= ap_const_logic_0;
            else
                if (((ap_sync_ready and ap_start) = ap_const_logic_1)) then 
                    ap_sync_reg_Loop_1_proc_U0_ap_ready <= ap_const_logic_0;
                else 
                    ap_sync_reg_Loop_1_proc_U0_ap_ready <= ap_sync_Loop_1_proc_U0_ap_ready;
                end if; 
            end if;
        end if;
    end process;

    Block_entry3_proc_U0_ap_continue <= sext_ln13_loc_channel_full_n;
    Block_entry3_proc_U0_ap_start <= ((ap_sync_reg_Block_entry3_proc_U0_ap_ready xor ap_const_logic_1) and ap_start);
    Loop_1_proc_U0_ap_continue <= ap_const_logic_1;
    Loop_1_proc_U0_ap_start <= (sext_ln13_loc_channel_empty_n and (ap_sync_reg_Loop_1_proc_U0_ap_ready xor ap_const_logic_1) and ap_start);
    ap_done <= Loop_1_proc_U0_ap_done;
    ap_idle <= ((sext_ln13_loc_channel_empty_n xor ap_const_logic_1) and Loop_1_proc_U0_ap_idle and Block_entry3_proc_U0_ap_idle);
    ap_ready <= ap_sync_ready;

    ap_rst_n_inv_assign_proc : process(ap_rst_n)
    begin
                ap_rst_n_inv <= not(ap_rst_n);
    end process;

    ap_sync_Block_entry3_proc_U0_ap_ready <= (ap_sync_reg_Block_entry3_proc_U0_ap_ready or Block_entry3_proc_U0_ap_ready);
    ap_sync_Loop_1_proc_U0_ap_ready <= (ap_sync_reg_Loop_1_proc_U0_ap_ready or Loop_1_proc_U0_ap_ready);
    ap_sync_ready <= (ap_sync_Loop_1_proc_U0_ap_ready and ap_sync_Block_entry3_proc_U0_ap_ready);
    gmem_BID <= ap_const_lv1_0;
    gmem_BRESP <= ap_const_lv2_0;
    gmem_BUSER <= ap_const_lv1_0;
    gmem_RID <= ap_const_lv1_0;
    gmem_RLAST <= ap_const_logic_0;
    gmem_RRESP <= ap_const_lv2_0;
    gmem_RUSER <= ap_const_lv1_0;
end behav;
