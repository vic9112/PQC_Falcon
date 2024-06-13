//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
//Date        : Thu Jun 13 14:35:12 2024
//Host        : ubuntu2004 running 64-bit Ubuntu 20.04.4 LTS
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=20,numReposBlks=15,numNonXlnxBlks=0,numHierBlks=5,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=1,numHdlrefBlks=3,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (resetb_0,
    sys_clock,
    sys_reset);
  input resetb_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SYS_CLOCK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SYS_CLOCK, CLK_DOMAIN design_1_sys_clock, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input sys_clock;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.SYS_RESET RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.SYS_RESET, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input sys_reset;

  wire [31:0]axi_smc_1_M00_AXI_AWADDR;
  wire [1:0]axi_smc_1_M00_AXI_AWBURST;
  wire [3:0]axi_smc_1_M00_AXI_AWCACHE;
  wire [7:0]axi_smc_1_M00_AXI_AWLEN;
  wire [2:0]axi_smc_1_M00_AXI_AWPROT;
  wire [3:0]axi_smc_1_M00_AXI_AWQOS;
  wire axi_smc_1_M00_AXI_AWREADY;
  wire axi_smc_1_M00_AXI_AWVALID;
  wire axi_smc_1_M00_AXI_BREADY;
  wire [1:0]axi_smc_1_M00_AXI_BRESP;
  wire axi_smc_1_M00_AXI_BVALID;
  wire [31:0]axi_smc_1_M00_AXI_WDATA;
  wire axi_smc_1_M00_AXI_WLAST;
  wire axi_smc_1_M00_AXI_WREADY;
  wire [3:0]axi_smc_1_M00_AXI_WSTRB;
  wire axi_smc_1_M00_AXI_WVALID;
  wire [31:0]axi_smc_2_M00_AXI_ARADDR;
  wire [1:0]axi_smc_2_M00_AXI_ARBURST;
  wire [3:0]axi_smc_2_M00_AXI_ARCACHE;
  wire [7:0]axi_smc_2_M00_AXI_ARLEN;
  wire [2:0]axi_smc_2_M00_AXI_ARPROT;
  wire [3:0]axi_smc_2_M00_AXI_ARQOS;
  wire axi_smc_2_M00_AXI_ARREADY;
  wire axi_smc_2_M00_AXI_ARVALID;
  wire [31:0]axi_smc_2_M00_AXI_RDATA;
  wire axi_smc_2_M00_AXI_RLAST;
  wire axi_smc_2_M00_AXI_RREADY;
  wire [1:0]axi_smc_2_M00_AXI_RRESP;
  wire axi_smc_2_M00_AXI_RVALID;
  wire [31:0]axi_smc_M00_AXI_ARADDR;
  wire [1:0]axi_smc_M00_AXI_ARBURST;
  wire [3:0]axi_smc_M00_AXI_ARCACHE;
  wire [7:0]axi_smc_M00_AXI_ARLEN;
  wire [0:0]axi_smc_M00_AXI_ARLOCK;
  wire [2:0]axi_smc_M00_AXI_ARPROT;
  wire [3:0]axi_smc_M00_AXI_ARQOS;
  wire axi_smc_M00_AXI_ARREADY;
  wire [0:0]axi_smc_M00_AXI_ARUSER;
  wire axi_smc_M00_AXI_ARVALID;
  wire [31:0]axi_smc_M00_AXI_AWADDR;
  wire [1:0]axi_smc_M00_AXI_AWBURST;
  wire [3:0]axi_smc_M00_AXI_AWCACHE;
  wire [7:0]axi_smc_M00_AXI_AWLEN;
  wire [0:0]axi_smc_M00_AXI_AWLOCK;
  wire [2:0]axi_smc_M00_AXI_AWPROT;
  wire [3:0]axi_smc_M00_AXI_AWQOS;
  wire axi_smc_M00_AXI_AWREADY;
  wire [0:0]axi_smc_M00_AXI_AWUSER;
  wire axi_smc_M00_AXI_AWVALID;
  wire axi_smc_M00_AXI_BREADY;
  wire [1:0]axi_smc_M00_AXI_BRESP;
  wire [0:0]axi_smc_M00_AXI_BUSER;
  wire axi_smc_M00_AXI_BVALID;
  wire [31:0]axi_smc_M00_AXI_RDATA;
  wire axi_smc_M00_AXI_RLAST;
  wire axi_smc_M00_AXI_RREADY;
  wire [1:0]axi_smc_M00_AXI_RRESP;
  wire axi_smc_M00_AXI_RVALID;
  wire [31:0]axi_smc_M00_AXI_WDATA;
  wire axi_smc_M00_AXI_WLAST;
  wire axi_smc_M00_AXI_WREADY;
  wire [3:0]axi_smc_M00_AXI_WSTRB;
  wire axi_smc_M00_AXI_WVALID;
  wire [31:0]axi_vip_0_M_AXI_ARADDR;
  wire [0:0]axi_vip_0_M_AXI_ARREADY;
  wire axi_vip_0_M_AXI_ARVALID;
  wire [31:0]axi_vip_0_M_AXI_AWADDR;
  wire [0:0]axi_vip_0_M_AXI_AWREADY;
  wire axi_vip_0_M_AXI_AWVALID;
  wire axi_vip_0_M_AXI_BREADY;
  wire [1:0]axi_vip_0_M_AXI_BRESP;
  wire [0:0]axi_vip_0_M_AXI_BVALID;
  wire [31:0]axi_vip_0_M_AXI_RDATA;
  wire axi_vip_0_M_AXI_RREADY;
  wire [1:0]axi_vip_0_M_AXI_RRESP;
  wire [0:0]axi_vip_0_M_AXI_RVALID;
  wire [31:0]axi_vip_0_M_AXI_WDATA;
  wire [0:0]axi_vip_0_M_AXI_WREADY;
  wire [3:0]axi_vip_0_M_AXI_WSTRB;
  wire axi_vip_0_M_AXI_WVALID;
  wire [31:0]axi_vip_0_axi_periph_M00_AXI_ARADDR;
  wire axi_vip_0_axi_periph_M00_AXI_ARREADY;
  wire axi_vip_0_axi_periph_M00_AXI_ARVALID;
  wire [31:0]axi_vip_0_axi_periph_M00_AXI_AWADDR;
  wire axi_vip_0_axi_periph_M00_AXI_AWREADY;
  wire axi_vip_0_axi_periph_M00_AXI_AWVALID;
  wire axi_vip_0_axi_periph_M00_AXI_BREADY;
  wire [1:0]axi_vip_0_axi_periph_M00_AXI_BRESP;
  wire axi_vip_0_axi_periph_M00_AXI_BVALID;
  wire [31:0]axi_vip_0_axi_periph_M00_AXI_RDATA;
  wire axi_vip_0_axi_periph_M00_AXI_RREADY;
  wire [1:0]axi_vip_0_axi_periph_M00_AXI_RRESP;
  wire axi_vip_0_axi_periph_M00_AXI_RVALID;
  wire [31:0]axi_vip_0_axi_periph_M00_AXI_WDATA;
  wire axi_vip_0_axi_periph_M00_AXI_WREADY;
  wire [3:0]axi_vip_0_axi_periph_M00_AXI_WSTRB;
  wire axi_vip_0_axi_periph_M00_AXI_WVALID;
  wire [31:0]axi_vip_0_axi_periph_M01_AXI_ARADDR;
  wire axi_vip_0_axi_periph_M01_AXI_ARREADY;
  wire axi_vip_0_axi_periph_M01_AXI_ARVALID;
  wire [31:0]axi_vip_0_axi_periph_M01_AXI_AWADDR;
  wire axi_vip_0_axi_periph_M01_AXI_AWREADY;
  wire axi_vip_0_axi_periph_M01_AXI_AWVALID;
  wire axi_vip_0_axi_periph_M01_AXI_BREADY;
  wire [1:0]axi_vip_0_axi_periph_M01_AXI_BRESP;
  wire axi_vip_0_axi_periph_M01_AXI_BVALID;
  wire [31:0]axi_vip_0_axi_periph_M01_AXI_RDATA;
  wire axi_vip_0_axi_periph_M01_AXI_RREADY;
  wire [1:0]axi_vip_0_axi_periph_M01_AXI_RRESP;
  wire axi_vip_0_axi_periph_M01_AXI_RVALID;
  wire [31:0]axi_vip_0_axi_periph_M01_AXI_WDATA;
  wire axi_vip_0_axi_periph_M01_AXI_WREADY;
  wire [3:0]axi_vip_0_axi_periph_M01_AXI_WSTRB;
  wire axi_vip_0_axi_periph_M01_AXI_WVALID;
  wire [31:0]axi_vip_0_axi_periph_M02_AXI_ARADDR;
  wire axi_vip_0_axi_periph_M02_AXI_ARREADY;
  wire axi_vip_0_axi_periph_M02_AXI_ARVALID;
  wire [31:0]axi_vip_0_axi_periph_M02_AXI_AWADDR;
  wire axi_vip_0_axi_periph_M02_AXI_AWREADY;
  wire axi_vip_0_axi_periph_M02_AXI_AWVALID;
  wire axi_vip_0_axi_periph_M02_AXI_BREADY;
  wire [1:0]axi_vip_0_axi_periph_M02_AXI_BRESP;
  wire axi_vip_0_axi_periph_M02_AXI_BVALID;
  wire [31:0]axi_vip_0_axi_periph_M02_AXI_RDATA;
  wire axi_vip_0_axi_periph_M02_AXI_RREADY;
  wire [1:0]axi_vip_0_axi_periph_M02_AXI_RRESP;
  wire axi_vip_0_axi_periph_M02_AXI_RVALID;
  wire [31:0]axi_vip_0_axi_periph_M02_AXI_WDATA;
  wire axi_vip_0_axi_periph_M02_AXI_WREADY;
  wire [3:0]axi_vip_0_axi_periph_M02_AXI_WSTRB;
  wire axi_vip_0_axi_periph_M02_AXI_WVALID;
  wire [31:0]blk_mem_gen_0_douta;
  wire caravel_0_flash_clk;
  wire caravel_0_flash_csb;
  wire caravel_0_flash_io0;
  wire [37:0]caravel_0_mprj_o;
  wire clk_wiz_0_clk_out1;
  wire clk_wiz_0_clk_out2;
  wire clk_wiz_0_locked;
  wire [37:0]ps_axil_0_caravel_mprj_out;
  wire [63:0]ps_axil_0_ladma_mm_ARADDR;
  wire [1:0]ps_axil_0_ladma_mm_ARBURST;
  wire [3:0]ps_axil_0_ladma_mm_ARCACHE;
  wire [0:0]ps_axil_0_ladma_mm_ARID;
  wire [7:0]ps_axil_0_ladma_mm_ARLEN;
  wire [1:0]ps_axil_0_ladma_mm_ARLOCK;
  wire [2:0]ps_axil_0_ladma_mm_ARPROT;
  wire [3:0]ps_axil_0_ladma_mm_ARQOS;
  wire ps_axil_0_ladma_mm_ARREADY;
  wire [2:0]ps_axil_0_ladma_mm_ARSIZE;
  wire [0:0]ps_axil_0_ladma_mm_ARUSER;
  wire ps_axil_0_ladma_mm_ARVALID;
  wire [63:0]ps_axil_0_ladma_mm_AWADDR;
  wire [1:0]ps_axil_0_ladma_mm_AWBURST;
  wire [3:0]ps_axil_0_ladma_mm_AWCACHE;
  wire [0:0]ps_axil_0_ladma_mm_AWID;
  wire [7:0]ps_axil_0_ladma_mm_AWLEN;
  wire [1:0]ps_axil_0_ladma_mm_AWLOCK;
  wire [2:0]ps_axil_0_ladma_mm_AWPROT;
  wire [3:0]ps_axil_0_ladma_mm_AWQOS;
  wire ps_axil_0_ladma_mm_AWREADY;
  wire [2:0]ps_axil_0_ladma_mm_AWSIZE;
  wire [0:0]ps_axil_0_ladma_mm_AWUSER;
  wire ps_axil_0_ladma_mm_AWVALID;
  wire [0:0]ps_axil_0_ladma_mm_BID;
  wire ps_axil_0_ladma_mm_BREADY;
  wire [1:0]ps_axil_0_ladma_mm_BRESP;
  wire [0:0]ps_axil_0_ladma_mm_BUSER;
  wire ps_axil_0_ladma_mm_BVALID;
  wire [31:0]ps_axil_0_ladma_mm_RDATA;
  wire [0:0]ps_axil_0_ladma_mm_RID;
  wire ps_axil_0_ladma_mm_RLAST;
  wire ps_axil_0_ladma_mm_RREADY;
  wire [1:0]ps_axil_0_ladma_mm_RRESP;
  wire ps_axil_0_ladma_mm_RVALID;
  wire [31:0]ps_axil_0_ladma_mm_WDATA;
  wire ps_axil_0_ladma_mm_WLAST;
  wire ps_axil_0_ladma_mm_WREADY;
  wire [3:0]ps_axil_0_ladma_mm_WSTRB;
  wire ps_axil_0_ladma_mm_WVALID;
  wire [31:0]ps_axil_0_updma_so_TDATA;
  wire [3:0]ps_axil_0_updma_so_TKEEP;
  wire ps_axil_0_updma_so_TLAST;
  wire ps_axil_0_updma_so_TREADY;
  wire [3:0]ps_axil_0_updma_so_TSTRB;
  wire [6:0]ps_axil_0_updma_so_TUSER;
  wire ps_axil_0_updma_so_TVALID;
  wire reset_rtl_1;
  wire resetb_0_1;
  wire [0:0]rst_clk_wiz_0_5M_peripheral_aresetn;
  wire [0:0]rst_clk_wiz_0_5M_peripheral_reset;
  wire spiflash_0_io1;
  wire [31:0]spiflash_0_romcode_Addr_A;
  wire spiflash_0_romcode_Clk_A;
  wire [31:0]spiflash_0_romcode_Din_A;
  wire spiflash_0_romcode_EN_A;
  wire spiflash_0_romcode_Rst_A;
  wire [3:0]spiflash_0_romcode_WEN_A;
  wire sys_clock_1;
  wire [63:0]userdma_0_m_axi_gmem0_AWADDR;
  wire [1:0]userdma_0_m_axi_gmem0_AWBURST;
  wire [3:0]userdma_0_m_axi_gmem0_AWCACHE;
  wire [7:0]userdma_0_m_axi_gmem0_AWLEN;
  wire [1:0]userdma_0_m_axi_gmem0_AWLOCK;
  wire [2:0]userdma_0_m_axi_gmem0_AWPROT;
  wire [3:0]userdma_0_m_axi_gmem0_AWQOS;
  wire userdma_0_m_axi_gmem0_AWREADY;
  wire [2:0]userdma_0_m_axi_gmem0_AWSIZE;
  wire userdma_0_m_axi_gmem0_AWVALID;
  wire userdma_0_m_axi_gmem0_BREADY;
  wire [1:0]userdma_0_m_axi_gmem0_BRESP;
  wire userdma_0_m_axi_gmem0_BVALID;
  wire [63:0]userdma_0_m_axi_gmem0_WDATA;
  wire userdma_0_m_axi_gmem0_WLAST;
  wire userdma_0_m_axi_gmem0_WREADY;
  wire [7:0]userdma_0_m_axi_gmem0_WSTRB;
  wire userdma_0_m_axi_gmem0_WVALID;
  wire [63:0]userdma_0_m_axi_gmem1_ARADDR;
  wire [1:0]userdma_0_m_axi_gmem1_ARBURST;
  wire [3:0]userdma_0_m_axi_gmem1_ARCACHE;
  wire [7:0]userdma_0_m_axi_gmem1_ARLEN;
  wire [1:0]userdma_0_m_axi_gmem1_ARLOCK;
  wire [2:0]userdma_0_m_axi_gmem1_ARPROT;
  wire [3:0]userdma_0_m_axi_gmem1_ARQOS;
  wire userdma_0_m_axi_gmem1_ARREADY;
  wire [2:0]userdma_0_m_axi_gmem1_ARSIZE;
  wire userdma_0_m_axi_gmem1_ARVALID;
  wire [63:0]userdma_0_m_axi_gmem1_RDATA;
  wire userdma_0_m_axi_gmem1_RLAST;
  wire userdma_0_m_axi_gmem1_RREADY;
  wire [1:0]userdma_0_m_axi_gmem1_RRESP;
  wire userdma_0_m_axi_gmem1_RVALID;
  wire [31:0]userdma_0_outStreamTop_TDATA;
  wire [3:0]userdma_0_outStreamTop_TKEEP;
  wire [0:0]userdma_0_outStreamTop_TLAST;
  wire userdma_0_outStreamTop_TREADY;
  wire [3:0]userdma_0_outStreamTop_TSTRB;
  wire [1:0]userdma_0_outStreamTop_TUSER;
  wire userdma_0_outStreamTop_TVALID;

  assign reset_rtl_1 = sys_reset;
  assign resetb_0_1 = resetb_0;
  assign sys_clock_1 = sys_clock;
  design_1_axi_smc_0 axi_smc
       (.M00_AXI_araddr(axi_smc_M00_AXI_ARADDR),
        .M00_AXI_arburst(axi_smc_M00_AXI_ARBURST),
        .M00_AXI_arcache(axi_smc_M00_AXI_ARCACHE),
        .M00_AXI_arlen(axi_smc_M00_AXI_ARLEN),
        .M00_AXI_arlock(axi_smc_M00_AXI_ARLOCK),
        .M00_AXI_arprot(axi_smc_M00_AXI_ARPROT),
        .M00_AXI_arqos(axi_smc_M00_AXI_ARQOS),
        .M00_AXI_arready(axi_smc_M00_AXI_ARREADY),
        .M00_AXI_aruser(axi_smc_M00_AXI_ARUSER),
        .M00_AXI_arvalid(axi_smc_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_smc_M00_AXI_AWADDR),
        .M00_AXI_awburst(axi_smc_M00_AXI_AWBURST),
        .M00_AXI_awcache(axi_smc_M00_AXI_AWCACHE),
        .M00_AXI_awlen(axi_smc_M00_AXI_AWLEN),
        .M00_AXI_awlock(axi_smc_M00_AXI_AWLOCK),
        .M00_AXI_awprot(axi_smc_M00_AXI_AWPROT),
        .M00_AXI_awqos(axi_smc_M00_AXI_AWQOS),
        .M00_AXI_awready(axi_smc_M00_AXI_AWREADY),
        .M00_AXI_awuser(axi_smc_M00_AXI_AWUSER),
        .M00_AXI_awvalid(axi_smc_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_smc_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_smc_M00_AXI_BRESP),
        .M00_AXI_buser(axi_smc_M00_AXI_BUSER),
        .M00_AXI_bvalid(axi_smc_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_smc_M00_AXI_RDATA),
        .M00_AXI_rlast(axi_smc_M00_AXI_RLAST),
        .M00_AXI_rready(axi_smc_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_smc_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_smc_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_smc_M00_AXI_WDATA),
        .M00_AXI_wlast(axi_smc_M00_AXI_WLAST),
        .M00_AXI_wready(axi_smc_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_smc_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_smc_M00_AXI_WVALID),
        .S00_AXI_araddr(ps_axil_0_ladma_mm_ARADDR),
        .S00_AXI_arburst(ps_axil_0_ladma_mm_ARBURST),
        .S00_AXI_arcache(ps_axil_0_ladma_mm_ARCACHE),
        .S00_AXI_arid(ps_axil_0_ladma_mm_ARID),
        .S00_AXI_arlen(ps_axil_0_ladma_mm_ARLEN),
        .S00_AXI_arlock(ps_axil_0_ladma_mm_ARLOCK[0]),
        .S00_AXI_arprot(ps_axil_0_ladma_mm_ARPROT),
        .S00_AXI_arqos(ps_axil_0_ladma_mm_ARQOS),
        .S00_AXI_arready(ps_axil_0_ladma_mm_ARREADY),
        .S00_AXI_arsize(ps_axil_0_ladma_mm_ARSIZE),
        .S00_AXI_aruser(ps_axil_0_ladma_mm_ARUSER),
        .S00_AXI_arvalid(ps_axil_0_ladma_mm_ARVALID),
        .S00_AXI_awaddr(ps_axil_0_ladma_mm_AWADDR),
        .S00_AXI_awburst(ps_axil_0_ladma_mm_AWBURST),
        .S00_AXI_awcache(ps_axil_0_ladma_mm_AWCACHE),
        .S00_AXI_awid(ps_axil_0_ladma_mm_AWID),
        .S00_AXI_awlen(ps_axil_0_ladma_mm_AWLEN),
        .S00_AXI_awlock(ps_axil_0_ladma_mm_AWLOCK[0]),
        .S00_AXI_awprot(ps_axil_0_ladma_mm_AWPROT),
        .S00_AXI_awqos(ps_axil_0_ladma_mm_AWQOS),
        .S00_AXI_awready(ps_axil_0_ladma_mm_AWREADY),
        .S00_AXI_awsize(ps_axil_0_ladma_mm_AWSIZE),
        .S00_AXI_awuser(ps_axil_0_ladma_mm_AWUSER),
        .S00_AXI_awvalid(ps_axil_0_ladma_mm_AWVALID),
        .S00_AXI_bid(ps_axil_0_ladma_mm_BID),
        .S00_AXI_bready(ps_axil_0_ladma_mm_BREADY),
        .S00_AXI_bresp(ps_axil_0_ladma_mm_BRESP),
        .S00_AXI_buser(ps_axil_0_ladma_mm_BUSER),
        .S00_AXI_bvalid(ps_axil_0_ladma_mm_BVALID),
        .S00_AXI_rdata(ps_axil_0_ladma_mm_RDATA),
        .S00_AXI_rid(ps_axil_0_ladma_mm_RID),
        .S00_AXI_rlast(ps_axil_0_ladma_mm_RLAST),
        .S00_AXI_rready(ps_axil_0_ladma_mm_RREADY),
        .S00_AXI_rresp(ps_axil_0_ladma_mm_RRESP),
        .S00_AXI_rvalid(ps_axil_0_ladma_mm_RVALID),
        .S00_AXI_wdata(ps_axil_0_ladma_mm_WDATA),
        .S00_AXI_wlast(ps_axil_0_ladma_mm_WLAST),
        .S00_AXI_wready(ps_axil_0_ladma_mm_WREADY),
        .S00_AXI_wstrb(ps_axil_0_ladma_mm_WSTRB),
        .S00_AXI_wvalid(ps_axil_0_ladma_mm_WVALID),
        .aclk(clk_wiz_0_clk_out1),
        .aresetn(rst_clk_wiz_0_5M_peripheral_aresetn));
  design_1_axi_smc_1_0 axi_smc_1
       (.M00_AXI_awaddr(axi_smc_1_M00_AXI_AWADDR),
        .M00_AXI_awburst(axi_smc_1_M00_AXI_AWBURST),
        .M00_AXI_awcache(axi_smc_1_M00_AXI_AWCACHE),
        .M00_AXI_awlen(axi_smc_1_M00_AXI_AWLEN),
        .M00_AXI_awprot(axi_smc_1_M00_AXI_AWPROT),
        .M00_AXI_awqos(axi_smc_1_M00_AXI_AWQOS),
        .M00_AXI_awready(axi_smc_1_M00_AXI_AWREADY),
        .M00_AXI_awvalid(axi_smc_1_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_smc_1_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_smc_1_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_smc_1_M00_AXI_BVALID),
        .M00_AXI_wdata(axi_smc_1_M00_AXI_WDATA),
        .M00_AXI_wlast(axi_smc_1_M00_AXI_WLAST),
        .M00_AXI_wready(axi_smc_1_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_smc_1_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_smc_1_M00_AXI_WVALID),
        .S00_AXI_awaddr(userdma_0_m_axi_gmem0_AWADDR),
        .S00_AXI_awburst(userdma_0_m_axi_gmem0_AWBURST),
        .S00_AXI_awcache(userdma_0_m_axi_gmem0_AWCACHE),
        .S00_AXI_awlen(userdma_0_m_axi_gmem0_AWLEN),
        .S00_AXI_awlock(userdma_0_m_axi_gmem0_AWLOCK[0]),
        .S00_AXI_awprot(userdma_0_m_axi_gmem0_AWPROT),
        .S00_AXI_awqos(userdma_0_m_axi_gmem0_AWQOS),
        .S00_AXI_awready(userdma_0_m_axi_gmem0_AWREADY),
        .S00_AXI_awsize(userdma_0_m_axi_gmem0_AWSIZE),
        .S00_AXI_awvalid(userdma_0_m_axi_gmem0_AWVALID),
        .S00_AXI_bready(userdma_0_m_axi_gmem0_BREADY),
        .S00_AXI_bresp(userdma_0_m_axi_gmem0_BRESP),
        .S00_AXI_bvalid(userdma_0_m_axi_gmem0_BVALID),
        .S00_AXI_wdata(userdma_0_m_axi_gmem0_WDATA),
        .S00_AXI_wlast(userdma_0_m_axi_gmem0_WLAST),
        .S00_AXI_wready(userdma_0_m_axi_gmem0_WREADY),
        .S00_AXI_wstrb(userdma_0_m_axi_gmem0_WSTRB),
        .S00_AXI_wvalid(userdma_0_m_axi_gmem0_WVALID),
        .aclk(clk_wiz_0_clk_out1),
        .aresetn(rst_clk_wiz_0_5M_peripheral_aresetn));
  design_1_axi_smc_2_0 axi_smc_2
       (.M00_AXI_araddr(axi_smc_2_M00_AXI_ARADDR),
        .M00_AXI_arburst(axi_smc_2_M00_AXI_ARBURST),
        .M00_AXI_arcache(axi_smc_2_M00_AXI_ARCACHE),
        .M00_AXI_arlen(axi_smc_2_M00_AXI_ARLEN),
        .M00_AXI_arprot(axi_smc_2_M00_AXI_ARPROT),
        .M00_AXI_arqos(axi_smc_2_M00_AXI_ARQOS),
        .M00_AXI_arready(axi_smc_2_M00_AXI_ARREADY),
        .M00_AXI_arvalid(axi_smc_2_M00_AXI_ARVALID),
        .M00_AXI_rdata(axi_smc_2_M00_AXI_RDATA),
        .M00_AXI_rlast(axi_smc_2_M00_AXI_RLAST),
        .M00_AXI_rready(axi_smc_2_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_smc_2_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_smc_2_M00_AXI_RVALID),
        .S00_AXI_araddr(userdma_0_m_axi_gmem1_ARADDR),
        .S00_AXI_arburst(userdma_0_m_axi_gmem1_ARBURST),
        .S00_AXI_arcache(userdma_0_m_axi_gmem1_ARCACHE),
        .S00_AXI_arlen(userdma_0_m_axi_gmem1_ARLEN),
        .S00_AXI_arlock(userdma_0_m_axi_gmem1_ARLOCK[0]),
        .S00_AXI_arprot(userdma_0_m_axi_gmem1_ARPROT),
        .S00_AXI_arqos(userdma_0_m_axi_gmem1_ARQOS),
        .S00_AXI_arready(userdma_0_m_axi_gmem1_ARREADY),
        .S00_AXI_arsize(userdma_0_m_axi_gmem1_ARSIZE),
        .S00_AXI_arvalid(userdma_0_m_axi_gmem1_ARVALID),
        .S00_AXI_rdata(userdma_0_m_axi_gmem1_RDATA),
        .S00_AXI_rlast(userdma_0_m_axi_gmem1_RLAST),
        .S00_AXI_rready(userdma_0_m_axi_gmem1_RREADY),
        .S00_AXI_rresp(userdma_0_m_axi_gmem1_RRESP),
        .S00_AXI_rvalid(userdma_0_m_axi_gmem1_RVALID),
        .aclk(clk_wiz_0_clk_out1),
        .aresetn(rst_clk_wiz_0_5M_peripheral_aresetn));
  design_1_axi_vip_0_0 axi_vip_0
       (.aclk(clk_wiz_0_clk_out1),
        .aresetn(rst_clk_wiz_0_5M_peripheral_aresetn),
        .m_axi_araddr(axi_vip_0_M_AXI_ARADDR),
        .m_axi_arready(axi_vip_0_M_AXI_ARREADY),
        .m_axi_arvalid(axi_vip_0_M_AXI_ARVALID),
        .m_axi_awaddr(axi_vip_0_M_AXI_AWADDR),
        .m_axi_awready(axi_vip_0_M_AXI_AWREADY),
        .m_axi_awvalid(axi_vip_0_M_AXI_AWVALID),
        .m_axi_bready(axi_vip_0_M_AXI_BREADY),
        .m_axi_bresp(axi_vip_0_M_AXI_BRESP),
        .m_axi_bvalid(axi_vip_0_M_AXI_BVALID),
        .m_axi_rdata(axi_vip_0_M_AXI_RDATA),
        .m_axi_rready(axi_vip_0_M_AXI_RREADY),
        .m_axi_rresp(axi_vip_0_M_AXI_RRESP),
        .m_axi_rvalid(axi_vip_0_M_AXI_RVALID),
        .m_axi_wdata(axi_vip_0_M_AXI_WDATA),
        .m_axi_wready(axi_vip_0_M_AXI_WREADY),
        .m_axi_wstrb(axi_vip_0_M_AXI_WSTRB),
        .m_axi_wvalid(axi_vip_0_M_AXI_WVALID));
  design_1_axi_vip_0_axi_periph_0 axi_vip_0_axi_periph
       (.ACLK(clk_wiz_0_clk_out1),
        .ARESETN(rst_clk_wiz_0_5M_peripheral_aresetn),
        .M00_ACLK(clk_wiz_0_clk_out1),
        .M00_ARESETN(rst_clk_wiz_0_5M_peripheral_aresetn),
        .M00_AXI_araddr(axi_vip_0_axi_periph_M00_AXI_ARADDR),
        .M00_AXI_arready(axi_vip_0_axi_periph_M00_AXI_ARREADY),
        .M00_AXI_arvalid(axi_vip_0_axi_periph_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_vip_0_axi_periph_M00_AXI_AWADDR),
        .M00_AXI_awready(axi_vip_0_axi_periph_M00_AXI_AWREADY),
        .M00_AXI_awvalid(axi_vip_0_axi_periph_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_vip_0_axi_periph_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_vip_0_axi_periph_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_vip_0_axi_periph_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_vip_0_axi_periph_M00_AXI_RDATA),
        .M00_AXI_rready(axi_vip_0_axi_periph_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_vip_0_axi_periph_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_vip_0_axi_periph_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_vip_0_axi_periph_M00_AXI_WDATA),
        .M00_AXI_wready(axi_vip_0_axi_periph_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_vip_0_axi_periph_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_vip_0_axi_periph_M00_AXI_WVALID),
        .M01_ACLK(clk_wiz_0_clk_out1),
        .M01_ARESETN(rst_clk_wiz_0_5M_peripheral_aresetn),
        .M01_AXI_araddr(axi_vip_0_axi_periph_M01_AXI_ARADDR),
        .M01_AXI_arready(axi_vip_0_axi_periph_M01_AXI_ARREADY),
        .M01_AXI_arvalid(axi_vip_0_axi_periph_M01_AXI_ARVALID),
        .M01_AXI_awaddr(axi_vip_0_axi_periph_M01_AXI_AWADDR),
        .M01_AXI_awready(axi_vip_0_axi_periph_M01_AXI_AWREADY),
        .M01_AXI_awvalid(axi_vip_0_axi_periph_M01_AXI_AWVALID),
        .M01_AXI_bready(axi_vip_0_axi_periph_M01_AXI_BREADY),
        .M01_AXI_bresp(axi_vip_0_axi_periph_M01_AXI_BRESP),
        .M01_AXI_bvalid(axi_vip_0_axi_periph_M01_AXI_BVALID),
        .M01_AXI_rdata(axi_vip_0_axi_periph_M01_AXI_RDATA),
        .M01_AXI_rready(axi_vip_0_axi_periph_M01_AXI_RREADY),
        .M01_AXI_rresp(axi_vip_0_axi_periph_M01_AXI_RRESP),
        .M01_AXI_rvalid(axi_vip_0_axi_periph_M01_AXI_RVALID),
        .M01_AXI_wdata(axi_vip_0_axi_periph_M01_AXI_WDATA),
        .M01_AXI_wready(axi_vip_0_axi_periph_M01_AXI_WREADY),
        .M01_AXI_wstrb(axi_vip_0_axi_periph_M01_AXI_WSTRB),
        .M01_AXI_wvalid(axi_vip_0_axi_periph_M01_AXI_WVALID),
        .M02_ACLK(clk_wiz_0_clk_out1),
        .M02_ARESETN(rst_clk_wiz_0_5M_peripheral_aresetn),
        .M02_AXI_araddr(axi_vip_0_axi_periph_M02_AXI_ARADDR),
        .M02_AXI_arready(axi_vip_0_axi_periph_M02_AXI_ARREADY),
        .M02_AXI_arvalid(axi_vip_0_axi_periph_M02_AXI_ARVALID),
        .M02_AXI_awaddr(axi_vip_0_axi_periph_M02_AXI_AWADDR),
        .M02_AXI_awready(axi_vip_0_axi_periph_M02_AXI_AWREADY),
        .M02_AXI_awvalid(axi_vip_0_axi_periph_M02_AXI_AWVALID),
        .M02_AXI_bready(axi_vip_0_axi_periph_M02_AXI_BREADY),
        .M02_AXI_bresp(axi_vip_0_axi_periph_M02_AXI_BRESP),
        .M02_AXI_bvalid(axi_vip_0_axi_periph_M02_AXI_BVALID),
        .M02_AXI_rdata(axi_vip_0_axi_periph_M02_AXI_RDATA),
        .M02_AXI_rready(axi_vip_0_axi_periph_M02_AXI_RREADY),
        .M02_AXI_rresp(axi_vip_0_axi_periph_M02_AXI_RRESP),
        .M02_AXI_rvalid(axi_vip_0_axi_periph_M02_AXI_RVALID),
        .M02_AXI_wdata(axi_vip_0_axi_periph_M02_AXI_WDATA),
        .M02_AXI_wready(axi_vip_0_axi_periph_M02_AXI_WREADY),
        .M02_AXI_wstrb(axi_vip_0_axi_periph_M02_AXI_WSTRB),
        .M02_AXI_wvalid(axi_vip_0_axi_periph_M02_AXI_WVALID),
        .S00_ACLK(clk_wiz_0_clk_out1),
        .S00_ARESETN(rst_clk_wiz_0_5M_peripheral_aresetn),
        .S00_AXI_araddr(axi_vip_0_M_AXI_ARADDR),
        .S00_AXI_arready(axi_vip_0_M_AXI_ARREADY),
        .S00_AXI_arvalid(axi_vip_0_M_AXI_ARVALID),
        .S00_AXI_awaddr(axi_vip_0_M_AXI_AWADDR),
        .S00_AXI_awready(axi_vip_0_M_AXI_AWREADY),
        .S00_AXI_awvalid(axi_vip_0_M_AXI_AWVALID),
        .S00_AXI_bready(axi_vip_0_M_AXI_BREADY),
        .S00_AXI_bresp(axi_vip_0_M_AXI_BRESP),
        .S00_AXI_bvalid(axi_vip_0_M_AXI_BVALID),
        .S00_AXI_rdata(axi_vip_0_M_AXI_RDATA),
        .S00_AXI_rready(axi_vip_0_M_AXI_RREADY),
        .S00_AXI_rresp(axi_vip_0_M_AXI_RRESP),
        .S00_AXI_rvalid(axi_vip_0_M_AXI_RVALID),
        .S00_AXI_wdata(axi_vip_0_M_AXI_WDATA),
        .S00_AXI_wready(axi_vip_0_M_AXI_WREADY),
        .S00_AXI_wstrb(axi_vip_0_M_AXI_WSTRB),
        .S00_AXI_wvalid(axi_vip_0_M_AXI_WVALID));
  design_1_axi_vip_1_0 axi_vip_1
       (.aclk(clk_wiz_0_clk_out1),
        .aresetn(rst_clk_wiz_0_5M_peripheral_aresetn),
        .s_axi_araddr(axi_smc_M00_AXI_ARADDR),
        .s_axi_arburst(axi_smc_M00_AXI_ARBURST),
        .s_axi_arcache(axi_smc_M00_AXI_ARCACHE),
        .s_axi_arlen(axi_smc_M00_AXI_ARLEN),
        .s_axi_arlock(axi_smc_M00_AXI_ARLOCK),
        .s_axi_arprot(axi_smc_M00_AXI_ARPROT),
        .s_axi_arqos(axi_smc_M00_AXI_ARQOS),
        .s_axi_arready(axi_smc_M00_AXI_ARREADY),
        .s_axi_aruser(axi_smc_M00_AXI_ARUSER),
        .s_axi_arvalid(axi_smc_M00_AXI_ARVALID),
        .s_axi_awaddr(axi_smc_M00_AXI_AWADDR),
        .s_axi_awburst(axi_smc_M00_AXI_AWBURST),
        .s_axi_awcache(axi_smc_M00_AXI_AWCACHE),
        .s_axi_awlen(axi_smc_M00_AXI_AWLEN),
        .s_axi_awlock(axi_smc_M00_AXI_AWLOCK),
        .s_axi_awprot(axi_smc_M00_AXI_AWPROT),
        .s_axi_awqos(axi_smc_M00_AXI_AWQOS),
        .s_axi_awready(axi_smc_M00_AXI_AWREADY),
        .s_axi_awuser(axi_smc_M00_AXI_AWUSER),
        .s_axi_awvalid(axi_smc_M00_AXI_AWVALID),
        .s_axi_bready(axi_smc_M00_AXI_BREADY),
        .s_axi_bresp(axi_smc_M00_AXI_BRESP),
        .s_axi_buser(axi_smc_M00_AXI_BUSER),
        .s_axi_bvalid(axi_smc_M00_AXI_BVALID),
        .s_axi_rdata(axi_smc_M00_AXI_RDATA),
        .s_axi_rlast(axi_smc_M00_AXI_RLAST),
        .s_axi_rready(axi_smc_M00_AXI_RREADY),
        .s_axi_rresp(axi_smc_M00_AXI_RRESP),
        .s_axi_rvalid(axi_smc_M00_AXI_RVALID),
        .s_axi_wdata(axi_smc_M00_AXI_WDATA),
        .s_axi_wlast(axi_smc_M00_AXI_WLAST),
        .s_axi_wready(axi_smc_M00_AXI_WREADY),
        .s_axi_wstrb(axi_smc_M00_AXI_WSTRB),
        .s_axi_wvalid(axi_smc_M00_AXI_WVALID));
  design_1_axi_vip_2_0 axi_vip_2
       (.aclk(clk_wiz_0_clk_out1),
        .aresetn(rst_clk_wiz_0_5M_peripheral_aresetn),
        .s_axi_awaddr(axi_smc_1_M00_AXI_AWADDR),
        .s_axi_awburst(axi_smc_1_M00_AXI_AWBURST),
        .s_axi_awcache(axi_smc_1_M00_AXI_AWCACHE),
        .s_axi_awlen(axi_smc_1_M00_AXI_AWLEN),
        .s_axi_awprot(axi_smc_1_M00_AXI_AWPROT),
        .s_axi_awqos(axi_smc_1_M00_AXI_AWQOS),
        .s_axi_awready(axi_smc_1_M00_AXI_AWREADY),
        .s_axi_awvalid(axi_smc_1_M00_AXI_AWVALID),
        .s_axi_bready(axi_smc_1_M00_AXI_BREADY),
        .s_axi_bresp(axi_smc_1_M00_AXI_BRESP),
        .s_axi_bvalid(axi_smc_1_M00_AXI_BVALID),
        .s_axi_wdata(axi_smc_1_M00_AXI_WDATA),
        .s_axi_wlast(axi_smc_1_M00_AXI_WLAST),
        .s_axi_wready(axi_smc_1_M00_AXI_WREADY),
        .s_axi_wstrb(axi_smc_1_M00_AXI_WSTRB),
        .s_axi_wvalid(axi_smc_1_M00_AXI_WVALID));
  design_1_axi_vip_3_0 axi_vip_3
       (.aclk(clk_wiz_0_clk_out1),
        .aresetn(rst_clk_wiz_0_5M_peripheral_aresetn),
        .s_axi_araddr(axi_smc_2_M00_AXI_ARADDR),
        .s_axi_arburst(axi_smc_2_M00_AXI_ARBURST),
        .s_axi_arcache(axi_smc_2_M00_AXI_ARCACHE),
        .s_axi_arlen(axi_smc_2_M00_AXI_ARLEN),
        .s_axi_arprot(axi_smc_2_M00_AXI_ARPROT),
        .s_axi_arqos(axi_smc_2_M00_AXI_ARQOS),
        .s_axi_arready(axi_smc_2_M00_AXI_ARREADY),
        .s_axi_arvalid(axi_smc_2_M00_AXI_ARVALID),
        .s_axi_rdata(axi_smc_2_M00_AXI_RDATA),
        .s_axi_rlast(axi_smc_2_M00_AXI_RLAST),
        .s_axi_rready(axi_smc_2_M00_AXI_RREADY),
        .s_axi_rresp(axi_smc_2_M00_AXI_RRESP),
        .s_axi_rvalid(axi_smc_2_M00_AXI_RVALID));
  design_1_blk_mem_gen_0_0 blk_mem_gen_0
       (.addra(spiflash_0_romcode_Addr_A),
        .clka(spiflash_0_romcode_Clk_A),
        .dina(spiflash_0_romcode_Din_A),
        .douta(blk_mem_gen_0_douta),
        .ena(spiflash_0_romcode_EN_A),
        .rsta(spiflash_0_romcode_Rst_A),
        .wea(spiflash_0_romcode_WEN_A));
  design_1_caravel_0_0 caravel_0
       (.clock(clk_wiz_0_clk_out1),
        .flash_clk(caravel_0_flash_clk),
        .flash_csb(caravel_0_flash_csb),
        .flash_io0(caravel_0_flash_io0),
        .flash_io1(spiflash_0_io1),
        .mprj_i(ps_axil_0_caravel_mprj_out),
        .mprj_o(caravel_0_mprj_o),
        .resetb(resetb_0_1));
  design_1_clk_wiz_0_0 clk_wiz_0
       (.clk_in1(sys_clock_1),
        .clk_out1(clk_wiz_0_clk_out1),
        .clk_out2(clk_wiz_0_clk_out2),
        .locked(clk_wiz_0_locked),
        .resetn(reset_rtl_1));
  design_1_ps_axil_0_0 ps_axil_0
       (.axi_clk(clk_wiz_0_clk_out1),
        .axi_clk_m(clk_wiz_0_clk_out1),
        .axi_clk_udso(clk_wiz_0_clk_out1),
        .axi_clk_usdi(clk_wiz_0_clk_out1),
        .axi_reset_m_n(rst_clk_wiz_0_5M_peripheral_aresetn),
        .axi_reset_n(rst_clk_wiz_0_5M_peripheral_aresetn),
        .axi_reset_udso_n(rst_clk_wiz_0_5M_peripheral_aresetn),
        .axi_reset_usdi_n(rst_clk_wiz_0_5M_peripheral_aresetn),
        .axis_clk(clk_wiz_0_clk_out1),
        .axis_rst_n(rst_clk_wiz_0_5M_peripheral_aresetn),
        .caravel_mprj_in(caravel_0_mprj_o),
        .caravel_mprj_out(ps_axil_0_caravel_mprj_out),
        .is_ioclk(clk_wiz_0_clk_out2),
        .ladma_mm_araddr(ps_axil_0_ladma_mm_ARADDR),
        .ladma_mm_arburst(ps_axil_0_ladma_mm_ARBURST),
        .ladma_mm_arcache(ps_axil_0_ladma_mm_ARCACHE),
        .ladma_mm_arid(ps_axil_0_ladma_mm_ARID),
        .ladma_mm_arlen(ps_axil_0_ladma_mm_ARLEN),
        .ladma_mm_arlock(ps_axil_0_ladma_mm_ARLOCK),
        .ladma_mm_arprot(ps_axil_0_ladma_mm_ARPROT),
        .ladma_mm_arqos(ps_axil_0_ladma_mm_ARQOS),
        .ladma_mm_arready(ps_axil_0_ladma_mm_ARREADY),
        .ladma_mm_arsize(ps_axil_0_ladma_mm_ARSIZE),
        .ladma_mm_aruser(ps_axil_0_ladma_mm_ARUSER),
        .ladma_mm_arvalid(ps_axil_0_ladma_mm_ARVALID),
        .ladma_mm_awaddr(ps_axil_0_ladma_mm_AWADDR),
        .ladma_mm_awburst(ps_axil_0_ladma_mm_AWBURST),
        .ladma_mm_awcache(ps_axil_0_ladma_mm_AWCACHE),
        .ladma_mm_awid(ps_axil_0_ladma_mm_AWID),
        .ladma_mm_awlen(ps_axil_0_ladma_mm_AWLEN),
        .ladma_mm_awlock(ps_axil_0_ladma_mm_AWLOCK),
        .ladma_mm_awprot(ps_axil_0_ladma_mm_AWPROT),
        .ladma_mm_awqos(ps_axil_0_ladma_mm_AWQOS),
        .ladma_mm_awready(ps_axil_0_ladma_mm_AWREADY),
        .ladma_mm_awsize(ps_axil_0_ladma_mm_AWSIZE),
        .ladma_mm_awuser(ps_axil_0_ladma_mm_AWUSER),
        .ladma_mm_awvalid(ps_axil_0_ladma_mm_AWVALID),
        .ladma_mm_bid(ps_axil_0_ladma_mm_BID),
        .ladma_mm_bready(ps_axil_0_ladma_mm_BREADY),
        .ladma_mm_bresp(ps_axil_0_ladma_mm_BRESP),
        .ladma_mm_buser(ps_axil_0_ladma_mm_BUSER),
        .ladma_mm_bvalid(ps_axil_0_ladma_mm_BVALID),
        .ladma_mm_rdata(ps_axil_0_ladma_mm_RDATA),
        .ladma_mm_rid(ps_axil_0_ladma_mm_RID),
        .ladma_mm_rlast(ps_axil_0_ladma_mm_RLAST),
        .ladma_mm_rready(ps_axil_0_ladma_mm_RREADY),
        .ladma_mm_rresp(ps_axil_0_ladma_mm_RRESP),
        .ladma_mm_ruser(1'b0),
        .ladma_mm_rvalid(ps_axil_0_ladma_mm_RVALID),
        .ladma_mm_wdata(ps_axil_0_ladma_mm_WDATA),
        .ladma_mm_wlast(ps_axil_0_ladma_mm_WLAST),
        .ladma_mm_wready(ps_axil_0_ladma_mm_WREADY),
        .ladma_mm_wstrb(ps_axil_0_ladma_mm_WSTRB),
        .ladma_mm_wvalid(ps_axil_0_ladma_mm_WVALID),
        .ladma_s_araddr(axi_vip_0_axi_periph_M01_AXI_ARADDR),
        .ladma_s_arready(axi_vip_0_axi_periph_M01_AXI_ARREADY),
        .ladma_s_arvalid(axi_vip_0_axi_periph_M01_AXI_ARVALID),
        .ladma_s_awaddr(axi_vip_0_axi_periph_M01_AXI_AWADDR),
        .ladma_s_awready(axi_vip_0_axi_periph_M01_AXI_AWREADY),
        .ladma_s_awvalid(axi_vip_0_axi_periph_M01_AXI_AWVALID),
        .ladma_s_bready(axi_vip_0_axi_periph_M01_AXI_BREADY),
        .ladma_s_bresp(axi_vip_0_axi_periph_M01_AXI_BRESP),
        .ladma_s_bvalid(axi_vip_0_axi_periph_M01_AXI_BVALID),
        .ladma_s_rdata(axi_vip_0_axi_periph_M01_AXI_RDATA),
        .ladma_s_rready(axi_vip_0_axi_periph_M01_AXI_RREADY),
        .ladma_s_rresp(axi_vip_0_axi_periph_M01_AXI_RRESP),
        .ladma_s_rvalid(axi_vip_0_axi_periph_M01_AXI_RVALID),
        .ladma_s_wdata(axi_vip_0_axi_periph_M01_AXI_WDATA),
        .ladma_s_wready(axi_vip_0_axi_periph_M01_AXI_WREADY),
        .ladma_s_wstrb(axi_vip_0_axi_periph_M01_AXI_WSTRB),
        .ladma_s_wvalid(axi_vip_0_axi_periph_M01_AXI_WVALID),
        .qspi_io0_i(1'b0),
        .qspi_sck_i(1'b0),
        .qspi_ss_i(1'b0),
        .s_axi_araddr(axi_vip_0_axi_periph_M00_AXI_ARADDR),
        .s_axi_arready(axi_vip_0_axi_periph_M00_AXI_ARREADY),
        .s_axi_arvalid(axi_vip_0_axi_periph_M00_AXI_ARVALID),
        .s_axi_awaddr(axi_vip_0_axi_periph_M00_AXI_AWADDR),
        .s_axi_awready(axi_vip_0_axi_periph_M00_AXI_AWREADY),
        .s_axi_awvalid(axi_vip_0_axi_periph_M00_AXI_AWVALID),
        .s_axi_bready(axi_vip_0_axi_periph_M00_AXI_BREADY),
        .s_axi_bresp(axi_vip_0_axi_periph_M00_AXI_BRESP),
        .s_axi_bvalid(axi_vip_0_axi_periph_M00_AXI_BVALID),
        .s_axi_rdata(axi_vip_0_axi_periph_M00_AXI_RDATA),
        .s_axi_rready(axi_vip_0_axi_periph_M00_AXI_RREADY),
        .s_axi_rresp(axi_vip_0_axi_periph_M00_AXI_RRESP),
        .s_axi_rvalid(axi_vip_0_axi_periph_M00_AXI_RVALID),
        .s_axi_wdata(axi_vip_0_axi_periph_M00_AXI_WDATA),
        .s_axi_wready(axi_vip_0_axi_periph_M00_AXI_WREADY),
        .s_axi_wstrb(axi_vip_0_axi_periph_M00_AXI_WSTRB),
        .s_axi_wvalid(axi_vip_0_axi_periph_M00_AXI_WVALID),
        .updma_si_tdata(userdma_0_outStreamTop_TDATA),
        .updma_si_tkeep(userdma_0_outStreamTop_TKEEP),
        .updma_si_tlast(userdma_0_outStreamTop_TLAST),
        .updma_si_tready(userdma_0_outStreamTop_TREADY),
        .updma_si_tstrb(userdma_0_outStreamTop_TSTRB),
        .updma_si_tuser({1'b0,1'b0,1'b0,1'b0,1'b0,userdma_0_outStreamTop_TUSER}),
        .updma_si_tvalid(userdma_0_outStreamTop_TVALID),
        .updma_so_tdata(ps_axil_0_updma_so_TDATA),
        .updma_so_tkeep(ps_axil_0_updma_so_TKEEP),
        .updma_so_tlast(ps_axil_0_updma_so_TLAST),
        .updma_so_tready(ps_axil_0_updma_so_TREADY),
        .updma_so_tstrb(ps_axil_0_updma_so_TSTRB),
        .updma_so_tuser(ps_axil_0_updma_so_TUSER),
        .updma_so_tvalid(ps_axil_0_updma_so_TVALID));
  design_1_rst_clk_wiz_0_5M_0 rst_clk_wiz_0_5M
       (.aux_reset_in(1'b1),
        .dcm_locked(clk_wiz_0_locked),
        .ext_reset_in(reset_rtl_1),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(rst_clk_wiz_0_5M_peripheral_aresetn),
        .peripheral_reset(rst_clk_wiz_0_5M_peripheral_reset),
        .slowest_sync_clk(clk_wiz_0_clk_out1));
  design_1_spiflash_0_0 spiflash_0
       (.ap_clk(clk_wiz_0_clk_out1),
        .ap_rst(rst_clk_wiz_0_5M_peripheral_reset),
        .csb(caravel_0_flash_csb),
        .io0(caravel_0_flash_io0),
        .io1(spiflash_0_io1),
        .romcode_Addr_A(spiflash_0_romcode_Addr_A),
        .romcode_Clk_A(spiflash_0_romcode_Clk_A),
        .romcode_Din_A(spiflash_0_romcode_Din_A),
        .romcode_Dout_A(blk_mem_gen_0_douta),
        .romcode_EN_A(spiflash_0_romcode_EN_A),
        .romcode_Rst_A(spiflash_0_romcode_Rst_A),
        .romcode_WEN_A(spiflash_0_romcode_WEN_A),
        .spiclk(caravel_0_flash_clk));
  design_1_userdma_0_0 userdma_0
       (.ap_clk(clk_wiz_0_clk_out1),
        .ap_rst_n(rst_clk_wiz_0_5M_peripheral_aresetn),
        .inStreamTop_TDATA(ps_axil_0_updma_so_TDATA),
        .inStreamTop_TKEEP(ps_axil_0_updma_so_TKEEP),
        .inStreamTop_TLAST(ps_axil_0_updma_so_TLAST),
        .inStreamTop_TREADY(ps_axil_0_updma_so_TREADY),
        .inStreamTop_TSTRB(ps_axil_0_updma_so_TSTRB),
        .inStreamTop_TUSER(ps_axil_0_updma_so_TUSER[1:0]),
        .inStreamTop_TVALID(ps_axil_0_updma_so_TVALID),
        .m_axi_gmem0_ARREADY(1'b0),
        .m_axi_gmem0_AWADDR(userdma_0_m_axi_gmem0_AWADDR),
        .m_axi_gmem0_AWBURST(userdma_0_m_axi_gmem0_AWBURST),
        .m_axi_gmem0_AWCACHE(userdma_0_m_axi_gmem0_AWCACHE),
        .m_axi_gmem0_AWLEN(userdma_0_m_axi_gmem0_AWLEN),
        .m_axi_gmem0_AWLOCK(userdma_0_m_axi_gmem0_AWLOCK),
        .m_axi_gmem0_AWPROT(userdma_0_m_axi_gmem0_AWPROT),
        .m_axi_gmem0_AWQOS(userdma_0_m_axi_gmem0_AWQOS),
        .m_axi_gmem0_AWREADY(userdma_0_m_axi_gmem0_AWREADY),
        .m_axi_gmem0_AWSIZE(userdma_0_m_axi_gmem0_AWSIZE),
        .m_axi_gmem0_AWVALID(userdma_0_m_axi_gmem0_AWVALID),
        .m_axi_gmem0_BREADY(userdma_0_m_axi_gmem0_BREADY),
        .m_axi_gmem0_BRESP(userdma_0_m_axi_gmem0_BRESP),
        .m_axi_gmem0_BVALID(userdma_0_m_axi_gmem0_BVALID),
        .m_axi_gmem0_RDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_gmem0_RLAST(1'b0),
        .m_axi_gmem0_RRESP({1'b0,1'b0}),
        .m_axi_gmem0_RVALID(1'b0),
        .m_axi_gmem0_WDATA(userdma_0_m_axi_gmem0_WDATA),
        .m_axi_gmem0_WLAST(userdma_0_m_axi_gmem0_WLAST),
        .m_axi_gmem0_WREADY(userdma_0_m_axi_gmem0_WREADY),
        .m_axi_gmem0_WSTRB(userdma_0_m_axi_gmem0_WSTRB),
        .m_axi_gmem0_WVALID(userdma_0_m_axi_gmem0_WVALID),
        .m_axi_gmem1_ARADDR(userdma_0_m_axi_gmem1_ARADDR),
        .m_axi_gmem1_ARBURST(userdma_0_m_axi_gmem1_ARBURST),
        .m_axi_gmem1_ARCACHE(userdma_0_m_axi_gmem1_ARCACHE),
        .m_axi_gmem1_ARLEN(userdma_0_m_axi_gmem1_ARLEN),
        .m_axi_gmem1_ARLOCK(userdma_0_m_axi_gmem1_ARLOCK),
        .m_axi_gmem1_ARPROT(userdma_0_m_axi_gmem1_ARPROT),
        .m_axi_gmem1_ARQOS(userdma_0_m_axi_gmem1_ARQOS),
        .m_axi_gmem1_ARREADY(userdma_0_m_axi_gmem1_ARREADY),
        .m_axi_gmem1_ARSIZE(userdma_0_m_axi_gmem1_ARSIZE),
        .m_axi_gmem1_ARVALID(userdma_0_m_axi_gmem1_ARVALID),
        .m_axi_gmem1_AWREADY(1'b0),
        .m_axi_gmem1_BRESP({1'b0,1'b0}),
        .m_axi_gmem1_BVALID(1'b0),
        .m_axi_gmem1_RDATA(userdma_0_m_axi_gmem1_RDATA),
        .m_axi_gmem1_RLAST(userdma_0_m_axi_gmem1_RLAST),
        .m_axi_gmem1_RREADY(userdma_0_m_axi_gmem1_RREADY),
        .m_axi_gmem1_RRESP(userdma_0_m_axi_gmem1_RRESP),
        .m_axi_gmem1_RVALID(userdma_0_m_axi_gmem1_RVALID),
        .m_axi_gmem1_WREADY(1'b0),
        .outStreamTop_TDATA(userdma_0_outStreamTop_TDATA),
        .outStreamTop_TKEEP(userdma_0_outStreamTop_TKEEP),
        .outStreamTop_TLAST(userdma_0_outStreamTop_TLAST),
        .outStreamTop_TREADY(userdma_0_outStreamTop_TREADY),
        .outStreamTop_TSTRB(userdma_0_outStreamTop_TSTRB),
        .outStreamTop_TUSER(userdma_0_outStreamTop_TUSER),
        .outStreamTop_TVALID(userdma_0_outStreamTop_TVALID),
        .s_axi_control_ARADDR(axi_vip_0_axi_periph_M02_AXI_ARADDR[6:0]),
        .s_axi_control_ARREADY(axi_vip_0_axi_periph_M02_AXI_ARREADY),
        .s_axi_control_ARVALID(axi_vip_0_axi_periph_M02_AXI_ARVALID),
        .s_axi_control_AWADDR(axi_vip_0_axi_periph_M02_AXI_AWADDR[6:0]),
        .s_axi_control_AWREADY(axi_vip_0_axi_periph_M02_AXI_AWREADY),
        .s_axi_control_AWVALID(axi_vip_0_axi_periph_M02_AXI_AWVALID),
        .s_axi_control_BREADY(axi_vip_0_axi_periph_M02_AXI_BREADY),
        .s_axi_control_BRESP(axi_vip_0_axi_periph_M02_AXI_BRESP),
        .s_axi_control_BVALID(axi_vip_0_axi_periph_M02_AXI_BVALID),
        .s_axi_control_RDATA(axi_vip_0_axi_periph_M02_AXI_RDATA),
        .s_axi_control_RREADY(axi_vip_0_axi_periph_M02_AXI_RREADY),
        .s_axi_control_RRESP(axi_vip_0_axi_periph_M02_AXI_RRESP),
        .s_axi_control_RVALID(axi_vip_0_axi_periph_M02_AXI_RVALID),
        .s_axi_control_WDATA(axi_vip_0_axi_periph_M02_AXI_WDATA),
        .s_axi_control_WREADY(axi_vip_0_axi_periph_M02_AXI_WREADY),
        .s_axi_control_WSTRB(axi_vip_0_axi_periph_M02_AXI_WSTRB),
        .s_axi_control_WVALID(axi_vip_0_axi_periph_M02_AXI_WVALID));
endmodule

module design_1_axi_vip_0_axi_periph_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    M01_ACLK,
    M01_ARESETN,
    M01_AXI_araddr,
    M01_AXI_arready,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awready,
    M01_AXI_awvalid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    M02_ACLK,
    M02_ARESETN,
    M02_AXI_araddr,
    M02_AXI_arready,
    M02_AXI_arvalid,
    M02_AXI_awaddr,
    M02_AXI_awready,
    M02_AXI_awvalid,
    M02_AXI_bready,
    M02_AXI_bresp,
    M02_AXI_bvalid,
    M02_AXI_rdata,
    M02_AXI_rready,
    M02_AXI_rresp,
    M02_AXI_rvalid,
    M02_AXI_wdata,
    M02_AXI_wready,
    M02_AXI_wstrb,
    M02_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arready,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awready,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  input M00_AXI_arready;
  output M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  input M00_AXI_awready;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input M01_ACLK;
  input M01_ARESETN;
  output [31:0]M01_AXI_araddr;
  input M01_AXI_arready;
  output M01_AXI_arvalid;
  output [31:0]M01_AXI_awaddr;
  input M01_AXI_awready;
  output M01_AXI_awvalid;
  output M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  output M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  input M01_AXI_wready;
  output [3:0]M01_AXI_wstrb;
  output M01_AXI_wvalid;
  input M02_ACLK;
  input M02_ARESETN;
  output [31:0]M02_AXI_araddr;
  input M02_AXI_arready;
  output M02_AXI_arvalid;
  output [31:0]M02_AXI_awaddr;
  input M02_AXI_awready;
  output M02_AXI_awvalid;
  output M02_AXI_bready;
  input [1:0]M02_AXI_bresp;
  input M02_AXI_bvalid;
  input [31:0]M02_AXI_rdata;
  output M02_AXI_rready;
  input [1:0]M02_AXI_rresp;
  input M02_AXI_rvalid;
  output [31:0]M02_AXI_wdata;
  input M02_AXI_wready;
  output [3:0]M02_AXI_wstrb;
  output M02_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  output [0:0]S00_AXI_arready;
  input [0:0]S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  output [0:0]S00_AXI_awready;
  input [0:0]S00_AXI_awvalid;
  input [0:0]S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output [0:0]S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  input [0:0]S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output [0:0]S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  output [0:0]S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input [0:0]S00_AXI_wvalid;

  wire axi_vip_0_axi_periph_ACLK_net;
  wire axi_vip_0_axi_periph_ARESETN_net;
  wire [31:0]axi_vip_0_axi_periph_to_s00_couplers_ARADDR;
  wire [0:0]axi_vip_0_axi_periph_to_s00_couplers_ARREADY;
  wire [0:0]axi_vip_0_axi_periph_to_s00_couplers_ARVALID;
  wire [31:0]axi_vip_0_axi_periph_to_s00_couplers_AWADDR;
  wire [0:0]axi_vip_0_axi_periph_to_s00_couplers_AWREADY;
  wire [0:0]axi_vip_0_axi_periph_to_s00_couplers_AWVALID;
  wire [0:0]axi_vip_0_axi_periph_to_s00_couplers_BREADY;
  wire [1:0]axi_vip_0_axi_periph_to_s00_couplers_BRESP;
  wire [0:0]axi_vip_0_axi_periph_to_s00_couplers_BVALID;
  wire [31:0]axi_vip_0_axi_periph_to_s00_couplers_RDATA;
  wire [0:0]axi_vip_0_axi_periph_to_s00_couplers_RREADY;
  wire [1:0]axi_vip_0_axi_periph_to_s00_couplers_RRESP;
  wire [0:0]axi_vip_0_axi_periph_to_s00_couplers_RVALID;
  wire [31:0]axi_vip_0_axi_periph_to_s00_couplers_WDATA;
  wire [0:0]axi_vip_0_axi_periph_to_s00_couplers_WREADY;
  wire [3:0]axi_vip_0_axi_periph_to_s00_couplers_WSTRB;
  wire [0:0]axi_vip_0_axi_periph_to_s00_couplers_WVALID;
  wire [31:0]m00_couplers_to_axi_vip_0_axi_periph_ARADDR;
  wire m00_couplers_to_axi_vip_0_axi_periph_ARREADY;
  wire m00_couplers_to_axi_vip_0_axi_periph_ARVALID;
  wire [31:0]m00_couplers_to_axi_vip_0_axi_periph_AWADDR;
  wire m00_couplers_to_axi_vip_0_axi_periph_AWREADY;
  wire m00_couplers_to_axi_vip_0_axi_periph_AWVALID;
  wire m00_couplers_to_axi_vip_0_axi_periph_BREADY;
  wire [1:0]m00_couplers_to_axi_vip_0_axi_periph_BRESP;
  wire m00_couplers_to_axi_vip_0_axi_periph_BVALID;
  wire [31:0]m00_couplers_to_axi_vip_0_axi_periph_RDATA;
  wire m00_couplers_to_axi_vip_0_axi_periph_RREADY;
  wire [1:0]m00_couplers_to_axi_vip_0_axi_periph_RRESP;
  wire m00_couplers_to_axi_vip_0_axi_periph_RVALID;
  wire [31:0]m00_couplers_to_axi_vip_0_axi_periph_WDATA;
  wire m00_couplers_to_axi_vip_0_axi_periph_WREADY;
  wire [3:0]m00_couplers_to_axi_vip_0_axi_periph_WSTRB;
  wire m00_couplers_to_axi_vip_0_axi_periph_WVALID;
  wire [31:0]m01_couplers_to_axi_vip_0_axi_periph_ARADDR;
  wire m01_couplers_to_axi_vip_0_axi_periph_ARREADY;
  wire m01_couplers_to_axi_vip_0_axi_periph_ARVALID;
  wire [31:0]m01_couplers_to_axi_vip_0_axi_periph_AWADDR;
  wire m01_couplers_to_axi_vip_0_axi_periph_AWREADY;
  wire m01_couplers_to_axi_vip_0_axi_periph_AWVALID;
  wire m01_couplers_to_axi_vip_0_axi_periph_BREADY;
  wire [1:0]m01_couplers_to_axi_vip_0_axi_periph_BRESP;
  wire m01_couplers_to_axi_vip_0_axi_periph_BVALID;
  wire [31:0]m01_couplers_to_axi_vip_0_axi_periph_RDATA;
  wire m01_couplers_to_axi_vip_0_axi_periph_RREADY;
  wire [1:0]m01_couplers_to_axi_vip_0_axi_periph_RRESP;
  wire m01_couplers_to_axi_vip_0_axi_periph_RVALID;
  wire [31:0]m01_couplers_to_axi_vip_0_axi_periph_WDATA;
  wire m01_couplers_to_axi_vip_0_axi_periph_WREADY;
  wire [3:0]m01_couplers_to_axi_vip_0_axi_periph_WSTRB;
  wire m01_couplers_to_axi_vip_0_axi_periph_WVALID;
  wire [31:0]m02_couplers_to_axi_vip_0_axi_periph_ARADDR;
  wire m02_couplers_to_axi_vip_0_axi_periph_ARREADY;
  wire m02_couplers_to_axi_vip_0_axi_periph_ARVALID;
  wire [31:0]m02_couplers_to_axi_vip_0_axi_periph_AWADDR;
  wire m02_couplers_to_axi_vip_0_axi_periph_AWREADY;
  wire m02_couplers_to_axi_vip_0_axi_periph_AWVALID;
  wire m02_couplers_to_axi_vip_0_axi_periph_BREADY;
  wire [1:0]m02_couplers_to_axi_vip_0_axi_periph_BRESP;
  wire m02_couplers_to_axi_vip_0_axi_periph_BVALID;
  wire [31:0]m02_couplers_to_axi_vip_0_axi_periph_RDATA;
  wire m02_couplers_to_axi_vip_0_axi_periph_RREADY;
  wire [1:0]m02_couplers_to_axi_vip_0_axi_periph_RRESP;
  wire m02_couplers_to_axi_vip_0_axi_periph_RVALID;
  wire [31:0]m02_couplers_to_axi_vip_0_axi_periph_WDATA;
  wire m02_couplers_to_axi_vip_0_axi_periph_WREADY;
  wire [3:0]m02_couplers_to_axi_vip_0_axi_periph_WSTRB;
  wire m02_couplers_to_axi_vip_0_axi_periph_WVALID;
  wire [31:0]s00_couplers_to_xbar_ARADDR;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire [0:0]s00_couplers_to_xbar_ARVALID;
  wire [31:0]s00_couplers_to_xbar_AWADDR;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire [0:0]s00_couplers_to_xbar_AWVALID;
  wire [0:0]s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [31:0]s00_couplers_to_xbar_RDATA;
  wire [0:0]s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [31:0]s00_couplers_to_xbar_WDATA;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [3:0]s00_couplers_to_xbar_WSTRB;
  wire [0:0]s00_couplers_to_xbar_WVALID;
  wire [31:0]xbar_to_m00_couplers_ARADDR;
  wire xbar_to_m00_couplers_ARREADY;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [31:0]xbar_to_m00_couplers_AWADDR;
  wire xbar_to_m00_couplers_AWREADY;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire xbar_to_m00_couplers_BVALID;
  wire [31:0]xbar_to_m00_couplers_RDATA;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire xbar_to_m00_couplers_RVALID;
  wire [31:0]xbar_to_m00_couplers_WDATA;
  wire xbar_to_m00_couplers_WREADY;
  wire [3:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [63:32]xbar_to_m01_couplers_ARADDR;
  wire xbar_to_m01_couplers_ARREADY;
  wire [1:1]xbar_to_m01_couplers_ARVALID;
  wire [63:32]xbar_to_m01_couplers_AWADDR;
  wire xbar_to_m01_couplers_AWREADY;
  wire [1:1]xbar_to_m01_couplers_AWVALID;
  wire [1:1]xbar_to_m01_couplers_BREADY;
  wire [1:0]xbar_to_m01_couplers_BRESP;
  wire xbar_to_m01_couplers_BVALID;
  wire [31:0]xbar_to_m01_couplers_RDATA;
  wire [1:1]xbar_to_m01_couplers_RREADY;
  wire [1:0]xbar_to_m01_couplers_RRESP;
  wire xbar_to_m01_couplers_RVALID;
  wire [63:32]xbar_to_m01_couplers_WDATA;
  wire xbar_to_m01_couplers_WREADY;
  wire [7:4]xbar_to_m01_couplers_WSTRB;
  wire [1:1]xbar_to_m01_couplers_WVALID;
  wire [95:64]xbar_to_m02_couplers_ARADDR;
  wire xbar_to_m02_couplers_ARREADY;
  wire [2:2]xbar_to_m02_couplers_ARVALID;
  wire [95:64]xbar_to_m02_couplers_AWADDR;
  wire xbar_to_m02_couplers_AWREADY;
  wire [2:2]xbar_to_m02_couplers_AWVALID;
  wire [2:2]xbar_to_m02_couplers_BREADY;
  wire [1:0]xbar_to_m02_couplers_BRESP;
  wire xbar_to_m02_couplers_BVALID;
  wire [31:0]xbar_to_m02_couplers_RDATA;
  wire [2:2]xbar_to_m02_couplers_RREADY;
  wire [1:0]xbar_to_m02_couplers_RRESP;
  wire xbar_to_m02_couplers_RVALID;
  wire [95:64]xbar_to_m02_couplers_WDATA;
  wire xbar_to_m02_couplers_WREADY;
  wire [11:8]xbar_to_m02_couplers_WSTRB;
  wire [2:2]xbar_to_m02_couplers_WVALID;

  assign M00_AXI_araddr[31:0] = m00_couplers_to_axi_vip_0_axi_periph_ARADDR;
  assign M00_AXI_arvalid = m00_couplers_to_axi_vip_0_axi_periph_ARVALID;
  assign M00_AXI_awaddr[31:0] = m00_couplers_to_axi_vip_0_axi_periph_AWADDR;
  assign M00_AXI_awvalid = m00_couplers_to_axi_vip_0_axi_periph_AWVALID;
  assign M00_AXI_bready = m00_couplers_to_axi_vip_0_axi_periph_BREADY;
  assign M00_AXI_rready = m00_couplers_to_axi_vip_0_axi_periph_RREADY;
  assign M00_AXI_wdata[31:0] = m00_couplers_to_axi_vip_0_axi_periph_WDATA;
  assign M00_AXI_wstrb[3:0] = m00_couplers_to_axi_vip_0_axi_periph_WSTRB;
  assign M00_AXI_wvalid = m00_couplers_to_axi_vip_0_axi_periph_WVALID;
  assign M01_AXI_araddr[31:0] = m01_couplers_to_axi_vip_0_axi_periph_ARADDR;
  assign M01_AXI_arvalid = m01_couplers_to_axi_vip_0_axi_periph_ARVALID;
  assign M01_AXI_awaddr[31:0] = m01_couplers_to_axi_vip_0_axi_periph_AWADDR;
  assign M01_AXI_awvalid = m01_couplers_to_axi_vip_0_axi_periph_AWVALID;
  assign M01_AXI_bready = m01_couplers_to_axi_vip_0_axi_periph_BREADY;
  assign M01_AXI_rready = m01_couplers_to_axi_vip_0_axi_periph_RREADY;
  assign M01_AXI_wdata[31:0] = m01_couplers_to_axi_vip_0_axi_periph_WDATA;
  assign M01_AXI_wstrb[3:0] = m01_couplers_to_axi_vip_0_axi_periph_WSTRB;
  assign M01_AXI_wvalid = m01_couplers_to_axi_vip_0_axi_periph_WVALID;
  assign M02_AXI_araddr[31:0] = m02_couplers_to_axi_vip_0_axi_periph_ARADDR;
  assign M02_AXI_arvalid = m02_couplers_to_axi_vip_0_axi_periph_ARVALID;
  assign M02_AXI_awaddr[31:0] = m02_couplers_to_axi_vip_0_axi_periph_AWADDR;
  assign M02_AXI_awvalid = m02_couplers_to_axi_vip_0_axi_periph_AWVALID;
  assign M02_AXI_bready = m02_couplers_to_axi_vip_0_axi_periph_BREADY;
  assign M02_AXI_rready = m02_couplers_to_axi_vip_0_axi_periph_RREADY;
  assign M02_AXI_wdata[31:0] = m02_couplers_to_axi_vip_0_axi_periph_WDATA;
  assign M02_AXI_wstrb[3:0] = m02_couplers_to_axi_vip_0_axi_periph_WSTRB;
  assign M02_AXI_wvalid = m02_couplers_to_axi_vip_0_axi_periph_WVALID;
  assign S00_AXI_arready[0] = axi_vip_0_axi_periph_to_s00_couplers_ARREADY;
  assign S00_AXI_awready[0] = axi_vip_0_axi_periph_to_s00_couplers_AWREADY;
  assign S00_AXI_bresp[1:0] = axi_vip_0_axi_periph_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid[0] = axi_vip_0_axi_periph_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = axi_vip_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rresp[1:0] = axi_vip_0_axi_periph_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid[0] = axi_vip_0_axi_periph_to_s00_couplers_RVALID;
  assign S00_AXI_wready[0] = axi_vip_0_axi_periph_to_s00_couplers_WREADY;
  assign axi_vip_0_axi_periph_ACLK_net = ACLK;
  assign axi_vip_0_axi_periph_ARESETN_net = ARESETN;
  assign axi_vip_0_axi_periph_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign axi_vip_0_axi_periph_to_s00_couplers_ARVALID = S00_AXI_arvalid[0];
  assign axi_vip_0_axi_periph_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign axi_vip_0_axi_periph_to_s00_couplers_AWVALID = S00_AXI_awvalid[0];
  assign axi_vip_0_axi_periph_to_s00_couplers_BREADY = S00_AXI_bready[0];
  assign axi_vip_0_axi_periph_to_s00_couplers_RREADY = S00_AXI_rready[0];
  assign axi_vip_0_axi_periph_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign axi_vip_0_axi_periph_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign axi_vip_0_axi_periph_to_s00_couplers_WVALID = S00_AXI_wvalid[0];
  assign m00_couplers_to_axi_vip_0_axi_periph_ARREADY = M00_AXI_arready;
  assign m00_couplers_to_axi_vip_0_axi_periph_AWREADY = M00_AXI_awready;
  assign m00_couplers_to_axi_vip_0_axi_periph_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_axi_vip_0_axi_periph_BVALID = M00_AXI_bvalid;
  assign m00_couplers_to_axi_vip_0_axi_periph_RDATA = M00_AXI_rdata[31:0];
  assign m00_couplers_to_axi_vip_0_axi_periph_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_axi_vip_0_axi_periph_RVALID = M00_AXI_rvalid;
  assign m00_couplers_to_axi_vip_0_axi_periph_WREADY = M00_AXI_wready;
  assign m01_couplers_to_axi_vip_0_axi_periph_ARREADY = M01_AXI_arready;
  assign m01_couplers_to_axi_vip_0_axi_periph_AWREADY = M01_AXI_awready;
  assign m01_couplers_to_axi_vip_0_axi_periph_BRESP = M01_AXI_bresp[1:0];
  assign m01_couplers_to_axi_vip_0_axi_periph_BVALID = M01_AXI_bvalid;
  assign m01_couplers_to_axi_vip_0_axi_periph_RDATA = M01_AXI_rdata[31:0];
  assign m01_couplers_to_axi_vip_0_axi_periph_RRESP = M01_AXI_rresp[1:0];
  assign m01_couplers_to_axi_vip_0_axi_periph_RVALID = M01_AXI_rvalid;
  assign m01_couplers_to_axi_vip_0_axi_periph_WREADY = M01_AXI_wready;
  assign m02_couplers_to_axi_vip_0_axi_periph_ARREADY = M02_AXI_arready;
  assign m02_couplers_to_axi_vip_0_axi_periph_AWREADY = M02_AXI_awready;
  assign m02_couplers_to_axi_vip_0_axi_periph_BRESP = M02_AXI_bresp[1:0];
  assign m02_couplers_to_axi_vip_0_axi_periph_BVALID = M02_AXI_bvalid;
  assign m02_couplers_to_axi_vip_0_axi_periph_RDATA = M02_AXI_rdata[31:0];
  assign m02_couplers_to_axi_vip_0_axi_periph_RRESP = M02_AXI_rresp[1:0];
  assign m02_couplers_to_axi_vip_0_axi_periph_RVALID = M02_AXI_rvalid;
  assign m02_couplers_to_axi_vip_0_axi_periph_WREADY = M02_AXI_wready;
  m00_couplers_imp_NA355P m00_couplers
       (.M_ACLK(axi_vip_0_axi_periph_ACLK_net),
        .M_ARESETN(axi_vip_0_axi_periph_ARESETN_net),
        .M_AXI_araddr(m00_couplers_to_axi_vip_0_axi_periph_ARADDR),
        .M_AXI_arready(m00_couplers_to_axi_vip_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m00_couplers_to_axi_vip_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_axi_vip_0_axi_periph_AWADDR),
        .M_AXI_awready(m00_couplers_to_axi_vip_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m00_couplers_to_axi_vip_0_axi_periph_AWVALID),
        .M_AXI_bready(m00_couplers_to_axi_vip_0_axi_periph_BREADY),
        .M_AXI_bresp(m00_couplers_to_axi_vip_0_axi_periph_BRESP),
        .M_AXI_bvalid(m00_couplers_to_axi_vip_0_axi_periph_BVALID),
        .M_AXI_rdata(m00_couplers_to_axi_vip_0_axi_periph_RDATA),
        .M_AXI_rready(m00_couplers_to_axi_vip_0_axi_periph_RREADY),
        .M_AXI_rresp(m00_couplers_to_axi_vip_0_axi_periph_RRESP),
        .M_AXI_rvalid(m00_couplers_to_axi_vip_0_axi_periph_RVALID),
        .M_AXI_wdata(m00_couplers_to_axi_vip_0_axi_periph_WDATA),
        .M_AXI_wready(m00_couplers_to_axi_vip_0_axi_periph_WREADY),
        .M_AXI_wstrb(m00_couplers_to_axi_vip_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_axi_vip_0_axi_periph_WVALID),
        .S_ACLK(axi_vip_0_axi_periph_ACLK_net),
        .S_ARESETN(axi_vip_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  m01_couplers_imp_1GCZ8ZG m01_couplers
       (.M_ACLK(axi_vip_0_axi_periph_ACLK_net),
        .M_ARESETN(axi_vip_0_axi_periph_ARESETN_net),
        .M_AXI_araddr(m01_couplers_to_axi_vip_0_axi_periph_ARADDR),
        .M_AXI_arready(m01_couplers_to_axi_vip_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m01_couplers_to_axi_vip_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m01_couplers_to_axi_vip_0_axi_periph_AWADDR),
        .M_AXI_awready(m01_couplers_to_axi_vip_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m01_couplers_to_axi_vip_0_axi_periph_AWVALID),
        .M_AXI_bready(m01_couplers_to_axi_vip_0_axi_periph_BREADY),
        .M_AXI_bresp(m01_couplers_to_axi_vip_0_axi_periph_BRESP),
        .M_AXI_bvalid(m01_couplers_to_axi_vip_0_axi_periph_BVALID),
        .M_AXI_rdata(m01_couplers_to_axi_vip_0_axi_periph_RDATA),
        .M_AXI_rready(m01_couplers_to_axi_vip_0_axi_periph_RREADY),
        .M_AXI_rresp(m01_couplers_to_axi_vip_0_axi_periph_RRESP),
        .M_AXI_rvalid(m01_couplers_to_axi_vip_0_axi_periph_RVALID),
        .M_AXI_wdata(m01_couplers_to_axi_vip_0_axi_periph_WDATA),
        .M_AXI_wready(m01_couplers_to_axi_vip_0_axi_periph_WREADY),
        .M_AXI_wstrb(m01_couplers_to_axi_vip_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m01_couplers_to_axi_vip_0_axi_periph_WVALID),
        .S_ACLK(axi_vip_0_axi_periph_ACLK_net),
        .S_ARESETN(axi_vip_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m01_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m01_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m01_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m01_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m01_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m01_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m01_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m01_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m01_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m01_couplers_RDATA),
        .S_AXI_rready(xbar_to_m01_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m01_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m01_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m01_couplers_WDATA),
        .S_AXI_wready(xbar_to_m01_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m01_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m01_couplers_WVALID));
  m02_couplers_imp_NX0Y1Q m02_couplers
       (.M_ACLK(axi_vip_0_axi_periph_ACLK_net),
        .M_ARESETN(axi_vip_0_axi_periph_ARESETN_net),
        .M_AXI_araddr(m02_couplers_to_axi_vip_0_axi_periph_ARADDR),
        .M_AXI_arready(m02_couplers_to_axi_vip_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m02_couplers_to_axi_vip_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m02_couplers_to_axi_vip_0_axi_periph_AWADDR),
        .M_AXI_awready(m02_couplers_to_axi_vip_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m02_couplers_to_axi_vip_0_axi_periph_AWVALID),
        .M_AXI_bready(m02_couplers_to_axi_vip_0_axi_periph_BREADY),
        .M_AXI_bresp(m02_couplers_to_axi_vip_0_axi_periph_BRESP),
        .M_AXI_bvalid(m02_couplers_to_axi_vip_0_axi_periph_BVALID),
        .M_AXI_rdata(m02_couplers_to_axi_vip_0_axi_periph_RDATA),
        .M_AXI_rready(m02_couplers_to_axi_vip_0_axi_periph_RREADY),
        .M_AXI_rresp(m02_couplers_to_axi_vip_0_axi_periph_RRESP),
        .M_AXI_rvalid(m02_couplers_to_axi_vip_0_axi_periph_RVALID),
        .M_AXI_wdata(m02_couplers_to_axi_vip_0_axi_periph_WDATA),
        .M_AXI_wready(m02_couplers_to_axi_vip_0_axi_periph_WREADY),
        .M_AXI_wstrb(m02_couplers_to_axi_vip_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m02_couplers_to_axi_vip_0_axi_periph_WVALID),
        .S_ACLK(axi_vip_0_axi_periph_ACLK_net),
        .S_ARESETN(axi_vip_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m02_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m02_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m02_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m02_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m02_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m02_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m02_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m02_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m02_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m02_couplers_RDATA),
        .S_AXI_rready(xbar_to_m02_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m02_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m02_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m02_couplers_WDATA),
        .S_AXI_wready(xbar_to_m02_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m02_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m02_couplers_WVALID));
  s00_couplers_imp_1BEKOF3 s00_couplers
       (.M_ACLK(axi_vip_0_axi_periph_ACLK_net),
        .M_ARESETN(axi_vip_0_axi_periph_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(axi_vip_0_axi_periph_ACLK_net),
        .S_ARESETN(axi_vip_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(axi_vip_0_axi_periph_to_s00_couplers_ARADDR),
        .S_AXI_arready(axi_vip_0_axi_periph_to_s00_couplers_ARREADY),
        .S_AXI_arvalid(axi_vip_0_axi_periph_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(axi_vip_0_axi_periph_to_s00_couplers_AWADDR),
        .S_AXI_awready(axi_vip_0_axi_periph_to_s00_couplers_AWREADY),
        .S_AXI_awvalid(axi_vip_0_axi_periph_to_s00_couplers_AWVALID),
        .S_AXI_bready(axi_vip_0_axi_periph_to_s00_couplers_BREADY),
        .S_AXI_bresp(axi_vip_0_axi_periph_to_s00_couplers_BRESP),
        .S_AXI_bvalid(axi_vip_0_axi_periph_to_s00_couplers_BVALID),
        .S_AXI_rdata(axi_vip_0_axi_periph_to_s00_couplers_RDATA),
        .S_AXI_rready(axi_vip_0_axi_periph_to_s00_couplers_RREADY),
        .S_AXI_rresp(axi_vip_0_axi_periph_to_s00_couplers_RRESP),
        .S_AXI_rvalid(axi_vip_0_axi_periph_to_s00_couplers_RVALID),
        .S_AXI_wdata(axi_vip_0_axi_periph_to_s00_couplers_WDATA),
        .S_AXI_wready(axi_vip_0_axi_periph_to_s00_couplers_WREADY),
        .S_AXI_wstrb(axi_vip_0_axi_periph_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(axi_vip_0_axi_periph_to_s00_couplers_WVALID));
  design_1_xbar_0 xbar
       (.aclk(axi_vip_0_axi_periph_ACLK_net),
        .aresetn(axi_vip_0_axi_periph_ARESETN_net),
        .m_axi_araddr({xbar_to_m02_couplers_ARADDR,xbar_to_m01_couplers_ARADDR,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arready({xbar_to_m02_couplers_ARREADY,xbar_to_m01_couplers_ARREADY,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arvalid({xbar_to_m02_couplers_ARVALID,xbar_to_m01_couplers_ARVALID,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_m02_couplers_AWADDR,xbar_to_m01_couplers_AWADDR,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awready({xbar_to_m02_couplers_AWREADY,xbar_to_m01_couplers_AWREADY,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awvalid({xbar_to_m02_couplers_AWVALID,xbar_to_m01_couplers_AWVALID,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bready({xbar_to_m02_couplers_BREADY,xbar_to_m01_couplers_BREADY,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_m02_couplers_BRESP,xbar_to_m01_couplers_BRESP,xbar_to_m00_couplers_BRESP}),
        .m_axi_bvalid({xbar_to_m02_couplers_BVALID,xbar_to_m01_couplers_BVALID,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_m02_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m00_couplers_RDATA}),
        .m_axi_rready({xbar_to_m02_couplers_RREADY,xbar_to_m01_couplers_RREADY,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_m02_couplers_RRESP,xbar_to_m01_couplers_RRESP,xbar_to_m00_couplers_RRESP}),
        .m_axi_rvalid({xbar_to_m02_couplers_RVALID,xbar_to_m01_couplers_RVALID,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_m02_couplers_WDATA,xbar_to_m01_couplers_WDATA,xbar_to_m00_couplers_WDATA}),
        .m_axi_wready({xbar_to_m02_couplers_WREADY,xbar_to_m01_couplers_WREADY,xbar_to_m00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_m02_couplers_WSTRB,xbar_to_m01_couplers_WSTRB,xbar_to_m00_couplers_WSTRB}),
        .m_axi_wvalid({xbar_to_m02_couplers_WVALID,xbar_to_m01_couplers_WVALID,xbar_to_m00_couplers_WVALID}),
        .s_axi_araddr(s00_couplers_to_xbar_ARADDR),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arready(s00_couplers_to_xbar_ARREADY),
        .s_axi_arvalid(s00_couplers_to_xbar_ARVALID),
        .s_axi_awaddr(s00_couplers_to_xbar_AWADDR),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awready(s00_couplers_to_xbar_AWREADY),
        .s_axi_awvalid(s00_couplers_to_xbar_AWVALID),
        .s_axi_bready(s00_couplers_to_xbar_BREADY),
        .s_axi_bresp(s00_couplers_to_xbar_BRESP),
        .s_axi_bvalid(s00_couplers_to_xbar_BVALID),
        .s_axi_rdata(s00_couplers_to_xbar_RDATA),
        .s_axi_rready(s00_couplers_to_xbar_RREADY),
        .s_axi_rresp(s00_couplers_to_xbar_RRESP),
        .s_axi_rvalid(s00_couplers_to_xbar_RVALID),
        .s_axi_wdata(s00_couplers_to_xbar_WDATA),
        .s_axi_wready(s00_couplers_to_xbar_WREADY),
        .s_axi_wstrb(s00_couplers_to_xbar_WSTRB),
        .s_axi_wvalid(s00_couplers_to_xbar_WVALID));
endmodule

module m00_couplers_imp_NA355P
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m00_couplers_to_m00_couplers_ARADDR;
  wire m00_couplers_to_m00_couplers_ARREADY;
  wire m00_couplers_to_m00_couplers_ARVALID;
  wire [31:0]m00_couplers_to_m00_couplers_AWADDR;
  wire m00_couplers_to_m00_couplers_AWREADY;
  wire m00_couplers_to_m00_couplers_AWVALID;
  wire m00_couplers_to_m00_couplers_BREADY;
  wire [1:0]m00_couplers_to_m00_couplers_BRESP;
  wire m00_couplers_to_m00_couplers_BVALID;
  wire [31:0]m00_couplers_to_m00_couplers_RDATA;
  wire m00_couplers_to_m00_couplers_RREADY;
  wire [1:0]m00_couplers_to_m00_couplers_RRESP;
  wire m00_couplers_to_m00_couplers_RVALID;
  wire [31:0]m00_couplers_to_m00_couplers_WDATA;
  wire m00_couplers_to_m00_couplers_WREADY;
  wire [3:0]m00_couplers_to_m00_couplers_WSTRB;
  wire m00_couplers_to_m00_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m00_couplers_to_m00_couplers_ARADDR;
  assign M_AXI_arvalid = m00_couplers_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m00_couplers_to_m00_couplers_AWADDR;
  assign M_AXI_awvalid = m00_couplers_to_m00_couplers_AWVALID;
  assign M_AXI_bready = m00_couplers_to_m00_couplers_BREADY;
  assign M_AXI_rready = m00_couplers_to_m00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m00_couplers_to_m00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m00_couplers_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid = m00_couplers_to_m00_couplers_WVALID;
  assign S_AXI_arready = m00_couplers_to_m00_couplers_ARREADY;
  assign S_AXI_awready = m00_couplers_to_m00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m00_couplers_to_m00_couplers_BRESP;
  assign S_AXI_bvalid = m00_couplers_to_m00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m00_couplers_to_m00_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m00_couplers_to_m00_couplers_RRESP;
  assign S_AXI_rvalid = m00_couplers_to_m00_couplers_RVALID;
  assign S_AXI_wready = m00_couplers_to_m00_couplers_WREADY;
  assign m00_couplers_to_m00_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m00_couplers_to_m00_couplers_ARREADY = M_AXI_arready;
  assign m00_couplers_to_m00_couplers_ARVALID = S_AXI_arvalid;
  assign m00_couplers_to_m00_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m00_couplers_to_m00_couplers_AWREADY = M_AXI_awready;
  assign m00_couplers_to_m00_couplers_AWVALID = S_AXI_awvalid;
  assign m00_couplers_to_m00_couplers_BREADY = S_AXI_bready;
  assign m00_couplers_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign m00_couplers_to_m00_couplers_BVALID = M_AXI_bvalid;
  assign m00_couplers_to_m00_couplers_RDATA = M_AXI_rdata[31:0];
  assign m00_couplers_to_m00_couplers_RREADY = S_AXI_rready;
  assign m00_couplers_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign m00_couplers_to_m00_couplers_RVALID = M_AXI_rvalid;
  assign m00_couplers_to_m00_couplers_WDATA = S_AXI_wdata[31:0];
  assign m00_couplers_to_m00_couplers_WREADY = M_AXI_wready;
  assign m00_couplers_to_m00_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m00_couplers_to_m00_couplers_WVALID = S_AXI_wvalid;
endmodule

module m01_couplers_imp_1GCZ8ZG
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m01_couplers_to_m01_couplers_ARADDR;
  wire m01_couplers_to_m01_couplers_ARREADY;
  wire m01_couplers_to_m01_couplers_ARVALID;
  wire [31:0]m01_couplers_to_m01_couplers_AWADDR;
  wire m01_couplers_to_m01_couplers_AWREADY;
  wire m01_couplers_to_m01_couplers_AWVALID;
  wire m01_couplers_to_m01_couplers_BREADY;
  wire [1:0]m01_couplers_to_m01_couplers_BRESP;
  wire m01_couplers_to_m01_couplers_BVALID;
  wire [31:0]m01_couplers_to_m01_couplers_RDATA;
  wire m01_couplers_to_m01_couplers_RREADY;
  wire [1:0]m01_couplers_to_m01_couplers_RRESP;
  wire m01_couplers_to_m01_couplers_RVALID;
  wire [31:0]m01_couplers_to_m01_couplers_WDATA;
  wire m01_couplers_to_m01_couplers_WREADY;
  wire [3:0]m01_couplers_to_m01_couplers_WSTRB;
  wire m01_couplers_to_m01_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m01_couplers_to_m01_couplers_ARADDR;
  assign M_AXI_arvalid = m01_couplers_to_m01_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m01_couplers_to_m01_couplers_AWADDR;
  assign M_AXI_awvalid = m01_couplers_to_m01_couplers_AWVALID;
  assign M_AXI_bready = m01_couplers_to_m01_couplers_BREADY;
  assign M_AXI_rready = m01_couplers_to_m01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m01_couplers_to_m01_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m01_couplers_to_m01_couplers_WSTRB;
  assign M_AXI_wvalid = m01_couplers_to_m01_couplers_WVALID;
  assign S_AXI_arready = m01_couplers_to_m01_couplers_ARREADY;
  assign S_AXI_awready = m01_couplers_to_m01_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m01_couplers_to_m01_couplers_BRESP;
  assign S_AXI_bvalid = m01_couplers_to_m01_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m01_couplers_to_m01_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m01_couplers_to_m01_couplers_RRESP;
  assign S_AXI_rvalid = m01_couplers_to_m01_couplers_RVALID;
  assign S_AXI_wready = m01_couplers_to_m01_couplers_WREADY;
  assign m01_couplers_to_m01_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m01_couplers_to_m01_couplers_ARREADY = M_AXI_arready;
  assign m01_couplers_to_m01_couplers_ARVALID = S_AXI_arvalid;
  assign m01_couplers_to_m01_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m01_couplers_to_m01_couplers_AWREADY = M_AXI_awready;
  assign m01_couplers_to_m01_couplers_AWVALID = S_AXI_awvalid;
  assign m01_couplers_to_m01_couplers_BREADY = S_AXI_bready;
  assign m01_couplers_to_m01_couplers_BRESP = M_AXI_bresp[1:0];
  assign m01_couplers_to_m01_couplers_BVALID = M_AXI_bvalid;
  assign m01_couplers_to_m01_couplers_RDATA = M_AXI_rdata[31:0];
  assign m01_couplers_to_m01_couplers_RREADY = S_AXI_rready;
  assign m01_couplers_to_m01_couplers_RRESP = M_AXI_rresp[1:0];
  assign m01_couplers_to_m01_couplers_RVALID = M_AXI_rvalid;
  assign m01_couplers_to_m01_couplers_WDATA = S_AXI_wdata[31:0];
  assign m01_couplers_to_m01_couplers_WREADY = M_AXI_wready;
  assign m01_couplers_to_m01_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m01_couplers_to_m01_couplers_WVALID = S_AXI_wvalid;
endmodule

module m02_couplers_imp_NX0Y1Q
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m02_couplers_to_m02_couplers_ARADDR;
  wire m02_couplers_to_m02_couplers_ARREADY;
  wire m02_couplers_to_m02_couplers_ARVALID;
  wire [31:0]m02_couplers_to_m02_couplers_AWADDR;
  wire m02_couplers_to_m02_couplers_AWREADY;
  wire m02_couplers_to_m02_couplers_AWVALID;
  wire m02_couplers_to_m02_couplers_BREADY;
  wire [1:0]m02_couplers_to_m02_couplers_BRESP;
  wire m02_couplers_to_m02_couplers_BVALID;
  wire [31:0]m02_couplers_to_m02_couplers_RDATA;
  wire m02_couplers_to_m02_couplers_RREADY;
  wire [1:0]m02_couplers_to_m02_couplers_RRESP;
  wire m02_couplers_to_m02_couplers_RVALID;
  wire [31:0]m02_couplers_to_m02_couplers_WDATA;
  wire m02_couplers_to_m02_couplers_WREADY;
  wire [3:0]m02_couplers_to_m02_couplers_WSTRB;
  wire m02_couplers_to_m02_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m02_couplers_to_m02_couplers_ARADDR;
  assign M_AXI_arvalid = m02_couplers_to_m02_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m02_couplers_to_m02_couplers_AWADDR;
  assign M_AXI_awvalid = m02_couplers_to_m02_couplers_AWVALID;
  assign M_AXI_bready = m02_couplers_to_m02_couplers_BREADY;
  assign M_AXI_rready = m02_couplers_to_m02_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m02_couplers_to_m02_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m02_couplers_to_m02_couplers_WSTRB;
  assign M_AXI_wvalid = m02_couplers_to_m02_couplers_WVALID;
  assign S_AXI_arready = m02_couplers_to_m02_couplers_ARREADY;
  assign S_AXI_awready = m02_couplers_to_m02_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m02_couplers_to_m02_couplers_BRESP;
  assign S_AXI_bvalid = m02_couplers_to_m02_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m02_couplers_to_m02_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m02_couplers_to_m02_couplers_RRESP;
  assign S_AXI_rvalid = m02_couplers_to_m02_couplers_RVALID;
  assign S_AXI_wready = m02_couplers_to_m02_couplers_WREADY;
  assign m02_couplers_to_m02_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m02_couplers_to_m02_couplers_ARREADY = M_AXI_arready;
  assign m02_couplers_to_m02_couplers_ARVALID = S_AXI_arvalid;
  assign m02_couplers_to_m02_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m02_couplers_to_m02_couplers_AWREADY = M_AXI_awready;
  assign m02_couplers_to_m02_couplers_AWVALID = S_AXI_awvalid;
  assign m02_couplers_to_m02_couplers_BREADY = S_AXI_bready;
  assign m02_couplers_to_m02_couplers_BRESP = M_AXI_bresp[1:0];
  assign m02_couplers_to_m02_couplers_BVALID = M_AXI_bvalid;
  assign m02_couplers_to_m02_couplers_RDATA = M_AXI_rdata[31:0];
  assign m02_couplers_to_m02_couplers_RREADY = S_AXI_rready;
  assign m02_couplers_to_m02_couplers_RRESP = M_AXI_rresp[1:0];
  assign m02_couplers_to_m02_couplers_RVALID = M_AXI_rvalid;
  assign m02_couplers_to_m02_couplers_WDATA = S_AXI_wdata[31:0];
  assign m02_couplers_to_m02_couplers_WREADY = M_AXI_wready;
  assign m02_couplers_to_m02_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m02_couplers_to_m02_couplers_WVALID = S_AXI_wvalid;
endmodule

module s00_couplers_imp_1BEKOF3
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]s00_couplers_to_s00_couplers_ARADDR;
  wire [0:0]s00_couplers_to_s00_couplers_ARREADY;
  wire [0:0]s00_couplers_to_s00_couplers_ARVALID;
  wire [31:0]s00_couplers_to_s00_couplers_AWADDR;
  wire [0:0]s00_couplers_to_s00_couplers_AWREADY;
  wire [0:0]s00_couplers_to_s00_couplers_AWVALID;
  wire [0:0]s00_couplers_to_s00_couplers_BREADY;
  wire [1:0]s00_couplers_to_s00_couplers_BRESP;
  wire [0:0]s00_couplers_to_s00_couplers_BVALID;
  wire [31:0]s00_couplers_to_s00_couplers_RDATA;
  wire [0:0]s00_couplers_to_s00_couplers_RREADY;
  wire [1:0]s00_couplers_to_s00_couplers_RRESP;
  wire [0:0]s00_couplers_to_s00_couplers_RVALID;
  wire [31:0]s00_couplers_to_s00_couplers_WDATA;
  wire [0:0]s00_couplers_to_s00_couplers_WREADY;
  wire [3:0]s00_couplers_to_s00_couplers_WSTRB;
  wire [0:0]s00_couplers_to_s00_couplers_WVALID;

  assign M_AXI_araddr[31:0] = s00_couplers_to_s00_couplers_ARADDR;
  assign M_AXI_arvalid[0] = s00_couplers_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = s00_couplers_to_s00_couplers_AWADDR;
  assign M_AXI_awvalid[0] = s00_couplers_to_s00_couplers_AWVALID;
  assign M_AXI_bready[0] = s00_couplers_to_s00_couplers_BREADY;
  assign M_AXI_rready[0] = s00_couplers_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = s00_couplers_to_s00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = s00_couplers_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid[0] = s00_couplers_to_s00_couplers_WVALID;
  assign S_AXI_arready[0] = s00_couplers_to_s00_couplers_ARREADY;
  assign S_AXI_awready[0] = s00_couplers_to_s00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = s00_couplers_to_s00_couplers_BRESP;
  assign S_AXI_bvalid[0] = s00_couplers_to_s00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_s00_couplers_RDATA;
  assign S_AXI_rresp[1:0] = s00_couplers_to_s00_couplers_RRESP;
  assign S_AXI_rvalid[0] = s00_couplers_to_s00_couplers_RVALID;
  assign S_AXI_wready[0] = s00_couplers_to_s00_couplers_WREADY;
  assign s00_couplers_to_s00_couplers_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_s00_couplers_ARREADY = M_AXI_arready[0];
  assign s00_couplers_to_s00_couplers_ARVALID = S_AXI_arvalid[0];
  assign s00_couplers_to_s00_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_s00_couplers_AWREADY = M_AXI_awready[0];
  assign s00_couplers_to_s00_couplers_AWVALID = S_AXI_awvalid[0];
  assign s00_couplers_to_s00_couplers_BREADY = S_AXI_bready[0];
  assign s00_couplers_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign s00_couplers_to_s00_couplers_BVALID = M_AXI_bvalid[0];
  assign s00_couplers_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign s00_couplers_to_s00_couplers_RREADY = S_AXI_rready[0];
  assign s00_couplers_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign s00_couplers_to_s00_couplers_RVALID = M_AXI_rvalid[0];
  assign s00_couplers_to_s00_couplers_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_s00_couplers_WREADY = M_AXI_wready[0];
  assign s00_couplers_to_s00_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_s00_couplers_WVALID = S_AXI_wvalid[0];
endmodule
