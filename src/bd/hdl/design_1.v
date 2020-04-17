//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.1 (lin64) Build 1846317 Fri Apr 14 18:54:47 MDT 2017
//Date        : Fri Apr 17 18:05:55 2020
//Host        : johan-Latitude-E5550 running 64-bit Ubuntu 16.04.5 LTS
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=18,numReposBlks=16,numNonXlnxBlks=10,numHierBlks=2,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (DDR_0_addr,
    DDR_0_ba,
    DDR_0_cas_n,
    DDR_0_ck_n,
    DDR_0_ck_p,
    DDR_0_cke,
    DDR_0_cs_n,
    DDR_0_dm,
    DDR_0_dq,
    DDR_0_dqs_n,
    DDR_0_dqs_p,
    DDR_0_odt,
    DDR_0_ras_n,
    DDR_0_reset_n,
    DDR_0_we_n,
    FIXED_IO_0_ddr_vrn,
    FIXED_IO_0_ddr_vrp,
    FIXED_IO_0_mio,
    FIXED_IO_0_ps_clk,
    FIXED_IO_0_ps_porb,
    FIXED_IO_0_ps_srstb,
    ac_bclk,
    ac_mclk,
    ac_muten,
    ac_pbdat,
    ac_pblrc,
    ac_reclrc,
    ac_scl,
    ac_sda,
    vga_b,
    vga_g,
    vga_hs,
    vga_r,
    vga_vs);
  inout [14:0]DDR_0_addr;
  inout [2:0]DDR_0_ba;
  inout DDR_0_cas_n;
  inout DDR_0_ck_n;
  inout DDR_0_ck_p;
  inout DDR_0_cke;
  inout DDR_0_cs_n;
  inout [3:0]DDR_0_dm;
  inout [31:0]DDR_0_dq;
  inout [3:0]DDR_0_dqs_n;
  inout [3:0]DDR_0_dqs_p;
  inout DDR_0_odt;
  inout DDR_0_ras_n;
  inout DDR_0_reset_n;
  inout DDR_0_we_n;
  inout FIXED_IO_0_ddr_vrn;
  inout FIXED_IO_0_ddr_vrp;
  inout [53:0]FIXED_IO_0_mio;
  inout FIXED_IO_0_ps_clk;
  inout FIXED_IO_0_ps_porb;
  inout FIXED_IO_0_ps_srstb;
  output ac_bclk;
  output ac_mclk;
  output ac_muten;
  output ac_pbdat;
  output ac_pblrc;
  output ac_reclrc;
  inout ac_scl;
  inout ac_sda;
  output [4:0]vga_b;
  output [5:0]vga_g;
  output vga_hs;
  output [4:0]vga_r;
  output vga_vs;

  wire Net;
  wire Net1;
  wire Net2;
  wire [31:0]axi_smc_M00_AXI_ARADDR;
  wire [1:0]axi_smc_M00_AXI_ARBURST;
  wire [3:0]axi_smc_M00_AXI_ARCACHE;
  wire [3:0]axi_smc_M00_AXI_ARLEN;
  wire [1:0]axi_smc_M00_AXI_ARLOCK;
  wire [2:0]axi_smc_M00_AXI_ARPROT;
  wire [3:0]axi_smc_M00_AXI_ARQOS;
  wire axi_smc_M00_AXI_ARREADY;
  wire [2:0]axi_smc_M00_AXI_ARSIZE;
  wire axi_smc_M00_AXI_ARVALID;
  wire [31:0]axi_smc_M00_AXI_AWADDR;
  wire [1:0]axi_smc_M00_AXI_AWBURST;
  wire [3:0]axi_smc_M00_AXI_AWCACHE;
  wire [3:0]axi_smc_M00_AXI_AWLEN;
  wire [1:0]axi_smc_M00_AXI_AWLOCK;
  wire [2:0]axi_smc_M00_AXI_AWPROT;
  wire [3:0]axi_smc_M00_AXI_AWQOS;
  wire axi_smc_M00_AXI_AWREADY;
  wire [2:0]axi_smc_M00_AXI_AWSIZE;
  wire axi_smc_M00_AXI_AWVALID;
  wire axi_smc_M00_AXI_BREADY;
  wire [1:0]axi_smc_M00_AXI_BRESP;
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
  wire [31:0]axi_smc_M01_AXI_ARADDR;
  wire [1:0]axi_smc_M01_AXI_ARBURST;
  wire [3:0]axi_smc_M01_AXI_ARCACHE;
  wire [3:0]axi_smc_M01_AXI_ARLEN;
  wire [1:0]axi_smc_M01_AXI_ARLOCK;
  wire [2:0]axi_smc_M01_AXI_ARPROT;
  wire [3:0]axi_smc_M01_AXI_ARQOS;
  wire axi_smc_M01_AXI_ARREADY;
  wire [2:0]axi_smc_M01_AXI_ARSIZE;
  wire axi_smc_M01_AXI_ARVALID;
  wire [31:0]axi_smc_M01_AXI_AWADDR;
  wire [1:0]axi_smc_M01_AXI_AWBURST;
  wire [3:0]axi_smc_M01_AXI_AWCACHE;
  wire [3:0]axi_smc_M01_AXI_AWLEN;
  wire [1:0]axi_smc_M01_AXI_AWLOCK;
  wire [2:0]axi_smc_M01_AXI_AWPROT;
  wire [3:0]axi_smc_M01_AXI_AWQOS;
  wire axi_smc_M01_AXI_AWREADY;
  wire [2:0]axi_smc_M01_AXI_AWSIZE;
  wire axi_smc_M01_AXI_AWVALID;
  wire axi_smc_M01_AXI_BREADY;
  wire [1:0]axi_smc_M01_AXI_BRESP;
  wire axi_smc_M01_AXI_BVALID;
  wire [31:0]axi_smc_M01_AXI_RDATA;
  wire axi_smc_M01_AXI_RLAST;
  wire axi_smc_M01_AXI_RREADY;
  wire [1:0]axi_smc_M01_AXI_RRESP;
  wire axi_smc_M01_AXI_RVALID;
  wire [31:0]axi_smc_M01_AXI_WDATA;
  wire axi_smc_M01_AXI_WLAST;
  wire axi_smc_M01_AXI_WREADY;
  wire [3:0]axi_smc_M01_AXI_WSTRB;
  wire axi_smc_M01_AXI_WVALID;
  wire [15:0]block_test_0_audio_out;
  wire block_test_0_clk_1_mhz;
  wire [4:0]block_test_0_ip2bus_inputs;
  wire [31:0]block_test_0_ip2bus_mst_addr;
  wire [11:0]block_test_0_ip2bus_mst_length;
  wire [31:0]block_test_0_ip2bus_mstwr_d;
  wire block_test_0_motor_control;
  wire clk_wiz_0_clk_out1;
  wire clk_wiz_0_locked;
  wire clk_wiz_1_clk_out1;
  wire i2s_0_channel_enable;
  wire i2s_0_clk_1_5_mhz;
  wire i2s_0_mute_en;
  wire i2s_0_out_data;
  wire iobuf_0_out;
  wire iobuf_1_out;
  wire [31:0]myip_burst_read_test_0_M00_AXI_ARADDR;
  wire [1:0]myip_burst_read_test_0_M00_AXI_ARBURST;
  wire [3:0]myip_burst_read_test_0_M00_AXI_ARCACHE;
  wire [0:0]myip_burst_read_test_0_M00_AXI_ARID;
  wire [7:0]myip_burst_read_test_0_M00_AXI_ARLEN;
  wire myip_burst_read_test_0_M00_AXI_ARLOCK;
  wire [2:0]myip_burst_read_test_0_M00_AXI_ARPROT;
  wire [3:0]myip_burst_read_test_0_M00_AXI_ARQOS;
  wire myip_burst_read_test_0_M00_AXI_ARREADY;
  wire [2:0]myip_burst_read_test_0_M00_AXI_ARSIZE;
  wire [0:0]myip_burst_read_test_0_M00_AXI_ARUSER;
  wire myip_burst_read_test_0_M00_AXI_ARVALID;
  wire [31:0]myip_burst_read_test_0_M00_AXI_AWADDR;
  wire [1:0]myip_burst_read_test_0_M00_AXI_AWBURST;
  wire [3:0]myip_burst_read_test_0_M00_AXI_AWCACHE;
  wire [0:0]myip_burst_read_test_0_M00_AXI_AWID;
  wire [7:0]myip_burst_read_test_0_M00_AXI_AWLEN;
  wire myip_burst_read_test_0_M00_AXI_AWLOCK;
  wire [2:0]myip_burst_read_test_0_M00_AXI_AWPROT;
  wire [3:0]myip_burst_read_test_0_M00_AXI_AWQOS;
  wire myip_burst_read_test_0_M00_AXI_AWREADY;
  wire [2:0]myip_burst_read_test_0_M00_AXI_AWSIZE;
  wire [0:0]myip_burst_read_test_0_M00_AXI_AWUSER;
  wire myip_burst_read_test_0_M00_AXI_AWVALID;
  wire [0:0]myip_burst_read_test_0_M00_AXI_BID;
  wire myip_burst_read_test_0_M00_AXI_BREADY;
  wire [1:0]myip_burst_read_test_0_M00_AXI_BRESP;
  wire [0:0]myip_burst_read_test_0_M00_AXI_BUSER;
  wire myip_burst_read_test_0_M00_AXI_BVALID;
  wire [31:0]myip_burst_read_test_0_M00_AXI_RDATA;
  wire [0:0]myip_burst_read_test_0_M00_AXI_RID;
  wire myip_burst_read_test_0_M00_AXI_RLAST;
  wire myip_burst_read_test_0_M00_AXI_RREADY;
  wire [1:0]myip_burst_read_test_0_M00_AXI_RRESP;
  wire myip_burst_read_test_0_M00_AXI_RVALID;
  wire [31:0]myip_burst_read_test_0_M00_AXI_WDATA;
  wire myip_burst_read_test_0_M00_AXI_WLAST;
  wire myip_burst_read_test_0_M00_AXI_WREADY;
  wire [3:0]myip_burst_read_test_0_M00_AXI_WSTRB;
  wire myip_burst_read_test_0_M00_AXI_WVALID;
  wire [31:0]myip_burst_read_test_0_bus2ip_mstrd_d;
  wire [5:0]myip_burst_read_test_0_ip2bus_otputs;
  wire [31:0]myip_burst_read_test_1_M00_AXI_ARADDR;
  wire [1:0]myip_burst_read_test_1_M00_AXI_ARBURST;
  wire [3:0]myip_burst_read_test_1_M00_AXI_ARCACHE;
  wire [0:0]myip_burst_read_test_1_M00_AXI_ARID;
  wire [7:0]myip_burst_read_test_1_M00_AXI_ARLEN;
  wire myip_burst_read_test_1_M00_AXI_ARLOCK;
  wire [2:0]myip_burst_read_test_1_M00_AXI_ARPROT;
  wire [3:0]myip_burst_read_test_1_M00_AXI_ARQOS;
  wire myip_burst_read_test_1_M00_AXI_ARREADY;
  wire [2:0]myip_burst_read_test_1_M00_AXI_ARSIZE;
  wire [0:0]myip_burst_read_test_1_M00_AXI_ARUSER;
  wire myip_burst_read_test_1_M00_AXI_ARVALID;
  wire [31:0]myip_burst_read_test_1_M00_AXI_AWADDR;
  wire [1:0]myip_burst_read_test_1_M00_AXI_AWBURST;
  wire [3:0]myip_burst_read_test_1_M00_AXI_AWCACHE;
  wire [0:0]myip_burst_read_test_1_M00_AXI_AWID;
  wire [7:0]myip_burst_read_test_1_M00_AXI_AWLEN;
  wire myip_burst_read_test_1_M00_AXI_AWLOCK;
  wire [2:0]myip_burst_read_test_1_M00_AXI_AWPROT;
  wire [3:0]myip_burst_read_test_1_M00_AXI_AWQOS;
  wire myip_burst_read_test_1_M00_AXI_AWREADY;
  wire [2:0]myip_burst_read_test_1_M00_AXI_AWSIZE;
  wire [0:0]myip_burst_read_test_1_M00_AXI_AWUSER;
  wire myip_burst_read_test_1_M00_AXI_AWVALID;
  wire [0:0]myip_burst_read_test_1_M00_AXI_BID;
  wire myip_burst_read_test_1_M00_AXI_BREADY;
  wire [1:0]myip_burst_read_test_1_M00_AXI_BRESP;
  wire [0:0]myip_burst_read_test_1_M00_AXI_BUSER;
  wire myip_burst_read_test_1_M00_AXI_BVALID;
  wire [31:0]myip_burst_read_test_1_M00_AXI_RDATA;
  wire [0:0]myip_burst_read_test_1_M00_AXI_RID;
  wire myip_burst_read_test_1_M00_AXI_RLAST;
  wire myip_burst_read_test_1_M00_AXI_RREADY;
  wire [1:0]myip_burst_read_test_1_M00_AXI_RRESP;
  wire myip_burst_read_test_1_M00_AXI_RVALID;
  wire [31:0]myip_burst_read_test_1_M00_AXI_WDATA;
  wire myip_burst_read_test_1_M00_AXI_WLAST;
  wire myip_burst_read_test_1_M00_AXI_WREADY;
  wire [3:0]myip_burst_read_test_1_M00_AXI_WSTRB;
  wire myip_burst_read_test_1_M00_AXI_WVALID;
  wire [31:0]myip_burst_read_test_1_bus2ip_mstrd_d;
  wire [5:0]myip_burst_read_test_1_ip2bus_otputs;
  wire [31:0]myip_burst_test_0_M00_AXI_ARADDR;
  wire [1:0]myip_burst_test_0_M00_AXI_ARBURST;
  wire [3:0]myip_burst_test_0_M00_AXI_ARCACHE;
  wire [0:0]myip_burst_test_0_M00_AXI_ARID;
  wire [7:0]myip_burst_test_0_M00_AXI_ARLEN;
  wire myip_burst_test_0_M00_AXI_ARLOCK;
  wire [2:0]myip_burst_test_0_M00_AXI_ARPROT;
  wire [3:0]myip_burst_test_0_M00_AXI_ARQOS;
  wire myip_burst_test_0_M00_AXI_ARREADY;
  wire [2:0]myip_burst_test_0_M00_AXI_ARSIZE;
  wire [0:0]myip_burst_test_0_M00_AXI_ARUSER;
  wire myip_burst_test_0_M00_AXI_ARVALID;
  wire [31:0]myip_burst_test_0_M00_AXI_AWADDR;
  wire [1:0]myip_burst_test_0_M00_AXI_AWBURST;
  wire [3:0]myip_burst_test_0_M00_AXI_AWCACHE;
  wire [0:0]myip_burst_test_0_M00_AXI_AWID;
  wire [7:0]myip_burst_test_0_M00_AXI_AWLEN;
  wire myip_burst_test_0_M00_AXI_AWLOCK;
  wire [2:0]myip_burst_test_0_M00_AXI_AWPROT;
  wire [3:0]myip_burst_test_0_M00_AXI_AWQOS;
  wire myip_burst_test_0_M00_AXI_AWREADY;
  wire [2:0]myip_burst_test_0_M00_AXI_AWSIZE;
  wire [0:0]myip_burst_test_0_M00_AXI_AWUSER;
  wire myip_burst_test_0_M00_AXI_AWVALID;
  wire [0:0]myip_burst_test_0_M00_AXI_BID;
  wire myip_burst_test_0_M00_AXI_BREADY;
  wire [1:0]myip_burst_test_0_M00_AXI_BRESP;
  wire [0:0]myip_burst_test_0_M00_AXI_BUSER;
  wire myip_burst_test_0_M00_AXI_BVALID;
  wire [31:0]myip_burst_test_0_M00_AXI_RDATA;
  wire [0:0]myip_burst_test_0_M00_AXI_RID;
  wire myip_burst_test_0_M00_AXI_RLAST;
  wire myip_burst_test_0_M00_AXI_RREADY;
  wire [1:0]myip_burst_test_0_M00_AXI_RRESP;
  wire myip_burst_test_0_M00_AXI_RVALID;
  wire [31:0]myip_burst_test_0_M00_AXI_WDATA;
  wire myip_burst_test_0_M00_AXI_WLAST;
  wire myip_burst_test_0_M00_AXI_WREADY;
  wire [3:0]myip_burst_test_0_M00_AXI_WSTRB;
  wire myip_burst_test_0_M00_AXI_WVALID;
  wire myip_burst_test_0_c64_mode;
  wire [5:0]myip_burst_test_0_ip2bus_otputs;
  wire [4:0]myip_burst_test_0_joybits;
  wire [4:0]myip_burst_test_0_joybits2;
  wire myip_burst_test_0_restart;
  wire [31:0]myip_burst_test_0_slave_reg_0;
  wire [31:0]myip_burst_test_0_slave_reg_1;
  wire myip_burst_test_0_tape_button;
  wire oddr_buf_0_Mlck_O;
  wire [14:0]processing_system7_0_DDR_ADDR;
  wire [2:0]processing_system7_0_DDR_BA;
  wire processing_system7_0_DDR_CAS_N;
  wire processing_system7_0_DDR_CKE;
  wire processing_system7_0_DDR_CK_N;
  wire processing_system7_0_DDR_CK_P;
  wire processing_system7_0_DDR_CS_N;
  wire [3:0]processing_system7_0_DDR_DM;
  wire [31:0]processing_system7_0_DDR_DQ;
  wire [3:0]processing_system7_0_DDR_DQS_N;
  wire [3:0]processing_system7_0_DDR_DQS_P;
  wire processing_system7_0_DDR_ODT;
  wire processing_system7_0_DDR_RAS_N;
  wire processing_system7_0_DDR_RESET_N;
  wire processing_system7_0_DDR_WE_N;
  wire processing_system7_0_FCLK_CLK0;
  wire processing_system7_0_FCLK_RESET0_N;
  wire processing_system7_0_FIXED_IO_DDR_VRN;
  wire processing_system7_0_FIXED_IO_DDR_VRP;
  wire [53:0]processing_system7_0_FIXED_IO_MIO;
  wire processing_system7_0_FIXED_IO_PS_CLK;
  wire processing_system7_0_FIXED_IO_PS_PORB;
  wire processing_system7_0_FIXED_IO_PS_SRSTB;
  wire processing_system7_0_I2C1_SCL_O;
  wire processing_system7_0_I2C1_SCL_T;
  wire processing_system7_0_I2C1_SDA_O;
  wire processing_system7_0_I2C1_SDA_T;
  wire [31:0]processing_system7_0_M_AXI_GP0_ARADDR;
  wire [1:0]processing_system7_0_M_AXI_GP0_ARBURST;
  wire [3:0]processing_system7_0_M_AXI_GP0_ARCACHE;
  wire [11:0]processing_system7_0_M_AXI_GP0_ARID;
  wire [3:0]processing_system7_0_M_AXI_GP0_ARLEN;
  wire [1:0]processing_system7_0_M_AXI_GP0_ARLOCK;
  wire [2:0]processing_system7_0_M_AXI_GP0_ARPROT;
  wire [3:0]processing_system7_0_M_AXI_GP0_ARQOS;
  wire processing_system7_0_M_AXI_GP0_ARREADY;
  wire [2:0]processing_system7_0_M_AXI_GP0_ARSIZE;
  wire processing_system7_0_M_AXI_GP0_ARVALID;
  wire [31:0]processing_system7_0_M_AXI_GP0_AWADDR;
  wire [1:0]processing_system7_0_M_AXI_GP0_AWBURST;
  wire [3:0]processing_system7_0_M_AXI_GP0_AWCACHE;
  wire [11:0]processing_system7_0_M_AXI_GP0_AWID;
  wire [3:0]processing_system7_0_M_AXI_GP0_AWLEN;
  wire [1:0]processing_system7_0_M_AXI_GP0_AWLOCK;
  wire [2:0]processing_system7_0_M_AXI_GP0_AWPROT;
  wire [3:0]processing_system7_0_M_AXI_GP0_AWQOS;
  wire processing_system7_0_M_AXI_GP0_AWREADY;
  wire [2:0]processing_system7_0_M_AXI_GP0_AWSIZE;
  wire processing_system7_0_M_AXI_GP0_AWVALID;
  wire [11:0]processing_system7_0_M_AXI_GP0_BID;
  wire processing_system7_0_M_AXI_GP0_BREADY;
  wire [1:0]processing_system7_0_M_AXI_GP0_BRESP;
  wire processing_system7_0_M_AXI_GP0_BVALID;
  wire [31:0]processing_system7_0_M_AXI_GP0_RDATA;
  wire [11:0]processing_system7_0_M_AXI_GP0_RID;
  wire processing_system7_0_M_AXI_GP0_RLAST;
  wire processing_system7_0_M_AXI_GP0_RREADY;
  wire [1:0]processing_system7_0_M_AXI_GP0_RRESP;
  wire processing_system7_0_M_AXI_GP0_RVALID;
  wire [31:0]processing_system7_0_M_AXI_GP0_WDATA;
  wire [11:0]processing_system7_0_M_AXI_GP0_WID;
  wire processing_system7_0_M_AXI_GP0_WLAST;
  wire processing_system7_0_M_AXI_GP0_WREADY;
  wire [3:0]processing_system7_0_M_AXI_GP0_WSTRB;
  wire processing_system7_0_M_AXI_GP0_WVALID;
  wire [31:0]ps7_0_axi_periph_M00_AXI_ARADDR;
  wire [2:0]ps7_0_axi_periph_M00_AXI_ARPROT;
  wire ps7_0_axi_periph_M00_AXI_ARREADY;
  wire ps7_0_axi_periph_M00_AXI_ARVALID;
  wire [31:0]ps7_0_axi_periph_M00_AXI_AWADDR;
  wire [2:0]ps7_0_axi_periph_M00_AXI_AWPROT;
  wire ps7_0_axi_periph_M00_AXI_AWREADY;
  wire ps7_0_axi_periph_M00_AXI_AWVALID;
  wire ps7_0_axi_periph_M00_AXI_BREADY;
  wire [1:0]ps7_0_axi_periph_M00_AXI_BRESP;
  wire ps7_0_axi_periph_M00_AXI_BVALID;
  wire [31:0]ps7_0_axi_periph_M00_AXI_RDATA;
  wire ps7_0_axi_periph_M00_AXI_RREADY;
  wire [1:0]ps7_0_axi_periph_M00_AXI_RRESP;
  wire ps7_0_axi_periph_M00_AXI_RVALID;
  wire [31:0]ps7_0_axi_periph_M00_AXI_WDATA;
  wire ps7_0_axi_periph_M00_AXI_WREADY;
  wire [3:0]ps7_0_axi_periph_M00_AXI_WSTRB;
  wire ps7_0_axi_periph_M00_AXI_WVALID;
  wire [0:0]rst_ps7_0_100M_interconnect_aresetn;
  wire [0:0]rst_ps7_0_100M_peripheral_aresetn;
  wire [0:0]rst_ps7_0_100M_peripheral_reset;
  wire [4:0]tape_interface_0_ip2bus_inputs;
  wire [31:0]tape_interface_0_ip2bus_mst_addr;
  wire [11:0]tape_interface_0_ip2bus_mst_length;
  wire tape_interface_0_pwm;
  wire [4:0]vga_tst_c64_0_blue;
  wire [5:0]vga_tst_c64_0_green;
  wire vga_tst_c64_0_horiz_sync;
  wire [4:0]vga_tst_c64_0_ip2bus_inputs;
  wire [31:0]vga_tst_c64_0_ip2bus_mst_addr;
  wire [11:0]vga_tst_c64_0_ip2bus_mst_length;
  wire [4:0]vga_tst_c64_0_red;
  wire vga_tst_c64_0_vert_sync;

  assign ac_bclk = i2s_0_clk_1_5_mhz;
  assign ac_mclk = oddr_buf_0_Mlck_O;
  assign ac_muten = i2s_0_mute_en;
  assign ac_pbdat = i2s_0_out_data;
  assign ac_pblrc = i2s_0_channel_enable;
  assign ac_reclrc = i2s_0_channel_enable;
  assign vga_b[4:0] = vga_tst_c64_0_blue;
  assign vga_g[5:0] = vga_tst_c64_0_green;
  assign vga_hs = vga_tst_c64_0_horiz_sync;
  assign vga_r[4:0] = vga_tst_c64_0_red;
  assign vga_vs = vga_tst_c64_0_vert_sync;
  design_1_axi_smc_2 axi_smc
       (.M00_AXI_araddr(axi_smc_M00_AXI_ARADDR),
        .M00_AXI_arburst(axi_smc_M00_AXI_ARBURST),
        .M00_AXI_arcache(axi_smc_M00_AXI_ARCACHE),
        .M00_AXI_arlen(axi_smc_M00_AXI_ARLEN),
        .M00_AXI_arlock(axi_smc_M00_AXI_ARLOCK),
        .M00_AXI_arprot(axi_smc_M00_AXI_ARPROT),
        .M00_AXI_arqos(axi_smc_M00_AXI_ARQOS),
        .M00_AXI_arready(axi_smc_M00_AXI_ARREADY),
        .M00_AXI_arsize(axi_smc_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(axi_smc_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_smc_M00_AXI_AWADDR),
        .M00_AXI_awburst(axi_smc_M00_AXI_AWBURST),
        .M00_AXI_awcache(axi_smc_M00_AXI_AWCACHE),
        .M00_AXI_awlen(axi_smc_M00_AXI_AWLEN),
        .M00_AXI_awlock(axi_smc_M00_AXI_AWLOCK),
        .M00_AXI_awprot(axi_smc_M00_AXI_AWPROT),
        .M00_AXI_awqos(axi_smc_M00_AXI_AWQOS),
        .M00_AXI_awready(axi_smc_M00_AXI_AWREADY),
        .M00_AXI_awsize(axi_smc_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(axi_smc_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_smc_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_smc_M00_AXI_BRESP),
        .M00_AXI_buser(1'b0),
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
        .M01_AXI_araddr(axi_smc_M01_AXI_ARADDR),
        .M01_AXI_arburst(axi_smc_M01_AXI_ARBURST),
        .M01_AXI_arcache(axi_smc_M01_AXI_ARCACHE),
        .M01_AXI_arlen(axi_smc_M01_AXI_ARLEN),
        .M01_AXI_arlock(axi_smc_M01_AXI_ARLOCK),
        .M01_AXI_arprot(axi_smc_M01_AXI_ARPROT),
        .M01_AXI_arqos(axi_smc_M01_AXI_ARQOS),
        .M01_AXI_arready(axi_smc_M01_AXI_ARREADY),
        .M01_AXI_arsize(axi_smc_M01_AXI_ARSIZE),
        .M01_AXI_arvalid(axi_smc_M01_AXI_ARVALID),
        .M01_AXI_awaddr(axi_smc_M01_AXI_AWADDR),
        .M01_AXI_awburst(axi_smc_M01_AXI_AWBURST),
        .M01_AXI_awcache(axi_smc_M01_AXI_AWCACHE),
        .M01_AXI_awlen(axi_smc_M01_AXI_AWLEN),
        .M01_AXI_awlock(axi_smc_M01_AXI_AWLOCK),
        .M01_AXI_awprot(axi_smc_M01_AXI_AWPROT),
        .M01_AXI_awqos(axi_smc_M01_AXI_AWQOS),
        .M01_AXI_awready(axi_smc_M01_AXI_AWREADY),
        .M01_AXI_awsize(axi_smc_M01_AXI_AWSIZE),
        .M01_AXI_awvalid(axi_smc_M01_AXI_AWVALID),
        .M01_AXI_bready(axi_smc_M01_AXI_BREADY),
        .M01_AXI_bresp(axi_smc_M01_AXI_BRESP),
        .M01_AXI_buser(1'b0),
        .M01_AXI_bvalid(axi_smc_M01_AXI_BVALID),
        .M01_AXI_rdata(axi_smc_M01_AXI_RDATA),
        .M01_AXI_rlast(axi_smc_M01_AXI_RLAST),
        .M01_AXI_rready(axi_smc_M01_AXI_RREADY),
        .M01_AXI_rresp(axi_smc_M01_AXI_RRESP),
        .M01_AXI_rvalid(axi_smc_M01_AXI_RVALID),
        .M01_AXI_wdata(axi_smc_M01_AXI_WDATA),
        .M01_AXI_wlast(axi_smc_M01_AXI_WLAST),
        .M01_AXI_wready(axi_smc_M01_AXI_WREADY),
        .M01_AXI_wstrb(axi_smc_M01_AXI_WSTRB),
        .M01_AXI_wvalid(axi_smc_M01_AXI_WVALID),
        .S00_AXI_araddr(myip_burst_read_test_0_M00_AXI_ARADDR),
        .S00_AXI_arburst(myip_burst_read_test_0_M00_AXI_ARBURST),
        .S00_AXI_arcache(myip_burst_read_test_0_M00_AXI_ARCACHE),
        .S00_AXI_arid(myip_burst_read_test_0_M00_AXI_ARID),
        .S00_AXI_arlen(myip_burst_read_test_0_M00_AXI_ARLEN),
        .S00_AXI_arlock(myip_burst_read_test_0_M00_AXI_ARLOCK),
        .S00_AXI_arprot(myip_burst_read_test_0_M00_AXI_ARPROT),
        .S00_AXI_arqos(myip_burst_read_test_0_M00_AXI_ARQOS),
        .S00_AXI_arready(myip_burst_read_test_0_M00_AXI_ARREADY),
        .S00_AXI_arsize(myip_burst_read_test_0_M00_AXI_ARSIZE),
        .S00_AXI_aruser(myip_burst_read_test_0_M00_AXI_ARUSER),
        .S00_AXI_arvalid(myip_burst_read_test_0_M00_AXI_ARVALID),
        .S00_AXI_awaddr(myip_burst_read_test_0_M00_AXI_AWADDR),
        .S00_AXI_awburst(myip_burst_read_test_0_M00_AXI_AWBURST),
        .S00_AXI_awcache(myip_burst_read_test_0_M00_AXI_AWCACHE),
        .S00_AXI_awid(myip_burst_read_test_0_M00_AXI_AWID),
        .S00_AXI_awlen(myip_burst_read_test_0_M00_AXI_AWLEN),
        .S00_AXI_awlock(myip_burst_read_test_0_M00_AXI_AWLOCK),
        .S00_AXI_awprot(myip_burst_read_test_0_M00_AXI_AWPROT),
        .S00_AXI_awqos(myip_burst_read_test_0_M00_AXI_AWQOS),
        .S00_AXI_awready(myip_burst_read_test_0_M00_AXI_AWREADY),
        .S00_AXI_awsize(myip_burst_read_test_0_M00_AXI_AWSIZE),
        .S00_AXI_awuser(myip_burst_read_test_0_M00_AXI_AWUSER),
        .S00_AXI_awvalid(myip_burst_read_test_0_M00_AXI_AWVALID),
        .S00_AXI_bid(myip_burst_read_test_0_M00_AXI_BID),
        .S00_AXI_bready(myip_burst_read_test_0_M00_AXI_BREADY),
        .S00_AXI_bresp(myip_burst_read_test_0_M00_AXI_BRESP),
        .S00_AXI_buser(myip_burst_read_test_0_M00_AXI_BUSER),
        .S00_AXI_bvalid(myip_burst_read_test_0_M00_AXI_BVALID),
        .S00_AXI_rdata(myip_burst_read_test_0_M00_AXI_RDATA),
        .S00_AXI_rid(myip_burst_read_test_0_M00_AXI_RID),
        .S00_AXI_rlast(myip_burst_read_test_0_M00_AXI_RLAST),
        .S00_AXI_rready(myip_burst_read_test_0_M00_AXI_RREADY),
        .S00_AXI_rresp(myip_burst_read_test_0_M00_AXI_RRESP),
        .S00_AXI_rvalid(myip_burst_read_test_0_M00_AXI_RVALID),
        .S00_AXI_wdata(myip_burst_read_test_0_M00_AXI_WDATA),
        .S00_AXI_wlast(myip_burst_read_test_0_M00_AXI_WLAST),
        .S00_AXI_wready(myip_burst_read_test_0_M00_AXI_WREADY),
        .S00_AXI_wstrb(myip_burst_read_test_0_M00_AXI_WSTRB),
        .S00_AXI_wvalid(myip_burst_read_test_0_M00_AXI_WVALID),
        .S01_AXI_araddr(myip_burst_read_test_1_M00_AXI_ARADDR),
        .S01_AXI_arburst(myip_burst_read_test_1_M00_AXI_ARBURST),
        .S01_AXI_arcache(myip_burst_read_test_1_M00_AXI_ARCACHE),
        .S01_AXI_arid(myip_burst_read_test_1_M00_AXI_ARID),
        .S01_AXI_arlen(myip_burst_read_test_1_M00_AXI_ARLEN),
        .S01_AXI_arlock(myip_burst_read_test_1_M00_AXI_ARLOCK),
        .S01_AXI_arprot(myip_burst_read_test_1_M00_AXI_ARPROT),
        .S01_AXI_arqos(myip_burst_read_test_1_M00_AXI_ARQOS),
        .S01_AXI_arready(myip_burst_read_test_1_M00_AXI_ARREADY),
        .S01_AXI_arsize(myip_burst_read_test_1_M00_AXI_ARSIZE),
        .S01_AXI_aruser(myip_burst_read_test_1_M00_AXI_ARUSER),
        .S01_AXI_arvalid(myip_burst_read_test_1_M00_AXI_ARVALID),
        .S01_AXI_awaddr(myip_burst_read_test_1_M00_AXI_AWADDR),
        .S01_AXI_awburst(myip_burst_read_test_1_M00_AXI_AWBURST),
        .S01_AXI_awcache(myip_burst_read_test_1_M00_AXI_AWCACHE),
        .S01_AXI_awid(myip_burst_read_test_1_M00_AXI_AWID),
        .S01_AXI_awlen(myip_burst_read_test_1_M00_AXI_AWLEN),
        .S01_AXI_awlock(myip_burst_read_test_1_M00_AXI_AWLOCK),
        .S01_AXI_awprot(myip_burst_read_test_1_M00_AXI_AWPROT),
        .S01_AXI_awqos(myip_burst_read_test_1_M00_AXI_AWQOS),
        .S01_AXI_awready(myip_burst_read_test_1_M00_AXI_AWREADY),
        .S01_AXI_awsize(myip_burst_read_test_1_M00_AXI_AWSIZE),
        .S01_AXI_awuser(myip_burst_read_test_1_M00_AXI_AWUSER),
        .S01_AXI_awvalid(myip_burst_read_test_1_M00_AXI_AWVALID),
        .S01_AXI_bid(myip_burst_read_test_1_M00_AXI_BID),
        .S01_AXI_bready(myip_burst_read_test_1_M00_AXI_BREADY),
        .S01_AXI_bresp(myip_burst_read_test_1_M00_AXI_BRESP),
        .S01_AXI_buser(myip_burst_read_test_1_M00_AXI_BUSER),
        .S01_AXI_bvalid(myip_burst_read_test_1_M00_AXI_BVALID),
        .S01_AXI_rdata(myip_burst_read_test_1_M00_AXI_RDATA),
        .S01_AXI_rid(myip_burst_read_test_1_M00_AXI_RID),
        .S01_AXI_rlast(myip_burst_read_test_1_M00_AXI_RLAST),
        .S01_AXI_rready(myip_burst_read_test_1_M00_AXI_RREADY),
        .S01_AXI_rresp(myip_burst_read_test_1_M00_AXI_RRESP),
        .S01_AXI_rvalid(myip_burst_read_test_1_M00_AXI_RVALID),
        .S01_AXI_wdata(myip_burst_read_test_1_M00_AXI_WDATA),
        .S01_AXI_wlast(myip_burst_read_test_1_M00_AXI_WLAST),
        .S01_AXI_wready(myip_burst_read_test_1_M00_AXI_WREADY),
        .S01_AXI_wstrb(myip_burst_read_test_1_M00_AXI_WSTRB),
        .S01_AXI_wvalid(myip_burst_read_test_1_M00_AXI_WVALID),
        .S02_AXI_araddr(myip_burst_test_0_M00_AXI_ARADDR),
        .S02_AXI_arburst(myip_burst_test_0_M00_AXI_ARBURST),
        .S02_AXI_arcache(myip_burst_test_0_M00_AXI_ARCACHE),
        .S02_AXI_arid(myip_burst_test_0_M00_AXI_ARID),
        .S02_AXI_arlen(myip_burst_test_0_M00_AXI_ARLEN),
        .S02_AXI_arlock(myip_burst_test_0_M00_AXI_ARLOCK),
        .S02_AXI_arprot(myip_burst_test_0_M00_AXI_ARPROT),
        .S02_AXI_arqos(myip_burst_test_0_M00_AXI_ARQOS),
        .S02_AXI_arready(myip_burst_test_0_M00_AXI_ARREADY),
        .S02_AXI_arsize(myip_burst_test_0_M00_AXI_ARSIZE),
        .S02_AXI_aruser(myip_burst_test_0_M00_AXI_ARUSER),
        .S02_AXI_arvalid(myip_burst_test_0_M00_AXI_ARVALID),
        .S02_AXI_awaddr(myip_burst_test_0_M00_AXI_AWADDR),
        .S02_AXI_awburst(myip_burst_test_0_M00_AXI_AWBURST),
        .S02_AXI_awcache(myip_burst_test_0_M00_AXI_AWCACHE),
        .S02_AXI_awid(myip_burst_test_0_M00_AXI_AWID),
        .S02_AXI_awlen(myip_burst_test_0_M00_AXI_AWLEN),
        .S02_AXI_awlock(myip_burst_test_0_M00_AXI_AWLOCK),
        .S02_AXI_awprot(myip_burst_test_0_M00_AXI_AWPROT),
        .S02_AXI_awqos(myip_burst_test_0_M00_AXI_AWQOS),
        .S02_AXI_awready(myip_burst_test_0_M00_AXI_AWREADY),
        .S02_AXI_awsize(myip_burst_test_0_M00_AXI_AWSIZE),
        .S02_AXI_awuser(myip_burst_test_0_M00_AXI_AWUSER),
        .S02_AXI_awvalid(myip_burst_test_0_M00_AXI_AWVALID),
        .S02_AXI_bid(myip_burst_test_0_M00_AXI_BID),
        .S02_AXI_bready(myip_burst_test_0_M00_AXI_BREADY),
        .S02_AXI_bresp(myip_burst_test_0_M00_AXI_BRESP),
        .S02_AXI_buser(myip_burst_test_0_M00_AXI_BUSER),
        .S02_AXI_bvalid(myip_burst_test_0_M00_AXI_BVALID),
        .S02_AXI_rdata(myip_burst_test_0_M00_AXI_RDATA),
        .S02_AXI_rid(myip_burst_test_0_M00_AXI_RID),
        .S02_AXI_rlast(myip_burst_test_0_M00_AXI_RLAST),
        .S02_AXI_rready(myip_burst_test_0_M00_AXI_RREADY),
        .S02_AXI_rresp(myip_burst_test_0_M00_AXI_RRESP),
        .S02_AXI_rvalid(myip_burst_test_0_M00_AXI_RVALID),
        .S02_AXI_wdata(myip_burst_test_0_M00_AXI_WDATA),
        .S02_AXI_wlast(myip_burst_test_0_M00_AXI_WLAST),
        .S02_AXI_wready(myip_burst_test_0_M00_AXI_WREADY),
        .S02_AXI_wstrb(myip_burst_test_0_M00_AXI_WSTRB),
        .S02_AXI_wvalid(myip_burst_test_0_M00_AXI_WVALID),
        .aclk(processing_system7_0_FCLK_CLK0),
        .aresetn(rst_ps7_0_100M_peripheral_aresetn));
  design_1_block_test_0_0 block_test_0
       (.audio_out(block_test_0_audio_out),
        .axi_clk_in(processing_system7_0_FCLK_CLK0),
        .clk(clk_wiz_0_clk_out1),
        .clk_1_mhz(block_test_0_clk_1_mhz),
        .flag1(tape_interface_0_pwm),
        .ip2bus_inputs(block_test_0_ip2bus_inputs),
        .ip2bus_mst_addr(block_test_0_ip2bus_mst_addr),
        .ip2bus_mst_length(block_test_0_ip2bus_mst_length),
        .ip2bus_mstwr_d(block_test_0_ip2bus_mstwr_d),
        .ip2bus_otputs(myip_burst_test_0_ip2bus_otputs),
        .joybits(myip_burst_test_0_joybits),
        .joybits2(myip_burst_test_0_joybits2),
        .locked(clk_wiz_0_locked),
        .motor_control(block_test_0_motor_control),
        .proc_rst(rst_ps7_0_100M_peripheral_aresetn),
        .pwm(tape_interface_0_pwm),
        .reset_cpu(myip_burst_test_0_restart),
        .slave_0_reg(myip_burst_test_0_slave_reg_0),
        .slave_1_reg(myip_burst_test_0_slave_reg_1),
        .tape_button(myip_burst_test_0_tape_button));
  design_1_clk_wiz_0_0 clk_wiz_0
       (.clk_in1(processing_system7_0_FCLK_CLK0),
        .clk_out1(clk_wiz_0_clk_out1),
        .clk_out2(Net),
        .locked(clk_wiz_0_locked),
        .reset(rst_ps7_0_100M_peripheral_reset));
  design_1_clk_wiz_1_1 clk_wiz_1
       (.clk_in1(processing_system7_0_FCLK_CLK0),
        .clk_out1(clk_wiz_1_clk_out1),
        .reset(rst_ps7_0_100M_peripheral_reset));
  design_1_i2s_0_0 i2s_0
       (.audio_in(block_test_0_audio_out),
        .channel_enable(i2s_0_channel_enable),
        .clk(Net),
        .clk_100_mhz(1'b0),
        .clk_1_5_mhz(i2s_0_clk_1_5_mhz),
        .clk_1_mhz(block_test_0_clk_1_mhz),
        .mute_en(i2s_0_mute_en),
        .out_data(i2s_0_out_data));
  design_1_iobuf_0_0 iobuf_0
       (.in(processing_system7_0_I2C1_SDA_O),
        .out(iobuf_0_out),
        .pin(ac_sda),
        .tristate(processing_system7_0_I2C1_SDA_T));
  design_1_iobuf_1_0 iobuf_1
       (.in(processing_system7_0_I2C1_SCL_O),
        .out(iobuf_1_out),
        .pin(ac_scl),
        .tristate(processing_system7_0_I2C1_SCL_T));
  design_1_myip_burst_read_test_0_1 myip_burst_read_test_0
       (.bus2ip_mstrd_d(myip_burst_read_test_0_bus2ip_mstrd_d),
        .ip2bus_inputs(vga_tst_c64_0_ip2bus_inputs),
        .ip2bus_mst_addr(vga_tst_c64_0_ip2bus_mst_addr),
        .ip2bus_mst_length(vga_tst_c64_0_ip2bus_mst_length),
        .ip2bus_otputs(myip_burst_read_test_0_ip2bus_otputs),
        .m00_axi_aclk(processing_system7_0_FCLK_CLK0),
        .m00_axi_araddr(myip_burst_read_test_0_M00_AXI_ARADDR),
        .m00_axi_arburst(myip_burst_read_test_0_M00_AXI_ARBURST),
        .m00_axi_arcache(myip_burst_read_test_0_M00_AXI_ARCACHE),
        .m00_axi_aresetn(rst_ps7_0_100M_peripheral_aresetn),
        .m00_axi_arid(myip_burst_read_test_0_M00_AXI_ARID),
        .m00_axi_arlen(myip_burst_read_test_0_M00_AXI_ARLEN),
        .m00_axi_arlock(myip_burst_read_test_0_M00_AXI_ARLOCK),
        .m00_axi_arprot(myip_burst_read_test_0_M00_AXI_ARPROT),
        .m00_axi_arqos(myip_burst_read_test_0_M00_AXI_ARQOS),
        .m00_axi_arready(myip_burst_read_test_0_M00_AXI_ARREADY),
        .m00_axi_arsize(myip_burst_read_test_0_M00_AXI_ARSIZE),
        .m00_axi_aruser(myip_burst_read_test_0_M00_AXI_ARUSER),
        .m00_axi_arvalid(myip_burst_read_test_0_M00_AXI_ARVALID),
        .m00_axi_awaddr(myip_burst_read_test_0_M00_AXI_AWADDR),
        .m00_axi_awburst(myip_burst_read_test_0_M00_AXI_AWBURST),
        .m00_axi_awcache(myip_burst_read_test_0_M00_AXI_AWCACHE),
        .m00_axi_awid(myip_burst_read_test_0_M00_AXI_AWID),
        .m00_axi_awlen(myip_burst_read_test_0_M00_AXI_AWLEN),
        .m00_axi_awlock(myip_burst_read_test_0_M00_AXI_AWLOCK),
        .m00_axi_awprot(myip_burst_read_test_0_M00_AXI_AWPROT),
        .m00_axi_awqos(myip_burst_read_test_0_M00_AXI_AWQOS),
        .m00_axi_awready(myip_burst_read_test_0_M00_AXI_AWREADY),
        .m00_axi_awsize(myip_burst_read_test_0_M00_AXI_AWSIZE),
        .m00_axi_awuser(myip_burst_read_test_0_M00_AXI_AWUSER),
        .m00_axi_awvalid(myip_burst_read_test_0_M00_AXI_AWVALID),
        .m00_axi_bid(myip_burst_read_test_0_M00_AXI_BID),
        .m00_axi_bready(myip_burst_read_test_0_M00_AXI_BREADY),
        .m00_axi_bresp(myip_burst_read_test_0_M00_AXI_BRESP),
        .m00_axi_buser(myip_burst_read_test_0_M00_AXI_BUSER),
        .m00_axi_bvalid(myip_burst_read_test_0_M00_AXI_BVALID),
        .m00_axi_init_axi_txn(1'b0),
        .m00_axi_rdata(myip_burst_read_test_0_M00_AXI_RDATA),
        .m00_axi_rid(myip_burst_read_test_0_M00_AXI_RID),
        .m00_axi_rlast(myip_burst_read_test_0_M00_AXI_RLAST),
        .m00_axi_rready(myip_burst_read_test_0_M00_AXI_RREADY),
        .m00_axi_rresp(myip_burst_read_test_0_M00_AXI_RRESP),
        .m00_axi_ruser(1'b0),
        .m00_axi_rvalid(myip_burst_read_test_0_M00_AXI_RVALID),
        .m00_axi_wdata(myip_burst_read_test_0_M00_AXI_WDATA),
        .m00_axi_wlast(myip_burst_read_test_0_M00_AXI_WLAST),
        .m00_axi_wready(myip_burst_read_test_0_M00_AXI_WREADY),
        .m00_axi_wstrb(myip_burst_read_test_0_M00_AXI_WSTRB),
        .m00_axi_wvalid(myip_burst_read_test_0_M00_AXI_WVALID));
  design_1_myip_burst_read_test_1_0 myip_burst_read_test_1
       (.bus2ip_mstrd_d(myip_burst_read_test_1_bus2ip_mstrd_d),
        .ip2bus_inputs(tape_interface_0_ip2bus_inputs),
        .ip2bus_mst_addr(tape_interface_0_ip2bus_mst_addr),
        .ip2bus_mst_length(tape_interface_0_ip2bus_mst_length),
        .ip2bus_otputs(myip_burst_read_test_1_ip2bus_otputs),
        .m00_axi_aclk(processing_system7_0_FCLK_CLK0),
        .m00_axi_araddr(myip_burst_read_test_1_M00_AXI_ARADDR),
        .m00_axi_arburst(myip_burst_read_test_1_M00_AXI_ARBURST),
        .m00_axi_arcache(myip_burst_read_test_1_M00_AXI_ARCACHE),
        .m00_axi_aresetn(rst_ps7_0_100M_peripheral_aresetn),
        .m00_axi_arid(myip_burst_read_test_1_M00_AXI_ARID),
        .m00_axi_arlen(myip_burst_read_test_1_M00_AXI_ARLEN),
        .m00_axi_arlock(myip_burst_read_test_1_M00_AXI_ARLOCK),
        .m00_axi_arprot(myip_burst_read_test_1_M00_AXI_ARPROT),
        .m00_axi_arqos(myip_burst_read_test_1_M00_AXI_ARQOS),
        .m00_axi_arready(myip_burst_read_test_1_M00_AXI_ARREADY),
        .m00_axi_arsize(myip_burst_read_test_1_M00_AXI_ARSIZE),
        .m00_axi_aruser(myip_burst_read_test_1_M00_AXI_ARUSER),
        .m00_axi_arvalid(myip_burst_read_test_1_M00_AXI_ARVALID),
        .m00_axi_awaddr(myip_burst_read_test_1_M00_AXI_AWADDR),
        .m00_axi_awburst(myip_burst_read_test_1_M00_AXI_AWBURST),
        .m00_axi_awcache(myip_burst_read_test_1_M00_AXI_AWCACHE),
        .m00_axi_awid(myip_burst_read_test_1_M00_AXI_AWID),
        .m00_axi_awlen(myip_burst_read_test_1_M00_AXI_AWLEN),
        .m00_axi_awlock(myip_burst_read_test_1_M00_AXI_AWLOCK),
        .m00_axi_awprot(myip_burst_read_test_1_M00_AXI_AWPROT),
        .m00_axi_awqos(myip_burst_read_test_1_M00_AXI_AWQOS),
        .m00_axi_awready(myip_burst_read_test_1_M00_AXI_AWREADY),
        .m00_axi_awsize(myip_burst_read_test_1_M00_AXI_AWSIZE),
        .m00_axi_awuser(myip_burst_read_test_1_M00_AXI_AWUSER),
        .m00_axi_awvalid(myip_burst_read_test_1_M00_AXI_AWVALID),
        .m00_axi_bid(myip_burst_read_test_1_M00_AXI_BID),
        .m00_axi_bready(myip_burst_read_test_1_M00_AXI_BREADY),
        .m00_axi_bresp(myip_burst_read_test_1_M00_AXI_BRESP),
        .m00_axi_buser(myip_burst_read_test_1_M00_AXI_BUSER),
        .m00_axi_bvalid(myip_burst_read_test_1_M00_AXI_BVALID),
        .m00_axi_init_axi_txn(1'b0),
        .m00_axi_rdata(myip_burst_read_test_1_M00_AXI_RDATA),
        .m00_axi_rid(myip_burst_read_test_1_M00_AXI_RID),
        .m00_axi_rlast(myip_burst_read_test_1_M00_AXI_RLAST),
        .m00_axi_rready(myip_burst_read_test_1_M00_AXI_RREADY),
        .m00_axi_rresp(myip_burst_read_test_1_M00_AXI_RRESP),
        .m00_axi_ruser(1'b0),
        .m00_axi_rvalid(myip_burst_read_test_1_M00_AXI_RVALID),
        .m00_axi_wdata(myip_burst_read_test_1_M00_AXI_WDATA),
        .m00_axi_wlast(myip_burst_read_test_1_M00_AXI_WLAST),
        .m00_axi_wready(myip_burst_read_test_1_M00_AXI_WREADY),
        .m00_axi_wstrb(myip_burst_read_test_1_M00_AXI_WSTRB),
        .m00_axi_wvalid(myip_burst_read_test_1_M00_AXI_WVALID));
  design_1_myip_burst_test_0_0 myip_burst_test_0
       (.c64_mode(myip_burst_test_0_c64_mode),
        .ip2bus_inputs(block_test_0_ip2bus_inputs),
        .ip2bus_mst_addr(block_test_0_ip2bus_mst_addr),
        .ip2bus_mst_length(block_test_0_ip2bus_mst_length),
        .ip2bus_mstwr_d(block_test_0_ip2bus_mstwr_d),
        .ip2bus_otputs(myip_burst_test_0_ip2bus_otputs),
        .joybits(myip_burst_test_0_joybits),
        .joybits2(myip_burst_test_0_joybits2),
        .m00_axi_aclk(processing_system7_0_FCLK_CLK0),
        .m00_axi_araddr(myip_burst_test_0_M00_AXI_ARADDR),
        .m00_axi_arburst(myip_burst_test_0_M00_AXI_ARBURST),
        .m00_axi_arcache(myip_burst_test_0_M00_AXI_ARCACHE),
        .m00_axi_aresetn(rst_ps7_0_100M_peripheral_aresetn),
        .m00_axi_arid(myip_burst_test_0_M00_AXI_ARID),
        .m00_axi_arlen(myip_burst_test_0_M00_AXI_ARLEN),
        .m00_axi_arlock(myip_burst_test_0_M00_AXI_ARLOCK),
        .m00_axi_arprot(myip_burst_test_0_M00_AXI_ARPROT),
        .m00_axi_arqos(myip_burst_test_0_M00_AXI_ARQOS),
        .m00_axi_arready(myip_burst_test_0_M00_AXI_ARREADY),
        .m00_axi_arsize(myip_burst_test_0_M00_AXI_ARSIZE),
        .m00_axi_aruser(myip_burst_test_0_M00_AXI_ARUSER),
        .m00_axi_arvalid(myip_burst_test_0_M00_AXI_ARVALID),
        .m00_axi_awaddr(myip_burst_test_0_M00_AXI_AWADDR),
        .m00_axi_awburst(myip_burst_test_0_M00_AXI_AWBURST),
        .m00_axi_awcache(myip_burst_test_0_M00_AXI_AWCACHE),
        .m00_axi_awid(myip_burst_test_0_M00_AXI_AWID),
        .m00_axi_awlen(myip_burst_test_0_M00_AXI_AWLEN),
        .m00_axi_awlock(myip_burst_test_0_M00_AXI_AWLOCK),
        .m00_axi_awprot(myip_burst_test_0_M00_AXI_AWPROT),
        .m00_axi_awqos(myip_burst_test_0_M00_AXI_AWQOS),
        .m00_axi_awready(myip_burst_test_0_M00_AXI_AWREADY),
        .m00_axi_awsize(myip_burst_test_0_M00_AXI_AWSIZE),
        .m00_axi_awuser(myip_burst_test_0_M00_AXI_AWUSER),
        .m00_axi_awvalid(myip_burst_test_0_M00_AXI_AWVALID),
        .m00_axi_bid(myip_burst_test_0_M00_AXI_BID),
        .m00_axi_bready(myip_burst_test_0_M00_AXI_BREADY),
        .m00_axi_bresp(myip_burst_test_0_M00_AXI_BRESP),
        .m00_axi_buser(myip_burst_test_0_M00_AXI_BUSER),
        .m00_axi_bvalid(myip_burst_test_0_M00_AXI_BVALID),
        .m00_axi_init_axi_txn(1'b0),
        .m00_axi_rdata(myip_burst_test_0_M00_AXI_RDATA),
        .m00_axi_rid(myip_burst_test_0_M00_AXI_RID),
        .m00_axi_rlast(myip_burst_test_0_M00_AXI_RLAST),
        .m00_axi_rready(myip_burst_test_0_M00_AXI_RREADY),
        .m00_axi_rresp(myip_burst_test_0_M00_AXI_RRESP),
        .m00_axi_ruser(1'b0),
        .m00_axi_rvalid(myip_burst_test_0_M00_AXI_RVALID),
        .m00_axi_wdata(myip_burst_test_0_M00_AXI_WDATA),
        .m00_axi_wlast(myip_burst_test_0_M00_AXI_WLAST),
        .m00_axi_wready(myip_burst_test_0_M00_AXI_WREADY),
        .m00_axi_wstrb(myip_burst_test_0_M00_AXI_WSTRB),
        .m00_axi_wvalid(myip_burst_test_0_M00_AXI_WVALID),
        .pwm(tape_interface_0_pwm),
        .restart(myip_burst_test_0_restart),
        .s00_axi_aclk(processing_system7_0_FCLK_CLK0),
        .s00_axi_araddr(ps7_0_axi_periph_M00_AXI_ARADDR[3:0]),
        .s00_axi_aresetn(rst_ps7_0_100M_peripheral_aresetn),
        .s00_axi_arprot(ps7_0_axi_periph_M00_AXI_ARPROT),
        .s00_axi_arready(ps7_0_axi_periph_M00_AXI_ARREADY),
        .s00_axi_arvalid(ps7_0_axi_periph_M00_AXI_ARVALID),
        .s00_axi_awaddr(ps7_0_axi_periph_M00_AXI_AWADDR[3:0]),
        .s00_axi_awprot(ps7_0_axi_periph_M00_AXI_AWPROT),
        .s00_axi_awready(ps7_0_axi_periph_M00_AXI_AWREADY),
        .s00_axi_awvalid(ps7_0_axi_periph_M00_AXI_AWVALID),
        .s00_axi_bready(ps7_0_axi_periph_M00_AXI_BREADY),
        .s00_axi_bresp(ps7_0_axi_periph_M00_AXI_BRESP),
        .s00_axi_bvalid(ps7_0_axi_periph_M00_AXI_BVALID),
        .s00_axi_rdata(ps7_0_axi_periph_M00_AXI_RDATA),
        .s00_axi_rready(ps7_0_axi_periph_M00_AXI_RREADY),
        .s00_axi_rresp(ps7_0_axi_periph_M00_AXI_RRESP),
        .s00_axi_rvalid(ps7_0_axi_periph_M00_AXI_RVALID),
        .s00_axi_wdata(ps7_0_axi_periph_M00_AXI_WDATA),
        .s00_axi_wready(ps7_0_axi_periph_M00_AXI_WREADY),
        .s00_axi_wstrb(ps7_0_axi_periph_M00_AXI_WSTRB),
        .s00_axi_wvalid(ps7_0_axi_periph_M00_AXI_WVALID),
        .slave_reg_0(myip_burst_test_0_slave_reg_0),
        .slave_reg_1(myip_burst_test_0_slave_reg_1),
        .tape_button(myip_burst_test_0_tape_button));
  design_1_oddr_buf_0_0 oddr_buf_0
       (.Mlck_O(oddr_buf_0_Mlck_O),
        .clk_in(Net));
  design_1_processing_system7_0_2 processing_system7_0
       (.DDR_Addr(DDR_0_addr[14:0]),
        .DDR_BankAddr(DDR_0_ba[2:0]),
        .DDR_CAS_n(DDR_0_cas_n),
        .DDR_CKE(DDR_0_cke),
        .DDR_CS_n(DDR_0_cs_n),
        .DDR_Clk(DDR_0_ck_p),
        .DDR_Clk_n(DDR_0_ck_n),
        .DDR_DM(DDR_0_dm[3:0]),
        .DDR_DQ(DDR_0_dq[31:0]),
        .DDR_DQS(DDR_0_dqs_p[3:0]),
        .DDR_DQS_n(DDR_0_dqs_n[3:0]),
        .DDR_DRSTB(DDR_0_reset_n),
        .DDR_ODT(DDR_0_odt),
        .DDR_RAS_n(DDR_0_ras_n),
        .DDR_VRN(FIXED_IO_0_ddr_vrn),
        .DDR_VRP(FIXED_IO_0_ddr_vrp),
        .DDR_WEB(DDR_0_we_n),
        .ENET0_MDIO_I(1'b0),
        .FCLK_CLK0(processing_system7_0_FCLK_CLK0),
        .FCLK_RESET0_N(processing_system7_0_FCLK_RESET0_N),
        .I2C1_SCL_I(iobuf_1_out),
        .I2C1_SCL_O(processing_system7_0_I2C1_SCL_O),
        .I2C1_SCL_T(processing_system7_0_I2C1_SCL_T),
        .I2C1_SDA_I(iobuf_0_out),
        .I2C1_SDA_O(processing_system7_0_I2C1_SDA_O),
        .I2C1_SDA_T(processing_system7_0_I2C1_SDA_T),
        .MIO(FIXED_IO_0_mio[53:0]),
        .M_AXI_GP0_ACLK(processing_system7_0_FCLK_CLK0),
        .M_AXI_GP0_ARADDR(processing_system7_0_M_AXI_GP0_ARADDR),
        .M_AXI_GP0_ARBURST(processing_system7_0_M_AXI_GP0_ARBURST),
        .M_AXI_GP0_ARCACHE(processing_system7_0_M_AXI_GP0_ARCACHE),
        .M_AXI_GP0_ARID(processing_system7_0_M_AXI_GP0_ARID),
        .M_AXI_GP0_ARLEN(processing_system7_0_M_AXI_GP0_ARLEN),
        .M_AXI_GP0_ARLOCK(processing_system7_0_M_AXI_GP0_ARLOCK),
        .M_AXI_GP0_ARPROT(processing_system7_0_M_AXI_GP0_ARPROT),
        .M_AXI_GP0_ARQOS(processing_system7_0_M_AXI_GP0_ARQOS),
        .M_AXI_GP0_ARREADY(processing_system7_0_M_AXI_GP0_ARREADY),
        .M_AXI_GP0_ARSIZE(processing_system7_0_M_AXI_GP0_ARSIZE),
        .M_AXI_GP0_ARVALID(processing_system7_0_M_AXI_GP0_ARVALID),
        .M_AXI_GP0_AWADDR(processing_system7_0_M_AXI_GP0_AWADDR),
        .M_AXI_GP0_AWBURST(processing_system7_0_M_AXI_GP0_AWBURST),
        .M_AXI_GP0_AWCACHE(processing_system7_0_M_AXI_GP0_AWCACHE),
        .M_AXI_GP0_AWID(processing_system7_0_M_AXI_GP0_AWID),
        .M_AXI_GP0_AWLEN(processing_system7_0_M_AXI_GP0_AWLEN),
        .M_AXI_GP0_AWLOCK(processing_system7_0_M_AXI_GP0_AWLOCK),
        .M_AXI_GP0_AWPROT(processing_system7_0_M_AXI_GP0_AWPROT),
        .M_AXI_GP0_AWQOS(processing_system7_0_M_AXI_GP0_AWQOS),
        .M_AXI_GP0_AWREADY(processing_system7_0_M_AXI_GP0_AWREADY),
        .M_AXI_GP0_AWSIZE(processing_system7_0_M_AXI_GP0_AWSIZE),
        .M_AXI_GP0_AWVALID(processing_system7_0_M_AXI_GP0_AWVALID),
        .M_AXI_GP0_BID(processing_system7_0_M_AXI_GP0_BID),
        .M_AXI_GP0_BREADY(processing_system7_0_M_AXI_GP0_BREADY),
        .M_AXI_GP0_BRESP(processing_system7_0_M_AXI_GP0_BRESP),
        .M_AXI_GP0_BVALID(processing_system7_0_M_AXI_GP0_BVALID),
        .M_AXI_GP0_RDATA(processing_system7_0_M_AXI_GP0_RDATA),
        .M_AXI_GP0_RID(processing_system7_0_M_AXI_GP0_RID),
        .M_AXI_GP0_RLAST(processing_system7_0_M_AXI_GP0_RLAST),
        .M_AXI_GP0_RREADY(processing_system7_0_M_AXI_GP0_RREADY),
        .M_AXI_GP0_RRESP(processing_system7_0_M_AXI_GP0_RRESP),
        .M_AXI_GP0_RVALID(processing_system7_0_M_AXI_GP0_RVALID),
        .M_AXI_GP0_WDATA(processing_system7_0_M_AXI_GP0_WDATA),
        .M_AXI_GP0_WID(processing_system7_0_M_AXI_GP0_WID),
        .M_AXI_GP0_WLAST(processing_system7_0_M_AXI_GP0_WLAST),
        .M_AXI_GP0_WREADY(processing_system7_0_M_AXI_GP0_WREADY),
        .M_AXI_GP0_WSTRB(processing_system7_0_M_AXI_GP0_WSTRB),
        .M_AXI_GP0_WVALID(processing_system7_0_M_AXI_GP0_WVALID),
        .PS_CLK(FIXED_IO_0_ps_clk),
        .PS_PORB(FIXED_IO_0_ps_porb),
        .PS_SRSTB(FIXED_IO_0_ps_srstb),
        .SDIO0_WP(1'b0),
        .S_AXI_GP0_ACLK(processing_system7_0_FCLK_CLK0),
        .S_AXI_GP0_ARADDR(axi_smc_M00_AXI_ARADDR),
        .S_AXI_GP0_ARBURST(axi_smc_M00_AXI_ARBURST),
        .S_AXI_GP0_ARCACHE(axi_smc_M00_AXI_ARCACHE),
        .S_AXI_GP0_ARID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_GP0_ARLEN(axi_smc_M00_AXI_ARLEN),
        .S_AXI_GP0_ARLOCK(axi_smc_M00_AXI_ARLOCK),
        .S_AXI_GP0_ARPROT(axi_smc_M00_AXI_ARPROT),
        .S_AXI_GP0_ARQOS(axi_smc_M00_AXI_ARQOS),
        .S_AXI_GP0_ARREADY(axi_smc_M00_AXI_ARREADY),
        .S_AXI_GP0_ARSIZE(axi_smc_M00_AXI_ARSIZE),
        .S_AXI_GP0_ARVALID(axi_smc_M00_AXI_ARVALID),
        .S_AXI_GP0_AWADDR(axi_smc_M00_AXI_AWADDR),
        .S_AXI_GP0_AWBURST(axi_smc_M00_AXI_AWBURST),
        .S_AXI_GP0_AWCACHE(axi_smc_M00_AXI_AWCACHE),
        .S_AXI_GP0_AWID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_GP0_AWLEN(axi_smc_M00_AXI_AWLEN),
        .S_AXI_GP0_AWLOCK(axi_smc_M00_AXI_AWLOCK),
        .S_AXI_GP0_AWPROT(axi_smc_M00_AXI_AWPROT),
        .S_AXI_GP0_AWQOS(axi_smc_M00_AXI_AWQOS),
        .S_AXI_GP0_AWREADY(axi_smc_M00_AXI_AWREADY),
        .S_AXI_GP0_AWSIZE(axi_smc_M00_AXI_AWSIZE),
        .S_AXI_GP0_AWVALID(axi_smc_M00_AXI_AWVALID),
        .S_AXI_GP0_BREADY(axi_smc_M00_AXI_BREADY),
        .S_AXI_GP0_BRESP(axi_smc_M00_AXI_BRESP),
        .S_AXI_GP0_BVALID(axi_smc_M00_AXI_BVALID),
        .S_AXI_GP0_RDATA(axi_smc_M00_AXI_RDATA),
        .S_AXI_GP0_RLAST(axi_smc_M00_AXI_RLAST),
        .S_AXI_GP0_RREADY(axi_smc_M00_AXI_RREADY),
        .S_AXI_GP0_RRESP(axi_smc_M00_AXI_RRESP),
        .S_AXI_GP0_RVALID(axi_smc_M00_AXI_RVALID),
        .S_AXI_GP0_WDATA(axi_smc_M00_AXI_WDATA),
        .S_AXI_GP0_WID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_GP0_WLAST(axi_smc_M00_AXI_WLAST),
        .S_AXI_GP0_WREADY(axi_smc_M00_AXI_WREADY),
        .S_AXI_GP0_WSTRB(axi_smc_M00_AXI_WSTRB),
        .S_AXI_GP0_WVALID(axi_smc_M00_AXI_WVALID),
        .S_AXI_GP1_ACLK(processing_system7_0_FCLK_CLK0),
        .S_AXI_GP1_ARADDR(axi_smc_M01_AXI_ARADDR),
        .S_AXI_GP1_ARBURST(axi_smc_M01_AXI_ARBURST),
        .S_AXI_GP1_ARCACHE(axi_smc_M01_AXI_ARCACHE),
        .S_AXI_GP1_ARID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_GP1_ARLEN(axi_smc_M01_AXI_ARLEN),
        .S_AXI_GP1_ARLOCK(axi_smc_M01_AXI_ARLOCK),
        .S_AXI_GP1_ARPROT(axi_smc_M01_AXI_ARPROT),
        .S_AXI_GP1_ARQOS(axi_smc_M01_AXI_ARQOS),
        .S_AXI_GP1_ARREADY(axi_smc_M01_AXI_ARREADY),
        .S_AXI_GP1_ARSIZE(axi_smc_M01_AXI_ARSIZE),
        .S_AXI_GP1_ARVALID(axi_smc_M01_AXI_ARVALID),
        .S_AXI_GP1_AWADDR(axi_smc_M01_AXI_AWADDR),
        .S_AXI_GP1_AWBURST(axi_smc_M01_AXI_AWBURST),
        .S_AXI_GP1_AWCACHE(axi_smc_M01_AXI_AWCACHE),
        .S_AXI_GP1_AWID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_GP1_AWLEN(axi_smc_M01_AXI_AWLEN),
        .S_AXI_GP1_AWLOCK(axi_smc_M01_AXI_AWLOCK),
        .S_AXI_GP1_AWPROT(axi_smc_M01_AXI_AWPROT),
        .S_AXI_GP1_AWQOS(axi_smc_M01_AXI_AWQOS),
        .S_AXI_GP1_AWREADY(axi_smc_M01_AXI_AWREADY),
        .S_AXI_GP1_AWSIZE(axi_smc_M01_AXI_AWSIZE),
        .S_AXI_GP1_AWVALID(axi_smc_M01_AXI_AWVALID),
        .S_AXI_GP1_BREADY(axi_smc_M01_AXI_BREADY),
        .S_AXI_GP1_BRESP(axi_smc_M01_AXI_BRESP),
        .S_AXI_GP1_BVALID(axi_smc_M01_AXI_BVALID),
        .S_AXI_GP1_RDATA(axi_smc_M01_AXI_RDATA),
        .S_AXI_GP1_RLAST(axi_smc_M01_AXI_RLAST),
        .S_AXI_GP1_RREADY(axi_smc_M01_AXI_RREADY),
        .S_AXI_GP1_RRESP(axi_smc_M01_AXI_RRESP),
        .S_AXI_GP1_RVALID(axi_smc_M01_AXI_RVALID),
        .S_AXI_GP1_WDATA(axi_smc_M01_AXI_WDATA),
        .S_AXI_GP1_WID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_GP1_WLAST(axi_smc_M01_AXI_WLAST),
        .S_AXI_GP1_WREADY(axi_smc_M01_AXI_WREADY),
        .S_AXI_GP1_WSTRB(axi_smc_M01_AXI_WSTRB),
        .S_AXI_GP1_WVALID(axi_smc_M01_AXI_WVALID),
        .USB0_VBUS_PWRFAULT(1'b0));
  design_1_ps7_0_axi_periph_2 ps7_0_axi_periph
       (.ACLK(processing_system7_0_FCLK_CLK0),
        .ARESETN(rst_ps7_0_100M_interconnect_aresetn),
        .M00_ACLK(processing_system7_0_FCLK_CLK0),
        .M00_ARESETN(rst_ps7_0_100M_peripheral_aresetn),
        .M00_AXI_araddr(ps7_0_axi_periph_M00_AXI_ARADDR),
        .M00_AXI_arprot(ps7_0_axi_periph_M00_AXI_ARPROT),
        .M00_AXI_arready(ps7_0_axi_periph_M00_AXI_ARREADY),
        .M00_AXI_arvalid(ps7_0_axi_periph_M00_AXI_ARVALID),
        .M00_AXI_awaddr(ps7_0_axi_periph_M00_AXI_AWADDR),
        .M00_AXI_awprot(ps7_0_axi_periph_M00_AXI_AWPROT),
        .M00_AXI_awready(ps7_0_axi_periph_M00_AXI_AWREADY),
        .M00_AXI_awvalid(ps7_0_axi_periph_M00_AXI_AWVALID),
        .M00_AXI_bready(ps7_0_axi_periph_M00_AXI_BREADY),
        .M00_AXI_bresp(ps7_0_axi_periph_M00_AXI_BRESP),
        .M00_AXI_bvalid(ps7_0_axi_periph_M00_AXI_BVALID),
        .M00_AXI_rdata(ps7_0_axi_periph_M00_AXI_RDATA),
        .M00_AXI_rready(ps7_0_axi_periph_M00_AXI_RREADY),
        .M00_AXI_rresp(ps7_0_axi_periph_M00_AXI_RRESP),
        .M00_AXI_rvalid(ps7_0_axi_periph_M00_AXI_RVALID),
        .M00_AXI_wdata(ps7_0_axi_periph_M00_AXI_WDATA),
        .M00_AXI_wready(ps7_0_axi_periph_M00_AXI_WREADY),
        .M00_AXI_wstrb(ps7_0_axi_periph_M00_AXI_WSTRB),
        .M00_AXI_wvalid(ps7_0_axi_periph_M00_AXI_WVALID),
        .S00_ACLK(processing_system7_0_FCLK_CLK0),
        .S00_ARESETN(rst_ps7_0_100M_peripheral_aresetn),
        .S00_AXI_araddr(processing_system7_0_M_AXI_GP0_ARADDR),
        .S00_AXI_arburst(processing_system7_0_M_AXI_GP0_ARBURST),
        .S00_AXI_arcache(processing_system7_0_M_AXI_GP0_ARCACHE),
        .S00_AXI_arid(processing_system7_0_M_AXI_GP0_ARID),
        .S00_AXI_arlen(processing_system7_0_M_AXI_GP0_ARLEN),
        .S00_AXI_arlock(processing_system7_0_M_AXI_GP0_ARLOCK),
        .S00_AXI_arprot(processing_system7_0_M_AXI_GP0_ARPROT),
        .S00_AXI_arqos(processing_system7_0_M_AXI_GP0_ARQOS),
        .S00_AXI_arready(processing_system7_0_M_AXI_GP0_ARREADY),
        .S00_AXI_arsize(processing_system7_0_M_AXI_GP0_ARSIZE),
        .S00_AXI_arvalid(processing_system7_0_M_AXI_GP0_ARVALID),
        .S00_AXI_awaddr(processing_system7_0_M_AXI_GP0_AWADDR),
        .S00_AXI_awburst(processing_system7_0_M_AXI_GP0_AWBURST),
        .S00_AXI_awcache(processing_system7_0_M_AXI_GP0_AWCACHE),
        .S00_AXI_awid(processing_system7_0_M_AXI_GP0_AWID),
        .S00_AXI_awlen(processing_system7_0_M_AXI_GP0_AWLEN),
        .S00_AXI_awlock(processing_system7_0_M_AXI_GP0_AWLOCK),
        .S00_AXI_awprot(processing_system7_0_M_AXI_GP0_AWPROT),
        .S00_AXI_awqos(processing_system7_0_M_AXI_GP0_AWQOS),
        .S00_AXI_awready(processing_system7_0_M_AXI_GP0_AWREADY),
        .S00_AXI_awsize(processing_system7_0_M_AXI_GP0_AWSIZE),
        .S00_AXI_awvalid(processing_system7_0_M_AXI_GP0_AWVALID),
        .S00_AXI_bid(processing_system7_0_M_AXI_GP0_BID),
        .S00_AXI_bready(processing_system7_0_M_AXI_GP0_BREADY),
        .S00_AXI_bresp(processing_system7_0_M_AXI_GP0_BRESP),
        .S00_AXI_bvalid(processing_system7_0_M_AXI_GP0_BVALID),
        .S00_AXI_rdata(processing_system7_0_M_AXI_GP0_RDATA),
        .S00_AXI_rid(processing_system7_0_M_AXI_GP0_RID),
        .S00_AXI_rlast(processing_system7_0_M_AXI_GP0_RLAST),
        .S00_AXI_rready(processing_system7_0_M_AXI_GP0_RREADY),
        .S00_AXI_rresp(processing_system7_0_M_AXI_GP0_RRESP),
        .S00_AXI_rvalid(processing_system7_0_M_AXI_GP0_RVALID),
        .S00_AXI_wdata(processing_system7_0_M_AXI_GP0_WDATA),
        .S00_AXI_wid(processing_system7_0_M_AXI_GP0_WID),
        .S00_AXI_wlast(processing_system7_0_M_AXI_GP0_WLAST),
        .S00_AXI_wready(processing_system7_0_M_AXI_GP0_WREADY),
        .S00_AXI_wstrb(processing_system7_0_M_AXI_GP0_WSTRB),
        .S00_AXI_wvalid(processing_system7_0_M_AXI_GP0_WVALID));
  design_1_rst_ps7_0_100M_2 rst_ps7_0_100M
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(processing_system7_0_FCLK_RESET0_N),
        .interconnect_aresetn(rst_ps7_0_100M_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(rst_ps7_0_100M_peripheral_aresetn),
        .peripheral_reset(rst_ps7_0_100M_peripheral_reset),
        .slowest_sync_clk(processing_system7_0_FCLK_CLK0));
  design_1_tape_interface_0_0 tape_interface_0
       (.clk(processing_system7_0_FCLK_CLK0),
        .clk_1_mhz(block_test_0_clk_1_mhz),
        .ip2bus_inputs(tape_interface_0_ip2bus_inputs),
        .ip2bus_mst_addr(tape_interface_0_ip2bus_mst_addr),
        .ip2bus_mst_length(tape_interface_0_ip2bus_mst_length),
        .ip2bus_mstrd_d(myip_burst_read_test_1_bus2ip_mstrd_d),
        .ip2bus_otputs(myip_burst_read_test_1_ip2bus_otputs),
        .motor_control(block_test_0_motor_control),
        .pwm(tape_interface_0_pwm),
        .reset(rst_ps7_0_100M_peripheral_reset),
        .restart(myip_burst_test_0_restart));
  design_1_vga_tst_c64_0_1 vga_tst_c64_0
       (.blue(vga_tst_c64_0_blue),
        .c64_mode_in(myip_burst_test_0_c64_mode),
        .clk(clk_wiz_1_clk_out1),
        .clk_axi(processing_system7_0_FCLK_CLK0),
        .green(vga_tst_c64_0_green),
        .horiz_sync(vga_tst_c64_0_horiz_sync),
        .ip2bus_inputs(vga_tst_c64_0_ip2bus_inputs),
        .ip2bus_mst_addr(vga_tst_c64_0_ip2bus_mst_addr),
        .ip2bus_mst_length(vga_tst_c64_0_ip2bus_mst_length),
        .ip2bus_mstrd_d(myip_burst_read_test_0_bus2ip_mstrd_d),
        .ip2bus_otputs(myip_burst_read_test_0_ip2bus_otputs),
        .red(vga_tst_c64_0_red),
        .reset(rst_ps7_0_100M_peripheral_aresetn),
        .vert_sync(vga_tst_c64_0_vert_sync));
endmodule

module design_1_ps7_0_axi_periph_2
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arprot,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awprot,
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
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wid,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  output [2:0]M00_AXI_arprot;
  input M00_AXI_arready;
  output M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  output [2:0]M00_AXI_awprot;
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
  input S00_ACLK;
  input S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [11:0]S00_AXI_arid;
  input [3:0]S00_AXI_arlen;
  input [1:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [11:0]S00_AXI_awid;
  input [3:0]S00_AXI_awlen;
  input [1:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  output [11:0]S00_AXI_bid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  output [11:0]S00_AXI_rid;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  input [11:0]S00_AXI_wid;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire ps7_0_axi_periph_ACLK_net;
  wire ps7_0_axi_periph_ARESETN_net;
  wire [31:0]ps7_0_axi_periph_to_s00_couplers_ARADDR;
  wire [1:0]ps7_0_axi_periph_to_s00_couplers_ARBURST;
  wire [3:0]ps7_0_axi_periph_to_s00_couplers_ARCACHE;
  wire [11:0]ps7_0_axi_periph_to_s00_couplers_ARID;
  wire [3:0]ps7_0_axi_periph_to_s00_couplers_ARLEN;
  wire [1:0]ps7_0_axi_periph_to_s00_couplers_ARLOCK;
  wire [2:0]ps7_0_axi_periph_to_s00_couplers_ARPROT;
  wire [3:0]ps7_0_axi_periph_to_s00_couplers_ARQOS;
  wire ps7_0_axi_periph_to_s00_couplers_ARREADY;
  wire [2:0]ps7_0_axi_periph_to_s00_couplers_ARSIZE;
  wire ps7_0_axi_periph_to_s00_couplers_ARVALID;
  wire [31:0]ps7_0_axi_periph_to_s00_couplers_AWADDR;
  wire [1:0]ps7_0_axi_periph_to_s00_couplers_AWBURST;
  wire [3:0]ps7_0_axi_periph_to_s00_couplers_AWCACHE;
  wire [11:0]ps7_0_axi_periph_to_s00_couplers_AWID;
  wire [3:0]ps7_0_axi_periph_to_s00_couplers_AWLEN;
  wire [1:0]ps7_0_axi_periph_to_s00_couplers_AWLOCK;
  wire [2:0]ps7_0_axi_periph_to_s00_couplers_AWPROT;
  wire [3:0]ps7_0_axi_periph_to_s00_couplers_AWQOS;
  wire ps7_0_axi_periph_to_s00_couplers_AWREADY;
  wire [2:0]ps7_0_axi_periph_to_s00_couplers_AWSIZE;
  wire ps7_0_axi_periph_to_s00_couplers_AWVALID;
  wire [11:0]ps7_0_axi_periph_to_s00_couplers_BID;
  wire ps7_0_axi_periph_to_s00_couplers_BREADY;
  wire [1:0]ps7_0_axi_periph_to_s00_couplers_BRESP;
  wire ps7_0_axi_periph_to_s00_couplers_BVALID;
  wire [31:0]ps7_0_axi_periph_to_s00_couplers_RDATA;
  wire [11:0]ps7_0_axi_periph_to_s00_couplers_RID;
  wire ps7_0_axi_periph_to_s00_couplers_RLAST;
  wire ps7_0_axi_periph_to_s00_couplers_RREADY;
  wire [1:0]ps7_0_axi_periph_to_s00_couplers_RRESP;
  wire ps7_0_axi_periph_to_s00_couplers_RVALID;
  wire [31:0]ps7_0_axi_periph_to_s00_couplers_WDATA;
  wire [11:0]ps7_0_axi_periph_to_s00_couplers_WID;
  wire ps7_0_axi_periph_to_s00_couplers_WLAST;
  wire ps7_0_axi_periph_to_s00_couplers_WREADY;
  wire [3:0]ps7_0_axi_periph_to_s00_couplers_WSTRB;
  wire ps7_0_axi_periph_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_ps7_0_axi_periph_ARADDR;
  wire [2:0]s00_couplers_to_ps7_0_axi_periph_ARPROT;
  wire s00_couplers_to_ps7_0_axi_periph_ARREADY;
  wire s00_couplers_to_ps7_0_axi_periph_ARVALID;
  wire [31:0]s00_couplers_to_ps7_0_axi_periph_AWADDR;
  wire [2:0]s00_couplers_to_ps7_0_axi_periph_AWPROT;
  wire s00_couplers_to_ps7_0_axi_periph_AWREADY;
  wire s00_couplers_to_ps7_0_axi_periph_AWVALID;
  wire s00_couplers_to_ps7_0_axi_periph_BREADY;
  wire [1:0]s00_couplers_to_ps7_0_axi_periph_BRESP;
  wire s00_couplers_to_ps7_0_axi_periph_BVALID;
  wire [31:0]s00_couplers_to_ps7_0_axi_periph_RDATA;
  wire s00_couplers_to_ps7_0_axi_periph_RREADY;
  wire [1:0]s00_couplers_to_ps7_0_axi_periph_RRESP;
  wire s00_couplers_to_ps7_0_axi_periph_RVALID;
  wire [31:0]s00_couplers_to_ps7_0_axi_periph_WDATA;
  wire s00_couplers_to_ps7_0_axi_periph_WREADY;
  wire [3:0]s00_couplers_to_ps7_0_axi_periph_WSTRB;
  wire s00_couplers_to_ps7_0_axi_periph_WVALID;

  assign M00_AXI_araddr[31:0] = s00_couplers_to_ps7_0_axi_periph_ARADDR;
  assign M00_AXI_arprot[2:0] = s00_couplers_to_ps7_0_axi_periph_ARPROT;
  assign M00_AXI_arvalid = s00_couplers_to_ps7_0_axi_periph_ARVALID;
  assign M00_AXI_awaddr[31:0] = s00_couplers_to_ps7_0_axi_periph_AWADDR;
  assign M00_AXI_awprot[2:0] = s00_couplers_to_ps7_0_axi_periph_AWPROT;
  assign M00_AXI_awvalid = s00_couplers_to_ps7_0_axi_periph_AWVALID;
  assign M00_AXI_bready = s00_couplers_to_ps7_0_axi_periph_BREADY;
  assign M00_AXI_rready = s00_couplers_to_ps7_0_axi_periph_RREADY;
  assign M00_AXI_wdata[31:0] = s00_couplers_to_ps7_0_axi_periph_WDATA;
  assign M00_AXI_wstrb[3:0] = s00_couplers_to_ps7_0_axi_periph_WSTRB;
  assign M00_AXI_wvalid = s00_couplers_to_ps7_0_axi_periph_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready = ps7_0_axi_periph_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = ps7_0_axi_periph_to_s00_couplers_AWREADY;
  assign S00_AXI_bid[11:0] = ps7_0_axi_periph_to_s00_couplers_BID;
  assign S00_AXI_bresp[1:0] = ps7_0_axi_periph_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = ps7_0_axi_periph_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = ps7_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rid[11:0] = ps7_0_axi_periph_to_s00_couplers_RID;
  assign S00_AXI_rlast = ps7_0_axi_periph_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = ps7_0_axi_periph_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = ps7_0_axi_periph_to_s00_couplers_RVALID;
  assign S00_AXI_wready = ps7_0_axi_periph_to_s00_couplers_WREADY;
  assign ps7_0_axi_periph_ACLK_net = M00_ACLK;
  assign ps7_0_axi_periph_ARESETN_net = M00_ARESETN;
  assign ps7_0_axi_periph_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign ps7_0_axi_periph_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign ps7_0_axi_periph_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign ps7_0_axi_periph_to_s00_couplers_ARID = S00_AXI_arid[11:0];
  assign ps7_0_axi_periph_to_s00_couplers_ARLEN = S00_AXI_arlen[3:0];
  assign ps7_0_axi_periph_to_s00_couplers_ARLOCK = S00_AXI_arlock[1:0];
  assign ps7_0_axi_periph_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign ps7_0_axi_periph_to_s00_couplers_ARQOS = S00_AXI_arqos[3:0];
  assign ps7_0_axi_periph_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign ps7_0_axi_periph_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign ps7_0_axi_periph_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign ps7_0_axi_periph_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign ps7_0_axi_periph_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign ps7_0_axi_periph_to_s00_couplers_AWID = S00_AXI_awid[11:0];
  assign ps7_0_axi_periph_to_s00_couplers_AWLEN = S00_AXI_awlen[3:0];
  assign ps7_0_axi_periph_to_s00_couplers_AWLOCK = S00_AXI_awlock[1:0];
  assign ps7_0_axi_periph_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign ps7_0_axi_periph_to_s00_couplers_AWQOS = S00_AXI_awqos[3:0];
  assign ps7_0_axi_periph_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign ps7_0_axi_periph_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign ps7_0_axi_periph_to_s00_couplers_BREADY = S00_AXI_bready;
  assign ps7_0_axi_periph_to_s00_couplers_RREADY = S00_AXI_rready;
  assign ps7_0_axi_periph_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign ps7_0_axi_periph_to_s00_couplers_WID = S00_AXI_wid[11:0];
  assign ps7_0_axi_periph_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign ps7_0_axi_periph_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign ps7_0_axi_periph_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign s00_couplers_to_ps7_0_axi_periph_ARREADY = M00_AXI_arready;
  assign s00_couplers_to_ps7_0_axi_periph_AWREADY = M00_AXI_awready;
  assign s00_couplers_to_ps7_0_axi_periph_BRESP = M00_AXI_bresp[1:0];
  assign s00_couplers_to_ps7_0_axi_periph_BVALID = M00_AXI_bvalid;
  assign s00_couplers_to_ps7_0_axi_periph_RDATA = M00_AXI_rdata[31:0];
  assign s00_couplers_to_ps7_0_axi_periph_RRESP = M00_AXI_rresp[1:0];
  assign s00_couplers_to_ps7_0_axi_periph_RVALID = M00_AXI_rvalid;
  assign s00_couplers_to_ps7_0_axi_periph_WREADY = M00_AXI_wready;
  s00_couplers_imp_UYSKKA s00_couplers
       (.M_ACLK(ps7_0_axi_periph_ACLK_net),
        .M_ARESETN(ps7_0_axi_periph_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_ps7_0_axi_periph_ARADDR),
        .M_AXI_arprot(s00_couplers_to_ps7_0_axi_periph_ARPROT),
        .M_AXI_arready(s00_couplers_to_ps7_0_axi_periph_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_ps7_0_axi_periph_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_ps7_0_axi_periph_AWADDR),
        .M_AXI_awprot(s00_couplers_to_ps7_0_axi_periph_AWPROT),
        .M_AXI_awready(s00_couplers_to_ps7_0_axi_periph_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_ps7_0_axi_periph_AWVALID),
        .M_AXI_bready(s00_couplers_to_ps7_0_axi_periph_BREADY),
        .M_AXI_bresp(s00_couplers_to_ps7_0_axi_periph_BRESP),
        .M_AXI_bvalid(s00_couplers_to_ps7_0_axi_periph_BVALID),
        .M_AXI_rdata(s00_couplers_to_ps7_0_axi_periph_RDATA),
        .M_AXI_rready(s00_couplers_to_ps7_0_axi_periph_RREADY),
        .M_AXI_rresp(s00_couplers_to_ps7_0_axi_periph_RRESP),
        .M_AXI_rvalid(s00_couplers_to_ps7_0_axi_periph_RVALID),
        .M_AXI_wdata(s00_couplers_to_ps7_0_axi_periph_WDATA),
        .M_AXI_wready(s00_couplers_to_ps7_0_axi_periph_WREADY),
        .M_AXI_wstrb(s00_couplers_to_ps7_0_axi_periph_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_ps7_0_axi_periph_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(ps7_0_axi_periph_to_s00_couplers_ARADDR),
        .S_AXI_arburst(ps7_0_axi_periph_to_s00_couplers_ARBURST),
        .S_AXI_arcache(ps7_0_axi_periph_to_s00_couplers_ARCACHE),
        .S_AXI_arid(ps7_0_axi_periph_to_s00_couplers_ARID),
        .S_AXI_arlen(ps7_0_axi_periph_to_s00_couplers_ARLEN),
        .S_AXI_arlock(ps7_0_axi_periph_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(ps7_0_axi_periph_to_s00_couplers_ARPROT),
        .S_AXI_arqos(ps7_0_axi_periph_to_s00_couplers_ARQOS),
        .S_AXI_arready(ps7_0_axi_periph_to_s00_couplers_ARREADY),
        .S_AXI_arsize(ps7_0_axi_periph_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(ps7_0_axi_periph_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(ps7_0_axi_periph_to_s00_couplers_AWADDR),
        .S_AXI_awburst(ps7_0_axi_periph_to_s00_couplers_AWBURST),
        .S_AXI_awcache(ps7_0_axi_periph_to_s00_couplers_AWCACHE),
        .S_AXI_awid(ps7_0_axi_periph_to_s00_couplers_AWID),
        .S_AXI_awlen(ps7_0_axi_periph_to_s00_couplers_AWLEN),
        .S_AXI_awlock(ps7_0_axi_periph_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(ps7_0_axi_periph_to_s00_couplers_AWPROT),
        .S_AXI_awqos(ps7_0_axi_periph_to_s00_couplers_AWQOS),
        .S_AXI_awready(ps7_0_axi_periph_to_s00_couplers_AWREADY),
        .S_AXI_awsize(ps7_0_axi_periph_to_s00_couplers_AWSIZE),
        .S_AXI_awvalid(ps7_0_axi_periph_to_s00_couplers_AWVALID),
        .S_AXI_bid(ps7_0_axi_periph_to_s00_couplers_BID),
        .S_AXI_bready(ps7_0_axi_periph_to_s00_couplers_BREADY),
        .S_AXI_bresp(ps7_0_axi_periph_to_s00_couplers_BRESP),
        .S_AXI_bvalid(ps7_0_axi_periph_to_s00_couplers_BVALID),
        .S_AXI_rdata(ps7_0_axi_periph_to_s00_couplers_RDATA),
        .S_AXI_rid(ps7_0_axi_periph_to_s00_couplers_RID),
        .S_AXI_rlast(ps7_0_axi_periph_to_s00_couplers_RLAST),
        .S_AXI_rready(ps7_0_axi_periph_to_s00_couplers_RREADY),
        .S_AXI_rresp(ps7_0_axi_periph_to_s00_couplers_RRESP),
        .S_AXI_rvalid(ps7_0_axi_periph_to_s00_couplers_RVALID),
        .S_AXI_wdata(ps7_0_axi_periph_to_s00_couplers_WDATA),
        .S_AXI_wid(ps7_0_axi_periph_to_s00_couplers_WID),
        .S_AXI_wlast(ps7_0_axi_periph_to_s00_couplers_WLAST),
        .S_AXI_wready(ps7_0_axi_periph_to_s00_couplers_WREADY),
        .S_AXI_wstrb(ps7_0_axi_periph_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(ps7_0_axi_periph_to_s00_couplers_WVALID));
endmodule

module s00_couplers_imp_UYSKKA
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
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
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wid,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
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
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [11:0]S_AXI_arid;
  input [3:0]S_AXI_arlen;
  input [1:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [11:0]S_AXI_awid;
  input [3:0]S_AXI_awlen;
  input [1:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [11:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [11:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input [11:0]S_AXI_wid;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_pc_to_s00_couplers_ARADDR;
  wire [2:0]auto_pc_to_s00_couplers_ARPROT;
  wire auto_pc_to_s00_couplers_ARREADY;
  wire auto_pc_to_s00_couplers_ARVALID;
  wire [31:0]auto_pc_to_s00_couplers_AWADDR;
  wire [2:0]auto_pc_to_s00_couplers_AWPROT;
  wire auto_pc_to_s00_couplers_AWREADY;
  wire auto_pc_to_s00_couplers_AWVALID;
  wire auto_pc_to_s00_couplers_BREADY;
  wire [1:0]auto_pc_to_s00_couplers_BRESP;
  wire auto_pc_to_s00_couplers_BVALID;
  wire [31:0]auto_pc_to_s00_couplers_RDATA;
  wire auto_pc_to_s00_couplers_RREADY;
  wire [1:0]auto_pc_to_s00_couplers_RRESP;
  wire auto_pc_to_s00_couplers_RVALID;
  wire [31:0]auto_pc_to_s00_couplers_WDATA;
  wire auto_pc_to_s00_couplers_WREADY;
  wire [3:0]auto_pc_to_s00_couplers_WSTRB;
  wire auto_pc_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_auto_pc_ARADDR;
  wire [1:0]s00_couplers_to_auto_pc_ARBURST;
  wire [3:0]s00_couplers_to_auto_pc_ARCACHE;
  wire [11:0]s00_couplers_to_auto_pc_ARID;
  wire [3:0]s00_couplers_to_auto_pc_ARLEN;
  wire [1:0]s00_couplers_to_auto_pc_ARLOCK;
  wire [2:0]s00_couplers_to_auto_pc_ARPROT;
  wire [3:0]s00_couplers_to_auto_pc_ARQOS;
  wire s00_couplers_to_auto_pc_ARREADY;
  wire [2:0]s00_couplers_to_auto_pc_ARSIZE;
  wire s00_couplers_to_auto_pc_ARVALID;
  wire [31:0]s00_couplers_to_auto_pc_AWADDR;
  wire [1:0]s00_couplers_to_auto_pc_AWBURST;
  wire [3:0]s00_couplers_to_auto_pc_AWCACHE;
  wire [11:0]s00_couplers_to_auto_pc_AWID;
  wire [3:0]s00_couplers_to_auto_pc_AWLEN;
  wire [1:0]s00_couplers_to_auto_pc_AWLOCK;
  wire [2:0]s00_couplers_to_auto_pc_AWPROT;
  wire [3:0]s00_couplers_to_auto_pc_AWQOS;
  wire s00_couplers_to_auto_pc_AWREADY;
  wire [2:0]s00_couplers_to_auto_pc_AWSIZE;
  wire s00_couplers_to_auto_pc_AWVALID;
  wire [11:0]s00_couplers_to_auto_pc_BID;
  wire s00_couplers_to_auto_pc_BREADY;
  wire [1:0]s00_couplers_to_auto_pc_BRESP;
  wire s00_couplers_to_auto_pc_BVALID;
  wire [31:0]s00_couplers_to_auto_pc_RDATA;
  wire [11:0]s00_couplers_to_auto_pc_RID;
  wire s00_couplers_to_auto_pc_RLAST;
  wire s00_couplers_to_auto_pc_RREADY;
  wire [1:0]s00_couplers_to_auto_pc_RRESP;
  wire s00_couplers_to_auto_pc_RVALID;
  wire [31:0]s00_couplers_to_auto_pc_WDATA;
  wire [11:0]s00_couplers_to_auto_pc_WID;
  wire s00_couplers_to_auto_pc_WLAST;
  wire s00_couplers_to_auto_pc_WREADY;
  wire [3:0]s00_couplers_to_auto_pc_WSTRB;
  wire s00_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_s00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = auto_pc_to_s00_couplers_ARPROT;
  assign M_AXI_arvalid = auto_pc_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_s00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = auto_pc_to_s00_couplers_AWPROT;
  assign M_AXI_awvalid = auto_pc_to_s00_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_s00_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_s00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s00_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = s00_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bid[11:0] = s00_couplers_to_auto_pc_BID;
  assign S_AXI_bresp[1:0] = s00_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_auto_pc_RDATA;
  assign S_AXI_rid[11:0] = s00_couplers_to_auto_pc_RID;
  assign S_AXI_rlast = s00_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = s00_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_s00_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_s00_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_auto_pc_ARID = S_AXI_arid[11:0];
  assign s00_couplers_to_auto_pc_ARLEN = S_AXI_arlen[3:0];
  assign s00_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[1:0];
  assign s00_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign s00_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_auto_pc_AWID = S_AXI_awid[11:0];
  assign s00_couplers_to_auto_pc_AWLEN = S_AXI_awlen[3:0];
  assign s00_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[1:0];
  assign s00_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign s00_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign s00_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign s00_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_auto_pc_WID = S_AXI_wid[11:0];
  assign s00_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign s00_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  design_1_auto_pc_0 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_s00_couplers_ARADDR),
        .m_axi_arprot(auto_pc_to_s00_couplers_ARPROT),
        .m_axi_arready(auto_pc_to_s00_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_s00_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_s00_couplers_AWADDR),
        .m_axi_awprot(auto_pc_to_s00_couplers_AWPROT),
        .m_axi_awready(auto_pc_to_s00_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_s00_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_s00_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_s00_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_s00_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_s00_couplers_RDATA),
        .m_axi_rready(auto_pc_to_s00_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_s00_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_s00_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_s00_couplers_WDATA),
        .m_axi_wready(auto_pc_to_s00_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_s00_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_s00_couplers_WVALID),
        .s_axi_araddr(s00_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(s00_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(s00_couplers_to_auto_pc_ARCACHE),
        .s_axi_arid(s00_couplers_to_auto_pc_ARID),
        .s_axi_arlen(s00_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(s00_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(s00_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(s00_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(s00_couplers_to_auto_pc_ARREADY),
        .s_axi_arsize(s00_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(s00_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(s00_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(s00_couplers_to_auto_pc_AWCACHE),
        .s_axi_awid(s00_couplers_to_auto_pc_AWID),
        .s_axi_awlen(s00_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(s00_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(s00_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(s00_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(s00_couplers_to_auto_pc_AWREADY),
        .s_axi_awsize(s00_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_auto_pc_AWVALID),
        .s_axi_bid(s00_couplers_to_auto_pc_BID),
        .s_axi_bready(s00_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(s00_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(s00_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(s00_couplers_to_auto_pc_RDATA),
        .s_axi_rid(s00_couplers_to_auto_pc_RID),
        .s_axi_rlast(s00_couplers_to_auto_pc_RLAST),
        .s_axi_rready(s00_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(s00_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(s00_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(s00_couplers_to_auto_pc_WDATA),
        .s_axi_wid(s00_couplers_to_auto_pc_WID),
        .s_axi_wlast(s00_couplers_to_auto_pc_WLAST),
        .s_axi_wready(s00_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(s00_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(s00_couplers_to_auto_pc_WVALID));
endmodule
