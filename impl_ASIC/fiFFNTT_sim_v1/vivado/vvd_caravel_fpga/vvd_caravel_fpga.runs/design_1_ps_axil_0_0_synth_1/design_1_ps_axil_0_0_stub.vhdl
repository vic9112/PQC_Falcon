-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
-- Date        : Mon May 27 07:29:50 2024
-- Host        : ubuntu2004 running 64-bit Ubuntu 20.04.6 LTS
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_ps_axil_0_0_stub.vhdl
-- Design      : design_1_ps_axil_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arready : out STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awready : out STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rready : in STD_LOGIC;
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wready : out STD_LOGIC;
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    aa_mb_irq : out STD_LOGIC;
    is_ioclk : in STD_LOGIC;
    caravel_mprj_out : out STD_LOGIC_VECTOR ( 37 downto 0 );
    caravel_mprj_in : in STD_LOGIC_VECTOR ( 37 downto 0 );
    ladma_mm_araddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    ladma_mm_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ladma_mm_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ladma_mm_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    ladma_mm_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ladma_mm_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ladma_mm_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ladma_mm_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ladma_mm_arready : in STD_LOGIC;
    ladma_mm_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ladma_mm_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ladma_mm_aruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    ladma_mm_arvalid : out STD_LOGIC;
    ladma_mm_awaddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    ladma_mm_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ladma_mm_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ladma_mm_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    ladma_mm_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ladma_mm_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ladma_mm_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ladma_mm_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ladma_mm_awready : in STD_LOGIC;
    ladma_mm_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ladma_mm_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ladma_mm_awuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    ladma_mm_awvalid : out STD_LOGIC;
    ladma_mm_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    ladma_mm_bready : out STD_LOGIC;
    ladma_mm_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ladma_mm_buser : in STD_LOGIC_VECTOR ( 0 to 0 );
    ladma_mm_bvalid : in STD_LOGIC;
    ladma_mm_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ladma_mm_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    ladma_mm_rlast : in STD_LOGIC;
    ladma_mm_rready : out STD_LOGIC;
    ladma_mm_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ladma_mm_ruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    ladma_mm_rvalid : in STD_LOGIC;
    ladma_mm_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ladma_mm_wlast : out STD_LOGIC;
    ladma_mm_wready : in STD_LOGIC;
    ladma_mm_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ladma_mm_wuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    ladma_mm_wvalid : out STD_LOGIC;
    ladma_s_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ladma_s_arready : out STD_LOGIC;
    ladma_s_arvalid : in STD_LOGIC;
    ladma_s_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ladma_s_awready : out STD_LOGIC;
    ladma_s_awvalid : in STD_LOGIC;
    ladma_s_bready : in STD_LOGIC;
    ladma_s_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ladma_s_bvalid : out STD_LOGIC;
    ladma_s_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ladma_s_rready : in STD_LOGIC;
    ladma_s_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ladma_s_rvalid : out STD_LOGIC;
    ladma_s_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ladma_s_wready : out STD_LOGIC;
    ladma_s_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ladma_s_wvalid : in STD_LOGIC;
    ladma_interrupt : out STD_LOGIC;
    updma_si_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    updma_si_tstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    updma_si_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    updma_si_tlast : in STD_LOGIC;
    updma_si_tvalid : in STD_LOGIC;
    updma_si_tuser : in STD_LOGIC_VECTOR ( 6 downto 0 );
    updma_si_tready : out STD_LOGIC;
    updma_so_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    updma_so_tstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    updma_so_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    updma_so_tlast : out STD_LOGIC;
    updma_so_tvalid : out STD_LOGIC;
    updma_so_tuser : out STD_LOGIC_VECTOR ( 6 downto 0 );
    updma_so_tready : in STD_LOGIC;
    qspi_io0_i : in STD_LOGIC;
    qspi_io1_o : out STD_LOGIC;
    qspi_sck_i : in STD_LOGIC;
    qspi_ss_i : in STD_LOGIC;
    axi_clk : in STD_LOGIC;
    axi_reset_n : in STD_LOGIC;
    axi_clk_m : in STD_LOGIC;
    axi_reset_m_n : in STD_LOGIC;
    axi_clk_usdi : in STD_LOGIC;
    axi_reset_usdi_n : in STD_LOGIC;
    axi_clk_udso : in STD_LOGIC;
    axi_reset_udso_n : in STD_LOGIC;
    axis_clk : in STD_LOGIC;
    axis_rst_n : in STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "s_axi_araddr[31:0],s_axi_arready,s_axi_arvalid,s_axi_awaddr[31:0],s_axi_awready,s_axi_awvalid,s_axi_bready,s_axi_bresp[1:0],s_axi_bvalid,s_axi_rdata[31:0],s_axi_rready,s_axi_rresp[1:0],s_axi_rvalid,s_axi_wdata[31:0],s_axi_wready,s_axi_wstrb[3:0],s_axi_wvalid,aa_mb_irq,is_ioclk,caravel_mprj_out[37:0],caravel_mprj_in[37:0],ladma_mm_araddr[63:0],ladma_mm_arburst[1:0],ladma_mm_arcache[3:0],ladma_mm_arid[0:0],ladma_mm_arlen[7:0],ladma_mm_arlock[1:0],ladma_mm_arprot[2:0],ladma_mm_arqos[3:0],ladma_mm_arready,ladma_mm_arregion[3:0],ladma_mm_arsize[2:0],ladma_mm_aruser[0:0],ladma_mm_arvalid,ladma_mm_awaddr[63:0],ladma_mm_awburst[1:0],ladma_mm_awcache[3:0],ladma_mm_awid[0:0],ladma_mm_awlen[7:0],ladma_mm_awlock[1:0],ladma_mm_awprot[2:0],ladma_mm_awqos[3:0],ladma_mm_awready,ladma_mm_awregion[3:0],ladma_mm_awsize[2:0],ladma_mm_awuser[0:0],ladma_mm_awvalid,ladma_mm_bid[0:0],ladma_mm_bready,ladma_mm_bresp[1:0],ladma_mm_buser[0:0],ladma_mm_bvalid,ladma_mm_rdata[31:0],ladma_mm_rid[0:0],ladma_mm_rlast,ladma_mm_rready,ladma_mm_rresp[1:0],ladma_mm_ruser[0:0],ladma_mm_rvalid,ladma_mm_wdata[31:0],ladma_mm_wlast,ladma_mm_wready,ladma_mm_wstrb[3:0],ladma_mm_wuser[0:0],ladma_mm_wvalid,ladma_s_araddr[31:0],ladma_s_arready,ladma_s_arvalid,ladma_s_awaddr[31:0],ladma_s_awready,ladma_s_awvalid,ladma_s_bready,ladma_s_bresp[1:0],ladma_s_bvalid,ladma_s_rdata[31:0],ladma_s_rready,ladma_s_rresp[1:0],ladma_s_rvalid,ladma_s_wdata[31:0],ladma_s_wready,ladma_s_wstrb[3:0],ladma_s_wvalid,ladma_interrupt,updma_si_tdata[31:0],updma_si_tstrb[3:0],updma_si_tkeep[3:0],updma_si_tlast,updma_si_tvalid,updma_si_tuser[6:0],updma_si_tready,updma_so_tdata[31:0],updma_so_tstrb[3:0],updma_so_tkeep[3:0],updma_so_tlast,updma_so_tvalid,updma_so_tuser[6:0],updma_so_tready,qspi_io0_i,qspi_io1_o,qspi_sck_i,qspi_ss_i,axi_clk,axi_reset_n,axi_clk_m,axi_reset_m_n,axi_clk_usdi,axi_reset_usdi_n,axi_clk_udso,axi_reset_udso_n,axis_clk,axis_rst_n";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "ps_axil,Vivado 2022.1";
begin
end;
