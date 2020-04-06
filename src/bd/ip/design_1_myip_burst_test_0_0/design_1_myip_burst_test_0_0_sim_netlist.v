// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.1 (lin64) Build 1846317 Fri Apr 14 18:54:47 MDT 2017
// Date        : Sun Apr  5 18:32:56 2020
// Host        : johan-Latitude-E5550 running 64-bit Ubuntu 16.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/johan/v/c64fpga/src/bd/ip/design_1_myip_burst_test_0_0/design_1_myip_burst_test_0_0_sim_netlist.v
// Design      : design_1_myip_burst_test_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_myip_burst_test_0_0,myip_burst_test_v1_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "myip_burst_test_v1_0,Vivado 2017.1" *) 
(* NotValidForBitStream *)
module design_1_myip_burst_test_0_0
   (ip2bus_mst_addr,
    ip2bus_mst_length,
    ip2bus_mstwr_d,
    ip2bus_inputs,
    ip2bus_otputs,
    slave_reg_0,
    slave_reg_1,
    restart,
    c64_mode,
    tape_button,
    pwm,
    joybits,
    joybits2,
    s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready,
    s00_axi_aclk,
    s00_axi_aresetn,
    m00_axi_awid,
    m00_axi_awaddr,
    m00_axi_awlen,
    m00_axi_awsize,
    m00_axi_awburst,
    m00_axi_awlock,
    m00_axi_awcache,
    m00_axi_awprot,
    m00_axi_awqos,
    m00_axi_awuser,
    m00_axi_awvalid,
    m00_axi_awready,
    m00_axi_wdata,
    m00_axi_wstrb,
    m00_axi_wlast,
    m00_axi_wuser,
    m00_axi_wvalid,
    m00_axi_wready,
    m00_axi_bid,
    m00_axi_bresp,
    m00_axi_buser,
    m00_axi_bvalid,
    m00_axi_bready,
    m00_axi_arid,
    m00_axi_araddr,
    m00_axi_arlen,
    m00_axi_arsize,
    m00_axi_arburst,
    m00_axi_arlock,
    m00_axi_arcache,
    m00_axi_arprot,
    m00_axi_arqos,
    m00_axi_aruser,
    m00_axi_arvalid,
    m00_axi_arready,
    m00_axi_rid,
    m00_axi_rdata,
    m00_axi_rresp,
    m00_axi_rlast,
    m00_axi_ruser,
    m00_axi_rvalid,
    m00_axi_rready,
    m00_axi_aclk,
    m00_axi_aresetn,
    m00_axi_init_axi_txn,
    m00_axi_txn_done,
    m00_axi_error);
  input [31:0]ip2bus_mst_addr;
  input [11:0]ip2bus_mst_length;
  input [31:0]ip2bus_mstwr_d;
  input [4:0]ip2bus_inputs;
  output [5:0]ip2bus_otputs;
  output [31:0]slave_reg_0;
  output [31:0]slave_reg_1;
  output restart;
  output c64_mode;
  output tape_button;
  input pwm;
  output [4:0]joybits;
  output [4:0]joybits2;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) input [3:0]s00_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]s00_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input s00_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output s00_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [31:0]s00_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [3:0]s00_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input s00_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output s00_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]s00_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output s00_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input s00_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [3:0]s00_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]s00_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input s00_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output s00_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [31:0]s00_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]s00_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output s00_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) input s00_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK, xilinx.com:signal:clock:1.0 s00_axi_aclk CLK" *) input s00_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST, xilinx.com:signal:reset:1.0 s00_axi_aresetn RST" *) input s00_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWID" *) output [0:0]m00_axi_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR" *) output [31:0]m00_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWLEN" *) output [7:0]m00_axi_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWSIZE" *) output [2:0]m00_axi_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWBURST" *) output [1:0]m00_axi_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWLOCK" *) output m00_axi_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWCACHE" *) output [3:0]m00_axi_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWPROT" *) output [2:0]m00_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWQOS" *) output [3:0]m00_axi_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWUSER" *) output [0:0]m00_axi_awuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWVALID" *) output m00_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWREADY" *) input m00_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WDATA" *) output [31:0]m00_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WSTRB" *) output [3:0]m00_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WLAST" *) output m00_axi_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WUSER" *) output [0:0]m00_axi_wuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WVALID" *) output m00_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WREADY" *) input m00_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BID" *) input [0:0]m00_axi_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BRESP" *) input [1:0]m00_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BUSER" *) input [0:0]m00_axi_buser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BVALID" *) input m00_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BREADY" *) output m00_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARID" *) output [0:0]m00_axi_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR" *) output [31:0]m00_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARLEN" *) output [7:0]m00_axi_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARSIZE" *) output [2:0]m00_axi_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARBURST" *) output [1:0]m00_axi_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARLOCK" *) output m00_axi_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARCACHE" *) output [3:0]m00_axi_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARPROT" *) output [2:0]m00_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARQOS" *) output [3:0]m00_axi_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARUSER" *) output [0:0]m00_axi_aruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARVALID" *) output m00_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARREADY" *) input m00_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RID" *) input [0:0]m00_axi_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RDATA" *) input [31:0]m00_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RRESP" *) input [1:0]m00_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RLAST" *) input m00_axi_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RUSER" *) input [0:0]m00_axi_ruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RVALID" *) input m00_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RREADY" *) output m00_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 M00_AXI_CLK CLK, xilinx.com:signal:clock:1.0 m00_axi_aclk CLK" *) input m00_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 M00_AXI_RST RST, xilinx.com:signal:reset:1.0 m00_axi_aresetn RST" *) input m00_axi_aresetn;
  input m00_axi_init_axi_txn;
  output m00_axi_txn_done;
  output m00_axi_error;

  wire \<const0> ;
  wire \<const1> ;
  wire c64_mode;
  wire [4:0]ip2bus_inputs;
  wire [31:0]ip2bus_mst_addr;
  wire [11:0]ip2bus_mst_length;
  wire [31:0]ip2bus_mstwr_d;
  wire [5:0]ip2bus_otputs;
  wire [4:0]joybits;
  wire [4:0]joybits2;
  wire m00_axi_aclk;
  wire [31:0]m00_axi_araddr;
  wire [0:0]\^m00_axi_arburst ;
  wire m00_axi_aresetn;
  wire [3:0]\^m00_axi_arlen ;
  wire [1:1]\^m00_axi_arsize ;
  wire m00_axi_awready;
  wire m00_axi_awvalid;
  wire m00_axi_bready;
  wire [1:0]m00_axi_bresp;
  wire m00_axi_bvalid;
  wire [31:0]m00_axi_wdata;
  wire m00_axi_wlast;
  wire m00_axi_wready;
  wire [3:0]m00_axi_wstrb;
  wire m00_axi_wvalid;
  wire pwm;
  wire restart;
  wire s00_axi_aclk;
  wire [3:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [3:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire [31:0]slave_reg_0;
  wire [31:0]slave_reg_1;
  wire tape_button;

  assign m00_axi_arburst[1] = \<const0> ;
  assign m00_axi_arburst[0] = \^m00_axi_arburst [0];
  assign m00_axi_arcache[3] = \<const0> ;
  assign m00_axi_arcache[2] = \<const0> ;
  assign m00_axi_arcache[1] = \<const1> ;
  assign m00_axi_arcache[0] = \<const1> ;
  assign m00_axi_arid[0] = \<const0> ;
  assign m00_axi_arlen[7] = \<const0> ;
  assign m00_axi_arlen[6] = \<const0> ;
  assign m00_axi_arlen[5] = \<const0> ;
  assign m00_axi_arlen[4] = \<const0> ;
  assign m00_axi_arlen[3:0] = \^m00_axi_arlen [3:0];
  assign m00_axi_arlock = \<const0> ;
  assign m00_axi_arprot[2] = \<const0> ;
  assign m00_axi_arprot[1] = \<const0> ;
  assign m00_axi_arprot[0] = \<const0> ;
  assign m00_axi_arqos[3] = \<const1> ;
  assign m00_axi_arqos[2] = \<const1> ;
  assign m00_axi_arqos[1] = \<const1> ;
  assign m00_axi_arqos[0] = \<const1> ;
  assign m00_axi_arsize[2] = \<const0> ;
  assign m00_axi_arsize[1] = \^m00_axi_arsize [1];
  assign m00_axi_arsize[0] = \<const0> ;
  assign m00_axi_aruser[0] = \<const0> ;
  assign m00_axi_arvalid = \<const0> ;
  assign m00_axi_awaddr[31:0] = m00_axi_araddr;
  assign m00_axi_awburst[1] = \<const0> ;
  assign m00_axi_awburst[0] = \^m00_axi_arburst [0];
  assign m00_axi_awcache[3] = \<const0> ;
  assign m00_axi_awcache[2] = \<const0> ;
  assign m00_axi_awcache[1] = \<const1> ;
  assign m00_axi_awcache[0] = \<const1> ;
  assign m00_axi_awlen[7] = \<const0> ;
  assign m00_axi_awlen[6] = \<const0> ;
  assign m00_axi_awlen[5] = \<const0> ;
  assign m00_axi_awlen[4] = \<const0> ;
  assign m00_axi_awlen[3:0] = \^m00_axi_arlen [3:0];
  assign m00_axi_awlock = \<const0> ;
  assign m00_axi_awprot[2] = \<const0> ;
  assign m00_axi_awprot[1] = \<const0> ;
  assign m00_axi_awprot[0] = \<const0> ;
  assign m00_axi_awqos[3] = \<const1> ;
  assign m00_axi_awqos[2] = \<const1> ;
  assign m00_axi_awqos[1] = \<const1> ;
  assign m00_axi_awqos[0] = \<const1> ;
  assign m00_axi_awsize[2] = \<const0> ;
  assign m00_axi_awsize[1] = \^m00_axi_arsize [1];
  assign m00_axi_awsize[0] = \<const0> ;
  assign m00_axi_awuser[0] = \<const1> ;
  assign m00_axi_rready = \<const0> ;
  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  design_1_myip_burst_test_0_0_myip_burst_test_v1_0 inst
       (.Q({joybits2,c64_mode,joybits,tape_button,restart}),
        .ip2bus_inputs({ip2bus_inputs[4:3],ip2bus_inputs[1:0]}),
        .ip2bus_mst_addr(ip2bus_mst_addr),
        .ip2bus_mst_length(ip2bus_mst_length),
        .ip2bus_mstwr_d(ip2bus_mstwr_d),
        .ip2bus_otputs(ip2bus_otputs),
        .m00_axi_aclk(m00_axi_aclk),
        .m00_axi_araddr(m00_axi_araddr),
        .m00_axi_arburst(\^m00_axi_arburst ),
        .m00_axi_aresetn(m00_axi_aresetn),
        .m00_axi_arlen(\^m00_axi_arlen ),
        .m00_axi_arsize(\^m00_axi_arsize ),
        .m00_axi_awready(m00_axi_awready),
        .m00_axi_awvalid(m00_axi_awvalid),
        .m00_axi_bready(m00_axi_bready),
        .m00_axi_bresp(m00_axi_bresp),
        .m00_axi_bvalid(m00_axi_bvalid),
        .m00_axi_wdata(m00_axi_wdata),
        .m00_axi_wlast(m00_axi_wlast),
        .m00_axi_wready(m00_axi_wready),
        .m00_axi_wstrb(m00_axi_wstrb),
        .m00_axi_wvalid(m00_axi_wvalid),
        .pwm(pwm),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[3:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arready(s00_axi_arready),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[3:2]),
        .s00_axi_awready(s00_axi_awready),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid),
        .slave_reg_0(slave_reg_0),
        .slave_reg_1(slave_reg_1));
endmodule

(* ORIG_REF_NAME = "axi_master_burst" *) 
module design_1_myip_burst_test_0_0_axi_master_burst
   (m00_axi_wvalid,
    m00_axi_wlast,
    m00_axi_arsize,
    m00_axi_arburst,
    m00_axi_awvalid,
    ip2bus_otputs,
    m00_axi_wdata,
    m00_axi_wstrb,
    m00_axi_araddr,
    m00_axi_arlen,
    m00_axi_bready,
    m00_axi_aclk,
    ip2bus_inputs,
    m00_axi_wready,
    m00_axi_aresetn,
    m00_axi_bresp,
    ip2bus_mstwr_d,
    ip2bus_mst_length,
    ip2bus_mst_addr,
    m00_axi_bvalid,
    m00_axi_awready);
  output m00_axi_wvalid;
  output m00_axi_wlast;
  output [0:0]m00_axi_arsize;
  output [0:0]m00_axi_arburst;
  output m00_axi_awvalid;
  output [5:0]ip2bus_otputs;
  output [31:0]m00_axi_wdata;
  output [3:0]m00_axi_wstrb;
  output [31:0]m00_axi_araddr;
  output [3:0]m00_axi_arlen;
  output m00_axi_bready;
  input m00_axi_aclk;
  input [3:0]ip2bus_inputs;
  input m00_axi_wready;
  input m00_axi_aresetn;
  input [1:0]m00_axi_bresp;
  input [31:0]ip2bus_mstwr_d;
  input [11:0]ip2bus_mst_length;
  input [31:0]ip2bus_mst_addr;
  input m00_axi_bvalid;
  input m00_axi_awready;

  wire \I_ADDR_CNTL/sig_wr_addr_valid_reg0 ;
  wire I_CMD_STATUS_MODULE_n_10;
  wire I_CMD_STATUS_MODULE_n_11;
  wire I_CMD_STATUS_MODULE_n_12;
  wire I_CMD_STATUS_MODULE_n_13;
  wire I_CMD_STATUS_MODULE_n_14;
  wire I_CMD_STATUS_MODULE_n_15;
  wire I_CMD_STATUS_MODULE_n_16;
  wire I_CMD_STATUS_MODULE_n_17;
  wire I_CMD_STATUS_MODULE_n_18;
  wire I_CMD_STATUS_MODULE_n_19;
  wire I_CMD_STATUS_MODULE_n_20;
  wire I_CMD_STATUS_MODULE_n_9;
  wire [1:0]\I_MSTR_PCC/p_1_in ;
  wire [11:0]\I_MSTR_PCC/sig_btt_cntr0 ;
  wire \I_MSTR_PCC/sig_btt_is_zero ;
  wire \I_MSTR_PCC/sig_calc_error_reg0 ;
  wire \I_MSTR_PCC/sig_xfer_addr_reg0 ;
  wire I_RD_WR_CNTRL_MODULE_n_27;
  wire I_RD_WR_CNTRL_MODULE_n_30;
  wire I_RD_WR_CNTRL_MODULE_n_31;
  wire I_RESET_MODULE_n_3;
  wire I_WR_LLINK_ADAPTER_n_2;
  wire \I_WR_STATUS_CNTLR/p_5_out ;
  wire [3:0]ip2bus_inputs;
  wire [31:0]ip2bus_mst_addr;
  wire [11:0]ip2bus_mst_length;
  wire [31:0]ip2bus_mstwr_d;
  wire [5:0]ip2bus_otputs;
  wire m00_axi_aclk;
  wire [31:0]m00_axi_araddr;
  wire [0:0]m00_axi_arburst;
  wire m00_axi_aresetn;
  wire [3:0]m00_axi_arlen;
  wire [0:0]m00_axi_arsize;
  wire m00_axi_awready;
  wire m00_axi_awvalid;
  wire m00_axi_bready;
  wire [1:0]m00_axi_bresp;
  wire m00_axi_bvalid;
  wire [31:0]m00_axi_wdata;
  wire m00_axi_wlast;
  wire m00_axi_wready;
  wire [3:0]m00_axi_wstrb;
  wire m00_axi_wvalid;
  wire sig_cmd2all_doing_write;
  wire sig_cmd2pcc_cmd_valid;
  wire [31:2]sig_cmd_mst_addr;
  wire sig_cmd_mstrd_req0;
  wire sig_doing_write_reg;
  wire sig_llink2cmd_wr_busy;
  wire sig_llink2wr_allow_addr_req;
  wire sig_llink2wr_strm_tready;
  wire sig_pcc2data_calc_error;
  wire sig_pcc_taking_command;
  wire sig_push_cmd_reg;
  wire sig_rdwr2llink_int_err;
  wire sig_rst2cmd_stat_reset;
  wire sig_rst2llink_reset;
  wire sig_rst2rdwr_cntlr_reset;
  wire sig_stat_error;
  wire sig_status_reg_empty;
  wire sig_wr_error_reg;
  wire sig_wr_llink_enable;
  wire [6:4]sig_wsc2stat_status;
  wire sig_wsc2stat_status_valid;

  design_1_myip_burst_test_0_0_axi_master_burst_cmd_status I_CMD_STATUS_MODULE
       (.D({I_CMD_STATUS_MODULE_n_9,I_CMD_STATUS_MODULE_n_10,I_CMD_STATUS_MODULE_n_11,I_CMD_STATUS_MODULE_n_12,I_CMD_STATUS_MODULE_n_13,I_CMD_STATUS_MODULE_n_14,I_CMD_STATUS_MODULE_n_15,I_CMD_STATUS_MODULE_n_16,I_CMD_STATUS_MODULE_n_17,I_CMD_STATUS_MODULE_n_18,I_CMD_STATUS_MODULE_n_19,I_CMD_STATUS_MODULE_n_20}),
        .\GEN_ADDR_32.sig_addr_cntr_lsh_reg[1] (\I_MSTR_PCC/p_1_in ),
        .\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[1] ({I_RD_WR_CNTRL_MODULE_n_30,I_RD_WR_CNTRL_MODULE_n_31}),
        .Q(sig_cmd_mst_addr),
        .SR(sig_cmd_mstrd_req0),
        .ip2bus_inputs(ip2bus_inputs[1:0]),
        .ip2bus_mst_addr(ip2bus_mst_addr),
        .ip2bus_mst_length(ip2bus_mst_length),
        .ip2bus_otputs({ip2bus_otputs[5],ip2bus_otputs[2:0]}),
        .m00_axi_aclk(m00_axi_aclk),
        .out(sig_rst2cmd_stat_reset),
        .p_5_out(\I_WR_STATUS_CNTLR/p_5_out ),
        .sig_btt_cntr0(\I_MSTR_PCC/sig_btt_cntr0 ),
        .sig_btt_is_zero(\I_MSTR_PCC/sig_btt_is_zero ),
        .sig_calc_error_reg0(\I_MSTR_PCC/sig_calc_error_reg0 ),
        .sig_cmd2all_doing_write(sig_cmd2all_doing_write),
        .sig_cmd2pcc_cmd_valid(sig_cmd2pcc_cmd_valid),
        .sig_doing_write_reg(sig_doing_write_reg),
        .sig_llink2cmd_wr_busy(sig_llink2cmd_wr_busy),
        .sig_pcc2data_calc_error(sig_pcc2data_calc_error),
        .sig_pcc_taking_command(sig_pcc_taking_command),
        .sig_push_cmd_reg(sig_push_cmd_reg),
        .sig_rdwr2llink_int_err(sig_rdwr2llink_int_err),
        .sig_rdwr_reset_reg_reg(sig_rst2rdwr_cntlr_reset),
        .sig_stat_error(sig_stat_error),
        .sig_status_reg_empty(sig_status_reg_empty),
        .sig_wr_addr_valid_reg0(\I_ADDR_CNTL/sig_wr_addr_valid_reg0 ),
        .sig_wr_llink_enable(sig_wr_llink_enable),
        .sig_wsc2stat_status(sig_wsc2stat_status),
        .sig_wsc2stat_status_valid(sig_wsc2stat_status_valid));
  design_1_myip_burst_test_0_0_axi_master_burst_rd_llink I_RD_LLINK_ADAPTER
       (.m00_axi_aclk(m00_axi_aclk),
        .out(sig_rst2llink_reset),
        .sig_rdwr2llink_int_err(sig_rdwr2llink_int_err),
        .sig_wr_error_reg(sig_wr_error_reg));
  design_1_myip_burst_test_0_0_axi_master_burst_rd_wr_cntlr I_RD_WR_CNTRL_MODULE
       (.D(\I_MSTR_PCC/p_1_in ),
        .\GEN_ADDR_32.sig_addr_cntr_lsh_reg[1] ({I_RD_WR_CNTRL_MODULE_n_30,I_RD_WR_CNTRL_MODULE_n_31}),
        .Q(sig_cmd_mst_addr),
        .SR(\I_MSTR_PCC/sig_xfer_addr_reg0 ),
        .ip2bus_inputs(ip2bus_inputs[3:2]),
        .ip2bus_mstwr_d(ip2bus_mstwr_d),
        .m00_axi_aclk(m00_axi_aclk),
        .m00_axi_araddr(m00_axi_araddr),
        .m00_axi_arburst(m00_axi_arburst),
        .m00_axi_arlen(m00_axi_arlen),
        .m00_axi_arsize(m00_axi_arsize),
        .m00_axi_awready(m00_axi_awready),
        .m00_axi_awvalid(m00_axi_awvalid),
        .m00_axi_bready(m00_axi_bready),
        .m00_axi_bresp(m00_axi_bresp),
        .m00_axi_bvalid(m00_axi_bvalid),
        .m00_axi_wdata(m00_axi_wdata),
        .m00_axi_wlast(m00_axi_wlast),
        .m00_axi_wready(m00_axi_wready),
        .m00_axi_wstrb(m00_axi_wstrb),
        .m00_axi_wvalid(m00_axi_wvalid),
        .out(sig_rst2rdwr_cntlr_reset),
        .p_5_out(\I_WR_STATUS_CNTLR/p_5_out ),
        .sig_btt_cntr0(\I_MSTR_PCC/sig_btt_cntr0 ),
        .sig_btt_is_zero(\I_MSTR_PCC/sig_btt_is_zero ),
        .sig_calc_error_reg0(\I_MSTR_PCC/sig_calc_error_reg0 ),
        .sig_cmd2all_doing_write(sig_cmd2all_doing_write),
        .sig_cmd2pcc_cmd_valid(sig_cmd2pcc_cmd_valid),
        .sig_cmd_full_reg_reg(sig_cmd_mstrd_req0),
        .sig_cmd_reset_reg_reg(sig_rst2cmd_stat_reset),
        .sig_cmd_type_req_reg({I_CMD_STATUS_MODULE_n_9,I_CMD_STATUS_MODULE_n_10,I_CMD_STATUS_MODULE_n_11,I_CMD_STATUS_MODULE_n_12,I_CMD_STATUS_MODULE_n_13,I_CMD_STATUS_MODULE_n_14,I_CMD_STATUS_MODULE_n_15,I_CMD_STATUS_MODULE_n_16,I_CMD_STATUS_MODULE_n_17,I_CMD_STATUS_MODULE_n_18,I_CMD_STATUS_MODULE_n_19,I_CMD_STATUS_MODULE_n_20}),
        .sig_doing_write_reg(sig_doing_write_reg),
        .sig_llink2cmd_wr_busy(sig_llink2cmd_wr_busy),
        .sig_llink2wr_allow_addr_req(sig_llink2wr_allow_addr_req),
        .sig_llink_busy_reg(sig_llink2wr_strm_tready),
        .sig_llink_busy_reg_0(I_WR_LLINK_ADAPTER_n_2),
        .sig_pcc2data_calc_error(sig_pcc2data_calc_error),
        .sig_pcc_taking_command(sig_pcc_taking_command),
        .sig_push_cmd_reg(sig_push_cmd_reg),
        .sig_rdwr_reset_reg_reg(I_RESET_MODULE_n_3),
        .sig_stat_error(sig_stat_error),
        .sig_status_reg_empty(sig_status_reg_empty),
        .sig_wr_addr_valid_reg0(\I_ADDR_CNTL/sig_wr_addr_valid_reg0 ),
        .sig_wsc2stat_status(sig_wsc2stat_status),
        .sig_wsc2stat_status_valid(sig_wsc2stat_status_valid),
        .\sig_xfer_end_strb_reg_reg[0] (I_RD_WR_CNTRL_MODULE_n_27));
  design_1_myip_burst_test_0_0_axi_master_burst_reset I_RESET_MODULE
       (.\INFERRED_GEN.cnt_i_reg[0] (sig_rst2rdwr_cntlr_reset),
        .SR(\I_MSTR_PCC/sig_xfer_addr_reg0 ),
        .m00_axi_aclk(m00_axi_aclk),
        .m00_axi_aresetn(m00_axi_aresetn),
        .out(sig_rst2cmd_stat_reset),
        .sig_cmd2dre_valid_reg(I_RD_WR_CNTRL_MODULE_n_27),
        .sig_llink_busy_reg(sig_rst2llink_reset),
        .\sig_xfer_end_strb_reg_reg[3] (I_RESET_MODULE_n_3));
  design_1_myip_burst_test_0_0_axi_master_burst_wr_llink I_WR_LLINK_ADAPTER
       (.ip2bus_inputs(ip2bus_inputs[3:2]),
        .ip2bus_otputs(ip2bus_otputs[4:3]),
        .m00_axi_aclk(m00_axi_aclk),
        .sig_cmd2all_doing_write(sig_cmd2all_doing_write),
        .sig_doing_write_reg(sig_doing_write_reg),
        .sig_llink2cmd_wr_busy(sig_llink2cmd_wr_busy),
        .sig_llink2wr_allow_addr_req(sig_llink2wr_allow_addr_req),
        .sig_llink_reset_reg_reg(sig_rst2llink_reset),
        .sig_m_valid_out_reg(I_WR_LLINK_ADAPTER_n_2),
        .sig_rdwr2llink_int_err(sig_rdwr2llink_int_err),
        .sig_s_ready_out_reg(sig_llink2wr_strm_tready),
        .sig_wr_error_reg(sig_wr_error_reg),
        .sig_wr_llink_enable(sig_wr_llink_enable));
endmodule

(* ORIG_REF_NAME = "axi_master_burst_addr_cntl" *) 
module design_1_myip_burst_test_0_0_axi_master_burst_addr_cntl
   (out,
    sig_push_addr_reg1_out,
    m00_axi_arsize,
    m00_axi_arburst,
    m00_axi_awvalid,
    m00_axi_araddr,
    m00_axi_arlen,
    m00_axi_aclk,
    sig_pcc2data_calc_error,
    sig_pcc2addr_burst,
    sig_wr_addr_valid_reg0,
    sig_rdwr_reset_reg_reg,
    sig_llink2wr_allow_addr_req,
    sig_cmd2all_doing_write,
    sig_pcc2addr_cmd_valid,
    \GEN_OMIT_STORE_FORWARD.sig_tlast_error_reg_reg ,
    m00_axi_awready,
    Q,
    \sig_xfer_len_reg_reg[3] );
  output out;
  output sig_push_addr_reg1_out;
  output [0:0]m00_axi_arsize;
  output [0:0]m00_axi_arburst;
  output m00_axi_awvalid;
  output [31:0]m00_axi_araddr;
  output [3:0]m00_axi_arlen;
  input m00_axi_aclk;
  input sig_pcc2data_calc_error;
  input [0:0]sig_pcc2addr_burst;
  input sig_wr_addr_valid_reg0;
  input sig_rdwr_reset_reg_reg;
  input sig_llink2wr_allow_addr_req;
  input sig_cmd2all_doing_write;
  input sig_pcc2addr_cmd_valid;
  input \GEN_OMIT_STORE_FORWARD.sig_tlast_error_reg_reg ;
  input m00_axi_awready;
  input [31:0]Q;
  input [3:0]\sig_xfer_len_reg_reg[3] ;

  wire \GEN_OMIT_STORE_FORWARD.sig_tlast_error_reg_reg ;
  wire [31:0]Q;
  wire m00_axi_aclk;
  wire [31:0]m00_axi_araddr;
  wire [0:0]m00_axi_arburst;
  wire [3:0]m00_axi_arlen;
  wire [0:0]m00_axi_arsize;
  wire m00_axi_awready;
  wire m00_axi_awvalid;
  wire sig_addr2stat_calc_error;
  wire sig_addr2stat_cmd_fifo_empty;
  wire sig_addr_reg_full;
  wire sig_cmd2all_doing_write;
  wire sig_llink2wr_allow_addr_req;
  wire sig_next_addr_reg0;
  wire [0:0]sig_pcc2addr_burst;
  wire sig_pcc2addr_cmd_valid;
  wire sig_pcc2data_calc_error;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire sig_posted_to_axi;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire sig_posted_to_axi_2;
  wire sig_push_addr_reg1_out;
  wire sig_rdwr_reset_reg_reg;
  wire sig_wr_addr_valid_reg0;
  wire [3:0]\sig_xfer_len_reg_reg[3] ;

  assign out = sig_posted_to_axi;
  FDSE #(
    .INIT(1'b0)) 
    sig_addr_reg_empty_reg
       (.C(m00_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(1'b0),
        .Q(sig_addr2stat_cmd_fifo_empty),
        .S(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    sig_addr_reg_full_reg
       (.C(m00_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_push_addr_reg1_out),
        .Q(sig_addr_reg_full),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    sig_calc_error_reg_reg
       (.C(m00_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_pcc2data_calc_error),
        .Q(sig_addr2stat_calc_error),
        .R(sig_next_addr_reg0));
  LUT5 #(
    .INIT(32'hBAAAAAAA)) 
    \sig_next_addr_reg[31]_i_1 
       (.I0(sig_rdwr_reset_reg_reg),
        .I1(sig_addr2stat_calc_error),
        .I2(sig_cmd2all_doing_write),
        .I3(m00_axi_awready),
        .I4(sig_addr_reg_full),
        .O(sig_next_addr_reg0));
  LUT5 #(
    .INIT(32'h00008000)) 
    \sig_next_addr_reg[31]_i_2 
       (.I0(sig_llink2wr_allow_addr_req),
        .I1(sig_addr2stat_cmd_fifo_empty),
        .I2(sig_cmd2all_doing_write),
        .I3(sig_pcc2addr_cmd_valid),
        .I4(\GEN_OMIT_STORE_FORWARD.sig_tlast_error_reg_reg ),
        .O(sig_push_addr_reg1_out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[0] 
       (.C(m00_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[0]),
        .Q(m00_axi_araddr[0]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[10] 
       (.C(m00_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[10]),
        .Q(m00_axi_araddr[10]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[11] 
       (.C(m00_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[11]),
        .Q(m00_axi_araddr[11]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[12] 
       (.C(m00_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[12]),
        .Q(m00_axi_araddr[12]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[13] 
       (.C(m00_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[13]),
        .Q(m00_axi_araddr[13]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[14] 
       (.C(m00_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[14]),
        .Q(m00_axi_araddr[14]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[15] 
       (.C(m00_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[15]),
        .Q(m00_axi_araddr[15]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[16] 
       (.C(m00_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[16]),
        .Q(m00_axi_araddr[16]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[17] 
       (.C(m00_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[17]),
        .Q(m00_axi_araddr[17]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[18] 
       (.C(m00_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[18]),
        .Q(m00_axi_araddr[18]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[19] 
       (.C(m00_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[19]),
        .Q(m00_axi_araddr[19]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[1] 
       (.C(m00_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[1]),
        .Q(m00_axi_araddr[1]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[20] 
       (.C(m00_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[20]),
        .Q(m00_axi_araddr[20]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[21] 
       (.C(m00_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[21]),
        .Q(m00_axi_araddr[21]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[22] 
       (.C(m00_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[22]),
        .Q(m00_axi_araddr[22]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[23] 
       (.C(m00_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[23]),
        .Q(m00_axi_araddr[23]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[24] 
       (.C(m00_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[24]),
        .Q(m00_axi_araddr[24]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[25] 
       (.C(m00_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[25]),
        .Q(m00_axi_araddr[25]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[26] 
       (.C(m00_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[26]),
        .Q(m00_axi_araddr[26]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[27] 
       (.C(m00_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[27]),
        .Q(m00_axi_araddr[27]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[28] 
       (.C(m00_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[28]),
        .Q(m00_axi_araddr[28]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[29] 
       (.C(m00_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[29]),
        .Q(m00_axi_araddr[29]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[2] 
       (.C(m00_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[2]),
        .Q(m00_axi_araddr[2]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[30] 
       (.C(m00_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[30]),
        .Q(m00_axi_araddr[30]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[31] 
       (.C(m00_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[31]),
        .Q(m00_axi_araddr[31]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[3] 
       (.C(m00_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[3]),
        .Q(m00_axi_araddr[3]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[4] 
       (.C(m00_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[4]),
        .Q(m00_axi_araddr[4]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[5] 
       (.C(m00_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[5]),
        .Q(m00_axi_araddr[5]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[6] 
       (.C(m00_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[6]),
        .Q(m00_axi_araddr[6]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[7] 
       (.C(m00_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[7]),
        .Q(m00_axi_araddr[7]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[8] 
       (.C(m00_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[8]),
        .Q(m00_axi_araddr[8]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[9] 
       (.C(m00_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(Q[9]),
        .Q(m00_axi_araddr[9]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_burst_reg_reg[0] 
       (.C(m00_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_pcc2addr_burst),
        .Q(m00_axi_arburst),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_len_reg_reg[0] 
       (.C(m00_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(\sig_xfer_len_reg_reg[3] [0]),
        .Q(m00_axi_arlen[0]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_len_reg_reg[1] 
       (.C(m00_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(\sig_xfer_len_reg_reg[3] [1]),
        .Q(m00_axi_arlen[1]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_len_reg_reg[2] 
       (.C(m00_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(\sig_xfer_len_reg_reg[3] [2]),
        .Q(m00_axi_arlen[2]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_len_reg_reg[3] 
       (.C(m00_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(\sig_xfer_len_reg_reg[3] [3]),
        .Q(m00_axi_arlen[3]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_size_reg_reg[1] 
       (.C(m00_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(1'b1),
        .Q(m00_axi_arsize),
        .R(sig_next_addr_reg0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    sig_posted_to_axi_2_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_push_addr_reg1_out),
        .Q(sig_posted_to_axi_2),
        .R(sig_rdwr_reset_reg_reg));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    sig_posted_to_axi_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_push_addr_reg1_out),
        .Q(sig_posted_to_axi),
        .R(sig_rdwr_reset_reg_reg));
  FDRE #(
    .INIT(1'b0)) 
    sig_wr_addr_valid_reg_reg
       (.C(m00_axi_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_wr_addr_valid_reg0),
        .Q(m00_axi_awvalid),
        .R(sig_next_addr_reg0));
endmodule

(* ORIG_REF_NAME = "axi_master_burst_cmd_status" *) 
module design_1_myip_burst_test_0_0_axi_master_burst_cmd_status
   (sig_cmd2pcc_cmd_valid,
    sig_push_cmd_reg,
    sig_cmd2all_doing_write,
    ip2bus_otputs,
    sig_status_reg_empty,
    sig_rdwr2llink_int_err,
    D,
    \GEN_ADDR_32.sig_addr_cntr_lsh_reg[1] ,
    Q,
    p_5_out,
    sig_wr_addr_valid_reg0,
    sig_wr_llink_enable,
    sig_btt_is_zero,
    out,
    m00_axi_aclk,
    SR,
    ip2bus_inputs,
    sig_pcc_taking_command,
    sig_wsc2stat_status,
    sig_wsc2stat_status_valid,
    sig_llink2cmd_wr_busy,
    sig_stat_error,
    sig_calc_error_reg0,
    sig_btt_cntr0,
    \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[1] ,
    sig_rdwr_reset_reg_reg,
    sig_pcc2data_calc_error,
    sig_doing_write_reg,
    ip2bus_mst_length,
    ip2bus_mst_addr);
  output sig_cmd2pcc_cmd_valid;
  output sig_push_cmd_reg;
  output sig_cmd2all_doing_write;
  output [3:0]ip2bus_otputs;
  output sig_status_reg_empty;
  output sig_rdwr2llink_int_err;
  output [11:0]D;
  output [1:0]\GEN_ADDR_32.sig_addr_cntr_lsh_reg[1] ;
  output [29:0]Q;
  output p_5_out;
  output sig_wr_addr_valid_reg0;
  output sig_wr_llink_enable;
  output sig_btt_is_zero;
  input out;
  input m00_axi_aclk;
  input [0:0]SR;
  input [1:0]ip2bus_inputs;
  input sig_pcc_taking_command;
  input [2:0]sig_wsc2stat_status;
  input sig_wsc2stat_status_valid;
  input sig_llink2cmd_wr_busy;
  input sig_stat_error;
  input sig_calc_error_reg0;
  input [11:0]sig_btt_cntr0;
  input [1:0]\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[1] ;
  input sig_rdwr_reset_reg_reg;
  input sig_pcc2data_calc_error;
  input sig_doing_write_reg;
  input [11:0]ip2bus_mst_length;
  input [31:0]ip2bus_mst_addr;

  wire [11:0]D;
  wire [1:0]\GEN_ADDR_32.sig_addr_cntr_lsh_reg[1] ;
  wire [1:0]\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[1] ;
  wire [29:0]Q;
  wire [0:0]SR;
  wire [1:0]ip2bus_inputs;
  wire [31:0]ip2bus_mst_addr;
  wire [11:0]ip2bus_mst_length;
  wire [3:0]ip2bus_otputs;
  wire m00_axi_aclk;
  wire out;
  wire p_5_out;
  wire [11:0]sig_btt_cntr0;
  wire sig_btt_is_zero;
  wire sig_calc_error_reg0;
  wire sig_calc_error_reg_i_3_n_0;
  wire sig_calc_error_reg_i_4_n_0;
  wire sig_cmd2all_doing_write;
  wire sig_cmd2pcc_cmd_valid;
  wire sig_cmd_cmplt_reg_i_1_n_0;
  wire sig_cmd_empty_reg;
  wire sig_cmd_empty_reg_i_1_n_0;
  wire [1:0]sig_cmd_mst_addr;
  wire [11:0]sig_cmd_mst_length;
  wire sig_cmd_mstwr_req;
  wire sig_cmd_type_req;
  wire sig_cmdack_reg_i_1_n_0;
  wire sig_doing_write_reg;
  wire sig_doing_write_reg_i_1_n_0;
  wire sig_error_sh_reg_i_1_n_0;
  wire sig_init_reg1;
  wire sig_init_reg2;
  wire sig_int_error_pulse_reg_i_1_n_0;
  wire sig_llink2cmd_wr_busy;
  wire sig_pcc2data_calc_error;
  wire sig_pcc_taking_command;
  wire sig_push_cmd_reg;
  wire sig_push_status1_out;
  wire sig_rdwr2llink_int_err;
  wire sig_rdwr_reset_reg_reg;
  wire sig_stat_error;
  wire sig_stat_error_reg_i_1_n_0;
  wire sig_status_reg_empty;
  wire sig_status_reg_empty_i_1_n_0;
  wire sig_status_reg_full;
  wire sig_status_reg_full_i_1_n_0;
  wire sig_wr_addr_valid_reg0;
  wire sig_wr_llink_enable;
  wire [2:0]sig_wsc2stat_status;
  wire sig_wsc2stat_status_valid;

  LUT4 #(
    .INIT(16'h8F80)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh[0]_i_1 
       (.I0(sig_cmd_type_req),
        .I1(sig_cmd_mst_addr[0]),
        .I2(sig_calc_error_reg0),
        .I3(\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[1] [0]),
        .O(\GEN_ADDR_32.sig_addr_cntr_lsh_reg[1] [0]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh[1]_i_1 
       (.I0(sig_cmd_type_req),
        .I1(sig_cmd_mst_addr[1]),
        .I2(sig_calc_error_reg0),
        .I3(\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[1] [1]),
        .O(\GEN_ADDR_32.sig_addr_cntr_lsh_reg[1] [1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hEAAA)) 
    \GEN_OMIT_STORE_FORWARD.sig_coelsc_reg_empty_i_1 
       (.I0(sig_rdwr_reset_reg_reg),
        .I1(sig_cmd2all_doing_write),
        .I2(sig_status_reg_empty),
        .I3(sig_wsc2stat_status_valid),
        .O(p_5_out));
  LUT4 #(
    .INIT(16'h8F80)) 
    \sig_btt_cntr[0]_i_1 
       (.I0(sig_cmd_type_req),
        .I1(sig_cmd_mst_length[0]),
        .I2(sig_calc_error_reg0),
        .I3(sig_btt_cntr0[0]),
        .O(D[0]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \sig_btt_cntr[10]_i_1 
       (.I0(sig_cmd_type_req),
        .I1(sig_cmd_mst_length[10]),
        .I2(sig_calc_error_reg0),
        .I3(sig_btt_cntr0[10]),
        .O(D[10]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \sig_btt_cntr[11]_i_1 
       (.I0(sig_cmd_type_req),
        .I1(sig_cmd_mst_length[11]),
        .I2(sig_calc_error_reg0),
        .I3(sig_btt_cntr0[11]),
        .O(D[11]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \sig_btt_cntr[1]_i_1 
       (.I0(sig_cmd_type_req),
        .I1(sig_cmd_mst_length[1]),
        .I2(sig_calc_error_reg0),
        .I3(sig_btt_cntr0[1]),
        .O(D[1]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \sig_btt_cntr[2]_i_1 
       (.I0(sig_cmd_type_req),
        .I1(sig_cmd_mst_length[2]),
        .I2(sig_calc_error_reg0),
        .I3(sig_btt_cntr0[2]),
        .O(D[2]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \sig_btt_cntr[3]_i_1 
       (.I0(sig_cmd_type_req),
        .I1(sig_cmd_mst_length[3]),
        .I2(sig_calc_error_reg0),
        .I3(sig_btt_cntr0[3]),
        .O(D[3]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \sig_btt_cntr[4]_i_1 
       (.I0(sig_cmd_type_req),
        .I1(sig_cmd_mst_length[4]),
        .I2(sig_calc_error_reg0),
        .I3(sig_btt_cntr0[4]),
        .O(D[4]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \sig_btt_cntr[5]_i_1 
       (.I0(sig_cmd_type_req),
        .I1(sig_cmd_mst_length[5]),
        .I2(sig_calc_error_reg0),
        .I3(sig_btt_cntr0[5]),
        .O(D[5]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \sig_btt_cntr[6]_i_1 
       (.I0(sig_cmd_type_req),
        .I1(sig_cmd_mst_length[6]),
        .I2(sig_calc_error_reg0),
        .I3(sig_btt_cntr0[6]),
        .O(D[6]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \sig_btt_cntr[7]_i_1 
       (.I0(sig_cmd_type_req),
        .I1(sig_cmd_mst_length[7]),
        .I2(sig_calc_error_reg0),
        .I3(sig_btt_cntr0[7]),
        .O(D[7]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \sig_btt_cntr[8]_i_1 
       (.I0(sig_cmd_type_req),
        .I1(sig_cmd_mst_length[8]),
        .I2(sig_calc_error_reg0),
        .I3(sig_btt_cntr0[8]),
        .O(D[8]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \sig_btt_cntr[9]_i_1 
       (.I0(sig_cmd_type_req),
        .I1(sig_cmd_mst_length[9]),
        .I2(sig_calc_error_reg0),
        .I3(sig_btt_cntr0[9]),
        .O(D[9]));
  LUT6 #(
    .INIT(64'h00000001000F000F)) 
    sig_calc_error_reg_i_2
       (.I0(sig_cmd_mst_length[2]),
        .I1(sig_cmd_mst_length[1]),
        .I2(sig_calc_error_reg_i_3_n_0),
        .I3(sig_calc_error_reg_i_4_n_0),
        .I4(sig_cmd_mst_length[0]),
        .I5(sig_cmd_type_req),
        .O(sig_btt_is_zero));
  LUT5 #(
    .INIT(32'hF0F0F0E0)) 
    sig_calc_error_reg_i_3
       (.I0(sig_cmd_mst_length[6]),
        .I1(sig_cmd_mst_length[7]),
        .I2(sig_cmd_type_req),
        .I3(sig_cmd_mst_length[8]),
        .I4(sig_cmd_mst_length[9]),
        .O(sig_calc_error_reg_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFF0000FFFE0000)) 
    sig_calc_error_reg_i_4
       (.I0(sig_cmd_mst_length[10]),
        .I1(sig_cmd_mst_length[11]),
        .I2(sig_cmd_mst_length[5]),
        .I3(sig_cmd_mst_length[3]),
        .I4(sig_cmd_type_req),
        .I5(sig_cmd_mst_length[4]),
        .O(sig_calc_error_reg_i_4_n_0));
  LUT5 #(
    .INIT(32'h00000070)) 
    sig_cmd_cmplt_reg_i_1
       (.I0(sig_llink2cmd_wr_busy),
        .I1(sig_cmd2all_doing_write),
        .I2(sig_status_reg_full),
        .I3(out),
        .I4(ip2bus_otputs[1]),
        .O(sig_cmd_cmplt_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_cmd_cmplt_reg_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_cmd_cmplt_reg_i_1_n_0),
        .Q(ip2bus_otputs[1]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFF22F2)) 
    sig_cmd_empty_reg_i_1
       (.I0(sig_cmd_empty_reg),
        .I1(ip2bus_inputs[0]),
        .I2(sig_init_reg1),
        .I3(sig_init_reg2),
        .I4(ip2bus_otputs[1]),
        .O(sig_cmd_empty_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_cmd_empty_reg_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_cmd_empty_reg_i_1_n_0),
        .Q(sig_cmd_empty_reg),
        .R(out));
  LUT2 #(
    .INIT(4'h8)) 
    sig_cmd_full_reg_i_2
       (.I0(ip2bus_inputs[0]),
        .I1(sig_cmd_empty_reg),
        .O(sig_push_cmd_reg));
  FDRE #(
    .INIT(1'b0)) 
    sig_cmd_full_reg_reg
       (.C(m00_axi_aclk),
        .CE(sig_push_cmd_reg),
        .D(sig_push_cmd_reg),
        .Q(sig_cmd2pcc_cmd_valid),
        .R(SR));
  FDRE \sig_cmd_mst_addr_reg[0] 
       (.C(m00_axi_aclk),
        .CE(sig_push_cmd_reg),
        .D(ip2bus_mst_addr[0]),
        .Q(sig_cmd_mst_addr[0]),
        .R(SR));
  FDRE \sig_cmd_mst_addr_reg[10] 
       (.C(m00_axi_aclk),
        .CE(sig_push_cmd_reg),
        .D(ip2bus_mst_addr[10]),
        .Q(Q[8]),
        .R(SR));
  FDRE \sig_cmd_mst_addr_reg[11] 
       (.C(m00_axi_aclk),
        .CE(sig_push_cmd_reg),
        .D(ip2bus_mst_addr[11]),
        .Q(Q[9]),
        .R(SR));
  FDRE \sig_cmd_mst_addr_reg[12] 
       (.C(m00_axi_aclk),
        .CE(sig_push_cmd_reg),
        .D(ip2bus_mst_addr[12]),
        .Q(Q[10]),
        .R(SR));
  FDRE \sig_cmd_mst_addr_reg[13] 
       (.C(m00_axi_aclk),
        .CE(sig_push_cmd_reg),
        .D(ip2bus_mst_addr[13]),
        .Q(Q[11]),
        .R(SR));
  FDRE \sig_cmd_mst_addr_reg[14] 
       (.C(m00_axi_aclk),
        .CE(sig_push_cmd_reg),
        .D(ip2bus_mst_addr[14]),
        .Q(Q[12]),
        .R(SR));
  FDRE \sig_cmd_mst_addr_reg[15] 
       (.C(m00_axi_aclk),
        .CE(sig_push_cmd_reg),
        .D(ip2bus_mst_addr[15]),
        .Q(Q[13]),
        .R(SR));
  FDRE \sig_cmd_mst_addr_reg[16] 
       (.C(m00_axi_aclk),
        .CE(sig_push_cmd_reg),
        .D(ip2bus_mst_addr[16]),
        .Q(Q[14]),
        .R(SR));
  FDRE \sig_cmd_mst_addr_reg[17] 
       (.C(m00_axi_aclk),
        .CE(sig_push_cmd_reg),
        .D(ip2bus_mst_addr[17]),
        .Q(Q[15]),
        .R(SR));
  FDRE \sig_cmd_mst_addr_reg[18] 
       (.C(m00_axi_aclk),
        .CE(sig_push_cmd_reg),
        .D(ip2bus_mst_addr[18]),
        .Q(Q[16]),
        .R(SR));
  FDRE \sig_cmd_mst_addr_reg[19] 
       (.C(m00_axi_aclk),
        .CE(sig_push_cmd_reg),
        .D(ip2bus_mst_addr[19]),
        .Q(Q[17]),
        .R(SR));
  FDRE \sig_cmd_mst_addr_reg[1] 
       (.C(m00_axi_aclk),
        .CE(sig_push_cmd_reg),
        .D(ip2bus_mst_addr[1]),
        .Q(sig_cmd_mst_addr[1]),
        .R(SR));
  FDRE \sig_cmd_mst_addr_reg[20] 
       (.C(m00_axi_aclk),
        .CE(sig_push_cmd_reg),
        .D(ip2bus_mst_addr[20]),
        .Q(Q[18]),
        .R(SR));
  FDRE \sig_cmd_mst_addr_reg[21] 
       (.C(m00_axi_aclk),
        .CE(sig_push_cmd_reg),
        .D(ip2bus_mst_addr[21]),
        .Q(Q[19]),
        .R(SR));
  FDRE \sig_cmd_mst_addr_reg[22] 
       (.C(m00_axi_aclk),
        .CE(sig_push_cmd_reg),
        .D(ip2bus_mst_addr[22]),
        .Q(Q[20]),
        .R(SR));
  FDRE \sig_cmd_mst_addr_reg[23] 
       (.C(m00_axi_aclk),
        .CE(sig_push_cmd_reg),
        .D(ip2bus_mst_addr[23]),
        .Q(Q[21]),
        .R(SR));
  FDRE \sig_cmd_mst_addr_reg[24] 
       (.C(m00_axi_aclk),
        .CE(sig_push_cmd_reg),
        .D(ip2bus_mst_addr[24]),
        .Q(Q[22]),
        .R(SR));
  FDRE \sig_cmd_mst_addr_reg[25] 
       (.C(m00_axi_aclk),
        .CE(sig_push_cmd_reg),
        .D(ip2bus_mst_addr[25]),
        .Q(Q[23]),
        .R(SR));
  FDRE \sig_cmd_mst_addr_reg[26] 
       (.C(m00_axi_aclk),
        .CE(sig_push_cmd_reg),
        .D(ip2bus_mst_addr[26]),
        .Q(Q[24]),
        .R(SR));
  FDRE \sig_cmd_mst_addr_reg[27] 
       (.C(m00_axi_aclk),
        .CE(sig_push_cmd_reg),
        .D(ip2bus_mst_addr[27]),
        .Q(Q[25]),
        .R(SR));
  FDRE \sig_cmd_mst_addr_reg[28] 
       (.C(m00_axi_aclk),
        .CE(sig_push_cmd_reg),
        .D(ip2bus_mst_addr[28]),
        .Q(Q[26]),
        .R(SR));
  FDRE \sig_cmd_mst_addr_reg[29] 
       (.C(m00_axi_aclk),
        .CE(sig_push_cmd_reg),
        .D(ip2bus_mst_addr[29]),
        .Q(Q[27]),
        .R(SR));
  FDRE \sig_cmd_mst_addr_reg[2] 
       (.C(m00_axi_aclk),
        .CE(sig_push_cmd_reg),
        .D(ip2bus_mst_addr[2]),
        .Q(Q[0]),
        .R(SR));
  FDRE \sig_cmd_mst_addr_reg[30] 
       (.C(m00_axi_aclk),
        .CE(sig_push_cmd_reg),
        .D(ip2bus_mst_addr[30]),
        .Q(Q[28]),
        .R(SR));
  FDRE \sig_cmd_mst_addr_reg[31] 
       (.C(m00_axi_aclk),
        .CE(sig_push_cmd_reg),
        .D(ip2bus_mst_addr[31]),
        .Q(Q[29]),
        .R(SR));
  FDRE \sig_cmd_mst_addr_reg[3] 
       (.C(m00_axi_aclk),
        .CE(sig_push_cmd_reg),
        .D(ip2bus_mst_addr[3]),
        .Q(Q[1]),
        .R(SR));
  FDRE \sig_cmd_mst_addr_reg[4] 
       (.C(m00_axi_aclk),
        .CE(sig_push_cmd_reg),
        .D(ip2bus_mst_addr[4]),
        .Q(Q[2]),
        .R(SR));
  FDRE \sig_cmd_mst_addr_reg[5] 
       (.C(m00_axi_aclk),
        .CE(sig_push_cmd_reg),
        .D(ip2bus_mst_addr[5]),
        .Q(Q[3]),
        .R(SR));
  FDRE \sig_cmd_mst_addr_reg[6] 
       (.C(m00_axi_aclk),
        .CE(sig_push_cmd_reg),
        .D(ip2bus_mst_addr[6]),
        .Q(Q[4]),
        .R(SR));
  FDRE \sig_cmd_mst_addr_reg[7] 
       (.C(m00_axi_aclk),
        .CE(sig_push_cmd_reg),
        .D(ip2bus_mst_addr[7]),
        .Q(Q[5]),
        .R(SR));
  FDRE \sig_cmd_mst_addr_reg[8] 
       (.C(m00_axi_aclk),
        .CE(sig_push_cmd_reg),
        .D(ip2bus_mst_addr[8]),
        .Q(Q[6]),
        .R(SR));
  FDRE \sig_cmd_mst_addr_reg[9] 
       (.C(m00_axi_aclk),
        .CE(sig_push_cmd_reg),
        .D(ip2bus_mst_addr[9]),
        .Q(Q[7]),
        .R(SR));
  FDRE \sig_cmd_mst_length_reg[0] 
       (.C(m00_axi_aclk),
        .CE(sig_push_cmd_reg),
        .D(ip2bus_mst_length[0]),
        .Q(sig_cmd_mst_length[0]),
        .R(SR));
  FDRE \sig_cmd_mst_length_reg[10] 
       (.C(m00_axi_aclk),
        .CE(sig_push_cmd_reg),
        .D(ip2bus_mst_length[10]),
        .Q(sig_cmd_mst_length[10]),
        .R(SR));
  FDRE \sig_cmd_mst_length_reg[11] 
       (.C(m00_axi_aclk),
        .CE(sig_push_cmd_reg),
        .D(ip2bus_mst_length[11]),
        .Q(sig_cmd_mst_length[11]),
        .R(SR));
  FDRE \sig_cmd_mst_length_reg[1] 
       (.C(m00_axi_aclk),
        .CE(sig_push_cmd_reg),
        .D(ip2bus_mst_length[1]),
        .Q(sig_cmd_mst_length[1]),
        .R(SR));
  FDRE \sig_cmd_mst_length_reg[2] 
       (.C(m00_axi_aclk),
        .CE(sig_push_cmd_reg),
        .D(ip2bus_mst_length[2]),
        .Q(sig_cmd_mst_length[2]),
        .R(SR));
  FDRE \sig_cmd_mst_length_reg[3] 
       (.C(m00_axi_aclk),
        .CE(sig_push_cmd_reg),
        .D(ip2bus_mst_length[3]),
        .Q(sig_cmd_mst_length[3]),
        .R(SR));
  FDRE \sig_cmd_mst_length_reg[4] 
       (.C(m00_axi_aclk),
        .CE(sig_push_cmd_reg),
        .D(ip2bus_mst_length[4]),
        .Q(sig_cmd_mst_length[4]),
        .R(SR));
  FDRE \sig_cmd_mst_length_reg[5] 
       (.C(m00_axi_aclk),
        .CE(sig_push_cmd_reg),
        .D(ip2bus_mst_length[5]),
        .Q(sig_cmd_mst_length[5]),
        .R(SR));
  FDRE \sig_cmd_mst_length_reg[6] 
       (.C(m00_axi_aclk),
        .CE(sig_push_cmd_reg),
        .D(ip2bus_mst_length[6]),
        .Q(sig_cmd_mst_length[6]),
        .R(SR));
  FDRE \sig_cmd_mst_length_reg[7] 
       (.C(m00_axi_aclk),
        .CE(sig_push_cmd_reg),
        .D(ip2bus_mst_length[7]),
        .Q(sig_cmd_mst_length[7]),
        .R(SR));
  FDRE \sig_cmd_mst_length_reg[8] 
       (.C(m00_axi_aclk),
        .CE(sig_push_cmd_reg),
        .D(ip2bus_mst_length[8]),
        .Q(sig_cmd_mst_length[8]),
        .R(SR));
  FDRE \sig_cmd_mst_length_reg[9] 
       (.C(m00_axi_aclk),
        .CE(sig_push_cmd_reg),
        .D(ip2bus_mst_length[9]),
        .Q(sig_cmd_mst_length[9]),
        .R(SR));
  FDRE sig_cmd_mstwr_req_reg
       (.C(m00_axi_aclk),
        .CE(sig_push_cmd_reg),
        .D(ip2bus_inputs[0]),
        .Q(sig_cmd_mstwr_req),
        .R(SR));
  FDRE sig_cmd_type_req_reg
       (.C(m00_axi_aclk),
        .CE(sig_push_cmd_reg),
        .D(ip2bus_inputs[1]),
        .Q(sig_cmd_type_req),
        .R(SR));
  LUT4 #(
    .INIT(16'h0008)) 
    sig_cmdack_reg_i_1
       (.I0(sig_cmd_empty_reg),
        .I1(ip2bus_inputs[0]),
        .I2(ip2bus_otputs[0]),
        .I3(out),
        .O(sig_cmdack_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_cmdack_reg_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_cmdack_reg_i_1_n_0),
        .Q(ip2bus_otputs[0]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h000000E2)) 
    sig_doing_write_reg_i_1
       (.I0(sig_cmd2all_doing_write),
        .I1(sig_pcc_taking_command),
        .I2(sig_cmd_mstwr_req),
        .I3(out),
        .I4(ip2bus_otputs[1]),
        .O(sig_doing_write_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_doing_write_reg_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_doing_write_reg_i_1_n_0),
        .Q(sig_cmd2all_doing_write),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAA80000)) 
    sig_error_sh_reg_i_1
       (.I0(sig_cmd2all_doing_write),
        .I1(sig_wsc2stat_status[0]),
        .I2(sig_wsc2stat_status[1]),
        .I3(sig_wsc2stat_status[2]),
        .I4(sig_push_status1_out),
        .I5(ip2bus_otputs[3]),
        .O(sig_error_sh_reg_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h80)) 
    sig_error_sh_reg_i_2
       (.I0(sig_wsc2stat_status_valid),
        .I1(sig_status_reg_empty),
        .I2(sig_cmd2all_doing_write),
        .O(sig_push_status1_out));
  FDRE #(
    .INIT(1'b0)) 
    sig_error_sh_reg_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_error_sh_reg_i_1_n_0),
        .Q(ip2bus_otputs[3]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    sig_init_reg1_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(1'b1),
        .Q(sig_init_reg1),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    sig_init_reg2_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_init_reg1),
        .Q(sig_init_reg2),
        .R(out));
  LUT6 #(
    .INIT(64'h00000000E2000000)) 
    sig_int_error_pulse_reg_i_1
       (.I0(sig_rdwr2llink_int_err),
        .I1(sig_push_status1_out),
        .I2(sig_wsc2stat_status[0]),
        .I3(sig_llink2cmd_wr_busy),
        .I4(sig_cmd2all_doing_write),
        .I5(out),
        .O(sig_int_error_pulse_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_int_error_pulse_reg_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_int_error_pulse_reg_i_1_n_0),
        .Q(sig_rdwr2llink_int_err),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    sig_llink_busy_i_2
       (.I0(sig_cmd2all_doing_write),
        .I1(sig_doing_write_reg),
        .O(sig_wr_llink_enable));
  LUT5 #(
    .INIT(32'h0000CC0A)) 
    sig_stat_error_reg_i_1
       (.I0(ip2bus_otputs[2]),
        .I1(sig_stat_error),
        .I2(ip2bus_otputs[1]),
        .I3(sig_push_status1_out),
        .I4(out),
        .O(sig_stat_error_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_stat_error_reg_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_stat_error_reg_i_1_n_0),
        .Q(ip2bus_otputs[2]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hF2FFF2F2FFFFF2F2)) 
    sig_status_reg_empty_i_1
       (.I0(sig_init_reg1),
        .I1(sig_init_reg2),
        .I2(ip2bus_otputs[1]),
        .I3(sig_cmd2all_doing_write),
        .I4(sig_status_reg_empty),
        .I5(sig_wsc2stat_status_valid),
        .O(sig_status_reg_empty_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_status_reg_empty_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_status_reg_empty_i_1_n_0),
        .Q(sig_status_reg_empty),
        .R(out));
  LUT6 #(
    .INIT(64'h00000000F2222222)) 
    sig_status_reg_full_i_1
       (.I0(sig_status_reg_full),
        .I1(ip2bus_otputs[1]),
        .I2(sig_cmd2all_doing_write),
        .I3(sig_status_reg_empty),
        .I4(sig_wsc2stat_status_valid),
        .I5(out),
        .O(sig_status_reg_full_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_status_reg_full_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_status_reg_full_i_1_n_0),
        .Q(sig_status_reg_full),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    sig_wr_addr_valid_reg_i_1
       (.I0(sig_cmd2all_doing_write),
        .I1(sig_pcc2data_calc_error),
        .O(sig_wr_addr_valid_reg0));
endmodule

(* ORIG_REF_NAME = "axi_master_burst_fifo" *) 
module design_1_myip_burst_test_0_0_axi_master_burst_fifo
   (sig_init_reg2_reg_0,
    sig_m_valid_out_reg,
    \GEN_OMIT_STORE_FORWARD.sig_coelsc_decerr_reg_reg ,
    \GEN_OMIT_STORE_FORWARD.sig_coelsc_slverr_reg_reg ,
    sig_init_done_reg_0,
    m00_axi_bready,
    Q,
    FIFO_Full_reg,
    out,
    m00_axi_aclk,
    sig_m_valid_dup_reg,
    sig_data2wsc_calc_err_reg,
    sig_wsc2stat_status,
    sig_init_done,
    \INFERRED_GEN.cnt_i_reg[2] ,
    m00_axi_bvalid,
    sig_coelsc_reg_empty,
    \INFERRED_GEN.cnt_i_reg[2]_0 ,
    m00_axi_bresp);
  output sig_init_reg2_reg_0;
  output sig_m_valid_out_reg;
  output \GEN_OMIT_STORE_FORWARD.sig_coelsc_decerr_reg_reg ;
  output \GEN_OMIT_STORE_FORWARD.sig_coelsc_slverr_reg_reg ;
  output sig_init_done_reg_0;
  output m00_axi_bready;
  output [0:0]Q;
  output FIFO_Full_reg;
  input out;
  input m00_axi_aclk;
  input sig_m_valid_dup_reg;
  input [0:0]sig_data2wsc_calc_err_reg;
  input [1:0]sig_wsc2stat_status;
  input sig_init_done;
  input \INFERRED_GEN.cnt_i_reg[2] ;
  input m00_axi_bvalid;
  input sig_coelsc_reg_empty;
  input [0:0]\INFERRED_GEN.cnt_i_reg[2]_0 ;
  input [1:0]m00_axi_bresp;

  wire FIFO_Full_reg;
  wire \GEN_OMIT_STORE_FORWARD.I_DATA_CNTL_STATUS_FIFO/sig_init_reg2 ;
  wire \GEN_OMIT_STORE_FORWARD.sig_coelsc_decerr_reg_reg ;
  wire \GEN_OMIT_STORE_FORWARD.sig_coelsc_slverr_reg_reg ;
  wire \INFERRED_GEN.cnt_i_reg[2] ;
  wire [0:0]\INFERRED_GEN.cnt_i_reg[2]_0 ;
  wire [0:0]Q;
  wire m00_axi_aclk;
  wire m00_axi_bready;
  wire [1:0]m00_axi_bresp;
  wire m00_axi_bvalid;
  wire out;
  wire sig_coelsc_reg_empty;
  wire [0:0]sig_data2wsc_calc_err_reg;
  wire sig_inhibit_rdy_n;
  wire sig_inhibit_rdy_n_i_1_n_0;
  wire sig_init_done;
  wire sig_init_done_0;
  wire sig_init_done_i_1_n_0;
  wire sig_init_done_reg_0;
  wire sig_init_reg2_reg_0;
  wire sig_m_valid_dup_reg;
  wire sig_m_valid_out_reg;
  wire [1:0]sig_wsc2stat_status;

  design_1_myip_burst_test_0_0_srl_fifo_f \USE_SRL_FIFO.I_SYNC_FIFO 
       (.FIFO_Full_reg(FIFO_Full_reg),
        .\GEN_OMIT_STORE_FORWARD.sig_coelsc_decerr_reg_reg (\GEN_OMIT_STORE_FORWARD.sig_coelsc_decerr_reg_reg ),
        .\GEN_OMIT_STORE_FORWARD.sig_coelsc_slverr_reg_reg (\GEN_OMIT_STORE_FORWARD.sig_coelsc_slverr_reg_reg ),
        .\INFERRED_GEN.cnt_i_reg[2] (\INFERRED_GEN.cnt_i_reg[2] ),
        .\INFERRED_GEN.cnt_i_reg[2]_0 (\INFERRED_GEN.cnt_i_reg[2]_0 ),
        .Q(Q),
        .m00_axi_aclk(m00_axi_aclk),
        .m00_axi_bready(m00_axi_bready),
        .m00_axi_bresp(m00_axi_bresp),
        .m00_axi_bvalid(m00_axi_bvalid),
        .out(out),
        .sig_coelsc_reg_empty(sig_coelsc_reg_empty),
        .sig_data2wsc_calc_err_reg(sig_data2wsc_calc_err_reg),
        .sig_inhibit_rdy_n(sig_inhibit_rdy_n),
        .sig_wsc2stat_status(sig_wsc2stat_status));
  LUT2 #(
    .INIT(4'hE)) 
    sig_inhibit_rdy_n_i_1
       (.I0(sig_init_done_0),
        .I1(sig_inhibit_rdy_n),
        .O(sig_inhibit_rdy_n_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_inhibit_rdy_n_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_inhibit_rdy_n_i_1_n_0),
        .Q(sig_inhibit_rdy_n),
        .R(out));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    sig_init_done_i_1
       (.I0(sig_init_reg2_reg_0),
        .I1(\GEN_OMIT_STORE_FORWARD.I_DATA_CNTL_STATUS_FIFO/sig_init_reg2 ),
        .I2(sig_init_done_0),
        .I3(out),
        .O(sig_init_done_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    sig_init_done_i_1__0
       (.I0(sig_init_reg2_reg_0),
        .I1(\GEN_OMIT_STORE_FORWARD.I_DATA_CNTL_STATUS_FIFO/sig_init_reg2 ),
        .I2(sig_init_done),
        .I3(out),
        .O(sig_init_done_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_init_done_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_init_done_i_1_n_0),
        .Q(sig_init_done_0),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    sig_init_reg2_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_init_reg2_reg_0),
        .Q(\GEN_OMIT_STORE_FORWARD.I_DATA_CNTL_STATUS_FIFO/sig_init_reg2 ),
        .S(out));
  FDRE #(
    .INIT(1'b0)) 
    sig_init_reg_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(out),
        .Q(sig_init_reg2_reg_0),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h10)) 
    sig_m_valid_dup_i_1__1
       (.I0(sig_init_reg2_reg_0),
        .I1(out),
        .I2(sig_m_valid_dup_reg),
        .O(sig_m_valid_out_reg));
endmodule

(* ORIG_REF_NAME = "axi_master_burst_fifo" *) 
module design_1_myip_burst_test_0_0_axi_master_burst_fifo__parameterized0
   (\INFERRED_GEN.cnt_i_reg[0] ,
    sig_init_done,
    \INFERRED_GEN.cnt_i_reg[0]_0 ,
    p_0_in,
    \GEN_OMIT_STORE_FORWARD.sig_coelsc_interr_reg_reg ,
    Q,
    \INFERRED_GEN.cnt_i_reg[1] ,
    sig_push_coelsc_reg,
    p_4_out,
    \sig_wdc_statcnt_reg[2] ,
    \sig_wdc_statcnt_reg[1] ,
    \sig_wdc_statcnt_reg[0] ,
    out,
    m00_axi_aclk,
    sig_init_reg_reg,
    \GEN_OMIT_STORE_FORWARD.sig_coelsc_reg_empty_reg ,
    \GEN_OMIT_STORE_FORWARD.sig_tlast_err_stop_reg ,
    sig_tlast_err_stop,
    sig_push_to_wsc,
    sig_coelsc_reg_empty,
    \INFERRED_GEN.cnt_i_reg[2] ,
    sig_wsc2stat_status,
    sig_wdc_statcnt,
    in);
  output \INFERRED_GEN.cnt_i_reg[0] ;
  output sig_init_done;
  output \INFERRED_GEN.cnt_i_reg[0]_0 ;
  output p_0_in;
  output [1:0]\GEN_OMIT_STORE_FORWARD.sig_coelsc_interr_reg_reg ;
  output [0:0]Q;
  output \INFERRED_GEN.cnt_i_reg[1] ;
  output sig_push_coelsc_reg;
  output p_4_out;
  output \sig_wdc_statcnt_reg[2] ;
  output \sig_wdc_statcnt_reg[1] ;
  output \sig_wdc_statcnt_reg[0] ;
  input out;
  input m00_axi_aclk;
  input sig_init_reg_reg;
  input \GEN_OMIT_STORE_FORWARD.sig_coelsc_reg_empty_reg ;
  input \GEN_OMIT_STORE_FORWARD.sig_tlast_err_stop_reg ;
  input sig_tlast_err_stop;
  input sig_push_to_wsc;
  input sig_coelsc_reg_empty;
  input [0:0]\INFERRED_GEN.cnt_i_reg[2] ;
  input [0:0]sig_wsc2stat_status;
  input [2:0]sig_wdc_statcnt;
  input [2:0]in;

  wire [1:0]\GEN_OMIT_STORE_FORWARD.sig_coelsc_interr_reg_reg ;
  wire \GEN_OMIT_STORE_FORWARD.sig_coelsc_reg_empty_reg ;
  wire \GEN_OMIT_STORE_FORWARD.sig_tlast_err_stop_reg ;
  wire \INFERRED_GEN.cnt_i_reg[0] ;
  wire \INFERRED_GEN.cnt_i_reg[0]_0 ;
  wire \INFERRED_GEN.cnt_i_reg[1] ;
  wire [0:0]\INFERRED_GEN.cnt_i_reg[2] ;
  wire [0:0]Q;
  wire [2:0]in;
  wire m00_axi_aclk;
  wire out;
  wire p_0_in;
  wire p_4_out;
  wire sig_coelsc_reg_empty;
  wire sig_inhibit_rdy_n_i_1__0_n_0;
  wire sig_init_done;
  wire sig_init_reg_reg;
  wire sig_push_coelsc_reg;
  wire sig_push_to_wsc;
  wire sig_tlast_err_stop;
  wire [2:0]sig_wdc_statcnt;
  wire \sig_wdc_statcnt_reg[0] ;
  wire \sig_wdc_statcnt_reg[1] ;
  wire \sig_wdc_statcnt_reg[2] ;
  wire [0:0]sig_wsc2stat_status;

  design_1_myip_burst_test_0_0_srl_fifo_f__parameterized0 \USE_SRL_FIFO.I_SYNC_FIFO 
       (.\GEN_OMIT_STORE_FORWARD.sig_coelsc_interr_reg_reg (\GEN_OMIT_STORE_FORWARD.sig_coelsc_interr_reg_reg ),
        .\GEN_OMIT_STORE_FORWARD.sig_coelsc_reg_empty_reg (\GEN_OMIT_STORE_FORWARD.sig_coelsc_reg_empty_reg ),
        .\GEN_OMIT_STORE_FORWARD.sig_tlast_err_stop_reg (\GEN_OMIT_STORE_FORWARD.sig_tlast_err_stop_reg ),
        .\INFERRED_GEN.cnt_i_reg[0] (\INFERRED_GEN.cnt_i_reg[0] ),
        .\INFERRED_GEN.cnt_i_reg[1] (\INFERRED_GEN.cnt_i_reg[1] ),
        .\INFERRED_GEN.cnt_i_reg[2] (\INFERRED_GEN.cnt_i_reg[2] ),
        .Q(Q),
        .in(in),
        .m00_axi_aclk(m00_axi_aclk),
        .out(out),
        .p_0_in(p_0_in),
        .p_4_out(p_4_out),
        .sig_coelsc_reg_empty(sig_coelsc_reg_empty),
        .sig_inhibit_rdy_n_reg(\INFERRED_GEN.cnt_i_reg[0]_0 ),
        .sig_push_coelsc_reg(sig_push_coelsc_reg),
        .sig_push_to_wsc(sig_push_to_wsc),
        .sig_tlast_err_stop(sig_tlast_err_stop),
        .sig_wdc_statcnt(sig_wdc_statcnt),
        .\sig_wdc_statcnt_reg[0] (\sig_wdc_statcnt_reg[0] ),
        .\sig_wdc_statcnt_reg[1] (\sig_wdc_statcnt_reg[1] ),
        .\sig_wdc_statcnt_reg[2] (\sig_wdc_statcnt_reg[2] ),
        .sig_wsc2stat_status(sig_wsc2stat_status));
  LUT2 #(
    .INIT(4'hE)) 
    sig_inhibit_rdy_n_i_1__0
       (.I0(sig_init_done),
        .I1(\INFERRED_GEN.cnt_i_reg[0]_0 ),
        .O(sig_inhibit_rdy_n_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_inhibit_rdy_n_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_inhibit_rdy_n_i_1__0_n_0),
        .Q(\INFERRED_GEN.cnt_i_reg[0]_0 ),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    sig_init_done_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_init_reg_reg),
        .Q(sig_init_done),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_master_burst_pcc" *) 
module design_1_myip_burst_test_0_0_axi_master_burst_pcc
   (sig_pcc2addr_burst,
    sig_pcc2data_cmd_cmplt,
    sig_pcc2data_calc_error,
    sig_pcc2data_eof,
    sig_pcc2data_sequential,
    sig_pcc2addr_cmd_valid,
    sig_pcc2data_cmd_valid,
    sig_btt_cntr0,
    S,
    sig_input_reg_empty_reg_0,
    sig_cmd_full_reg_reg,
    \GEN_ADDR_32.sig_addr_cntr_msh_reg[7]_0 ,
    \GEN_ADDR_32.sig_addr_cntr_msh_reg[11]_0 ,
    \GEN_ADDR_32.sig_addr_cntr_msh_reg[15]_0 ,
    DI,
    sig_pcc_taking_command,
    \sig_xfer_end_strb_reg_reg[0]_0 ,
    p_1_in,
    \sig_next_len_reg_reg[3] ,
    \GEN_ADDR_32.sig_addr_cntr_lsh_reg[1]_0 ,
    \sig_next_addr_reg_reg[31] ,
    \sig_next_strt_strb_reg_reg[3] ,
    \sig_next_last_strb_reg_reg[3] ,
    out,
    m00_axi_aclk,
    SR,
    O,
    \sig_cmd_mst_addr_reg[23] ,
    \sig_cmd_mst_addr_reg[27] ,
    \sig_cmd_mst_addr_reg[31] ,
    Q,
    sig_cmd2pcc_cmd_valid,
    sig_push_addr_reg1_out,
    sig_btt_is_zero,
    sig_wdc2pcc_cmd_ready,
    sig_cmd_reset_reg_reg,
    sig_push_cmd_reg,
    D,
    sig_cmd_type_req_reg,
    sig_rdwr_reset_reg_reg);
  output [0:0]sig_pcc2addr_burst;
  output sig_pcc2data_cmd_cmplt;
  output sig_pcc2data_calc_error;
  output sig_pcc2data_eof;
  output sig_pcc2data_sequential;
  output sig_pcc2addr_cmd_valid;
  output sig_pcc2data_cmd_valid;
  output [11:0]sig_btt_cntr0;
  output [3:0]S;
  output sig_input_reg_empty_reg_0;
  output [0:0]sig_cmd_full_reg_reg;
  output [3:0]\GEN_ADDR_32.sig_addr_cntr_msh_reg[7]_0 ;
  output [3:0]\GEN_ADDR_32.sig_addr_cntr_msh_reg[11]_0 ;
  output [3:0]\GEN_ADDR_32.sig_addr_cntr_msh_reg[15]_0 ;
  output [0:0]DI;
  output sig_pcc_taking_command;
  output \sig_xfer_end_strb_reg_reg[0]_0 ;
  output p_1_in;
  output [3:0]\sig_next_len_reg_reg[3] ;
  output [1:0]\GEN_ADDR_32.sig_addr_cntr_lsh_reg[1]_0 ;
  output [31:0]\sig_next_addr_reg_reg[31] ;
  output [3:0]\sig_next_strt_strb_reg_reg[3] ;
  output [3:0]\sig_next_last_strb_reg_reg[3] ;
  input out;
  input m00_axi_aclk;
  input [0:0]SR;
  input [3:0]O;
  input [3:0]\sig_cmd_mst_addr_reg[23] ;
  input [3:0]\sig_cmd_mst_addr_reg[27] ;
  input [3:0]\sig_cmd_mst_addr_reg[31] ;
  input [29:0]Q;
  input sig_cmd2pcc_cmd_valid;
  input sig_push_addr_reg1_out;
  input sig_btt_is_zero;
  input sig_wdc2pcc_cmd_ready;
  input sig_cmd_reset_reg_reg;
  input sig_push_cmd_reg;
  input [1:0]D;
  input [11:0]sig_cmd_type_req_reg;
  input sig_rdwr_reset_reg_reg;

  wire [1:0]D;
  wire [0:0]DI;
  wire \FSM_sequential_sig_pcc_sm_state[0]_i_1_n_0 ;
  wire \FSM_sequential_sig_pcc_sm_state[0]_i_2_n_0 ;
  wire \FSM_sequential_sig_pcc_sm_state[1]_i_1_n_0 ;
  wire \FSM_sequential_sig_pcc_sm_state[2]_i_1_n_0 ;
  wire \GEN_ADDR_32.sig_addr_cntr_incr_imreg[0]_i_1_n_0 ;
  wire \GEN_ADDR_32.sig_addr_cntr_incr_imreg[0]_i_2_n_0 ;
  wire \GEN_ADDR_32.sig_addr_cntr_incr_imreg[1]_i_1_n_0 ;
  wire \GEN_ADDR_32.sig_addr_cntr_incr_imreg[2]_i_1_n_0 ;
  wire \GEN_ADDR_32.sig_addr_cntr_incr_imreg[2]_i_2_n_0 ;
  wire \GEN_ADDR_32.sig_addr_cntr_incr_imreg[3]_i_1_n_0 ;
  wire \GEN_ADDR_32.sig_addr_cntr_incr_imreg[3]_i_2_n_0 ;
  wire \GEN_ADDR_32.sig_addr_cntr_incr_imreg[4]_i_1_n_0 ;
  wire \GEN_ADDR_32.sig_addr_cntr_incr_imreg[4]_i_2_n_0 ;
  wire \GEN_ADDR_32.sig_addr_cntr_incr_imreg[5]_i_1_n_0 ;
  wire \GEN_ADDR_32.sig_addr_cntr_incr_imreg[5]_i_2_n_0 ;
  wire \GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_1_n_0 ;
  wire \GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_2_n_0 ;
  wire \GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0 ;
  wire [1:0]\GEN_ADDR_32.sig_addr_cntr_lsh_reg[1]_0 ;
  wire \GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0 ;
  wire [15:0]\GEN_ADDR_32.sig_addr_cntr_msh_reg ;
  wire [3:0]\GEN_ADDR_32.sig_addr_cntr_msh_reg[11]_0 ;
  wire [3:0]\GEN_ADDR_32.sig_addr_cntr_msh_reg[15]_0 ;
  wire [3:0]\GEN_ADDR_32.sig_addr_cntr_msh_reg[7]_0 ;
  wire \GEN_ADDR_32.sig_adjusted_addr_incr_reg[2]_i_2_n_0 ;
  wire \GEN_ADDR_32.sig_adjusted_addr_incr_reg[5]_i_2_n_0 ;
  wire \GEN_ADDR_32.sig_adjusted_addr_incr_reg[5]_i_3_n_0 ;
  wire \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[0] ;
  wire \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[1] ;
  wire \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[2] ;
  wire \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[3] ;
  wire \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[4] ;
  wire \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[5] ;
  wire \GEN_ADDR_32.sig_first_xfer_i_1_n_0 ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg[11]_i_2_n_0 ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg[11]_i_3_n_0 ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg[11]_i_4_n_0 ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg[11]_i_5_n_0 ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg[15]_i_2_n_0 ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg[15]_i_3_n_0 ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg[15]_i_4_n_0 ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg[15]_i_5_n_0 ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_2_n_0 ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_3_n_0 ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_4_n_0 ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_5_n_0 ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg[7]_i_2_n_0 ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg[7]_i_3_n_0 ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg[7]_i_4_n_0 ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg[7]_i_5_n_0 ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[11]_i_1_n_0 ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[11]_i_1_n_1 ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[11]_i_1_n_2 ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[11]_i_1_n_3 ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[15]_i_1_n_1 ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[15]_i_1_n_2 ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[15]_i_1_n_3 ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[3]_i_1_n_0 ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[3]_i_1_n_1 ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[3]_i_1_n_2 ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[3]_i_1_n_3 ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[7]_i_1_n_0 ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[7]_i_1_n_1 ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[7]_i_1_n_2 ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[7]_i_1_n_3 ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[10] ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[11] ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[12] ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[13] ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[14] ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[2] ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[3] ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[4] ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[5] ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[6] ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[7] ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[8] ;
  wire \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[9] ;
  wire I_END_STRB_GEN_n_0;
  wire \I_STRT_STRB_GEN/sig_strb_value17_in ;
  wire [3:0]O;
  wire [29:0]Q;
  wire [3:0]S;
  wire [0:0]SR;
  wire m00_axi_aclk;
  wire out;
  wire p_0_in;
  wire p_1_in;
  wire p_1_in2_in;
  wire [15:2]p_1_in_0;
  wire [6:0]sig_addr_cntr_incr_imreg;
  wire [5:1]sig_adjusted_addr_incr;
  wire [11:0]sig_btt_cntr;
  wire [11:0]sig_btt_cntr0;
  wire sig_btt_cntr0_carry__0_i_1_n_0;
  wire sig_btt_cntr0_carry__0_i_2_n_0;
  wire sig_btt_cntr0_carry__0_i_3_n_0;
  wire sig_btt_cntr0_carry__0_i_4_n_0;
  wire sig_btt_cntr0_carry__0_n_0;
  wire sig_btt_cntr0_carry__0_n_1;
  wire sig_btt_cntr0_carry__0_n_2;
  wire sig_btt_cntr0_carry__0_n_3;
  wire sig_btt_cntr0_carry__1_i_1_n_0;
  wire sig_btt_cntr0_carry__1_i_2_n_0;
  wire sig_btt_cntr0_carry__1_i_3_n_0;
  wire sig_btt_cntr0_carry__1_i_4_n_0;
  wire sig_btt_cntr0_carry__1_n_1;
  wire sig_btt_cntr0_carry__1_n_2;
  wire sig_btt_cntr0_carry__1_n_3;
  wire sig_btt_cntr0_carry_i_1_n_0;
  wire sig_btt_cntr0_carry_i_2_n_0;
  wire sig_btt_cntr0_carry_i_3_n_0;
  wire sig_btt_cntr0_carry_i_4_n_0;
  wire sig_btt_cntr0_carry_n_0;
  wire sig_btt_cntr0_carry_n_1;
  wire sig_btt_cntr0_carry_n_2;
  wire sig_btt_cntr0_carry_n_3;
  wire sig_btt_is_zero;
  wire sig_btt_lt_b2mbaa1;
  wire sig_btt_lt_b2mbaa1_carry_i_1_n_0;
  wire sig_btt_lt_b2mbaa1_carry_i_2_n_0;
  wire sig_btt_lt_b2mbaa1_carry_i_3_n_0;
  wire sig_btt_lt_b2mbaa1_carry_i_4_n_0;
  wire sig_btt_lt_b2mbaa1_carry_i_5_n_0;
  wire sig_btt_lt_b2mbaa1_carry_i_6_n_0;
  wire sig_btt_lt_b2mbaa1_carry_i_7_n_0;
  wire sig_btt_lt_b2mbaa1_carry_i_8_n_0;
  wire sig_btt_lt_b2mbaa1_carry_i_9_n_0;
  wire sig_btt_lt_b2mbaa1_carry_n_1;
  wire sig_btt_lt_b2mbaa1_carry_n_2;
  wire sig_btt_lt_b2mbaa1_carry_n_3;
  wire [5:2]sig_byte_change_minus1;
  wire sig_calc_error_pushed;
  wire sig_calc_error_pushed_i_1_n_0;
  wire sig_calc_error_reg_i_1_n_0;
  wire sig_cmd2addr_valid_i_1_n_0;
  wire sig_cmd2data_valid_i_1_n_0;
  wire sig_cmd2dre_valid_i_1_n_0;
  wire sig_cmd2dre_valid_reg_n_0;
  wire sig_cmd2pcc_cmd_valid;
  wire [0:0]sig_cmd_full_reg_reg;
  wire [3:0]\sig_cmd_mst_addr_reg[23] ;
  wire [3:0]\sig_cmd_mst_addr_reg[27] ;
  wire [3:0]\sig_cmd_mst_addr_reg[31] ;
  wire sig_cmd_reset_reg_reg;
  wire [11:0]sig_cmd_type_req_reg;
  wire [1:0]sig_finish_addr_offset_reg;
  wire \sig_finish_addr_offset_reg[0]_i_1_n_0 ;
  wire sig_first_xfer;
  wire sig_input_burst_type_reg;
  wire sig_input_burst_type_reg_i_1_n_0;
  wire sig_input_eof_reg;
  wire sig_input_eof_reg_i_1_n_0;
  wire sig_input_reg_empty;
  wire sig_input_reg_empty_i_1_n_0;
  wire sig_input_reg_empty_reg_0;
  wire sig_last_xfer_valid1_out;
  wire sig_ld_xfer_reg;
  wire sig_ld_xfer_reg_i_1_n_0;
  wire [5:0]sig_mbaa_addr_cntr_slice;
  wire [31:0]\sig_next_addr_reg_reg[31] ;
  wire [3:0]\sig_next_last_strb_reg_reg[3] ;
  wire [3:0]\sig_next_len_reg_reg[3] ;
  wire [3:0]\sig_next_strt_strb_reg_reg[3] ;
  wire sig_parent_done;
  wire sig_parent_done_i_1_n_0;
  wire [0:0]sig_pcc2addr_burst;
  wire sig_pcc2addr_cmd_valid;
  wire sig_pcc2all_calc_err;
  wire sig_pcc2data_calc_error;
  wire sig_pcc2data_cmd_cmplt;
  wire sig_pcc2data_cmd_valid;
  wire sig_pcc2data_eof;
  wire sig_pcc2data_sequential;
  (* RTL_KEEP = "yes" *) wire [2:0]sig_pcc_sm_state;
  wire sig_pcc_taking_command;
  wire [15:0]sig_predict_addr_lsh_im3_in;
  wire sig_push_addr_reg1_out;
  wire sig_push_cmd_reg;
  wire sig_push_xfer_reg15_out;
  wire sig_rdwr_reset_reg_reg;
  wire sig_sm_halt_ns;
  wire sig_sm_halt_reg;
  wire sig_sm_ld_calc1_reg;
  wire sig_sm_ld_calc1_reg_ns;
  wire sig_sm_ld_calc2_reg;
  wire sig_sm_ld_calc2_reg_ns;
  wire sig_sm_pop_input_reg;
  wire sig_sm_pop_input_reg_ns;
  wire [1:0]sig_strbgen_addr_reg;
  wire [2:2]sig_strbgen_bytes_reg;
  wire \sig_strbgen_bytes_reg[0]_i_1_n_0 ;
  wire \sig_strbgen_bytes_reg[0]_i_2_n_0 ;
  wire \sig_strbgen_bytes_reg[1]_i_1_n_0 ;
  wire \sig_strbgen_bytes_reg[2]_i_1_n_0 ;
  wire \sig_strbgen_bytes_reg_reg_n_0_[0] ;
  wire \sig_strbgen_bytes_reg_reg_n_0_[1] ;
  wire \sig_strbgen_bytes_reg_reg_n_0_[2] ;
  wire sig_wdc2pcc_cmd_ready;
  wire [14:6]sig_xfer_address;
  wire sig_xfer_cmd_cmplt_reg0;
  wire sig_xfer_cmd_cmplt_reg_i_3_n_0;
  wire sig_xfer_cmd_cmplt_reg_i_4_n_0;
  wire sig_xfer_cmd_cmplt_reg_i_5_n_0;
  wire sig_xfer_cmd_cmplt_reg_i_6_n_0;
  wire sig_xfer_cmd_cmplt_reg_i_7_n_0;
  wire sig_xfer_cmd_cmplt_reg_i_8_n_0;
  wire sig_xfer_cmd_cmplt_reg_i_9_n_0;
  wire [3:0]sig_xfer_end_strb_imreg;
  wire \sig_xfer_end_strb_imreg[1]_i_1_n_0 ;
  wire \sig_xfer_end_strb_imreg[3]_i_1_n_0 ;
  wire \sig_xfer_end_strb_reg[0]_i_1_n_0 ;
  wire \sig_xfer_end_strb_reg[1]_i_1_n_0 ;
  wire \sig_xfer_end_strb_reg[2]_i_1_n_0 ;
  wire \sig_xfer_end_strb_reg[3]_i_2_n_0 ;
  wire \sig_xfer_end_strb_reg[3]_i_3_n_0 ;
  wire \sig_xfer_end_strb_reg_reg[0]_0 ;
  wire sig_xfer_eof_reg0;
  wire sig_xfer_is_seq_reg_i_1_n_0;
  wire sig_xfer_len_eq_0;
  wire sig_xfer_len_eq_0_reg;
  wire sig_xfer_reg_empty;
  wire [2:1]sig_xfer_strt_strb;
  wire [3:0]sig_xfer_strt_strb2use;
  wire [3:0]sig_xfer_strt_strb_imreg;
  wire \sig_xfer_strt_strb_imreg[0]_i_1_n_0 ;
  wire [3:3]\NLW_GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[15]_i_1_CO_UNCONNECTED ;
  wire [3:3]NLW_sig_btt_cntr0_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_sig_btt_lt_b2mbaa1_carry_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'h00330033B833B8FF)) 
    \FSM_sequential_sig_pcc_sm_state[0]_i_1 
       (.I0(\FSM_sequential_sig_pcc_sm_state[0]_i_2_n_0 ),
        .I1(sig_pcc_sm_state[0]),
        .I2(sig_push_xfer_reg15_out),
        .I3(sig_pcc_sm_state[2]),
        .I4(sig_input_reg_empty_reg_0),
        .I5(sig_pcc_sm_state[1]),
        .O(\FSM_sequential_sig_pcc_sm_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_sig_pcc_sm_state[0]_i_2 
       (.I0(sig_parent_done),
        .I1(sig_calc_error_pushed),
        .O(\FSM_sequential_sig_pcc_sm_state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5A5A1A5A4A4A0A4A)) 
    \FSM_sequential_sig_pcc_sm_state[1]_i_1 
       (.I0(sig_pcc_sm_state[1]),
        .I1(sig_pcc_sm_state[2]),
        .I2(sig_pcc_sm_state[0]),
        .I3(sig_parent_done),
        .I4(sig_calc_error_pushed),
        .I5(sig_input_reg_empty_reg_0),
        .O(\FSM_sequential_sig_pcc_sm_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \FSM_sequential_sig_pcc_sm_state[1]_i_2 
       (.I0(sig_pcc2all_calc_err),
        .I1(sig_cmd2pcc_cmd_valid),
        .I2(sig_input_reg_empty),
        .I3(sig_sm_halt_reg),
        .O(sig_input_reg_empty_reg_0));
  LUT4 #(
    .INIT(16'h3C8C)) 
    \FSM_sequential_sig_pcc_sm_state[2]_i_1 
       (.I0(sig_calc_error_pushed),
        .I1(sig_pcc_sm_state[2]),
        .I2(sig_pcc_sm_state[0]),
        .I3(sig_pcc_sm_state[1]),
        .O(\FSM_sequential_sig_pcc_sm_state[2]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_sig_pcc_sm_state_reg[0] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_sig_pcc_sm_state[0]_i_1_n_0 ),
        .Q(sig_pcc_sm_state[0]),
        .R(out));
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_sig_pcc_sm_state_reg[1] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_sig_pcc_sm_state[1]_i_1_n_0 ),
        .Q(sig_pcc_sm_state[1]),
        .R(out));
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_sig_pcc_sm_state_reg[2] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_sig_pcc_sm_state[2]_i_1_n_0 ),
        .Q(sig_pcc_sm_state[2]),
        .R(out));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hE2C0)) 
    \GEN_ADDR_32.sig_addr_cntr_incr_imreg[0]_i_1 
       (.I0(sig_mbaa_addr_cntr_slice[0]),
        .I1(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[0]_i_2_n_0 ),
        .I2(sig_btt_cntr[0]),
        .I3(sig_first_xfer),
        .O(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \GEN_ADDR_32.sig_addr_cntr_incr_imreg[0]_i_2 
       (.I0(sig_btt_lt_b2mbaa1),
        .I1(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_2_n_0 ),
        .O(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h08FBFB0808080808)) 
    \GEN_ADDR_32.sig_addr_cntr_incr_imreg[1]_i_1 
       (.I0(sig_btt_cntr[1]),
        .I1(sig_btt_lt_b2mbaa1),
        .I2(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_2_n_0 ),
        .I3(sig_mbaa_addr_cntr_slice[1]),
        .I4(sig_mbaa_addr_cntr_slice[0]),
        .I5(sig_first_xfer),
        .O(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFB080808)) 
    \GEN_ADDR_32.sig_addr_cntr_incr_imreg[2]_i_1 
       (.I0(sig_btt_cntr[2]),
        .I1(sig_btt_lt_b2mbaa1),
        .I2(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_2_n_0 ),
        .I3(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[2]_i_2_n_0 ),
        .I4(sig_first_xfer),
        .O(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h56)) 
    \GEN_ADDR_32.sig_addr_cntr_incr_imreg[2]_i_2 
       (.I0(sig_mbaa_addr_cntr_slice[2]),
        .I1(sig_mbaa_addr_cntr_slice[1]),
        .I2(sig_mbaa_addr_cntr_slice[0]),
        .O(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFB080808)) 
    \GEN_ADDR_32.sig_addr_cntr_incr_imreg[3]_i_1 
       (.I0(sig_btt_cntr[3]),
        .I1(sig_btt_lt_b2mbaa1),
        .I2(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_2_n_0 ),
        .I3(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[3]_i_2_n_0 ),
        .I4(sig_first_xfer),
        .O(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h5556)) 
    \GEN_ADDR_32.sig_addr_cntr_incr_imreg[3]_i_2 
       (.I0(sig_mbaa_addr_cntr_slice[3]),
        .I1(sig_mbaa_addr_cntr_slice[0]),
        .I2(sig_mbaa_addr_cntr_slice[1]),
        .I3(sig_mbaa_addr_cntr_slice[2]),
        .O(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0808FB08)) 
    \GEN_ADDR_32.sig_addr_cntr_incr_imreg[4]_i_1 
       (.I0(sig_btt_cntr[4]),
        .I1(sig_btt_lt_b2mbaa1),
        .I2(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_2_n_0 ),
        .I3(sig_first_xfer),
        .I4(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[4]_i_2_n_0 ),
        .O(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA9)) 
    \GEN_ADDR_32.sig_addr_cntr_incr_imreg[4]_i_2 
       (.I0(sig_mbaa_addr_cntr_slice[4]),
        .I1(sig_mbaa_addr_cntr_slice[2]),
        .I2(sig_mbaa_addr_cntr_slice[3]),
        .I3(sig_mbaa_addr_cntr_slice[0]),
        .I4(sig_mbaa_addr_cntr_slice[1]),
        .O(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFB080808)) 
    \GEN_ADDR_32.sig_addr_cntr_incr_imreg[5]_i_1 
       (.I0(sig_btt_cntr[5]),
        .I1(sig_btt_lt_b2mbaa1),
        .I2(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_2_n_0 ),
        .I3(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[5]_i_2_n_0 ),
        .I4(sig_first_xfer),
        .O(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5555555555555556)) 
    \GEN_ADDR_32.sig_addr_cntr_incr_imreg[5]_i_2 
       (.I0(sig_mbaa_addr_cntr_slice[5]),
        .I1(sig_mbaa_addr_cntr_slice[1]),
        .I2(sig_mbaa_addr_cntr_slice[0]),
        .I3(sig_mbaa_addr_cntr_slice[3]),
        .I4(sig_mbaa_addr_cntr_slice[2]),
        .I5(sig_mbaa_addr_cntr_slice[4]),
        .O(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hB0BB)) 
    \GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_1 
       (.I0(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_2_n_0 ),
        .I1(sig_btt_lt_b2mbaa1),
        .I2(sig_btt_lt_b2mbaa1_carry_i_1_n_0),
        .I3(sig_first_xfer),
        .O(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_2 
       (.I0(sig_btt_cntr[11]),
        .I1(sig_btt_cntr[10]),
        .I2(sig_btt_cntr[7]),
        .I3(sig_btt_cntr[8]),
        .I4(sig_btt_cntr[9]),
        .I5(sig_btt_cntr[6]),
        .O(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg[0] 
       (.C(m00_axi_aclk),
        .CE(sig_sm_ld_calc1_reg),
        .D(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[0]_i_1_n_0 ),
        .Q(sig_addr_cntr_incr_imreg[0]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg[1] 
       (.C(m00_axi_aclk),
        .CE(sig_sm_ld_calc1_reg),
        .D(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[1]_i_1_n_0 ),
        .Q(sig_addr_cntr_incr_imreg[1]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg[2] 
       (.C(m00_axi_aclk),
        .CE(sig_sm_ld_calc1_reg),
        .D(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[2]_i_1_n_0 ),
        .Q(sig_addr_cntr_incr_imreg[2]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg[3] 
       (.C(m00_axi_aclk),
        .CE(sig_sm_ld_calc1_reg),
        .D(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[3]_i_1_n_0 ),
        .Q(sig_addr_cntr_incr_imreg[3]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg[4] 
       (.C(m00_axi_aclk),
        .CE(sig_sm_ld_calc1_reg),
        .D(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[4]_i_1_n_0 ),
        .Q(sig_addr_cntr_incr_imreg[4]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg[5] 
       (.C(m00_axi_aclk),
        .CE(sig_sm_ld_calc1_reg),
        .D(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[5]_i_1_n_0 ),
        .Q(sig_addr_cntr_incr_imreg[5]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg[6] 
       (.C(m00_axi_aclk),
        .CE(sig_sm_ld_calc1_reg),
        .D(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_1_n_0 ),
        .Q(sig_addr_cntr_incr_imreg[6]),
        .R(out));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh[10]_i_1 
       (.I0(Q[8]),
        .I1(sig_pcc2all_calc_err),
        .I2(sig_cmd2pcc_cmd_valid),
        .I3(sig_input_reg_empty),
        .I4(sig_sm_halt_reg),
        .I5(\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[10] ),
        .O(p_1_in_0[10]));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh[11]_i_1 
       (.I0(Q[9]),
        .I1(sig_pcc2all_calc_err),
        .I2(sig_cmd2pcc_cmd_valid),
        .I3(sig_input_reg_empty),
        .I4(sig_sm_halt_reg),
        .I5(\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[11] ),
        .O(p_1_in_0[11]));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh[12]_i_1 
       (.I0(Q[10]),
        .I1(sig_pcc2all_calc_err),
        .I2(sig_cmd2pcc_cmd_valid),
        .I3(sig_input_reg_empty),
        .I4(sig_sm_halt_reg),
        .I5(\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[12] ),
        .O(p_1_in_0[12]));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh[13]_i_1 
       (.I0(Q[11]),
        .I1(sig_pcc2all_calc_err),
        .I2(sig_cmd2pcc_cmd_valid),
        .I3(sig_input_reg_empty),
        .I4(sig_sm_halt_reg),
        .I5(\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[13] ),
        .O(p_1_in_0[13]));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh[14]_i_1 
       (.I0(Q[12]),
        .I1(sig_pcc2all_calc_err),
        .I2(sig_cmd2pcc_cmd_valid),
        .I3(sig_input_reg_empty),
        .I4(sig_sm_halt_reg),
        .I5(\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[14] ),
        .O(p_1_in_0[14]));
  LUT4 #(
    .INIT(16'hEAAA)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1 
       (.I0(sig_input_reg_empty_reg_0),
        .I1(sig_xfer_reg_empty),
        .I2(sig_ld_xfer_reg),
        .I3(sig_input_burst_type_reg),
        .O(\GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_2 
       (.I0(Q[13]),
        .I1(sig_pcc2all_calc_err),
        .I2(sig_cmd2pcc_cmd_valid),
        .I3(sig_input_reg_empty),
        .I4(sig_sm_halt_reg),
        .I5(p_0_in),
        .O(p_1_in_0[15]));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh[2]_i_1 
       (.I0(Q[0]),
        .I1(sig_pcc2all_calc_err),
        .I2(sig_cmd2pcc_cmd_valid),
        .I3(sig_input_reg_empty),
        .I4(sig_sm_halt_reg),
        .I5(\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[2] ),
        .O(p_1_in_0[2]));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh[3]_i_1 
       (.I0(Q[1]),
        .I1(sig_pcc2all_calc_err),
        .I2(sig_cmd2pcc_cmd_valid),
        .I3(sig_input_reg_empty),
        .I4(sig_sm_halt_reg),
        .I5(\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[3] ),
        .O(p_1_in_0[3]));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh[4]_i_1 
       (.I0(Q[2]),
        .I1(sig_pcc2all_calc_err),
        .I2(sig_cmd2pcc_cmd_valid),
        .I3(sig_input_reg_empty),
        .I4(sig_sm_halt_reg),
        .I5(\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[4] ),
        .O(p_1_in_0[4]));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh[5]_i_1 
       (.I0(Q[3]),
        .I1(sig_pcc2all_calc_err),
        .I2(sig_cmd2pcc_cmd_valid),
        .I3(sig_input_reg_empty),
        .I4(sig_sm_halt_reg),
        .I5(\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[5] ),
        .O(p_1_in_0[5]));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh[6]_i_1 
       (.I0(Q[4]),
        .I1(sig_pcc2all_calc_err),
        .I2(sig_cmd2pcc_cmd_valid),
        .I3(sig_input_reg_empty),
        .I4(sig_sm_halt_reg),
        .I5(\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[6] ),
        .O(p_1_in_0[6]));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh[7]_i_1 
       (.I0(Q[5]),
        .I1(sig_pcc2all_calc_err),
        .I2(sig_cmd2pcc_cmd_valid),
        .I3(sig_input_reg_empty),
        .I4(sig_sm_halt_reg),
        .I5(\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[7] ),
        .O(p_1_in_0[7]));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh[8]_i_1 
       (.I0(Q[6]),
        .I1(sig_pcc2all_calc_err),
        .I2(sig_cmd2pcc_cmd_valid),
        .I3(sig_input_reg_empty),
        .I4(sig_sm_halt_reg),
        .I5(\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[8] ),
        .O(p_1_in_0[8]));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh[9]_i_1 
       (.I0(Q[7]),
        .I1(sig_pcc2all_calc_err),
        .I2(sig_cmd2pcc_cmd_valid),
        .I3(sig_input_reg_empty),
        .I4(sig_sm_halt_reg),
        .I5(\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[9] ),
        .O(p_1_in_0[9]));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh_reg[0] 
       (.C(m00_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0 ),
        .D(D[0]),
        .Q(sig_mbaa_addr_cntr_slice[0]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh_reg[10] 
       (.C(m00_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0 ),
        .D(p_1_in_0[10]),
        .Q(sig_xfer_address[10]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh_reg[11] 
       (.C(m00_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0 ),
        .D(p_1_in_0[11]),
        .Q(sig_xfer_address[11]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh_reg[12] 
       (.C(m00_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0 ),
        .D(p_1_in_0[12]),
        .Q(sig_xfer_address[12]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh_reg[13] 
       (.C(m00_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0 ),
        .D(p_1_in_0[13]),
        .Q(sig_xfer_address[13]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh_reg[14] 
       (.C(m00_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0 ),
        .D(p_1_in_0[14]),
        .Q(sig_xfer_address[14]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh_reg[15] 
       (.C(m00_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0 ),
        .D(p_1_in_0[15]),
        .Q(p_1_in2_in),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh_reg[1] 
       (.C(m00_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0 ),
        .D(D[1]),
        .Q(sig_mbaa_addr_cntr_slice[1]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh_reg[2] 
       (.C(m00_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0 ),
        .D(p_1_in_0[2]),
        .Q(sig_mbaa_addr_cntr_slice[2]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh_reg[3] 
       (.C(m00_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0 ),
        .D(p_1_in_0[3]),
        .Q(sig_mbaa_addr_cntr_slice[3]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh_reg[4] 
       (.C(m00_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0 ),
        .D(p_1_in_0[4]),
        .Q(sig_mbaa_addr_cntr_slice[4]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh_reg[5] 
       (.C(m00_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0 ),
        .D(p_1_in_0[5]),
        .Q(sig_mbaa_addr_cntr_slice[5]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh_reg[6] 
       (.C(m00_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0 ),
        .D(p_1_in_0[6]),
        .Q(sig_xfer_address[6]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh_reg[7] 
       (.C(m00_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0 ),
        .D(p_1_in_0[7]),
        .Q(sig_xfer_address[7]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh_reg[8] 
       (.C(m00_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0 ),
        .D(p_1_in_0[8]),
        .Q(sig_xfer_address[8]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_lsh_reg[9] 
       (.C(m00_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0 ),
        .D(p_1_in_0[9]),
        .Q(sig_xfer_address[9]),
        .R(out));
  LUT6 #(
    .INIT(64'hBAAAAAAAAAAAAAAA)) 
    \GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1 
       (.I0(sig_input_reg_empty_reg_0),
        .I1(p_0_in),
        .I2(p_1_in2_in),
        .I3(sig_input_burst_type_reg),
        .I4(sig_ld_xfer_reg),
        .I5(sig_xfer_reg_empty),
        .O(\GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_msh_reg[0] 
       (.C(m00_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0 ),
        .D(O[0]),
        .Q(\GEN_ADDR_32.sig_addr_cntr_msh_reg [0]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_msh_reg[10] 
       (.C(m00_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0 ),
        .D(\sig_cmd_mst_addr_reg[27] [2]),
        .Q(\GEN_ADDR_32.sig_addr_cntr_msh_reg [10]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_msh_reg[11] 
       (.C(m00_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0 ),
        .D(\sig_cmd_mst_addr_reg[27] [3]),
        .Q(\GEN_ADDR_32.sig_addr_cntr_msh_reg [11]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_msh_reg[12] 
       (.C(m00_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0 ),
        .D(\sig_cmd_mst_addr_reg[31] [0]),
        .Q(\GEN_ADDR_32.sig_addr_cntr_msh_reg [12]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_msh_reg[13] 
       (.C(m00_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0 ),
        .D(\sig_cmd_mst_addr_reg[31] [1]),
        .Q(\GEN_ADDR_32.sig_addr_cntr_msh_reg [13]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_msh_reg[14] 
       (.C(m00_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0 ),
        .D(\sig_cmd_mst_addr_reg[31] [2]),
        .Q(\GEN_ADDR_32.sig_addr_cntr_msh_reg [14]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_msh_reg[15] 
       (.C(m00_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0 ),
        .D(\sig_cmd_mst_addr_reg[31] [3]),
        .Q(\GEN_ADDR_32.sig_addr_cntr_msh_reg [15]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_msh_reg[1] 
       (.C(m00_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0 ),
        .D(O[1]),
        .Q(\GEN_ADDR_32.sig_addr_cntr_msh_reg [1]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_msh_reg[2] 
       (.C(m00_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0 ),
        .D(O[2]),
        .Q(\GEN_ADDR_32.sig_addr_cntr_msh_reg [2]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_msh_reg[3] 
       (.C(m00_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0 ),
        .D(O[3]),
        .Q(\GEN_ADDR_32.sig_addr_cntr_msh_reg [3]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_msh_reg[4] 
       (.C(m00_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0 ),
        .D(\sig_cmd_mst_addr_reg[23] [0]),
        .Q(\GEN_ADDR_32.sig_addr_cntr_msh_reg [4]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_msh_reg[5] 
       (.C(m00_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0 ),
        .D(\sig_cmd_mst_addr_reg[23] [1]),
        .Q(\GEN_ADDR_32.sig_addr_cntr_msh_reg [5]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_msh_reg[6] 
       (.C(m00_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0 ),
        .D(\sig_cmd_mst_addr_reg[23] [2]),
        .Q(\GEN_ADDR_32.sig_addr_cntr_msh_reg [6]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_msh_reg[7] 
       (.C(m00_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0 ),
        .D(\sig_cmd_mst_addr_reg[23] [3]),
        .Q(\GEN_ADDR_32.sig_addr_cntr_msh_reg [7]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_msh_reg[8] 
       (.C(m00_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0 ),
        .D(\sig_cmd_mst_addr_reg[27] [0]),
        .Q(\GEN_ADDR_32.sig_addr_cntr_msh_reg [8]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_addr_cntr_msh_reg[9] 
       (.C(m00_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0 ),
        .D(\sig_cmd_mst_addr_reg[27] [1]),
        .Q(\GEN_ADDR_32.sig_addr_cntr_msh_reg [9]),
        .R(out));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \GEN_ADDR_32.sig_adjusted_addr_incr_reg[2]_i_1 
       (.I0(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[2]_i_1_n_0 ),
        .I1(\GEN_ADDR_32.sig_adjusted_addr_incr_reg[2]_i_2_n_0 ),
        .O(sig_adjusted_addr_incr[2]));
  LUT6 #(
    .INIT(64'h03573F570F57FF57)) 
    \GEN_ADDR_32.sig_adjusted_addr_incr_reg[2]_i_2 
       (.I0(sig_first_xfer),
        .I1(sig_mbaa_addr_cntr_slice[0]),
        .I2(sig_mbaa_addr_cntr_slice[1]),
        .I3(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[0]_i_2_n_0 ),
        .I4(sig_btt_cntr[1]),
        .I5(sig_btt_cntr[0]),
        .O(\GEN_ADDR_32.sig_adjusted_addr_incr_reg[2]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \GEN_ADDR_32.sig_adjusted_addr_incr_reg[3]_i_1 
       (.I0(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[3]_i_1_n_0 ),
        .I1(\GEN_ADDR_32.sig_adjusted_addr_incr_reg[5]_i_2_n_0 ),
        .O(sig_adjusted_addr_incr[3]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \GEN_ADDR_32.sig_adjusted_addr_incr_reg[4]_i_1 
       (.I0(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[4]_i_1_n_0 ),
        .I1(\GEN_ADDR_32.sig_adjusted_addr_incr_reg[5]_i_2_n_0 ),
        .I2(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[3]_i_1_n_0 ),
        .O(sig_adjusted_addr_incr[4]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \GEN_ADDR_32.sig_adjusted_addr_incr_reg[5]_i_1 
       (.I0(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[5]_i_1_n_0 ),
        .I1(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[3]_i_1_n_0 ),
        .I2(\GEN_ADDR_32.sig_adjusted_addr_incr_reg[5]_i_2_n_0 ),
        .I3(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[4]_i_1_n_0 ),
        .O(sig_adjusted_addr_incr[5]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hA880)) 
    \GEN_ADDR_32.sig_adjusted_addr_incr_reg[5]_i_2 
       (.I0(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[2]_i_1_n_0 ),
        .I1(\GEN_ADDR_32.sig_adjusted_addr_incr_reg[5]_i_3_n_0 ),
        .I2(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[1]_i_1_n_0 ),
        .I3(sig_mbaa_addr_cntr_slice[1]),
        .O(\GEN_ADDR_32.sig_adjusted_addr_incr_reg[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hA8AA0800)) 
    \GEN_ADDR_32.sig_adjusted_addr_incr_reg[5]_i_3 
       (.I0(sig_mbaa_addr_cntr_slice[0]),
        .I1(sig_btt_cntr[0]),
        .I2(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_2_n_0 ),
        .I3(sig_btt_lt_b2mbaa1),
        .I4(sig_first_xfer),
        .O(\GEN_ADDR_32.sig_adjusted_addr_incr_reg[5]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[0] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(\sig_finish_addr_offset_reg[0]_i_1_n_0 ),
        .Q(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[0] ),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[1] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_adjusted_addr_incr[1]),
        .Q(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[1] ),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[2] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_adjusted_addr_incr[2]),
        .Q(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[2] ),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[3] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_adjusted_addr_incr[3]),
        .Q(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[3] ),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[4] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_adjusted_addr_incr[4]),
        .Q(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[4] ),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[5] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_adjusted_addr_incr[5]),
        .Q(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[5] ),
        .R(out));
  LUT6 #(
    .INIT(64'h000000000EEEEEEE)) 
    \GEN_ADDR_32.sig_first_xfer_i_1 
       (.I0(sig_first_xfer),
        .I1(sig_input_reg_empty_reg_0),
        .I2(sig_input_burst_type_reg),
        .I3(sig_ld_xfer_reg),
        .I4(sig_xfer_reg_empty),
        .I5(out),
        .O(\GEN_ADDR_32.sig_first_xfer_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_first_xfer_reg 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(\GEN_ADDR_32.sig_first_xfer_i_1_n_0 ),
        .Q(sig_first_xfer),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h2)) 
    \GEN_ADDR_32.sig_predict_addr_lsh_imreg[11]_i_2 
       (.I0(sig_xfer_address[11]),
        .O(\GEN_ADDR_32.sig_predict_addr_lsh_imreg[11]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \GEN_ADDR_32.sig_predict_addr_lsh_imreg[11]_i_3 
       (.I0(sig_xfer_address[10]),
        .O(\GEN_ADDR_32.sig_predict_addr_lsh_imreg[11]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \GEN_ADDR_32.sig_predict_addr_lsh_imreg[11]_i_4 
       (.I0(sig_xfer_address[9]),
        .O(\GEN_ADDR_32.sig_predict_addr_lsh_imreg[11]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \GEN_ADDR_32.sig_predict_addr_lsh_imreg[11]_i_5 
       (.I0(sig_xfer_address[8]),
        .O(\GEN_ADDR_32.sig_predict_addr_lsh_imreg[11]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \GEN_ADDR_32.sig_predict_addr_lsh_imreg[15]_i_2 
       (.I0(p_1_in2_in),
        .O(\GEN_ADDR_32.sig_predict_addr_lsh_imreg[15]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \GEN_ADDR_32.sig_predict_addr_lsh_imreg[15]_i_3 
       (.I0(sig_xfer_address[14]),
        .O(\GEN_ADDR_32.sig_predict_addr_lsh_imreg[15]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \GEN_ADDR_32.sig_predict_addr_lsh_imreg[15]_i_4 
       (.I0(sig_xfer_address[13]),
        .O(\GEN_ADDR_32.sig_predict_addr_lsh_imreg[15]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \GEN_ADDR_32.sig_predict_addr_lsh_imreg[15]_i_5 
       (.I0(sig_xfer_address[12]),
        .O(\GEN_ADDR_32.sig_predict_addr_lsh_imreg[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_2 
       (.I0(sig_mbaa_addr_cntr_slice[3]),
        .I1(sig_addr_cntr_incr_imreg[3]),
        .O(\GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_3 
       (.I0(sig_mbaa_addr_cntr_slice[2]),
        .I1(sig_addr_cntr_incr_imreg[2]),
        .O(\GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_4 
       (.I0(sig_mbaa_addr_cntr_slice[1]),
        .I1(sig_addr_cntr_incr_imreg[1]),
        .O(\GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_5 
       (.I0(sig_mbaa_addr_cntr_slice[0]),
        .I1(sig_addr_cntr_incr_imreg[0]),
        .O(\GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \GEN_ADDR_32.sig_predict_addr_lsh_imreg[7]_i_2 
       (.I0(sig_xfer_address[7]),
        .O(\GEN_ADDR_32.sig_predict_addr_lsh_imreg[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \GEN_ADDR_32.sig_predict_addr_lsh_imreg[7]_i_3 
       (.I0(sig_xfer_address[6]),
        .I1(sig_addr_cntr_incr_imreg[6]),
        .O(\GEN_ADDR_32.sig_predict_addr_lsh_imreg[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \GEN_ADDR_32.sig_predict_addr_lsh_imreg[7]_i_4 
       (.I0(sig_mbaa_addr_cntr_slice[5]),
        .I1(sig_addr_cntr_incr_imreg[5]),
        .O(\GEN_ADDR_32.sig_predict_addr_lsh_imreg[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \GEN_ADDR_32.sig_predict_addr_lsh_imreg[7]_i_5 
       (.I0(sig_mbaa_addr_cntr_slice[4]),
        .I1(sig_addr_cntr_incr_imreg[4]),
        .O(\GEN_ADDR_32.sig_predict_addr_lsh_imreg[7]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[0] 
       (.C(m00_axi_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(sig_predict_addr_lsh_im3_in[0]),
        .Q(\GEN_ADDR_32.sig_addr_cntr_lsh_reg[1]_0 [0]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[10] 
       (.C(m00_axi_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(sig_predict_addr_lsh_im3_in[10]),
        .Q(\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[10] ),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[11] 
       (.C(m00_axi_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(sig_predict_addr_lsh_im3_in[11]),
        .Q(\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[11] ),
        .R(out));
  CARRY4 \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[11]_i_1 
       (.CI(\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[7]_i_1_n_0 ),
        .CO({\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[11]_i_1_n_0 ,\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[11]_i_1_n_1 ,\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[11]_i_1_n_2 ,\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(sig_predict_addr_lsh_im3_in[11:8]),
        .S({\GEN_ADDR_32.sig_predict_addr_lsh_imreg[11]_i_2_n_0 ,\GEN_ADDR_32.sig_predict_addr_lsh_imreg[11]_i_3_n_0 ,\GEN_ADDR_32.sig_predict_addr_lsh_imreg[11]_i_4_n_0 ,\GEN_ADDR_32.sig_predict_addr_lsh_imreg[11]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[12] 
       (.C(m00_axi_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(sig_predict_addr_lsh_im3_in[12]),
        .Q(\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[12] ),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[13] 
       (.C(m00_axi_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(sig_predict_addr_lsh_im3_in[13]),
        .Q(\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[13] ),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[14] 
       (.C(m00_axi_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(sig_predict_addr_lsh_im3_in[14]),
        .Q(\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[14] ),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[15] 
       (.C(m00_axi_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(sig_predict_addr_lsh_im3_in[15]),
        .Q(p_0_in),
        .R(out));
  CARRY4 \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[15]_i_1 
       (.CI(\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[11]_i_1_n_0 ),
        .CO({\NLW_GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[15]_i_1_CO_UNCONNECTED [3],\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[15]_i_1_n_1 ,\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[15]_i_1_n_2 ,\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(sig_predict_addr_lsh_im3_in[15:12]),
        .S({\GEN_ADDR_32.sig_predict_addr_lsh_imreg[15]_i_2_n_0 ,\GEN_ADDR_32.sig_predict_addr_lsh_imreg[15]_i_3_n_0 ,\GEN_ADDR_32.sig_predict_addr_lsh_imreg[15]_i_4_n_0 ,\GEN_ADDR_32.sig_predict_addr_lsh_imreg[15]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[1] 
       (.C(m00_axi_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(sig_predict_addr_lsh_im3_in[1]),
        .Q(\GEN_ADDR_32.sig_addr_cntr_lsh_reg[1]_0 [1]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[2] 
       (.C(m00_axi_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(sig_predict_addr_lsh_im3_in[2]),
        .Q(\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[2] ),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[3] 
       (.C(m00_axi_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(sig_predict_addr_lsh_im3_in[3]),
        .Q(\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[3] ),
        .R(out));
  CARRY4 \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[3]_i_1_n_0 ,\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[3]_i_1_n_1 ,\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[3]_i_1_n_2 ,\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(sig_mbaa_addr_cntr_slice[3:0]),
        .O(sig_predict_addr_lsh_im3_in[3:0]),
        .S({\GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_2_n_0 ,\GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_3_n_0 ,\GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_4_n_0 ,\GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[4] 
       (.C(m00_axi_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(sig_predict_addr_lsh_im3_in[4]),
        .Q(\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[4] ),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[5] 
       (.C(m00_axi_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(sig_predict_addr_lsh_im3_in[5]),
        .Q(\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[5] ),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[6] 
       (.C(m00_axi_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(sig_predict_addr_lsh_im3_in[6]),
        .Q(\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[6] ),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[7] 
       (.C(m00_axi_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(sig_predict_addr_lsh_im3_in[7]),
        .Q(\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[7] ),
        .R(out));
  CARRY4 \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[7]_i_1 
       (.CI(\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[3]_i_1_n_0 ),
        .CO({\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[7]_i_1_n_0 ,\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[7]_i_1_n_1 ,\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[7]_i_1_n_2 ,\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,sig_xfer_address[6],sig_mbaa_addr_cntr_slice[5:4]}),
        .O(sig_predict_addr_lsh_im3_in[7:4]),
        .S({\GEN_ADDR_32.sig_predict_addr_lsh_imreg[7]_i_2_n_0 ,\GEN_ADDR_32.sig_predict_addr_lsh_imreg[7]_i_3_n_0 ,\GEN_ADDR_32.sig_predict_addr_lsh_imreg[7]_i_4_n_0 ,\GEN_ADDR_32.sig_predict_addr_lsh_imreg[7]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[8] 
       (.C(m00_axi_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(sig_predict_addr_lsh_im3_in[8]),
        .Q(\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[8] ),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[9] 
       (.C(m00_axi_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(sig_predict_addr_lsh_im3_in[9]),
        .Q(\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[9] ),
        .R(out));
  design_1_myip_burst_test_0_0_axi_master_burst_strb_gen__parameterized0 I_END_STRB_GEN
       (.D(I_END_STRB_GEN_n_0),
        .Q(sig_finish_addr_offset_reg));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    i__carry__0_i_1
       (.I0(Q[21]),
        .I1(sig_pcc2all_calc_err),
        .I2(sig_cmd2pcc_cmd_valid),
        .I3(sig_input_reg_empty),
        .I4(sig_sm_halt_reg),
        .I5(\GEN_ADDR_32.sig_addr_cntr_msh_reg [7]),
        .O(\GEN_ADDR_32.sig_addr_cntr_msh_reg[7]_0 [3]));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    i__carry__0_i_2
       (.I0(Q[20]),
        .I1(sig_pcc2all_calc_err),
        .I2(sig_cmd2pcc_cmd_valid),
        .I3(sig_input_reg_empty),
        .I4(sig_sm_halt_reg),
        .I5(\GEN_ADDR_32.sig_addr_cntr_msh_reg [6]),
        .O(\GEN_ADDR_32.sig_addr_cntr_msh_reg[7]_0 [2]));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    i__carry__0_i_3
       (.I0(Q[19]),
        .I1(sig_pcc2all_calc_err),
        .I2(sig_cmd2pcc_cmd_valid),
        .I3(sig_input_reg_empty),
        .I4(sig_sm_halt_reg),
        .I5(\GEN_ADDR_32.sig_addr_cntr_msh_reg [5]),
        .O(\GEN_ADDR_32.sig_addr_cntr_msh_reg[7]_0 [1]));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    i__carry__0_i_4
       (.I0(Q[18]),
        .I1(sig_pcc2all_calc_err),
        .I2(sig_cmd2pcc_cmd_valid),
        .I3(sig_input_reg_empty),
        .I4(sig_sm_halt_reg),
        .I5(\GEN_ADDR_32.sig_addr_cntr_msh_reg [4]),
        .O(\GEN_ADDR_32.sig_addr_cntr_msh_reg[7]_0 [0]));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    i__carry__1_i_1
       (.I0(Q[25]),
        .I1(sig_pcc2all_calc_err),
        .I2(sig_cmd2pcc_cmd_valid),
        .I3(sig_input_reg_empty),
        .I4(sig_sm_halt_reg),
        .I5(\GEN_ADDR_32.sig_addr_cntr_msh_reg [11]),
        .O(\GEN_ADDR_32.sig_addr_cntr_msh_reg[11]_0 [3]));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    i__carry__1_i_2
       (.I0(Q[24]),
        .I1(sig_pcc2all_calc_err),
        .I2(sig_cmd2pcc_cmd_valid),
        .I3(sig_input_reg_empty),
        .I4(sig_sm_halt_reg),
        .I5(\GEN_ADDR_32.sig_addr_cntr_msh_reg [10]),
        .O(\GEN_ADDR_32.sig_addr_cntr_msh_reg[11]_0 [2]));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    i__carry__1_i_3
       (.I0(Q[23]),
        .I1(sig_pcc2all_calc_err),
        .I2(sig_cmd2pcc_cmd_valid),
        .I3(sig_input_reg_empty),
        .I4(sig_sm_halt_reg),
        .I5(\GEN_ADDR_32.sig_addr_cntr_msh_reg [9]),
        .O(\GEN_ADDR_32.sig_addr_cntr_msh_reg[11]_0 [1]));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    i__carry__1_i_4
       (.I0(Q[22]),
        .I1(sig_pcc2all_calc_err),
        .I2(sig_cmd2pcc_cmd_valid),
        .I3(sig_input_reg_empty),
        .I4(sig_sm_halt_reg),
        .I5(\GEN_ADDR_32.sig_addr_cntr_msh_reg [8]),
        .O(\GEN_ADDR_32.sig_addr_cntr_msh_reg[11]_0 [0]));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    i__carry__2_i_1
       (.I0(Q[29]),
        .I1(sig_pcc2all_calc_err),
        .I2(sig_cmd2pcc_cmd_valid),
        .I3(sig_input_reg_empty),
        .I4(sig_sm_halt_reg),
        .I5(\GEN_ADDR_32.sig_addr_cntr_msh_reg [15]),
        .O(\GEN_ADDR_32.sig_addr_cntr_msh_reg[15]_0 [3]));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    i__carry__2_i_2
       (.I0(Q[28]),
        .I1(sig_pcc2all_calc_err),
        .I2(sig_cmd2pcc_cmd_valid),
        .I3(sig_input_reg_empty),
        .I4(sig_sm_halt_reg),
        .I5(\GEN_ADDR_32.sig_addr_cntr_msh_reg [14]),
        .O(\GEN_ADDR_32.sig_addr_cntr_msh_reg[15]_0 [2]));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    i__carry__2_i_3
       (.I0(Q[27]),
        .I1(sig_pcc2all_calc_err),
        .I2(sig_cmd2pcc_cmd_valid),
        .I3(sig_input_reg_empty),
        .I4(sig_sm_halt_reg),
        .I5(\GEN_ADDR_32.sig_addr_cntr_msh_reg [13]),
        .O(\GEN_ADDR_32.sig_addr_cntr_msh_reg[15]_0 [1]));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    i__carry__2_i_4
       (.I0(Q[26]),
        .I1(sig_pcc2all_calc_err),
        .I2(sig_cmd2pcc_cmd_valid),
        .I3(sig_input_reg_empty),
        .I4(sig_sm_halt_reg),
        .I5(\GEN_ADDR_32.sig_addr_cntr_msh_reg [12]),
        .O(\GEN_ADDR_32.sig_addr_cntr_msh_reg[15]_0 [0]));
  LUT4 #(
    .INIT(16'hFFBF)) 
    i__carry_i_1
       (.I0(sig_sm_halt_reg),
        .I1(sig_input_reg_empty),
        .I2(sig_cmd2pcc_cmd_valid),
        .I3(sig_pcc2all_calc_err),
        .O(DI));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    i__carry_i_2
       (.I0(Q[17]),
        .I1(sig_pcc2all_calc_err),
        .I2(sig_cmd2pcc_cmd_valid),
        .I3(sig_input_reg_empty),
        .I4(sig_sm_halt_reg),
        .I5(\GEN_ADDR_32.sig_addr_cntr_msh_reg [3]),
        .O(S[3]));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    i__carry_i_3
       (.I0(Q[16]),
        .I1(sig_pcc2all_calc_err),
        .I2(sig_cmd2pcc_cmd_valid),
        .I3(sig_input_reg_empty),
        .I4(sig_sm_halt_reg),
        .I5(\GEN_ADDR_32.sig_addr_cntr_msh_reg [2]),
        .O(S[2]));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    i__carry_i_4
       (.I0(Q[15]),
        .I1(sig_pcc2all_calc_err),
        .I2(sig_cmd2pcc_cmd_valid),
        .I3(sig_input_reg_empty),
        .I4(sig_sm_halt_reg),
        .I5(\GEN_ADDR_32.sig_addr_cntr_msh_reg [1]),
        .O(S[1]));
  LUT6 #(
    .INIT(64'h555555555C555555)) 
    i__carry_i_5
       (.I0(\GEN_ADDR_32.sig_addr_cntr_msh_reg [0]),
        .I1(Q[14]),
        .I2(sig_sm_halt_reg),
        .I3(sig_input_reg_empty),
        .I4(sig_cmd2pcc_cmd_valid),
        .I5(sig_pcc2all_calc_err),
        .O(S[0]));
  CARRY4 sig_btt_cntr0_carry
       (.CI(1'b0),
        .CO({sig_btt_cntr0_carry_n_0,sig_btt_cntr0_carry_n_1,sig_btt_cntr0_carry_n_2,sig_btt_cntr0_carry_n_3}),
        .CYINIT(1'b1),
        .DI(sig_btt_cntr[3:0]),
        .O(sig_btt_cntr0[3:0]),
        .S({sig_btt_cntr0_carry_i_1_n_0,sig_btt_cntr0_carry_i_2_n_0,sig_btt_cntr0_carry_i_3_n_0,sig_btt_cntr0_carry_i_4_n_0}));
  CARRY4 sig_btt_cntr0_carry__0
       (.CI(sig_btt_cntr0_carry_n_0),
        .CO({sig_btt_cntr0_carry__0_n_0,sig_btt_cntr0_carry__0_n_1,sig_btt_cntr0_carry__0_n_2,sig_btt_cntr0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(sig_btt_cntr[7:4]),
        .O(sig_btt_cntr0[7:4]),
        .S({sig_btt_cntr0_carry__0_i_1_n_0,sig_btt_cntr0_carry__0_i_2_n_0,sig_btt_cntr0_carry__0_i_3_n_0,sig_btt_cntr0_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    sig_btt_cntr0_carry__0_i_1
       (.I0(sig_btt_cntr[7]),
        .O(sig_btt_cntr0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sig_btt_cntr0_carry__0_i_2
       (.I0(sig_btt_cntr[6]),
        .I1(sig_addr_cntr_incr_imreg[6]),
        .O(sig_btt_cntr0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sig_btt_cntr0_carry__0_i_3
       (.I0(sig_btt_cntr[5]),
        .I1(sig_addr_cntr_incr_imreg[5]),
        .O(sig_btt_cntr0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sig_btt_cntr0_carry__0_i_4
       (.I0(sig_btt_cntr[4]),
        .I1(sig_addr_cntr_incr_imreg[4]),
        .O(sig_btt_cntr0_carry__0_i_4_n_0));
  CARRY4 sig_btt_cntr0_carry__1
       (.CI(sig_btt_cntr0_carry__0_n_0),
        .CO({NLW_sig_btt_cntr0_carry__1_CO_UNCONNECTED[3],sig_btt_cntr0_carry__1_n_1,sig_btt_cntr0_carry__1_n_2,sig_btt_cntr0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,sig_btt_cntr[10:8]}),
        .O(sig_btt_cntr0[11:8]),
        .S({sig_btt_cntr0_carry__1_i_1_n_0,sig_btt_cntr0_carry__1_i_2_n_0,sig_btt_cntr0_carry__1_i_3_n_0,sig_btt_cntr0_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    sig_btt_cntr0_carry__1_i_1
       (.I0(sig_btt_cntr[11]),
        .O(sig_btt_cntr0_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sig_btt_cntr0_carry__1_i_2
       (.I0(sig_btt_cntr[10]),
        .O(sig_btt_cntr0_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sig_btt_cntr0_carry__1_i_3
       (.I0(sig_btt_cntr[9]),
        .O(sig_btt_cntr0_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sig_btt_cntr0_carry__1_i_4
       (.I0(sig_btt_cntr[8]),
        .O(sig_btt_cntr0_carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sig_btt_cntr0_carry_i_1
       (.I0(sig_btt_cntr[3]),
        .I1(sig_addr_cntr_incr_imreg[3]),
        .O(sig_btt_cntr0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sig_btt_cntr0_carry_i_2
       (.I0(sig_btt_cntr[2]),
        .I1(sig_addr_cntr_incr_imreg[2]),
        .O(sig_btt_cntr0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sig_btt_cntr0_carry_i_3
       (.I0(sig_btt_cntr[1]),
        .I1(sig_addr_cntr_incr_imreg[1]),
        .O(sig_btt_cntr0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sig_btt_cntr0_carry_i_4
       (.I0(sig_btt_cntr[0]),
        .I1(sig_addr_cntr_incr_imreg[0]),
        .O(sig_btt_cntr0_carry_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_reg[0] 
       (.C(m00_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0 ),
        .D(sig_cmd_type_req_reg[0]),
        .Q(sig_btt_cntr[0]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_reg[10] 
       (.C(m00_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0 ),
        .D(sig_cmd_type_req_reg[10]),
        .Q(sig_btt_cntr[10]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_reg[11] 
       (.C(m00_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0 ),
        .D(sig_cmd_type_req_reg[11]),
        .Q(sig_btt_cntr[11]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_reg[1] 
       (.C(m00_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0 ),
        .D(sig_cmd_type_req_reg[1]),
        .Q(sig_btt_cntr[1]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_reg[2] 
       (.C(m00_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0 ),
        .D(sig_cmd_type_req_reg[2]),
        .Q(sig_btt_cntr[2]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_reg[3] 
       (.C(m00_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0 ),
        .D(sig_cmd_type_req_reg[3]),
        .Q(sig_btt_cntr[3]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_reg[4] 
       (.C(m00_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0 ),
        .D(sig_cmd_type_req_reg[4]),
        .Q(sig_btt_cntr[4]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_reg[5] 
       (.C(m00_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0 ),
        .D(sig_cmd_type_req_reg[5]),
        .Q(sig_btt_cntr[5]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_reg[6] 
       (.C(m00_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0 ),
        .D(sig_cmd_type_req_reg[6]),
        .Q(sig_btt_cntr[6]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_reg[7] 
       (.C(m00_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0 ),
        .D(sig_cmd_type_req_reg[7]),
        .Q(sig_btt_cntr[7]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_reg[8] 
       (.C(m00_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0 ),
        .D(sig_cmd_type_req_reg[8]),
        .Q(sig_btt_cntr[8]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_reg[9] 
       (.C(m00_axi_aclk),
        .CE(\GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0 ),
        .D(sig_cmd_type_req_reg[9]),
        .Q(sig_btt_cntr[9]),
        .R(out));
  CARRY4 sig_btt_lt_b2mbaa1_carry
       (.CI(1'b0),
        .CO({sig_btt_lt_b2mbaa1,sig_btt_lt_b2mbaa1_carry_n_1,sig_btt_lt_b2mbaa1_carry_n_2,sig_btt_lt_b2mbaa1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({sig_btt_lt_b2mbaa1_carry_i_1_n_0,sig_btt_lt_b2mbaa1_carry_i_2_n_0,sig_btt_lt_b2mbaa1_carry_i_3_n_0,sig_btt_lt_b2mbaa1_carry_i_4_n_0}),
        .O(NLW_sig_btt_lt_b2mbaa1_carry_O_UNCONNECTED[3:0]),
        .S({sig_btt_lt_b2mbaa1_carry_i_5_n_0,sig_btt_lt_b2mbaa1_carry_i_6_n_0,sig_btt_lt_b2mbaa1_carry_i_7_n_0,sig_btt_lt_b2mbaa1_carry_i_8_n_0}));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    sig_btt_lt_b2mbaa1_carry_i_1
       (.I0(sig_mbaa_addr_cntr_slice[2]),
        .I1(sig_mbaa_addr_cntr_slice[3]),
        .I2(sig_mbaa_addr_cntr_slice[0]),
        .I3(sig_mbaa_addr_cntr_slice[1]),
        .I4(sig_mbaa_addr_cntr_slice[4]),
        .I5(sig_mbaa_addr_cntr_slice[5]),
        .O(sig_btt_lt_b2mbaa1_carry_i_1_n_0));
  LUT5 #(
    .INIT(32'h104551C7)) 
    sig_btt_lt_b2mbaa1_carry_i_2
       (.I0(sig_btt_cntr[5]),
        .I1(sig_mbaa_addr_cntr_slice[4]),
        .I2(sig_btt_lt_b2mbaa1_carry_i_9_n_0),
        .I3(sig_mbaa_addr_cntr_slice[5]),
        .I4(sig_btt_cntr[4]),
        .O(sig_btt_lt_b2mbaa1_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h000155541115777C)) 
    sig_btt_lt_b2mbaa1_carry_i_3
       (.I0(sig_btt_cntr[3]),
        .I1(sig_mbaa_addr_cntr_slice[2]),
        .I2(sig_mbaa_addr_cntr_slice[1]),
        .I3(sig_mbaa_addr_cntr_slice[0]),
        .I4(sig_mbaa_addr_cntr_slice[3]),
        .I5(sig_btt_cntr[2]),
        .O(sig_btt_lt_b2mbaa1_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h1474)) 
    sig_btt_lt_b2mbaa1_carry_i_4
       (.I0(sig_btt_cntr[1]),
        .I1(sig_mbaa_addr_cntr_slice[1]),
        .I2(sig_mbaa_addr_cntr_slice[0]),
        .I3(sig_btt_cntr[0]),
        .O(sig_btt_lt_b2mbaa1_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    sig_btt_lt_b2mbaa1_carry_i_5
       (.I0(sig_mbaa_addr_cntr_slice[5]),
        .I1(sig_mbaa_addr_cntr_slice[4]),
        .I2(sig_mbaa_addr_cntr_slice[1]),
        .I3(sig_mbaa_addr_cntr_slice[0]),
        .I4(sig_mbaa_addr_cntr_slice[3]),
        .I5(sig_mbaa_addr_cntr_slice[2]),
        .O(sig_btt_lt_b2mbaa1_carry_i_5_n_0));
  LUT5 #(
    .INIT(32'h21428418)) 
    sig_btt_lt_b2mbaa1_carry_i_6
       (.I0(sig_btt_cntr[4]),
        .I1(sig_mbaa_addr_cntr_slice[5]),
        .I2(sig_btt_lt_b2mbaa1_carry_i_9_n_0),
        .I3(sig_mbaa_addr_cntr_slice[4]),
        .I4(sig_btt_cntr[5]),
        .O(sig_btt_lt_b2mbaa1_carry_i_6_n_0));
  LUT6 #(
    .INIT(64'h1114222844428881)) 
    sig_btt_lt_b2mbaa1_carry_i_7
       (.I0(sig_btt_cntr[3]),
        .I1(sig_mbaa_addr_cntr_slice[2]),
        .I2(sig_mbaa_addr_cntr_slice[1]),
        .I3(sig_mbaa_addr_cntr_slice[0]),
        .I4(sig_mbaa_addr_cntr_slice[3]),
        .I5(sig_btt_cntr[2]),
        .O(sig_btt_lt_b2mbaa1_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h1881)) 
    sig_btt_lt_b2mbaa1_carry_i_8
       (.I0(sig_mbaa_addr_cntr_slice[0]),
        .I1(sig_btt_cntr[0]),
        .I2(sig_btt_cntr[1]),
        .I3(sig_mbaa_addr_cntr_slice[1]),
        .O(sig_btt_lt_b2mbaa1_carry_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    sig_btt_lt_b2mbaa1_carry_i_9
       (.I0(sig_mbaa_addr_cntr_slice[1]),
        .I1(sig_mbaa_addr_cntr_slice[0]),
        .I2(sig_mbaa_addr_cntr_slice[3]),
        .I3(sig_mbaa_addr_cntr_slice[2]),
        .O(sig_btt_lt_b2mbaa1_carry_i_9_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hFF80)) 
    sig_calc_error_pushed_i_1
       (.I0(sig_pcc2all_calc_err),
        .I1(sig_ld_xfer_reg),
        .I2(sig_xfer_reg_empty),
        .I3(sig_calc_error_pushed),
        .O(sig_calc_error_pushed_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_calc_error_pushed_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_calc_error_pushed_i_1_n_0),
        .Q(sig_calc_error_pushed),
        .R(out));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hCCCCECCC)) 
    sig_calc_error_reg_i_1
       (.I0(sig_btt_is_zero),
        .I1(sig_pcc2all_calc_err),
        .I2(sig_cmd2pcc_cmd_valid),
        .I3(sig_input_reg_empty),
        .I4(sig_sm_halt_reg),
        .O(sig_calc_error_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_calc_error_reg_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_calc_error_reg_i_1_n_0),
        .Q(sig_pcc2all_calc_err),
        .R(out));
  LUT5 #(
    .INIT(32'h000000EA)) 
    sig_cmd2addr_valid_i_1
       (.I0(sig_pcc2addr_cmd_valid),
        .I1(sig_xfer_reg_empty),
        .I2(sig_ld_xfer_reg),
        .I3(sig_push_addr_reg1_out),
        .I4(out),
        .O(sig_cmd2addr_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_cmd2addr_valid_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_cmd2addr_valid_i_1_n_0),
        .Q(sig_pcc2addr_cmd_valid),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h000000EA)) 
    sig_cmd2data_valid_i_1
       (.I0(sig_pcc2data_cmd_valid),
        .I1(sig_xfer_reg_empty),
        .I2(sig_ld_xfer_reg),
        .I3(sig_wdc2pcc_cmd_ready),
        .I4(out),
        .O(sig_cmd2data_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_cmd2data_valid_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_cmd2data_valid_i_1_n_0),
        .Q(sig_pcc2data_cmd_valid),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00000080)) 
    sig_cmd2dre_valid_i_1
       (.I0(sig_ld_xfer_reg),
        .I1(sig_xfer_reg_empty),
        .I2(sig_first_xfer),
        .I3(sig_cmd2dre_valid_reg_n_0),
        .I4(out),
        .O(sig_cmd2dre_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_cmd2dre_valid_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_cmd2dre_valid_i_1_n_0),
        .Q(sig_cmd2dre_valid_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAAAAAAAABAAAAAA)) 
    sig_cmd_full_reg_i_1
       (.I0(sig_cmd_reset_reg_reg),
        .I1(sig_push_cmd_reg),
        .I2(sig_calc_error_pushed),
        .I3(sig_cmd2pcc_cmd_valid),
        .I4(sig_input_reg_empty),
        .I5(sig_sm_halt_reg),
        .O(sig_cmd_full_reg_reg));
  LUT4 #(
    .INIT(16'h0040)) 
    sig_doing_write_reg_i_2
       (.I0(sig_calc_error_pushed),
        .I1(sig_cmd2pcc_cmd_valid),
        .I2(sig_input_reg_empty),
        .I3(sig_sm_halt_reg),
        .O(sig_pcc_taking_command));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h486A)) 
    \sig_finish_addr_offset_reg[0]_i_1 
       (.I0(sig_mbaa_addr_cntr_slice[0]),
        .I1(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[0]_i_2_n_0 ),
        .I2(sig_btt_cntr[0]),
        .I3(sig_first_xfer),
        .O(\sig_finish_addr_offset_reg[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h906030C09F603FC0)) 
    \sig_finish_addr_offset_reg[1]_i_1 
       (.I0(sig_btt_cntr[0]),
        .I1(sig_btt_cntr[1]),
        .I2(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[0]_i_2_n_0 ),
        .I3(sig_mbaa_addr_cntr_slice[1]),
        .I4(sig_mbaa_addr_cntr_slice[0]),
        .I5(sig_first_xfer),
        .O(sig_adjusted_addr_incr[1]));
  FDRE #(
    .INIT(1'b0)) 
    \sig_finish_addr_offset_reg_reg[0] 
       (.C(m00_axi_aclk),
        .CE(sig_sm_ld_calc1_reg),
        .D(\sig_finish_addr_offset_reg[0]_i_1_n_0 ),
        .Q(sig_finish_addr_offset_reg[0]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_finish_addr_offset_reg_reg[1] 
       (.C(m00_axi_aclk),
        .CE(sig_sm_ld_calc1_reg),
        .D(sig_adjusted_addr_incr[1]),
        .Q(sig_finish_addr_offset_reg[1]),
        .R(out));
  LUT5 #(
    .INIT(32'h0000000E)) 
    sig_input_burst_type_reg_i_1
       (.I0(sig_input_burst_type_reg),
        .I1(sig_input_reg_empty_reg_0),
        .I2(out),
        .I3(sig_sm_pop_input_reg),
        .I4(sig_calc_error_pushed),
        .O(sig_input_burst_type_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_input_burst_type_reg_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_input_burst_type_reg_i_1_n_0),
        .Q(sig_input_burst_type_reg),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h0000000E)) 
    sig_input_eof_reg_i_1
       (.I0(sig_input_eof_reg),
        .I1(sig_input_reg_empty_reg_0),
        .I2(out),
        .I3(sig_sm_pop_input_reg),
        .I4(sig_calc_error_pushed),
        .O(sig_input_eof_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_input_eof_reg_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_input_eof_reg_i_1_n_0),
        .Q(sig_input_eof_reg),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFFFFF2)) 
    sig_input_reg_empty_i_1
       (.I0(sig_input_reg_empty),
        .I1(sig_input_reg_empty_reg_0),
        .I2(out),
        .I3(sig_sm_pop_input_reg),
        .I4(sig_calc_error_pushed),
        .O(sig_input_reg_empty_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_input_reg_empty_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_input_reg_empty_i_1_n_0),
        .Q(sig_input_reg_empty),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    sig_last_dbeat_i_3
       (.I0(\sig_next_len_reg_reg[3] [3]),
        .I1(\sig_next_len_reg_reg[3] [0]),
        .I2(\sig_next_len_reg_reg[3] [2]),
        .I3(\sig_next_len_reg_reg[3] [1]),
        .O(p_1_in));
  LUT6 #(
    .INIT(64'h0000000000FF4040)) 
    sig_ld_xfer_reg_i_1
       (.I0(sig_pcc_sm_state[2]),
        .I1(sig_pcc_sm_state[0]),
        .I2(sig_pcc_sm_state[1]),
        .I3(sig_xfer_reg_empty),
        .I4(sig_ld_xfer_reg),
        .I5(out),
        .O(sig_ld_xfer_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_ld_xfer_reg_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_ld_xfer_reg_i_1_n_0),
        .Q(sig_ld_xfer_reg),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h000000000000EA2A)) 
    sig_parent_done_i_1
       (.I0(sig_parent_done),
        .I1(sig_ld_xfer_reg),
        .I2(sig_xfer_reg_empty),
        .I3(sig_last_xfer_valid1_out),
        .I4(sig_input_reg_empty_reg_0),
        .I5(out),
        .O(sig_parent_done_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_parent_done_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_parent_done_i_1_n_0),
        .Q(sig_parent_done),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h3803)) 
    sig_sm_halt_reg_i_1
       (.I0(sig_calc_error_pushed),
        .I1(sig_pcc_sm_state[0]),
        .I2(sig_pcc_sm_state[1]),
        .I3(sig_pcc_sm_state[2]),
        .O(sig_sm_halt_ns));
  FDSE #(
    .INIT(1'b0)) 
    sig_sm_halt_reg_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_sm_halt_ns),
        .Q(sig_sm_halt_reg),
        .S(out));
  LUT6 #(
    .INIT(64'h0040004000404440)) 
    sig_sm_ld_calc1_reg_i_1
       (.I0(sig_pcc_sm_state[1]),
        .I1(sig_pcc_sm_state[0]),
        .I2(sig_input_reg_empty_reg_0),
        .I3(sig_pcc_sm_state[2]),
        .I4(sig_calc_error_pushed),
        .I5(sig_parent_done),
        .O(sig_sm_ld_calc1_reg_ns));
  FDRE #(
    .INIT(1'b0)) 
    sig_sm_ld_calc1_reg_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_sm_ld_calc1_reg_ns),
        .Q(sig_sm_ld_calc1_reg),
        .R(out));
  LUT3 #(
    .INIT(8'h02)) 
    sig_sm_ld_calc2_reg_i_1
       (.I0(sig_pcc_sm_state[1]),
        .I1(sig_pcc_sm_state[2]),
        .I2(sig_pcc_sm_state[0]),
        .O(sig_sm_ld_calc2_reg_ns));
  FDRE #(
    .INIT(1'b0)) 
    sig_sm_ld_calc2_reg_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_sm_ld_calc2_reg_ns),
        .Q(sig_sm_ld_calc2_reg),
        .R(out));
  LUT5 #(
    .INIT(32'h00002000)) 
    sig_sm_pop_input_reg_i_1
       (.I0(sig_pcc_sm_state[2]),
        .I1(sig_pcc_sm_state[1]),
        .I2(sig_pcc_sm_state[0]),
        .I3(sig_parent_done),
        .I4(sig_calc_error_pushed),
        .O(sig_sm_pop_input_reg_ns));
  FDRE #(
    .INIT(1'b0)) 
    sig_sm_pop_input_reg_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_sm_pop_input_reg_ns),
        .Q(sig_sm_pop_input_reg),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strbgen_addr_reg_reg[0] 
       (.C(m00_axi_aclk),
        .CE(sig_sm_ld_calc1_reg),
        .D(sig_mbaa_addr_cntr_slice[0]),
        .Q(sig_strbgen_addr_reg[0]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strbgen_addr_reg_reg[1] 
       (.C(m00_axi_aclk),
        .CE(sig_sm_ld_calc1_reg),
        .D(sig_mbaa_addr_cntr_slice[1]),
        .Q(sig_strbgen_addr_reg[1]),
        .R(out));
  LUT5 #(
    .INIT(32'h0000002E)) 
    \sig_strbgen_bytes_reg[0]_i_1 
       (.I0(\sig_strbgen_bytes_reg_reg_n_0_[0] ),
        .I1(sig_sm_ld_calc1_reg),
        .I2(\sig_strbgen_bytes_reg[0]_i_2_n_0 ),
        .I3(sig_strbgen_bytes_reg),
        .I4(out),
        .O(\sig_strbgen_bytes_reg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h353F)) 
    \sig_strbgen_bytes_reg[0]_i_2 
       (.I0(sig_first_xfer),
        .I1(sig_btt_cntr[0]),
        .I2(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[0]_i_2_n_0 ),
        .I3(sig_mbaa_addr_cntr_slice[0]),
        .O(\sig_strbgen_bytes_reg[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \sig_strbgen_bytes_reg[1]_i_1 
       (.I0(\sig_strbgen_bytes_reg_reg_n_0_[1] ),
        .I1(sig_sm_ld_calc1_reg),
        .I2(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[1]_i_1_n_0 ),
        .I3(sig_strbgen_bytes_reg),
        .I4(out),
        .O(\sig_strbgen_bytes_reg[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \sig_strbgen_bytes_reg[2]_i_1 
       (.I0(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[2]_i_1_n_0 ),
        .I1(sig_sm_ld_calc1_reg),
        .I2(sig_strbgen_bytes_reg),
        .I3(\sig_strbgen_bytes_reg_reg_n_0_[2] ),
        .O(\sig_strbgen_bytes_reg[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \sig_strbgen_bytes_reg[2]_i_2 
       (.I0(sig_sm_ld_calc1_reg),
        .I1(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[5]_i_1_n_0 ),
        .I2(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[3]_i_1_n_0 ),
        .I3(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[2]_i_1_n_0 ),
        .I4(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_1_n_0 ),
        .I5(\GEN_ADDR_32.sig_addr_cntr_incr_imreg[4]_i_1_n_0 ),
        .O(sig_strbgen_bytes_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strbgen_bytes_reg_reg[0] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(\sig_strbgen_bytes_reg[0]_i_1_n_0 ),
        .Q(\sig_strbgen_bytes_reg_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strbgen_bytes_reg_reg[1] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(\sig_strbgen_bytes_reg[1]_i_1_n_0 ),
        .Q(\sig_strbgen_bytes_reg_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strbgen_bytes_reg_reg[2] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(\sig_strbgen_bytes_reg[2]_i_1_n_0 ),
        .Q(\sig_strbgen_bytes_reg_reg_n_0_[2] ),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[0] 
       (.C(m00_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(sig_mbaa_addr_cntr_slice[0]),
        .Q(\sig_next_addr_reg_reg[31] [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[10] 
       (.C(m00_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(sig_xfer_address[10]),
        .Q(\sig_next_addr_reg_reg[31] [10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[11] 
       (.C(m00_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(sig_xfer_address[11]),
        .Q(\sig_next_addr_reg_reg[31] [11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[12] 
       (.C(m00_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(sig_xfer_address[12]),
        .Q(\sig_next_addr_reg_reg[31] [12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[13] 
       (.C(m00_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(sig_xfer_address[13]),
        .Q(\sig_next_addr_reg_reg[31] [13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[14] 
       (.C(m00_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(sig_xfer_address[14]),
        .Q(\sig_next_addr_reg_reg[31] [14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[15] 
       (.C(m00_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(p_1_in2_in),
        .Q(\sig_next_addr_reg_reg[31] [15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[16] 
       (.C(m00_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(\GEN_ADDR_32.sig_addr_cntr_msh_reg [0]),
        .Q(\sig_next_addr_reg_reg[31] [16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[17] 
       (.C(m00_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(\GEN_ADDR_32.sig_addr_cntr_msh_reg [1]),
        .Q(\sig_next_addr_reg_reg[31] [17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[18] 
       (.C(m00_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(\GEN_ADDR_32.sig_addr_cntr_msh_reg [2]),
        .Q(\sig_next_addr_reg_reg[31] [18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[19] 
       (.C(m00_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(\GEN_ADDR_32.sig_addr_cntr_msh_reg [3]),
        .Q(\sig_next_addr_reg_reg[31] [19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[1] 
       (.C(m00_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(sig_mbaa_addr_cntr_slice[1]),
        .Q(\sig_next_addr_reg_reg[31] [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[20] 
       (.C(m00_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(\GEN_ADDR_32.sig_addr_cntr_msh_reg [4]),
        .Q(\sig_next_addr_reg_reg[31] [20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[21] 
       (.C(m00_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(\GEN_ADDR_32.sig_addr_cntr_msh_reg [5]),
        .Q(\sig_next_addr_reg_reg[31] [21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[22] 
       (.C(m00_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(\GEN_ADDR_32.sig_addr_cntr_msh_reg [6]),
        .Q(\sig_next_addr_reg_reg[31] [22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[23] 
       (.C(m00_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(\GEN_ADDR_32.sig_addr_cntr_msh_reg [7]),
        .Q(\sig_next_addr_reg_reg[31] [23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[24] 
       (.C(m00_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(\GEN_ADDR_32.sig_addr_cntr_msh_reg [8]),
        .Q(\sig_next_addr_reg_reg[31] [24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[25] 
       (.C(m00_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(\GEN_ADDR_32.sig_addr_cntr_msh_reg [9]),
        .Q(\sig_next_addr_reg_reg[31] [25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[26] 
       (.C(m00_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(\GEN_ADDR_32.sig_addr_cntr_msh_reg [10]),
        .Q(\sig_next_addr_reg_reg[31] [26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[27] 
       (.C(m00_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(\GEN_ADDR_32.sig_addr_cntr_msh_reg [11]),
        .Q(\sig_next_addr_reg_reg[31] [27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[28] 
       (.C(m00_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(\GEN_ADDR_32.sig_addr_cntr_msh_reg [12]),
        .Q(\sig_next_addr_reg_reg[31] [28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[29] 
       (.C(m00_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(\GEN_ADDR_32.sig_addr_cntr_msh_reg [13]),
        .Q(\sig_next_addr_reg_reg[31] [29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[2] 
       (.C(m00_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(sig_mbaa_addr_cntr_slice[2]),
        .Q(\sig_next_addr_reg_reg[31] [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[30] 
       (.C(m00_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(\GEN_ADDR_32.sig_addr_cntr_msh_reg [14]),
        .Q(\sig_next_addr_reg_reg[31] [30]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[31] 
       (.C(m00_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(\GEN_ADDR_32.sig_addr_cntr_msh_reg [15]),
        .Q(\sig_next_addr_reg_reg[31] [31]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[3] 
       (.C(m00_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(sig_mbaa_addr_cntr_slice[3]),
        .Q(\sig_next_addr_reg_reg[31] [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[4] 
       (.C(m00_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(sig_mbaa_addr_cntr_slice[4]),
        .Q(\sig_next_addr_reg_reg[31] [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[5] 
       (.C(m00_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(sig_mbaa_addr_cntr_slice[5]),
        .Q(\sig_next_addr_reg_reg[31] [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[6] 
       (.C(m00_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(sig_xfer_address[6]),
        .Q(\sig_next_addr_reg_reg[31] [6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[7] 
       (.C(m00_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(sig_xfer_address[7]),
        .Q(\sig_next_addr_reg_reg[31] [7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[8] 
       (.C(m00_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(sig_xfer_address[8]),
        .Q(\sig_next_addr_reg_reg[31] [8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_addr_reg_reg[9] 
       (.C(m00_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(sig_xfer_address[9]),
        .Q(\sig_next_addr_reg_reg[31] [9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    sig_xfer_calc_err_reg_reg
       (.C(m00_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(sig_pcc2all_calc_err),
        .Q(sig_pcc2data_calc_error),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'hE)) 
    sig_xfer_cmd_cmplt_reg_i_1
       (.I0(sig_pcc2all_calc_err),
        .I1(sig_last_xfer_valid1_out),
        .O(sig_xfer_cmd_cmplt_reg0));
  LUT6 #(
    .INIT(64'h000000000000A00C)) 
    sig_xfer_cmd_cmplt_reg_i_2
       (.I0(sig_btt_lt_b2mbaa1_carry_i_1_n_0),
        .I1(sig_xfer_cmd_cmplt_reg_i_3_n_0),
        .I2(sig_xfer_cmd_cmplt_reg_i_4_n_0),
        .I3(sig_btt_cntr[6]),
        .I4(sig_xfer_cmd_cmplt_reg_i_5_n_0),
        .I5(sig_xfer_cmd_cmplt_reg_i_6_n_0),
        .O(sig_last_xfer_valid1_out));
  LUT5 #(
    .INIT(32'hAAABAAAA)) 
    sig_xfer_cmd_cmplt_reg_i_3
       (.I0(sig_btt_lt_b2mbaa1),
        .I1(sig_xfer_cmd_cmplt_reg_i_7_n_0),
        .I2(sig_xfer_cmd_cmplt_reg_i_8_n_0),
        .I3(sig_btt_lt_b2mbaa1_carry_i_1_n_0),
        .I4(sig_xfer_cmd_cmplt_reg_i_9_n_0),
        .O(sig_xfer_cmd_cmplt_reg_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    sig_xfer_cmd_cmplt_reg_i_4
       (.I0(sig_btt_cntr[4]),
        .I1(sig_btt_cntr[3]),
        .I2(sig_btt_cntr[0]),
        .I3(sig_btt_cntr[5]),
        .I4(sig_btt_cntr[1]),
        .I5(sig_btt_cntr[2]),
        .O(sig_xfer_cmd_cmplt_reg_i_4_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    sig_xfer_cmd_cmplt_reg_i_5
       (.I0(sig_btt_cntr[8]),
        .I1(sig_btt_cntr[9]),
        .O(sig_xfer_cmd_cmplt_reg_i_5_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    sig_xfer_cmd_cmplt_reg_i_6
       (.I0(sig_btt_cntr[7]),
        .I1(sig_btt_cntr[10]),
        .I2(sig_btt_cntr[11]),
        .O(sig_xfer_cmd_cmplt_reg_i_6_n_0));
  LUT6 #(
    .INIT(64'hEEEDDDDBBBB7777E)) 
    sig_xfer_cmd_cmplt_reg_i_7
       (.I0(sig_btt_cntr[2]),
        .I1(sig_mbaa_addr_cntr_slice[3]),
        .I2(sig_mbaa_addr_cntr_slice[0]),
        .I3(sig_mbaa_addr_cntr_slice[1]),
        .I4(sig_mbaa_addr_cntr_slice[2]),
        .I5(sig_btt_cntr[3]),
        .O(sig_xfer_cmd_cmplt_reg_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h9FF6)) 
    sig_xfer_cmd_cmplt_reg_i_8
       (.I0(sig_mbaa_addr_cntr_slice[1]),
        .I1(sig_btt_cntr[1]),
        .I2(sig_btt_cntr[0]),
        .I3(sig_mbaa_addr_cntr_slice[0]),
        .O(sig_xfer_cmd_cmplt_reg_i_8_n_0));
  LUT5 #(
    .INIT(32'h21428418)) 
    sig_xfer_cmd_cmplt_reg_i_9
       (.I0(sig_btt_cntr[4]),
        .I1(sig_mbaa_addr_cntr_slice[5]),
        .I2(sig_btt_lt_b2mbaa1_carry_i_9_n_0),
        .I3(sig_mbaa_addr_cntr_slice[4]),
        .I4(sig_btt_cntr[5]),
        .O(sig_xfer_cmd_cmplt_reg_i_9_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_xfer_cmd_cmplt_reg_reg
       (.C(m00_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(sig_xfer_cmd_cmplt_reg0),
        .Q(sig_pcc2data_cmd_cmplt),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \sig_xfer_end_strb_imreg[1]_i_1 
       (.I0(sig_finish_addr_offset_reg[1]),
        .I1(sig_finish_addr_offset_reg[0]),
        .O(\sig_xfer_end_strb_imreg[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \sig_xfer_end_strb_imreg[3]_i_1 
       (.I0(sig_finish_addr_offset_reg[1]),
        .I1(sig_finish_addr_offset_reg[0]),
        .O(\sig_xfer_end_strb_imreg[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_end_strb_imreg_reg[0] 
       (.C(m00_axi_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(1'b1),
        .Q(sig_xfer_end_strb_imreg[0]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_end_strb_imreg_reg[1] 
       (.C(m00_axi_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(\sig_xfer_end_strb_imreg[1]_i_1_n_0 ),
        .Q(sig_xfer_end_strb_imreg[1]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_end_strb_imreg_reg[2] 
       (.C(m00_axi_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(I_END_STRB_GEN_n_0),
        .Q(sig_xfer_end_strb_imreg[2]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_end_strb_imreg_reg[3] 
       (.C(m00_axi_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(\sig_xfer_end_strb_imreg[3]_i_1_n_0 ),
        .Q(sig_xfer_end_strb_imreg[3]),
        .R(out));
  LUT5 #(
    .INIT(32'hFBBB0BBB)) 
    \sig_xfer_end_strb_reg[0]_i_1 
       (.I0(sig_xfer_end_strb_imreg[0]),
        .I1(sig_last_xfer_valid1_out),
        .I2(sig_xfer_len_eq_0_reg),
        .I3(sig_first_xfer),
        .I4(sig_xfer_strt_strb_imreg[0]),
        .O(\sig_xfer_end_strb_reg[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFBBB0BBB)) 
    \sig_xfer_end_strb_reg[1]_i_1 
       (.I0(sig_xfer_end_strb_imreg[1]),
        .I1(sig_last_xfer_valid1_out),
        .I2(sig_xfer_len_eq_0_reg),
        .I3(sig_first_xfer),
        .I4(sig_xfer_strt_strb_imreg[1]),
        .O(\sig_xfer_end_strb_reg[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFBBB0BBB)) 
    \sig_xfer_end_strb_reg[2]_i_1 
       (.I0(sig_xfer_end_strb_imreg[2]),
        .I1(sig_last_xfer_valid1_out),
        .I2(sig_xfer_len_eq_0_reg),
        .I3(sig_first_xfer),
        .I4(sig_xfer_strt_strb_imreg[2]),
        .O(\sig_xfer_end_strb_reg[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFF8)) 
    \sig_xfer_end_strb_reg[3]_i_2 
       (.I0(sig_xfer_reg_empty),
        .I1(sig_ld_xfer_reg),
        .I2(out),
        .I3(\sig_xfer_end_strb_reg_reg[0]_0 ),
        .O(\sig_xfer_end_strb_reg[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFBBB0BBB)) 
    \sig_xfer_end_strb_reg[3]_i_3 
       (.I0(sig_xfer_end_strb_imreg[3]),
        .I1(sig_last_xfer_valid1_out),
        .I2(sig_xfer_len_eq_0_reg),
        .I3(sig_first_xfer),
        .I4(sig_xfer_strt_strb_imreg[3]),
        .O(\sig_xfer_end_strb_reg[3]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_end_strb_reg_reg[0] 
       (.C(m00_axi_aclk),
        .CE(\sig_xfer_end_strb_reg[3]_i_2_n_0 ),
        .D(\sig_xfer_end_strb_reg[0]_i_1_n_0 ),
        .Q(\sig_next_last_strb_reg_reg[3] [0]),
        .R(sig_rdwr_reset_reg_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_end_strb_reg_reg[1] 
       (.C(m00_axi_aclk),
        .CE(\sig_xfer_end_strb_reg[3]_i_2_n_0 ),
        .D(\sig_xfer_end_strb_reg[1]_i_1_n_0 ),
        .Q(\sig_next_last_strb_reg_reg[3] [1]),
        .R(sig_rdwr_reset_reg_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_end_strb_reg_reg[2] 
       (.C(m00_axi_aclk),
        .CE(\sig_xfer_end_strb_reg[3]_i_2_n_0 ),
        .D(\sig_xfer_end_strb_reg[2]_i_1_n_0 ),
        .Q(\sig_next_last_strb_reg_reg[3] [2]),
        .R(sig_rdwr_reset_reg_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_end_strb_reg_reg[3] 
       (.C(m00_axi_aclk),
        .CE(\sig_xfer_end_strb_reg[3]_i_2_n_0 ),
        .D(\sig_xfer_end_strb_reg[3]_i_3_n_0 ),
        .Q(\sig_next_last_strb_reg_reg[3] [3]),
        .R(sig_rdwr_reset_reg_reg));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    sig_xfer_eof_reg_i_1
       (.I0(sig_input_eof_reg),
        .I1(sig_last_xfer_valid1_out),
        .O(sig_xfer_eof_reg0));
  FDRE #(
    .INIT(1'b0)) 
    sig_xfer_eof_reg_reg
       (.C(m00_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(sig_xfer_eof_reg0),
        .Q(sig_pcc2data_eof),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    sig_xfer_is_seq_reg_i_1
       (.I0(sig_last_xfer_valid1_out),
        .O(sig_xfer_is_seq_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_xfer_is_seq_reg_reg
       (.C(m00_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(sig_xfer_is_seq_reg_i_1_n_0),
        .Q(sig_pcc2data_sequential),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000000000011110)) 
    sig_xfer_len_eq_0_reg_i_1
       (.I0(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[4] ),
        .I1(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[5] ),
        .I2(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[1] ),
        .I3(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[0] ),
        .I4(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[2] ),
        .I5(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[3] ),
        .O(sig_xfer_len_eq_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_xfer_len_eq_0_reg_reg
       (.C(m00_axi_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(sig_xfer_len_eq_0),
        .Q(sig_xfer_len_eq_0_reg),
        .R(out));
  LUT3 #(
    .INIT(8'hA9)) 
    \sig_xfer_len_reg[0]_i_1 
       (.I0(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[2] ),
        .I1(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[0] ),
        .I2(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[1] ),
        .O(sig_byte_change_minus1[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hAAA9)) 
    \sig_xfer_len_reg[1]_i_1 
       (.I0(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[3] ),
        .I1(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[1] ),
        .I2(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[0] ),
        .I3(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[2] ),
        .O(sig_byte_change_minus1[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA9)) 
    \sig_xfer_len_reg[2]_i_1 
       (.I0(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[4] ),
        .I1(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[2] ),
        .I2(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[0] ),
        .I3(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[1] ),
        .I4(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[3] ),
        .O(sig_byte_change_minus1[4]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA9)) 
    \sig_xfer_len_reg[3]_i_1 
       (.I0(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[5] ),
        .I1(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[3] ),
        .I2(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[1] ),
        .I3(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[0] ),
        .I4(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[2] ),
        .I5(\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[4] ),
        .O(sig_byte_change_minus1[5]));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_len_reg_reg[0] 
       (.C(m00_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(sig_byte_change_minus1[2]),
        .Q(\sig_next_len_reg_reg[3] [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_len_reg_reg[1] 
       (.C(m00_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(sig_byte_change_minus1[3]),
        .Q(\sig_next_len_reg_reg[3] [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_len_reg_reg[2] 
       (.C(m00_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(sig_byte_change_minus1[4]),
        .Q(\sig_next_len_reg_reg[3] [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_len_reg_reg[3] 
       (.C(m00_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(sig_byte_change_minus1[5]),
        .Q(\sig_next_len_reg_reg[3] [3]),
        .R(SR));
  LUT2 #(
    .INIT(4'h8)) 
    sig_xfer_reg_empty_i_2
       (.I0(sig_xfer_reg_empty),
        .I1(sig_ld_xfer_reg),
        .O(sig_push_xfer_reg15_out));
  LUT6 #(
    .INIT(64'h00000000F3F200F2)) 
    sig_xfer_reg_empty_i_3
       (.I0(sig_cmd2dre_valid_reg_n_0),
        .I1(sig_pcc2data_cmd_valid),
        .I2(sig_wdc2pcc_cmd_ready),
        .I3(sig_pcc2addr_cmd_valid),
        .I4(sig_push_addr_reg1_out),
        .I5(sig_push_xfer_reg15_out),
        .O(\sig_xfer_end_strb_reg_reg[0]_0 ));
  FDSE #(
    .INIT(1'b0)) 
    sig_xfer_reg_empty_reg
       (.C(m00_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(1'b0),
        .Q(sig_xfer_reg_empty),
        .S(SR));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \sig_xfer_strt_strb_imreg[0]_i_1 
       (.I0(sig_strbgen_addr_reg[0]),
        .I1(sig_strbgen_addr_reg[1]),
        .O(\sig_xfer_strt_strb_imreg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h0000FFEB)) 
    \sig_xfer_strt_strb_imreg[1]_i_1 
       (.I0(\sig_strbgen_bytes_reg_reg_n_0_[2] ),
        .I1(sig_strbgen_addr_reg[0]),
        .I2(\sig_strbgen_bytes_reg_reg_n_0_[0] ),
        .I3(\sig_strbgen_bytes_reg_reg_n_0_[1] ),
        .I4(sig_strbgen_addr_reg[1]),
        .O(sig_xfer_strt_strb[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h77777621)) 
    \sig_xfer_strt_strb_imreg[2]_i_1 
       (.I0(sig_strbgen_addr_reg[1]),
        .I1(sig_strbgen_addr_reg[0]),
        .I2(\sig_strbgen_bytes_reg_reg_n_0_[0] ),
        .I3(\sig_strbgen_bytes_reg_reg_n_0_[1] ),
        .I4(\sig_strbgen_bytes_reg_reg_n_0_[2] ),
        .O(sig_xfer_strt_strb[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFFFFEA81)) 
    \sig_xfer_strt_strb_imreg[3]_i_1 
       (.I0(sig_strbgen_addr_reg[1]),
        .I1(\sig_strbgen_bytes_reg_reg_n_0_[0] ),
        .I2(sig_strbgen_addr_reg[0]),
        .I3(\sig_strbgen_bytes_reg_reg_n_0_[1] ),
        .I4(\sig_strbgen_bytes_reg_reg_n_0_[2] ),
        .O(\I_STRT_STRB_GEN/sig_strb_value17_in ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_strt_strb_imreg_reg[0] 
       (.C(m00_axi_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(\sig_xfer_strt_strb_imreg[0]_i_1_n_0 ),
        .Q(sig_xfer_strt_strb_imreg[0]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_strt_strb_imreg_reg[1] 
       (.C(m00_axi_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(sig_xfer_strt_strb[1]),
        .Q(sig_xfer_strt_strb_imreg[1]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_strt_strb_imreg_reg[2] 
       (.C(m00_axi_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(sig_xfer_strt_strb[2]),
        .Q(sig_xfer_strt_strb_imreg[2]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_strt_strb_imreg_reg[3] 
       (.C(m00_axi_aclk),
        .CE(sig_sm_ld_calc2_reg),
        .D(\I_STRT_STRB_GEN/sig_strb_value17_in ),
        .Q(sig_xfer_strt_strb_imreg[3]),
        .R(out));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \sig_xfer_strt_strb_reg[0]_i_1 
       (.I0(sig_xfer_strt_strb_imreg[0]),
        .I1(sig_first_xfer),
        .O(sig_xfer_strt_strb2use[0]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \sig_xfer_strt_strb_reg[1]_i_1 
       (.I0(sig_xfer_strt_strb_imreg[1]),
        .I1(sig_first_xfer),
        .O(sig_xfer_strt_strb2use[1]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \sig_xfer_strt_strb_reg[2]_i_1 
       (.I0(sig_xfer_strt_strb_imreg[2]),
        .I1(sig_first_xfer),
        .O(sig_xfer_strt_strb2use[2]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \sig_xfer_strt_strb_reg[3]_i_1 
       (.I0(sig_xfer_strt_strb_imreg[3]),
        .I1(sig_first_xfer),
        .O(sig_xfer_strt_strb2use[3]));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_strt_strb_reg_reg[0] 
       (.C(m00_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(sig_xfer_strt_strb2use[0]),
        .Q(\sig_next_strt_strb_reg_reg[3] [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_strt_strb_reg_reg[1] 
       (.C(m00_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(sig_xfer_strt_strb2use[1]),
        .Q(\sig_next_strt_strb_reg_reg[3] [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_strt_strb_reg_reg[2] 
       (.C(m00_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(sig_xfer_strt_strb2use[2]),
        .Q(\sig_next_strt_strb_reg_reg[3] [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_xfer_strt_strb_reg_reg[3] 
       (.C(m00_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(sig_xfer_strt_strb2use[3]),
        .Q(\sig_next_strt_strb_reg_reg[3] [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    sig_xfer_type_reg_reg
       (.C(m00_axi_aclk),
        .CE(sig_push_xfer_reg15_out),
        .D(sig_input_burst_type_reg),
        .Q(sig_pcc2addr_burst),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "axi_master_burst_rd_llink" *) 
module design_1_myip_burst_test_0_0_axi_master_burst_rd_llink
   (sig_wr_error_reg,
    out,
    sig_rdwr2llink_int_err,
    m00_axi_aclk);
  output sig_wr_error_reg;
  input out;
  input sig_rdwr2llink_int_err;
  input m00_axi_aclk;

  wire m00_axi_aclk;
  wire out;
  wire sig_rdwr2llink_int_err;
  wire sig_wr_error_reg;

  FDRE #(
    .INIT(1'b0)) 
    sig_rd_error_reg_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_rdwr2llink_int_err),
        .Q(sig_wr_error_reg),
        .R(out));
endmodule

(* ORIG_REF_NAME = "axi_master_burst_rd_wr_cntlr" *) 
module design_1_myip_burst_test_0_0_axi_master_burst_rd_wr_cntlr
   (sig_pcc2data_calc_error,
    sig_wsc2stat_status_valid,
    sig_wsc2stat_status,
    m00_axi_wvalid,
    m00_axi_wlast,
    sig_llink_busy_reg,
    m00_axi_arsize,
    m00_axi_arburst,
    m00_axi_awvalid,
    sig_doing_write_reg,
    sig_btt_cntr0,
    sig_calc_error_reg0,
    sig_cmd_full_reg_reg,
    sig_pcc_taking_command,
    \sig_xfer_end_strb_reg_reg[0] ,
    m00_axi_bready,
    sig_stat_error,
    \GEN_ADDR_32.sig_addr_cntr_lsh_reg[1] ,
    m00_axi_wdata,
    m00_axi_wstrb,
    m00_axi_araddr,
    m00_axi_arlen,
    out,
    m00_axi_aclk,
    SR,
    p_5_out,
    sig_wr_addr_valid_reg0,
    sig_cmd2all_doing_write,
    Q,
    sig_cmd2pcc_cmd_valid,
    sig_llink2cmd_wr_busy,
    ip2bus_inputs,
    m00_axi_wready,
    sig_btt_is_zero,
    sig_cmd_reset_reg_reg,
    sig_push_cmd_reg,
    D,
    sig_llink2wr_allow_addr_req,
    sig_status_reg_empty,
    sig_llink_busy_reg_0,
    m00_axi_bvalid,
    m00_axi_awready,
    ip2bus_mstwr_d,
    sig_cmd_type_req_reg,
    sig_rdwr_reset_reg_reg,
    m00_axi_bresp);
  output sig_pcc2data_calc_error;
  output sig_wsc2stat_status_valid;
  output [2:0]sig_wsc2stat_status;
  output m00_axi_wvalid;
  output m00_axi_wlast;
  output sig_llink_busy_reg;
  output [0:0]m00_axi_arsize;
  output [0:0]m00_axi_arburst;
  output m00_axi_awvalid;
  output sig_doing_write_reg;
  output [11:0]sig_btt_cntr0;
  output sig_calc_error_reg0;
  output [0:0]sig_cmd_full_reg_reg;
  output sig_pcc_taking_command;
  output \sig_xfer_end_strb_reg_reg[0] ;
  output m00_axi_bready;
  output sig_stat_error;
  output [1:0]\GEN_ADDR_32.sig_addr_cntr_lsh_reg[1] ;
  output [31:0]m00_axi_wdata;
  output [3:0]m00_axi_wstrb;
  output [31:0]m00_axi_araddr;
  output [3:0]m00_axi_arlen;
  input out;
  input m00_axi_aclk;
  input [0:0]SR;
  input p_5_out;
  input sig_wr_addr_valid_reg0;
  input sig_cmd2all_doing_write;
  input [29:0]Q;
  input sig_cmd2pcc_cmd_valid;
  input sig_llink2cmd_wr_busy;
  input [1:0]ip2bus_inputs;
  input m00_axi_wready;
  input sig_btt_is_zero;
  input sig_cmd_reset_reg_reg;
  input sig_push_cmd_reg;
  input [1:0]D;
  input sig_llink2wr_allow_addr_req;
  input sig_status_reg_empty;
  input sig_llink_busy_reg_0;
  input m00_axi_bvalid;
  input m00_axi_awready;
  input [31:0]ip2bus_mstwr_d;
  input [11:0]sig_cmd_type_req_reg;
  input sig_rdwr_reset_reg_reg;
  input [1:0]m00_axi_bresp;

  wire [1:0]D;
  wire [1:0]\GEN_ADDR_32.sig_addr_cntr_lsh_reg[1] ;
  wire \GEN_OMIT_STORE_FORWARD.I_DATA_CNTL_STATUS_FIFO/sig_inhibit_rdy_n ;
  wire \GEN_OMIT_STORE_FORWARD.I_DATA_CNTL_STATUS_FIFO/sig_init_reg ;
  wire I_MSTR_PCC_n_19;
  wire I_MSTR_PCC_n_20;
  wire I_MSTR_PCC_n_21;
  wire I_MSTR_PCC_n_22;
  wire I_MSTR_PCC_n_25;
  wire I_MSTR_PCC_n_26;
  wire I_MSTR_PCC_n_27;
  wire I_MSTR_PCC_n_28;
  wire I_MSTR_PCC_n_29;
  wire I_MSTR_PCC_n_30;
  wire I_MSTR_PCC_n_31;
  wire I_MSTR_PCC_n_32;
  wire I_MSTR_PCC_n_33;
  wire I_MSTR_PCC_n_34;
  wire I_MSTR_PCC_n_35;
  wire I_MSTR_PCC_n_36;
  wire I_MSTR_PCC_n_37;
  wire I_WR_DATA_CNTL_n_10;
  wire I_WR_DATA_CNTL_n_13;
  wire I_WR_DATA_CNTL_n_6;
  wire I_WR_DATA_CNTL_n_9;
  wire I_WR_STATUS_CNTLR_n_1;
  wire I_WR_STATUS_CNTLR_n_7;
  wire I_WR_STATUS_CNTLR_n_8;
  wire [29:0]Q;
  wire [0:0]SR;
  wire \i_/i_/i__carry__0_n_0 ;
  wire \i_/i_/i__carry__0_n_1 ;
  wire \i_/i_/i__carry__0_n_2 ;
  wire \i_/i_/i__carry__0_n_3 ;
  wire \i_/i_/i__carry__0_n_4 ;
  wire \i_/i_/i__carry__0_n_5 ;
  wire \i_/i_/i__carry__0_n_6 ;
  wire \i_/i_/i__carry__0_n_7 ;
  wire \i_/i_/i__carry__1_n_0 ;
  wire \i_/i_/i__carry__1_n_1 ;
  wire \i_/i_/i__carry__1_n_2 ;
  wire \i_/i_/i__carry__1_n_3 ;
  wire \i_/i_/i__carry__1_n_4 ;
  wire \i_/i_/i__carry__1_n_5 ;
  wire \i_/i_/i__carry__1_n_6 ;
  wire \i_/i_/i__carry__1_n_7 ;
  wire \i_/i_/i__carry__2_n_1 ;
  wire \i_/i_/i__carry__2_n_2 ;
  wire \i_/i_/i__carry__2_n_3 ;
  wire \i_/i_/i__carry__2_n_4 ;
  wire \i_/i_/i__carry__2_n_5 ;
  wire \i_/i_/i__carry__2_n_6 ;
  wire \i_/i_/i__carry__2_n_7 ;
  wire \i_/i_/i__carry_n_0 ;
  wire \i_/i_/i__carry_n_1 ;
  wire \i_/i_/i__carry_n_2 ;
  wire \i_/i_/i__carry_n_3 ;
  wire \i_/i_/i__carry_n_4 ;
  wire \i_/i_/i__carry_n_5 ;
  wire \i_/i_/i__carry_n_6 ;
  wire \i_/i_/i__carry_n_7 ;
  wire [1:0]ip2bus_inputs;
  wire [31:0]ip2bus_mstwr_d;
  wire m00_axi_aclk;
  wire [31:0]m00_axi_araddr;
  wire [0:0]m00_axi_arburst;
  wire [3:0]m00_axi_arlen;
  wire [0:0]m00_axi_arsize;
  wire m00_axi_awready;
  wire m00_axi_awvalid;
  wire m00_axi_bready;
  wire [1:0]m00_axi_bresp;
  wire m00_axi_bvalid;
  wire [31:0]m00_axi_wdata;
  wire m00_axi_wlast;
  wire m00_axi_wready;
  wire [3:0]m00_axi_wstrb;
  wire m00_axi_wvalid;
  wire out;
  wire p_0_in2_in;
  wire p_0_in2_in_0;
  wire p_0_in3_in;
  wire p_1_in;
  wire p_5_out;
  wire sig_addr2data_addr_posted;
  wire [11:0]sig_btt_cntr0;
  wire sig_btt_is_zero;
  wire sig_calc_error_reg0;
  wire sig_cmd2all_doing_write;
  wire sig_cmd2pcc_cmd_valid;
  wire [0:0]sig_cmd_full_reg_reg;
  wire sig_cmd_reset_reg_reg;
  wire [11:0]sig_cmd_type_req_reg;
  wire sig_data_reg_out_en;
  wire sig_doing_write_reg;
  wire sig_last_skid_mux_out;
  wire sig_last_skid_reg;
  wire sig_llink2cmd_wr_busy;
  wire sig_llink2wr_allow_addr_req;
  wire sig_llink_busy_reg;
  wire sig_llink_busy_reg_0;
  wire sig_next_calc_error_reg;
  wire [31:2]sig_pcc2addr_addr;
  wire [0:0]sig_pcc2addr_burst;
  wire sig_pcc2addr_cmd_valid;
  wire sig_pcc2data_calc_error;
  wire sig_pcc2data_cmd_cmplt;
  wire sig_pcc2data_cmd_valid;
  wire sig_pcc2data_dre_src_align;
  wire sig_pcc2data_eof;
  wire [3:0]sig_pcc2data_last_strb;
  wire [3:0]sig_pcc2data_len;
  wire [1:1]sig_pcc2data_saddr_lsb;
  wire sig_pcc2data_sequential;
  wire [3:0]sig_pcc2data_strt_strb;
  wire sig_pcc_taking_command;
  wire sig_push_addr_reg1_out;
  wire sig_push_cmd_reg;
  wire sig_push_to_wsc;
  wire sig_rdwr_reset_reg_reg;
  wire sig_stat_error;
  wire sig_status_reg_empty;
  wire [3:0]sig_strb_skid_mux_out;
  wire [3:0]sig_strb_skid_reg;
  wire sig_tlast_err_stop;
  wire sig_wdc2pcc_cmd_ready;
  wire sig_wdc2wrskid_wlast;
  wire [3:0]sig_wdc2wrskid_wstrb;
  wire sig_wdc2wsc_calc_err;
  wire sig_wdc2wsc_cmd_cmplt;
  wire sig_wdc2wsc_last_err;
  wire sig_wr_addr_valid_reg0;
  wire [31:0]sig_wrskid2wdc_tdata;
  wire sig_wrskid2wdc_tlast;
  wire sig_wrskid2wdc_tvalid;
  wire sig_wrskid2wdc_wready;
  wire [2:0]sig_wsc2stat_status;
  wire sig_wsc2stat_status_valid;
  wire \sig_xfer_end_strb_reg_reg[0] ;
  wire [3:3]\NLW_i_/i_/i__carry__2_CO_UNCONNECTED ;

  design_1_myip_burst_test_0_0_axi_master_burst_addr_cntl I_ADDR_CNTL
       (.\GEN_OMIT_STORE_FORWARD.sig_tlast_error_reg_reg (I_WR_DATA_CNTL_n_6),
        .Q({sig_pcc2addr_addr,sig_pcc2data_saddr_lsb,sig_pcc2data_dre_src_align}),
        .m00_axi_aclk(m00_axi_aclk),
        .m00_axi_araddr(m00_axi_araddr),
        .m00_axi_arburst(m00_axi_arburst),
        .m00_axi_arlen(m00_axi_arlen),
        .m00_axi_arsize(m00_axi_arsize),
        .m00_axi_awready(m00_axi_awready),
        .m00_axi_awvalid(m00_axi_awvalid),
        .out(sig_addr2data_addr_posted),
        .sig_cmd2all_doing_write(sig_cmd2all_doing_write),
        .sig_llink2wr_allow_addr_req(sig_llink2wr_allow_addr_req),
        .sig_pcc2addr_burst(sig_pcc2addr_burst),
        .sig_pcc2addr_cmd_valid(sig_pcc2addr_cmd_valid),
        .sig_pcc2data_calc_error(sig_pcc2data_calc_error),
        .sig_push_addr_reg1_out(sig_push_addr_reg1_out),
        .sig_rdwr_reset_reg_reg(out),
        .sig_wr_addr_valid_reg0(sig_wr_addr_valid_reg0),
        .\sig_xfer_len_reg_reg[3] (sig_pcc2data_len));
  design_1_myip_burst_test_0_0_axi_master_burst_pcc I_MSTR_PCC
       (.D(D),
        .DI(I_MSTR_PCC_n_37),
        .\GEN_ADDR_32.sig_addr_cntr_lsh_reg[1]_0 (\GEN_ADDR_32.sig_addr_cntr_lsh_reg[1] ),
        .\GEN_ADDR_32.sig_addr_cntr_msh_reg[11]_0 ({I_MSTR_PCC_n_29,I_MSTR_PCC_n_30,I_MSTR_PCC_n_31,I_MSTR_PCC_n_32}),
        .\GEN_ADDR_32.sig_addr_cntr_msh_reg[15]_0 ({I_MSTR_PCC_n_33,I_MSTR_PCC_n_34,I_MSTR_PCC_n_35,I_MSTR_PCC_n_36}),
        .\GEN_ADDR_32.sig_addr_cntr_msh_reg[7]_0 ({I_MSTR_PCC_n_25,I_MSTR_PCC_n_26,I_MSTR_PCC_n_27,I_MSTR_PCC_n_28}),
        .O({\i_/i_/i__carry_n_4 ,\i_/i_/i__carry_n_5 ,\i_/i_/i__carry_n_6 ,\i_/i_/i__carry_n_7 }),
        .Q(Q),
        .S({I_MSTR_PCC_n_19,I_MSTR_PCC_n_20,I_MSTR_PCC_n_21,I_MSTR_PCC_n_22}),
        .SR(SR),
        .m00_axi_aclk(m00_axi_aclk),
        .out(out),
        .p_1_in(p_1_in),
        .sig_btt_cntr0(sig_btt_cntr0),
        .sig_btt_is_zero(sig_btt_is_zero),
        .sig_cmd2pcc_cmd_valid(sig_cmd2pcc_cmd_valid),
        .sig_cmd_full_reg_reg(sig_cmd_full_reg_reg),
        .\sig_cmd_mst_addr_reg[23] ({\i_/i_/i__carry__0_n_4 ,\i_/i_/i__carry__0_n_5 ,\i_/i_/i__carry__0_n_6 ,\i_/i_/i__carry__0_n_7 }),
        .\sig_cmd_mst_addr_reg[27] ({\i_/i_/i__carry__1_n_4 ,\i_/i_/i__carry__1_n_5 ,\i_/i_/i__carry__1_n_6 ,\i_/i_/i__carry__1_n_7 }),
        .\sig_cmd_mst_addr_reg[31] ({\i_/i_/i__carry__2_n_4 ,\i_/i_/i__carry__2_n_5 ,\i_/i_/i__carry__2_n_6 ,\i_/i_/i__carry__2_n_7 }),
        .sig_cmd_reset_reg_reg(sig_cmd_reset_reg_reg),
        .sig_cmd_type_req_reg(sig_cmd_type_req_reg),
        .sig_input_reg_empty_reg_0(sig_calc_error_reg0),
        .\sig_next_addr_reg_reg[31] ({sig_pcc2addr_addr,sig_pcc2data_saddr_lsb,sig_pcc2data_dre_src_align}),
        .\sig_next_last_strb_reg_reg[3] (sig_pcc2data_last_strb),
        .\sig_next_len_reg_reg[3] (sig_pcc2data_len),
        .\sig_next_strt_strb_reg_reg[3] (sig_pcc2data_strt_strb),
        .sig_pcc2addr_burst(sig_pcc2addr_burst),
        .sig_pcc2addr_cmd_valid(sig_pcc2addr_cmd_valid),
        .sig_pcc2data_calc_error(sig_pcc2data_calc_error),
        .sig_pcc2data_cmd_cmplt(sig_pcc2data_cmd_cmplt),
        .sig_pcc2data_cmd_valid(sig_pcc2data_cmd_valid),
        .sig_pcc2data_eof(sig_pcc2data_eof),
        .sig_pcc2data_sequential(sig_pcc2data_sequential),
        .sig_pcc_taking_command(sig_pcc_taking_command),
        .sig_push_addr_reg1_out(sig_push_addr_reg1_out),
        .sig_push_cmd_reg(sig_push_cmd_reg),
        .sig_rdwr_reset_reg_reg(sig_rdwr_reset_reg_reg),
        .sig_wdc2pcc_cmd_ready(sig_wdc2pcc_cmd_ready),
        .\sig_xfer_end_strb_reg_reg[0]_0 (\sig_xfer_end_strb_reg_reg[0] ));
  design_1_myip_burst_test_0_0_axi_master_burst_skid_buf I_READ_STREAM_SKID_BUF
       (.m00_axi_aclk(m00_axi_aclk),
        .out(p_0_in2_in),
        .sig_init_reg(\GEN_OMIT_STORE_FORWARD.I_DATA_CNTL_STATUS_FIFO/sig_init_reg ),
        .sig_init_reg_reg(I_WR_STATUS_CNTLR_n_7),
        .sig_rdwr_reset_reg_reg(out));
  design_1_myip_burst_test_0_0_axi_master_burst_skid2mm_buf I_WRITE_MMAP_SKID_BUF
       (.D(sig_wdc2wrskid_wstrb),
        .Q(sig_wrskid2wdc_tdata),
        .m00_axi_aclk(m00_axi_aclk),
        .m00_axi_wdata(m00_axi_wdata),
        .m00_axi_wlast(m00_axi_wlast),
        .m00_axi_wready(m00_axi_wready),
        .m00_axi_wstrb(m00_axi_wstrb),
        .m00_axi_wvalid(m00_axi_wvalid),
        .out(p_0_in3_in),
        .\sig_data_reg_out_reg[31]_0 (sig_wrskid2wdc_wready),
        .sig_init_reg(\GEN_OMIT_STORE_FORWARD.I_DATA_CNTL_STATUS_FIFO/sig_init_reg ),
        .sig_last_skid_mux_out(sig_last_skid_mux_out),
        .sig_last_skid_reg(sig_last_skid_reg),
        .sig_m_valid_out_reg_0(I_WR_DATA_CNTL_n_10),
        .\sig_next_strt_strb_reg_reg[3] (sig_strb_skid_mux_out),
        .sig_rdwr_reset_reg_reg(out),
        .\sig_strb_reg_out_reg[3]_0 (sig_strb_skid_reg),
        .sig_wdc2wrskid_wlast(sig_wdc2wrskid_wlast));
  design_1_myip_burst_test_0_0_axi_master_burst_skid_buf_0 I_WRITE_STRM_SKID_BUF
       (.E(sig_data_reg_out_en),
        .\GEN_OMIT_STORE_FORWARD.sig_tlast_error_reg_reg (I_WR_DATA_CNTL_n_9),
        .Q(sig_wrskid2wdc_tdata),
        .ip2bus_inputs(ip2bus_inputs),
        .ip2bus_mstwr_d(ip2bus_mstwr_d),
        .m00_axi_aclk(m00_axi_aclk),
        .out(p_0_in2_in_0),
        .sig_init_reg(\GEN_OMIT_STORE_FORWARD.I_DATA_CNTL_STATUS_FIFO/sig_init_reg ),
        .sig_last_mmap_dbeat_reg_reg(sig_wrskid2wdc_tvalid),
        .sig_llink2cmd_wr_busy(sig_llink2cmd_wr_busy),
        .sig_llink_busy_reg(sig_llink_busy_reg),
        .sig_llink_busy_reg_0(sig_llink_busy_reg_0),
        .sig_rdwr_reset_reg_reg(out),
        .sig_wrskid2wdc_tlast(sig_wrskid2wdc_tlast));
  design_1_myip_burst_test_0_0_axi_master_burst_wrdata_cntl I_WR_DATA_CNTL
       (.D(sig_wdc2wrskid_wstrb),
        .E(sig_data_reg_out_en),
        .FIFO_Full_reg(I_WR_STATUS_CNTLR_n_1),
        .\GEN_OMIT_STORE_FORWARD.sig_tlast_err_stop_reg_0 (I_WR_DATA_CNTL_n_6),
        .in({sig_wdc2wsc_calc_err,sig_wdc2wsc_last_err,sig_wdc2wsc_cmd_cmplt}),
        .m00_axi_aclk(m00_axi_aclk),
        .out(out),
        .p_1_in(p_1_in),
        .sig_cmd2all_doing_write(sig_cmd2all_doing_write),
        .sig_inhibit_rdy_n(\GEN_OMIT_STORE_FORWARD.I_DATA_CNTL_STATUS_FIFO/sig_inhibit_rdy_n ),
        .sig_last_skid_mux_out(sig_last_skid_mux_out),
        .sig_last_skid_reg(sig_last_skid_reg),
        .sig_m_valid_dup_reg(p_0_in2_in_0),
        .sig_m_valid_out_reg(sig_wrskid2wdc_tvalid),
        .sig_next_calc_error_reg(sig_next_calc_error_reg),
        .sig_next_calc_error_reg_reg_0(I_WR_STATUS_CNTLR_n_8),
        .sig_pcc2data_calc_error(sig_pcc2data_calc_error),
        .sig_pcc2data_cmd_cmplt(sig_pcc2data_cmd_cmplt),
        .sig_pcc2data_eof(sig_pcc2data_eof),
        .sig_pcc2data_sequential(sig_pcc2data_sequential),
        .sig_posted_to_axi_reg(sig_addr2data_addr_posted),
        .sig_push_to_wsc(sig_push_to_wsc),
        .sig_s_ready_dup_reg(I_WR_DATA_CNTL_n_9),
        .sig_s_ready_dup_reg_0(I_WR_DATA_CNTL_n_10),
        .sig_s_ready_dup_reg_1(p_0_in3_in),
        .sig_s_ready_out_reg(sig_wrskid2wdc_wready),
        .\sig_strb_reg_out_reg[3] (sig_strb_skid_mux_out),
        .\sig_strb_skid_reg_reg[3] (sig_strb_skid_reg),
        .sig_tlast_err_stop(sig_tlast_err_stop),
        .sig_wdc2pcc_cmd_ready(sig_wdc2pcc_cmd_ready),
        .sig_wdc2wrskid_wlast(sig_wdc2wrskid_wlast),
        .\sig_wdc_statcnt_reg[2] (I_WR_DATA_CNTL_n_13),
        .sig_wrskid2wdc_tlast(sig_wrskid2wdc_tlast),
        .\sig_xfer_end_strb_reg_reg[3] (sig_pcc2data_last_strb),
        .\sig_xfer_len_reg_reg[3] (sig_pcc2data_len),
        .\sig_xfer_strt_strb_reg_reg[3] (sig_pcc2data_strt_strb));
  design_1_myip_burst_test_0_0_axi_master_burst_wr_status_cntl I_WR_STATUS_CNTLR
       (.\GEN_OMIT_STORE_FORWARD.sig_tlast_err_stop_reg (I_WR_DATA_CNTL_n_13),
        .\INFERRED_GEN.cnt_i_reg[0] (I_WR_STATUS_CNTLR_n_1),
        .in({sig_wdc2wsc_calc_err,sig_wdc2wsc_last_err,sig_wdc2wsc_cmd_cmplt}),
        .m00_axi_aclk(m00_axi_aclk),
        .m00_axi_bready(m00_axi_bready),
        .m00_axi_bresp(m00_axi_bresp),
        .m00_axi_bvalid(m00_axi_bvalid),
        .out(out),
        .p_5_out(p_5_out),
        .sig_cmd2all_doing_write(sig_cmd2all_doing_write),
        .sig_inhibit_rdy_n(\GEN_OMIT_STORE_FORWARD.I_DATA_CNTL_STATUS_FIFO/sig_inhibit_rdy_n ),
        .sig_init_reg(\GEN_OMIT_STORE_FORWARD.I_DATA_CNTL_STATUS_FIFO/sig_init_reg ),
        .sig_m_valid_dup_reg(p_0_in2_in),
        .sig_m_valid_out_reg(I_WR_STATUS_CNTLR_n_7),
        .sig_next_calc_error_reg(sig_next_calc_error_reg),
        .sig_next_calc_error_reg_reg(I_WR_STATUS_CNTLR_n_8),
        .sig_pcc2data_cmd_valid(sig_pcc2data_cmd_valid),
        .sig_push_to_wsc(sig_push_to_wsc),
        .sig_stat_error(sig_stat_error),
        .sig_status_reg_empty(sig_status_reg_empty),
        .sig_tlast_err_stop(sig_tlast_err_stop),
        .sig_wsc2stat_status(sig_wsc2stat_status),
        .sig_wsc2stat_status_valid(sig_wsc2stat_status_valid));
  CARRY4 \i_/i_/i__carry 
       (.CI(1'b0),
        .CO({\i_/i_/i__carry_n_0 ,\i_/i_/i__carry_n_1 ,\i_/i_/i__carry_n_2 ,\i_/i_/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,I_MSTR_PCC_n_37}),
        .O({\i_/i_/i__carry_n_4 ,\i_/i_/i__carry_n_5 ,\i_/i_/i__carry_n_6 ,\i_/i_/i__carry_n_7 }),
        .S({I_MSTR_PCC_n_19,I_MSTR_PCC_n_20,I_MSTR_PCC_n_21,I_MSTR_PCC_n_22}));
  CARRY4 \i_/i_/i__carry__0 
       (.CI(\i_/i_/i__carry_n_0 ),
        .CO({\i_/i_/i__carry__0_n_0 ,\i_/i_/i__carry__0_n_1 ,\i_/i_/i__carry__0_n_2 ,\i_/i_/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_/i_/i__carry__0_n_4 ,\i_/i_/i__carry__0_n_5 ,\i_/i_/i__carry__0_n_6 ,\i_/i_/i__carry__0_n_7 }),
        .S({I_MSTR_PCC_n_25,I_MSTR_PCC_n_26,I_MSTR_PCC_n_27,I_MSTR_PCC_n_28}));
  CARRY4 \i_/i_/i__carry__1 
       (.CI(\i_/i_/i__carry__0_n_0 ),
        .CO({\i_/i_/i__carry__1_n_0 ,\i_/i_/i__carry__1_n_1 ,\i_/i_/i__carry__1_n_2 ,\i_/i_/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_/i_/i__carry__1_n_4 ,\i_/i_/i__carry__1_n_5 ,\i_/i_/i__carry__1_n_6 ,\i_/i_/i__carry__1_n_7 }),
        .S({I_MSTR_PCC_n_29,I_MSTR_PCC_n_30,I_MSTR_PCC_n_31,I_MSTR_PCC_n_32}));
  CARRY4 \i_/i_/i__carry__2 
       (.CI(\i_/i_/i__carry__1_n_0 ),
        .CO({\NLW_i_/i_/i__carry__2_CO_UNCONNECTED [3],\i_/i_/i__carry__2_n_1 ,\i_/i_/i__carry__2_n_2 ,\i_/i_/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_/i_/i__carry__2_n_4 ,\i_/i_/i__carry__2_n_5 ,\i_/i_/i__carry__2_n_6 ,\i_/i_/i__carry__2_n_7 }),
        .S({I_MSTR_PCC_n_33,I_MSTR_PCC_n_34,I_MSTR_PCC_n_35,I_MSTR_PCC_n_36}));
  FDRE #(
    .INIT(1'b0)) 
    sig_doing_write_reg_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_cmd2all_doing_write),
        .Q(sig_doing_write_reg),
        .R(out));
endmodule

(* ORIG_REF_NAME = "axi_master_burst_reset" *) 
module design_1_myip_burst_test_0_0_axi_master_burst_reset
   (out,
    \INFERRED_GEN.cnt_i_reg[0] ,
    sig_llink_busy_reg,
    \sig_xfer_end_strb_reg_reg[3] ,
    SR,
    m00_axi_aclk,
    m00_axi_aresetn,
    sig_cmd2dre_valid_reg);
  output out;
  output \INFERRED_GEN.cnt_i_reg[0] ;
  output sig_llink_busy_reg;
  output \sig_xfer_end_strb_reg_reg[3] ;
  output [0:0]SR;
  input m00_axi_aclk;
  input m00_axi_aresetn;
  input sig_cmd2dre_valid_reg;

  wire [0:0]SR;
  wire m00_axi_aclk;
  wire m00_axi_aresetn;
  wire sig_axi_por2rst__0;
  wire sig_axi_por2rst_out;
  wire sig_axi_por2rst_out_i_2_n_0;
  wire sig_axi_por_reg1;
  wire sig_axi_por_reg2;
  wire sig_axi_por_reg3;
  wire sig_axi_por_reg4;
  wire sig_axi_por_reg5;
  wire sig_axi_por_reg6;
  wire sig_axi_por_reg7;
  wire sig_axi_por_reg8;
  wire sig_cmd2dre_valid_reg;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire sig_cmd_reset_reg;
  wire sig_cmd_reset_reg_i_1_n_0;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire sig_llink_reset_reg;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire sig_rdwr_reset_reg;
  wire \sig_xfer_end_strb_reg_reg[3] ;

  assign \INFERRED_GEN.cnt_i_reg[0]  = sig_rdwr_reset_reg;
  assign out = sig_cmd_reset_reg;
  assign sig_llink_busy_reg = sig_llink_reset_reg;
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    sig_axi_por2rst_out_i_1
       (.I0(sig_axi_por_reg4),
        .I1(sig_axi_por_reg5),
        .I2(sig_axi_por_reg3),
        .I3(sig_axi_por_reg2),
        .I4(sig_axi_por2rst_out_i_2_n_0),
        .O(sig_axi_por2rst__0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    sig_axi_por2rst_out_i_2
       (.I0(sig_axi_por_reg7),
        .I1(sig_axi_por_reg6),
        .I2(sig_axi_por_reg1),
        .I3(sig_axi_por_reg8),
        .O(sig_axi_por2rst_out_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_axi_por2rst_out_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_axi_por2rst__0),
        .Q(sig_axi_por2rst_out),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    sig_axi_por_reg1_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(1'b1),
        .Q(sig_axi_por_reg1),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    sig_axi_por_reg2_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_axi_por_reg1),
        .Q(sig_axi_por_reg2),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    sig_axi_por_reg3_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_axi_por_reg2),
        .Q(sig_axi_por_reg3),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    sig_axi_por_reg4_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_axi_por_reg3),
        .Q(sig_axi_por_reg4),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    sig_axi_por_reg5_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_axi_por_reg4),
        .Q(sig_axi_por_reg5),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    sig_axi_por_reg6_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_axi_por_reg5),
        .Q(sig_axi_por_reg6),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    sig_axi_por_reg7_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_axi_por_reg6),
        .Q(sig_axi_por_reg7),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    sig_axi_por_reg8_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_axi_por_reg7),
        .Q(sig_axi_por_reg8),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hB)) 
    sig_cmd_reset_reg_i_1
       (.I0(sig_axi_por2rst_out),
        .I1(m00_axi_aresetn),
        .O(sig_cmd_reset_reg_i_1_n_0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    sig_cmd_reset_reg_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_cmd_reset_reg_i_1_n_0),
        .Q(sig_cmd_reset_reg),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    sig_llink_reset_reg_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_cmd_reset_reg_i_1_n_0),
        .Q(sig_llink_reset_reg),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    sig_rdwr_reset_reg_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_cmd_reset_reg_i_1_n_0),
        .Q(sig_rdwr_reset_reg),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hE)) 
    \sig_xfer_end_strb_reg[3]_i_1 
       (.I0(sig_rdwr_reset_reg),
        .I1(sig_cmd2dre_valid_reg),
        .O(\sig_xfer_end_strb_reg_reg[3] ));
  LUT2 #(
    .INIT(4'hE)) 
    sig_xfer_reg_empty_i_1
       (.I0(sig_rdwr_reset_reg),
        .I1(sig_cmd2dre_valid_reg),
        .O(SR));
endmodule

(* ORIG_REF_NAME = "axi_master_burst_skid2mm_buf" *) 
module design_1_myip_burst_test_0_0_axi_master_burst_skid2mm_buf
   (out,
    \sig_data_reg_out_reg[31]_0 ,
    m00_axi_wvalid,
    sig_last_skid_reg,
    m00_axi_wlast,
    m00_axi_wdata,
    \sig_strb_reg_out_reg[3]_0 ,
    m00_axi_wstrb,
    m00_axi_aclk,
    sig_rdwr_reset_reg_reg,
    sig_wdc2wrskid_wlast,
    sig_last_skid_mux_out,
    m00_axi_wready,
    sig_init_reg,
    sig_m_valid_out_reg_0,
    Q,
    D,
    \sig_next_strt_strb_reg_reg[3] );
  output out;
  output \sig_data_reg_out_reg[31]_0 ;
  output m00_axi_wvalid;
  output sig_last_skid_reg;
  output m00_axi_wlast;
  output [31:0]m00_axi_wdata;
  output [3:0]\sig_strb_reg_out_reg[3]_0 ;
  output [3:0]m00_axi_wstrb;
  input m00_axi_aclk;
  input sig_rdwr_reset_reg_reg;
  input sig_wdc2wrskid_wlast;
  input sig_last_skid_mux_out;
  input m00_axi_wready;
  input sig_init_reg;
  input sig_m_valid_out_reg_0;
  input [31:0]Q;
  input [3:0]D;
  input [3:0]\sig_next_strt_strb_reg_reg[3] ;

  wire [3:0]D;
  wire [31:0]Q;
  wire m00_axi_aclk;
  wire [31:0]m00_axi_wdata;
  wire m00_axi_wlast;
  wire m00_axi_wready;
  wire [3:0]m00_axi_wstrb;
  wire sig_data_reg_out_en;
  wire [31:0]sig_data_skid_mux_out;
  wire [31:0]sig_data_skid_reg;
  wire sig_init_reg;
  wire sig_last_skid_mux_out;
  wire sig_last_skid_reg;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire sig_m_valid_dup;
  wire sig_m_valid_dup_i_1__0_n_0;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire sig_m_valid_out;
  wire sig_m_valid_out_reg_0;
  wire [3:0]\sig_next_strt_strb_reg_reg[3] ;
  wire sig_rdwr_reset_reg_reg;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire sig_s_ready_dup;
  wire sig_s_ready_dup_i_1__0_n_0;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire sig_s_ready_out;
  wire [3:0]\sig_strb_reg_out_reg[3]_0 ;
  wire sig_wdc2wrskid_wlast;

  assign m00_axi_wvalid = sig_m_valid_out;
  assign out = sig_s_ready_dup;
  assign \sig_data_reg_out_reg[31]_0  = sig_s_ready_out;
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[0]_i_1 
       (.I0(Q[0]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[0]),
        .O(sig_data_skid_mux_out[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[10]_i_1 
       (.I0(Q[10]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[10]),
        .O(sig_data_skid_mux_out[10]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[11]_i_1 
       (.I0(Q[11]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[11]),
        .O(sig_data_skid_mux_out[11]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[12]_i_1 
       (.I0(Q[12]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[12]),
        .O(sig_data_skid_mux_out[12]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[13]_i_1 
       (.I0(Q[13]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[13]),
        .O(sig_data_skid_mux_out[13]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[14]_i_1 
       (.I0(Q[14]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[14]),
        .O(sig_data_skid_mux_out[14]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[15]_i_1 
       (.I0(Q[15]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[15]),
        .O(sig_data_skid_mux_out[15]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[16]_i_1 
       (.I0(Q[16]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[16]),
        .O(sig_data_skid_mux_out[16]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[17]_i_1 
       (.I0(Q[17]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[17]),
        .O(sig_data_skid_mux_out[17]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[18]_i_1 
       (.I0(Q[18]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[18]),
        .O(sig_data_skid_mux_out[18]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[19]_i_1 
       (.I0(Q[19]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[19]),
        .O(sig_data_skid_mux_out[19]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[1]_i_1 
       (.I0(Q[1]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[1]),
        .O(sig_data_skid_mux_out[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[20]_i_1 
       (.I0(Q[20]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[20]),
        .O(sig_data_skid_mux_out[20]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[21]_i_1 
       (.I0(Q[21]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[21]),
        .O(sig_data_skid_mux_out[21]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[22]_i_1 
       (.I0(Q[22]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[22]),
        .O(sig_data_skid_mux_out[22]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[23]_i_1 
       (.I0(Q[23]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[23]),
        .O(sig_data_skid_mux_out[23]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[24]_i_1 
       (.I0(Q[24]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[24]),
        .O(sig_data_skid_mux_out[24]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[25]_i_1 
       (.I0(Q[25]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[25]),
        .O(sig_data_skid_mux_out[25]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[26]_i_1 
       (.I0(Q[26]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[26]),
        .O(sig_data_skid_mux_out[26]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[27]_i_1 
       (.I0(Q[27]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[27]),
        .O(sig_data_skid_mux_out[27]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[28]_i_1 
       (.I0(Q[28]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[28]),
        .O(sig_data_skid_mux_out[28]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[29]_i_1 
       (.I0(Q[29]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[29]),
        .O(sig_data_skid_mux_out[29]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[2]_i_1 
       (.I0(Q[2]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[2]),
        .O(sig_data_skid_mux_out[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[30]_i_1 
       (.I0(Q[30]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[30]),
        .O(sig_data_skid_mux_out[30]));
  LUT2 #(
    .INIT(4'hB)) 
    \sig_data_reg_out[31]_i_1__0 
       (.I0(m00_axi_wready),
        .I1(sig_m_valid_dup),
        .O(sig_data_reg_out_en));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[31]_i_2 
       (.I0(Q[31]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[31]),
        .O(sig_data_skid_mux_out[31]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[3]_i_1 
       (.I0(Q[3]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[3]),
        .O(sig_data_skid_mux_out[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[4]_i_1 
       (.I0(Q[4]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[4]),
        .O(sig_data_skid_mux_out[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[5]_i_1 
       (.I0(Q[5]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[5]),
        .O(sig_data_skid_mux_out[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[6]_i_1 
       (.I0(Q[6]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[6]),
        .O(sig_data_skid_mux_out[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[7]_i_1 
       (.I0(Q[7]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[7]),
        .O(sig_data_skid_mux_out[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[8]_i_1 
       (.I0(Q[8]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[8]),
        .O(sig_data_skid_mux_out[8]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[9]_i_1 
       (.I0(Q[9]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[9]),
        .O(sig_data_skid_mux_out[9]));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[0] 
       (.C(m00_axi_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[0]),
        .Q(m00_axi_wdata[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[10] 
       (.C(m00_axi_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[10]),
        .Q(m00_axi_wdata[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[11] 
       (.C(m00_axi_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[11]),
        .Q(m00_axi_wdata[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[12] 
       (.C(m00_axi_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[12]),
        .Q(m00_axi_wdata[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[13] 
       (.C(m00_axi_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[13]),
        .Q(m00_axi_wdata[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[14] 
       (.C(m00_axi_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[14]),
        .Q(m00_axi_wdata[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[15] 
       (.C(m00_axi_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[15]),
        .Q(m00_axi_wdata[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[16] 
       (.C(m00_axi_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[16]),
        .Q(m00_axi_wdata[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[17] 
       (.C(m00_axi_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[17]),
        .Q(m00_axi_wdata[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[18] 
       (.C(m00_axi_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[18]),
        .Q(m00_axi_wdata[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[19] 
       (.C(m00_axi_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[19]),
        .Q(m00_axi_wdata[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[1] 
       (.C(m00_axi_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[1]),
        .Q(m00_axi_wdata[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[20] 
       (.C(m00_axi_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[20]),
        .Q(m00_axi_wdata[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[21] 
       (.C(m00_axi_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[21]),
        .Q(m00_axi_wdata[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[22] 
       (.C(m00_axi_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[22]),
        .Q(m00_axi_wdata[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[23] 
       (.C(m00_axi_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[23]),
        .Q(m00_axi_wdata[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[24] 
       (.C(m00_axi_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[24]),
        .Q(m00_axi_wdata[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[25] 
       (.C(m00_axi_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[25]),
        .Q(m00_axi_wdata[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[26] 
       (.C(m00_axi_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[26]),
        .Q(m00_axi_wdata[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[27] 
       (.C(m00_axi_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[27]),
        .Q(m00_axi_wdata[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[28] 
       (.C(m00_axi_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[28]),
        .Q(m00_axi_wdata[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[29] 
       (.C(m00_axi_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[29]),
        .Q(m00_axi_wdata[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[2] 
       (.C(m00_axi_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[2]),
        .Q(m00_axi_wdata[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[30] 
       (.C(m00_axi_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[30]),
        .Q(m00_axi_wdata[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[31] 
       (.C(m00_axi_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[31]),
        .Q(m00_axi_wdata[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[3] 
       (.C(m00_axi_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[3]),
        .Q(m00_axi_wdata[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[4] 
       (.C(m00_axi_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[4]),
        .Q(m00_axi_wdata[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[5] 
       (.C(m00_axi_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[5]),
        .Q(m00_axi_wdata[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[6] 
       (.C(m00_axi_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[6]),
        .Q(m00_axi_wdata[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[7] 
       (.C(m00_axi_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[7]),
        .Q(m00_axi_wdata[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[8] 
       (.C(m00_axi_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[8]),
        .Q(m00_axi_wdata[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[9] 
       (.C(m00_axi_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[9]),
        .Q(m00_axi_wdata[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[0] 
       (.C(m00_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(Q[0]),
        .Q(sig_data_skid_reg[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[10] 
       (.C(m00_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(Q[10]),
        .Q(sig_data_skid_reg[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[11] 
       (.C(m00_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(Q[11]),
        .Q(sig_data_skid_reg[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[12] 
       (.C(m00_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(Q[12]),
        .Q(sig_data_skid_reg[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[13] 
       (.C(m00_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(Q[13]),
        .Q(sig_data_skid_reg[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[14] 
       (.C(m00_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(Q[14]),
        .Q(sig_data_skid_reg[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[15] 
       (.C(m00_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(Q[15]),
        .Q(sig_data_skid_reg[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[16] 
       (.C(m00_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(Q[16]),
        .Q(sig_data_skid_reg[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[17] 
       (.C(m00_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(Q[17]),
        .Q(sig_data_skid_reg[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[18] 
       (.C(m00_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(Q[18]),
        .Q(sig_data_skid_reg[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[19] 
       (.C(m00_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(Q[19]),
        .Q(sig_data_skid_reg[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[1] 
       (.C(m00_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(Q[1]),
        .Q(sig_data_skid_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[20] 
       (.C(m00_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(Q[20]),
        .Q(sig_data_skid_reg[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[21] 
       (.C(m00_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(Q[21]),
        .Q(sig_data_skid_reg[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[22] 
       (.C(m00_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(Q[22]),
        .Q(sig_data_skid_reg[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[23] 
       (.C(m00_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(Q[23]),
        .Q(sig_data_skid_reg[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[24] 
       (.C(m00_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(Q[24]),
        .Q(sig_data_skid_reg[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[25] 
       (.C(m00_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(Q[25]),
        .Q(sig_data_skid_reg[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[26] 
       (.C(m00_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(Q[26]),
        .Q(sig_data_skid_reg[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[27] 
       (.C(m00_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(Q[27]),
        .Q(sig_data_skid_reg[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[28] 
       (.C(m00_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(Q[28]),
        .Q(sig_data_skid_reg[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[29] 
       (.C(m00_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(Q[29]),
        .Q(sig_data_skid_reg[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[2] 
       (.C(m00_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(Q[2]),
        .Q(sig_data_skid_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[30] 
       (.C(m00_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(Q[30]),
        .Q(sig_data_skid_reg[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[31] 
       (.C(m00_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(Q[31]),
        .Q(sig_data_skid_reg[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[3] 
       (.C(m00_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(Q[3]),
        .Q(sig_data_skid_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[4] 
       (.C(m00_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(Q[4]),
        .Q(sig_data_skid_reg[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[5] 
       (.C(m00_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(Q[5]),
        .Q(sig_data_skid_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[6] 
       (.C(m00_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(Q[6]),
        .Q(sig_data_skid_reg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[7] 
       (.C(m00_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(Q[7]),
        .Q(sig_data_skid_reg[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[8] 
       (.C(m00_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(Q[8]),
        .Q(sig_data_skid_reg[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[9] 
       (.C(m00_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(Q[9]),
        .Q(sig_data_skid_reg[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    sig_last_reg_out_reg
       (.C(m00_axi_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_last_skid_mux_out),
        .Q(m00_axi_wlast),
        .R(sig_rdwr_reset_reg_reg));
  FDRE #(
    .INIT(1'b0)) 
    sig_last_skid_reg_reg
       (.C(m00_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(sig_wdc2wrskid_wlast),
        .Q(sig_last_skid_reg),
        .R(sig_rdwr_reset_reg_reg));
  LUT6 #(
    .INIT(64'h0010101011111111)) 
    sig_m_valid_dup_i_1__0
       (.I0(sig_init_reg),
        .I1(sig_rdwr_reset_reg_reg),
        .I2(sig_m_valid_dup),
        .I3(sig_s_ready_dup),
        .I4(m00_axi_wready),
        .I5(sig_m_valid_out_reg_0),
        .O(sig_m_valid_dup_i_1__0_n_0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    sig_m_valid_dup_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_m_valid_dup_i_1__0_n_0),
        .Q(sig_m_valid_dup),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    sig_m_valid_out_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_m_valid_dup_i_1__0_n_0),
        .Q(sig_m_valid_out),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFEFEEEFE)) 
    sig_s_ready_dup_i_1__0
       (.I0(m00_axi_wready),
        .I1(sig_init_reg),
        .I2(sig_s_ready_dup),
        .I3(sig_m_valid_dup),
        .I4(sig_m_valid_out_reg_0),
        .O(sig_s_ready_dup_i_1__0_n_0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    sig_s_ready_dup_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_s_ready_dup_i_1__0_n_0),
        .Q(sig_s_ready_dup),
        .R(sig_rdwr_reset_reg_reg));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    sig_s_ready_out_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_s_ready_dup_i_1__0_n_0),
        .Q(sig_s_ready_out),
        .R(sig_rdwr_reset_reg_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[0] 
       (.C(m00_axi_aclk),
        .CE(sig_data_reg_out_en),
        .D(\sig_next_strt_strb_reg_reg[3] [0]),
        .Q(m00_axi_wstrb[0]),
        .R(sig_rdwr_reset_reg_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[1] 
       (.C(m00_axi_aclk),
        .CE(sig_data_reg_out_en),
        .D(\sig_next_strt_strb_reg_reg[3] [1]),
        .Q(m00_axi_wstrb[1]),
        .R(sig_rdwr_reset_reg_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[2] 
       (.C(m00_axi_aclk),
        .CE(sig_data_reg_out_en),
        .D(\sig_next_strt_strb_reg_reg[3] [2]),
        .Q(m00_axi_wstrb[2]),
        .R(sig_rdwr_reset_reg_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[3] 
       (.C(m00_axi_aclk),
        .CE(sig_data_reg_out_en),
        .D(\sig_next_strt_strb_reg_reg[3] [3]),
        .Q(m00_axi_wstrb[3]),
        .R(sig_rdwr_reset_reg_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[0] 
       (.C(m00_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(D[0]),
        .Q(\sig_strb_reg_out_reg[3]_0 [0]),
        .R(sig_rdwr_reset_reg_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[1] 
       (.C(m00_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(D[1]),
        .Q(\sig_strb_reg_out_reg[3]_0 [1]),
        .R(sig_rdwr_reset_reg_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[2] 
       (.C(m00_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(D[2]),
        .Q(\sig_strb_reg_out_reg[3]_0 [2]),
        .R(sig_rdwr_reset_reg_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[3] 
       (.C(m00_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(D[3]),
        .Q(\sig_strb_reg_out_reg[3]_0 [3]),
        .R(sig_rdwr_reset_reg_reg));
endmodule

(* ORIG_REF_NAME = "axi_master_burst_skid_buf" *) 
module design_1_myip_burst_test_0_0_axi_master_burst_skid_buf
   (out,
    sig_init_reg_reg,
    m00_axi_aclk,
    sig_rdwr_reset_reg_reg,
    sig_init_reg);
  output out;
  input sig_init_reg_reg;
  input m00_axi_aclk;
  input sig_rdwr_reset_reg_reg;
  input sig_init_reg;

  wire m00_axi_aclk;
  wire sig_init_reg;
  wire sig_init_reg_reg;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire sig_m_valid_dup;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire sig_m_valid_out;
  wire sig_rdwr_reset_reg_reg;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire sig_s_ready_dup;
  wire sig_s_ready_dup_i_1__1_n_0;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire sig_s_ready_out;

  assign out = sig_m_valid_dup;
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    sig_m_valid_dup_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_init_reg_reg),
        .Q(sig_m_valid_dup),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    sig_m_valid_out_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_init_reg_reg),
        .Q(sig_m_valid_out),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hE)) 
    sig_s_ready_dup_i_1__1
       (.I0(sig_s_ready_dup),
        .I1(sig_init_reg),
        .O(sig_s_ready_dup_i_1__1_n_0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    sig_s_ready_dup_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_s_ready_dup_i_1__1_n_0),
        .Q(sig_s_ready_dup),
        .R(sig_rdwr_reset_reg_reg));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    sig_s_ready_out_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_s_ready_dup_i_1__1_n_0),
        .Q(sig_s_ready_out),
        .R(sig_rdwr_reset_reg_reg));
endmodule

(* ORIG_REF_NAME = "axi_master_burst_skid_buf" *) 
module design_1_myip_burst_test_0_0_axi_master_burst_skid_buf_0
   (out,
    sig_llink_busy_reg,
    sig_last_mmap_dbeat_reg_reg,
    sig_wrskid2wdc_tlast,
    Q,
    m00_axi_aclk,
    sig_rdwr_reset_reg_reg,
    \GEN_OMIT_STORE_FORWARD.sig_tlast_error_reg_reg ,
    sig_llink2cmd_wr_busy,
    ip2bus_inputs,
    sig_init_reg,
    E,
    sig_llink_busy_reg_0,
    ip2bus_mstwr_d);
  output out;
  output sig_llink_busy_reg;
  output sig_last_mmap_dbeat_reg_reg;
  output sig_wrskid2wdc_tlast;
  output [31:0]Q;
  input m00_axi_aclk;
  input sig_rdwr_reset_reg_reg;
  input \GEN_OMIT_STORE_FORWARD.sig_tlast_error_reg_reg ;
  input sig_llink2cmd_wr_busy;
  input [1:0]ip2bus_inputs;
  input sig_init_reg;
  input [0:0]E;
  input sig_llink_busy_reg_0;
  input [31:0]ip2bus_mstwr_d;

  wire [0:0]E;
  wire \GEN_OMIT_STORE_FORWARD.sig_tlast_error_reg_reg ;
  wire [31:0]Q;
  wire [1:0]ip2bus_inputs;
  wire [31:0]ip2bus_mstwr_d;
  wire m00_axi_aclk;
  wire [31:0]sig_data_skid_mux_out;
  wire [31:0]sig_data_skid_reg;
  wire sig_init_reg;
  wire sig_last_reg_out_i_1__0_n_0;
  wire sig_last_skid_reg;
  wire sig_llink2cmd_wr_busy;
  wire sig_llink2wr_strm_tlast;
  wire sig_llink_busy_reg_0;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire sig_m_valid_dup;
  wire sig_m_valid_dup_i_1_n_0;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire sig_m_valid_out;
  wire sig_rdwr_reset_reg_reg;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire sig_s_ready_dup;
  wire sig_s_ready_dup_i_1_n_0;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire sig_s_ready_out;
  wire sig_wrskid2wdc_tlast;

  assign out = sig_m_valid_dup;
  assign sig_last_mmap_dbeat_reg_reg = sig_m_valid_out;
  assign sig_llink_busy_reg = sig_s_ready_out;
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[0]_i_1__0 
       (.I0(ip2bus_mstwr_d[0]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[0]),
        .O(sig_data_skid_mux_out[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[10]_i_1__0 
       (.I0(ip2bus_mstwr_d[10]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[10]),
        .O(sig_data_skid_mux_out[10]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[11]_i_1__0 
       (.I0(ip2bus_mstwr_d[11]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[11]),
        .O(sig_data_skid_mux_out[11]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[12]_i_1__0 
       (.I0(ip2bus_mstwr_d[12]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[12]),
        .O(sig_data_skid_mux_out[12]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[13]_i_1__0 
       (.I0(ip2bus_mstwr_d[13]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[13]),
        .O(sig_data_skid_mux_out[13]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[14]_i_1__0 
       (.I0(ip2bus_mstwr_d[14]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[14]),
        .O(sig_data_skid_mux_out[14]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[15]_i_1__0 
       (.I0(ip2bus_mstwr_d[15]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[15]),
        .O(sig_data_skid_mux_out[15]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[16]_i_1__0 
       (.I0(ip2bus_mstwr_d[16]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[16]),
        .O(sig_data_skid_mux_out[16]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[17]_i_1__0 
       (.I0(ip2bus_mstwr_d[17]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[17]),
        .O(sig_data_skid_mux_out[17]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[18]_i_1__0 
       (.I0(ip2bus_mstwr_d[18]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[18]),
        .O(sig_data_skid_mux_out[18]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[19]_i_1__0 
       (.I0(ip2bus_mstwr_d[19]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[19]),
        .O(sig_data_skid_mux_out[19]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[1]_i_1__0 
       (.I0(ip2bus_mstwr_d[1]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[1]),
        .O(sig_data_skid_mux_out[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[20]_i_1__0 
       (.I0(ip2bus_mstwr_d[20]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[20]),
        .O(sig_data_skid_mux_out[20]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[21]_i_1__0 
       (.I0(ip2bus_mstwr_d[21]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[21]),
        .O(sig_data_skid_mux_out[21]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[22]_i_1__0 
       (.I0(ip2bus_mstwr_d[22]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[22]),
        .O(sig_data_skid_mux_out[22]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[23]_i_1__0 
       (.I0(ip2bus_mstwr_d[23]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[23]),
        .O(sig_data_skid_mux_out[23]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[24]_i_1__0 
       (.I0(ip2bus_mstwr_d[24]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[24]),
        .O(sig_data_skid_mux_out[24]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[25]_i_1__0 
       (.I0(ip2bus_mstwr_d[25]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[25]),
        .O(sig_data_skid_mux_out[25]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[26]_i_1__0 
       (.I0(ip2bus_mstwr_d[26]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[26]),
        .O(sig_data_skid_mux_out[26]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[27]_i_1__0 
       (.I0(ip2bus_mstwr_d[27]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[27]),
        .O(sig_data_skid_mux_out[27]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[28]_i_1__0 
       (.I0(ip2bus_mstwr_d[28]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[28]),
        .O(sig_data_skid_mux_out[28]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[29]_i_1__0 
       (.I0(ip2bus_mstwr_d[29]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[29]),
        .O(sig_data_skid_mux_out[29]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[2]_i_1__0 
       (.I0(ip2bus_mstwr_d[2]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[2]),
        .O(sig_data_skid_mux_out[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[30]_i_1__0 
       (.I0(ip2bus_mstwr_d[30]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[30]),
        .O(sig_data_skid_mux_out[30]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[31]_i_2__0 
       (.I0(ip2bus_mstwr_d[31]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[31]),
        .O(sig_data_skid_mux_out[31]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[3]_i_1__0 
       (.I0(ip2bus_mstwr_d[3]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[3]),
        .O(sig_data_skid_mux_out[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[4]_i_1__0 
       (.I0(ip2bus_mstwr_d[4]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[4]),
        .O(sig_data_skid_mux_out[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[5]_i_1__0 
       (.I0(ip2bus_mstwr_d[5]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[5]),
        .O(sig_data_skid_mux_out[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[6]_i_1__0 
       (.I0(ip2bus_mstwr_d[6]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[6]),
        .O(sig_data_skid_mux_out[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[7]_i_1__0 
       (.I0(ip2bus_mstwr_d[7]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[7]),
        .O(sig_data_skid_mux_out[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[8]_i_1__0 
       (.I0(ip2bus_mstwr_d[8]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[8]),
        .O(sig_data_skid_mux_out[8]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[9]_i_1__0 
       (.I0(ip2bus_mstwr_d[9]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[9]),
        .O(sig_data_skid_mux_out[9]));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[0] 
       (.C(m00_axi_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[10] 
       (.C(m00_axi_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[10]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[11] 
       (.C(m00_axi_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[11]),
        .Q(Q[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[12] 
       (.C(m00_axi_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[12]),
        .Q(Q[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[13] 
       (.C(m00_axi_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[13]),
        .Q(Q[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[14] 
       (.C(m00_axi_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[14]),
        .Q(Q[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[15] 
       (.C(m00_axi_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[15]),
        .Q(Q[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[16] 
       (.C(m00_axi_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[16]),
        .Q(Q[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[17] 
       (.C(m00_axi_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[17]),
        .Q(Q[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[18] 
       (.C(m00_axi_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[18]),
        .Q(Q[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[19] 
       (.C(m00_axi_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[19]),
        .Q(Q[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[1] 
       (.C(m00_axi_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[20] 
       (.C(m00_axi_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[20]),
        .Q(Q[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[21] 
       (.C(m00_axi_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[21]),
        .Q(Q[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[22] 
       (.C(m00_axi_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[22]),
        .Q(Q[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[23] 
       (.C(m00_axi_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[23]),
        .Q(Q[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[24] 
       (.C(m00_axi_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[24]),
        .Q(Q[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[25] 
       (.C(m00_axi_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[25]),
        .Q(Q[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[26] 
       (.C(m00_axi_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[26]),
        .Q(Q[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[27] 
       (.C(m00_axi_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[27]),
        .Q(Q[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[28] 
       (.C(m00_axi_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[28]),
        .Q(Q[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[29] 
       (.C(m00_axi_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[29]),
        .Q(Q[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[2] 
       (.C(m00_axi_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[30] 
       (.C(m00_axi_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[30]),
        .Q(Q[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[31] 
       (.C(m00_axi_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[31]),
        .Q(Q[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[3] 
       (.C(m00_axi_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[4] 
       (.C(m00_axi_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[5] 
       (.C(m00_axi_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[6] 
       (.C(m00_axi_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[7] 
       (.C(m00_axi_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[8] 
       (.C(m00_axi_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[8]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[9] 
       (.C(m00_axi_aclk),
        .CE(E),
        .D(sig_data_skid_mux_out[9]),
        .Q(Q[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[0] 
       (.C(m00_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(ip2bus_mstwr_d[0]),
        .Q(sig_data_skid_reg[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[10] 
       (.C(m00_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(ip2bus_mstwr_d[10]),
        .Q(sig_data_skid_reg[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[11] 
       (.C(m00_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(ip2bus_mstwr_d[11]),
        .Q(sig_data_skid_reg[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[12] 
       (.C(m00_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(ip2bus_mstwr_d[12]),
        .Q(sig_data_skid_reg[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[13] 
       (.C(m00_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(ip2bus_mstwr_d[13]),
        .Q(sig_data_skid_reg[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[14] 
       (.C(m00_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(ip2bus_mstwr_d[14]),
        .Q(sig_data_skid_reg[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[15] 
       (.C(m00_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(ip2bus_mstwr_d[15]),
        .Q(sig_data_skid_reg[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[16] 
       (.C(m00_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(ip2bus_mstwr_d[16]),
        .Q(sig_data_skid_reg[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[17] 
       (.C(m00_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(ip2bus_mstwr_d[17]),
        .Q(sig_data_skid_reg[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[18] 
       (.C(m00_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(ip2bus_mstwr_d[18]),
        .Q(sig_data_skid_reg[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[19] 
       (.C(m00_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(ip2bus_mstwr_d[19]),
        .Q(sig_data_skid_reg[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[1] 
       (.C(m00_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(ip2bus_mstwr_d[1]),
        .Q(sig_data_skid_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[20] 
       (.C(m00_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(ip2bus_mstwr_d[20]),
        .Q(sig_data_skid_reg[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[21] 
       (.C(m00_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(ip2bus_mstwr_d[21]),
        .Q(sig_data_skid_reg[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[22] 
       (.C(m00_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(ip2bus_mstwr_d[22]),
        .Q(sig_data_skid_reg[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[23] 
       (.C(m00_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(ip2bus_mstwr_d[23]),
        .Q(sig_data_skid_reg[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[24] 
       (.C(m00_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(ip2bus_mstwr_d[24]),
        .Q(sig_data_skid_reg[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[25] 
       (.C(m00_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(ip2bus_mstwr_d[25]),
        .Q(sig_data_skid_reg[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[26] 
       (.C(m00_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(ip2bus_mstwr_d[26]),
        .Q(sig_data_skid_reg[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[27] 
       (.C(m00_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(ip2bus_mstwr_d[27]),
        .Q(sig_data_skid_reg[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[28] 
       (.C(m00_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(ip2bus_mstwr_d[28]),
        .Q(sig_data_skid_reg[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[29] 
       (.C(m00_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(ip2bus_mstwr_d[29]),
        .Q(sig_data_skid_reg[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[2] 
       (.C(m00_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(ip2bus_mstwr_d[2]),
        .Q(sig_data_skid_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[30] 
       (.C(m00_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(ip2bus_mstwr_d[30]),
        .Q(sig_data_skid_reg[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[31] 
       (.C(m00_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(ip2bus_mstwr_d[31]),
        .Q(sig_data_skid_reg[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[3] 
       (.C(m00_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(ip2bus_mstwr_d[3]),
        .Q(sig_data_skid_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[4] 
       (.C(m00_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(ip2bus_mstwr_d[4]),
        .Q(sig_data_skid_reg[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[5] 
       (.C(m00_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(ip2bus_mstwr_d[5]),
        .Q(sig_data_skid_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[6] 
       (.C(m00_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(ip2bus_mstwr_d[6]),
        .Q(sig_data_skid_reg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[7] 
       (.C(m00_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(ip2bus_mstwr_d[7]),
        .Q(sig_data_skid_reg[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[8] 
       (.C(m00_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(ip2bus_mstwr_d[8]),
        .Q(sig_data_skid_reg[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[9] 
       (.C(m00_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(ip2bus_mstwr_d[9]),
        .Q(sig_data_skid_reg[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h74FF7400)) 
    sig_last_reg_out_i_1__0
       (.I0(ip2bus_inputs[0]),
        .I1(sig_s_ready_dup),
        .I2(sig_last_skid_reg),
        .I3(E),
        .I4(sig_wrskid2wdc_tlast),
        .O(sig_last_reg_out_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_last_reg_out_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_last_reg_out_i_1__0_n_0),
        .Q(sig_wrskid2wdc_tlast),
        .R(sig_rdwr_reset_reg_reg));
  LUT1 #(
    .INIT(2'h1)) 
    sig_last_skid_reg_i_1__0
       (.I0(ip2bus_inputs[0]),
        .O(sig_llink2wr_strm_tlast));
  FDRE #(
    .INIT(1'b0)) 
    sig_last_skid_reg_reg
       (.C(m00_axi_aclk),
        .CE(sig_s_ready_dup),
        .D(sig_llink2wr_strm_tlast),
        .Q(sig_last_skid_reg),
        .R(sig_rdwr_reset_reg_reg));
  LUT6 #(
    .INIT(64'h1011101011111111)) 
    sig_m_valid_dup_i_1
       (.I0(sig_init_reg),
        .I1(sig_rdwr_reset_reg_reg),
        .I2(sig_llink_busy_reg_0),
        .I3(sig_s_ready_dup),
        .I4(sig_m_valid_dup),
        .I5(E),
        .O(sig_m_valid_dup_i_1_n_0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    sig_m_valid_dup_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_m_valid_dup_i_1_n_0),
        .Q(sig_m_valid_dup),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    sig_m_valid_out_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_m_valid_dup_i_1_n_0),
        .Q(sig_m_valid_out),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFEEAEEEEE)) 
    sig_s_ready_dup_i_1
       (.I0(\GEN_OMIT_STORE_FORWARD.sig_tlast_error_reg_reg ),
        .I1(sig_s_ready_dup),
        .I2(sig_llink2cmd_wr_busy),
        .I3(ip2bus_inputs[1]),
        .I4(sig_m_valid_dup),
        .I5(sig_init_reg),
        .O(sig_s_ready_dup_i_1_n_0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    sig_s_ready_dup_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_s_ready_dup_i_1_n_0),
        .Q(sig_s_ready_dup),
        .R(sig_rdwr_reset_reg_reg));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    sig_s_ready_out_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_s_ready_dup_i_1_n_0),
        .Q(sig_s_ready_out),
        .R(sig_rdwr_reset_reg_reg));
endmodule

(* ORIG_REF_NAME = "axi_master_burst_strb_gen" *) 
module design_1_myip_burst_test_0_0_axi_master_burst_strb_gen__parameterized0
   (D,
    Q);
  output [0:0]D;
  input [1:0]Q;

  wire [0:0]D;
  wire [1:0]Q;

  LUT2 #(
    .INIT(4'h9)) 
    sig_end_addr_us
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(D));
endmodule

(* ORIG_REF_NAME = "axi_master_burst_wr_llink" *) 
module design_1_myip_burst_test_0_0_axi_master_burst_wr_llink
   (sig_llink2cmd_wr_busy,
    sig_llink2wr_allow_addr_req,
    sig_m_valid_out_reg,
    ip2bus_otputs,
    m00_axi_aclk,
    sig_llink_reset_reg_reg,
    ip2bus_inputs,
    sig_rdwr2llink_int_err,
    sig_wr_error_reg,
    sig_wr_llink_enable,
    sig_s_ready_out_reg,
    sig_cmd2all_doing_write,
    sig_doing_write_reg);
  output sig_llink2cmd_wr_busy;
  output sig_llink2wr_allow_addr_req;
  output sig_m_valid_out_reg;
  output [1:0]ip2bus_otputs;
  input m00_axi_aclk;
  input sig_llink_reset_reg_reg;
  input [1:0]ip2bus_inputs;
  input sig_rdwr2llink_int_err;
  input sig_wr_error_reg;
  input sig_wr_llink_enable;
  input sig_s_ready_out_reg;
  input sig_cmd2all_doing_write;
  input sig_doing_write_reg;

  wire [1:0]ip2bus_inputs;
  wire [1:0]ip2bus_otputs;
  wire m00_axi_aclk;
  wire sig_allow_wr_requests_i_1_n_0;
  wire sig_assert_discontinue;
  wire sig_assert_discontinue_i_1_n_0;
  wire sig_cmd2all_doing_write;
  wire sig_doing_write_reg;
  wire sig_llink2cmd_wr_busy;
  wire sig_llink2wr_allow_addr_req;
  wire sig_llink_busy_i_1_n_0;
  wire sig_llink_reset_reg_reg;
  wire sig_m_valid_out_reg;
  wire sig_rdwr2llink_int_err;
  wire sig_s_ready_out_reg;
  wire sig_wr_dsc_in_prog;
  wire sig_wr_dsc_in_prog_i_1_n_0;
  wire sig_wr_dsc_in_prog_i_2_n_0;
  wire sig_wr_error_reg;
  wire sig_wr_llink_enable;

  LUT1 #(
    .INIT(2'h1)) 
    \ip2bus_otputs[3]_INST_0 
       (.I0(sig_assert_discontinue),
        .O(ip2bus_otputs[0]));
  LUT3 #(
    .INIT(8'h1F)) 
    \ip2bus_otputs[4]_INST_0 
       (.I0(sig_s_ready_out_reg),
        .I1(sig_wr_dsc_in_prog),
        .I2(sig_llink2cmd_wr_busy),
        .O(ip2bus_otputs[1]));
  LUT6 #(
    .INIT(64'h00000000AEAE00AE)) 
    sig_allow_wr_requests_i_1
       (.I0(sig_llink2wr_allow_addr_req),
        .I1(sig_llink2cmd_wr_busy),
        .I2(ip2bus_inputs[1]),
        .I3(sig_cmd2all_doing_write),
        .I4(sig_doing_write_reg),
        .I5(sig_llink_reset_reg_reg),
        .O(sig_allow_wr_requests_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_allow_wr_requests_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_allow_wr_requests_i_1_n_0),
        .Q(sig_llink2wr_allow_addr_req),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000FF080008)) 
    sig_assert_discontinue_i_1
       (.I0(sig_rdwr2llink_int_err),
        .I1(sig_llink2cmd_wr_busy),
        .I2(sig_wr_error_reg),
        .I3(sig_assert_discontinue),
        .I4(ip2bus_inputs[1]),
        .I5(sig_llink_reset_reg_reg),
        .O(sig_assert_discontinue_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_assert_discontinue_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_assert_discontinue_i_1_n_0),
        .Q(sig_assert_discontinue),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFEAAFEAAFEAAFFAA)) 
    sig_llink_busy_i_1
       (.I0(sig_wr_llink_enable),
        .I1(ip2bus_inputs[0]),
        .I2(ip2bus_inputs[1]),
        .I3(sig_llink2cmd_wr_busy),
        .I4(sig_wr_dsc_in_prog),
        .I5(sig_s_ready_out_reg),
        .O(sig_llink_busy_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_llink_busy_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_llink_busy_i_1_n_0),
        .Q(sig_llink2cmd_wr_busy),
        .R(sig_llink_reset_reg_reg));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h2)) 
    sig_m_valid_dup_i_2__0
       (.I0(sig_llink2cmd_wr_busy),
        .I1(ip2bus_inputs[1]),
        .O(sig_m_valid_out_reg));
  LUT6 #(
    .INIT(64'h00000000FF080008)) 
    sig_wr_dsc_in_prog_i_1
       (.I0(sig_rdwr2llink_int_err),
        .I1(sig_llink2cmd_wr_busy),
        .I2(sig_wr_error_reg),
        .I3(sig_wr_dsc_in_prog),
        .I4(sig_wr_dsc_in_prog_i_2_n_0),
        .I5(sig_llink_reset_reg_reg),
        .O(sig_wr_dsc_in_prog_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    sig_wr_dsc_in_prog_i_2
       (.I0(ip2bus_inputs[0]),
        .I1(ip2bus_inputs[1]),
        .I2(sig_llink2cmd_wr_busy),
        .O(sig_wr_dsc_in_prog_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_wr_dsc_in_prog_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_wr_dsc_in_prog_i_1_n_0),
        .Q(sig_wr_dsc_in_prog),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_master_burst_wr_status_cntl" *) 
module design_1_myip_burst_test_0_0_axi_master_burst_wr_status_cntl
   (sig_init_reg,
    \INFERRED_GEN.cnt_i_reg[0] ,
    sig_wsc2stat_status_valid,
    sig_wsc2stat_status,
    sig_inhibit_rdy_n,
    sig_m_valid_out_reg,
    sig_next_calc_error_reg_reg,
    m00_axi_bready,
    sig_stat_error,
    out,
    m00_axi_aclk,
    p_5_out,
    sig_m_valid_dup_reg,
    sig_next_calc_error_reg,
    sig_cmd2all_doing_write,
    sig_pcc2data_cmd_valid,
    sig_status_reg_empty,
    \GEN_OMIT_STORE_FORWARD.sig_tlast_err_stop_reg ,
    sig_tlast_err_stop,
    sig_push_to_wsc,
    m00_axi_bvalid,
    m00_axi_bresp,
    in);
  output sig_init_reg;
  output \INFERRED_GEN.cnt_i_reg[0] ;
  output sig_wsc2stat_status_valid;
  output [2:0]sig_wsc2stat_status;
  output sig_inhibit_rdy_n;
  output sig_m_valid_out_reg;
  output sig_next_calc_error_reg_reg;
  output m00_axi_bready;
  output sig_stat_error;
  input out;
  input m00_axi_aclk;
  input p_5_out;
  input sig_m_valid_dup_reg;
  input sig_next_calc_error_reg;
  input sig_cmd2all_doing_write;
  input sig_pcc2data_cmd_valid;
  input sig_status_reg_empty;
  input \GEN_OMIT_STORE_FORWARD.sig_tlast_err_stop_reg ;
  input sig_tlast_err_stop;
  input sig_push_to_wsc;
  input m00_axi_bvalid;
  input [1:0]m00_axi_bresp;
  input [2:0]in;

  wire \GEN_OMIT_STORE_FORWARD.I_DATA_CNTL_STATUS_FIFO_n_10 ;
  wire \GEN_OMIT_STORE_FORWARD.I_DATA_CNTL_STATUS_FIFO_n_11 ;
  wire \GEN_OMIT_STORE_FORWARD.I_DATA_CNTL_STATUS_FIFO_n_12 ;
  wire \GEN_OMIT_STORE_FORWARD.I_DATA_CNTL_STATUS_FIFO_n_7 ;
  wire \GEN_OMIT_STORE_FORWARD.sig_tlast_err_stop_reg ;
  wire \INFERRED_GEN.cnt_i_reg[0] ;
  wire I_WRESP_STATUS_FIFO_n_2;
  wire I_WRESP_STATUS_FIFO_n_3;
  wire I_WRESP_STATUS_FIFO_n_4;
  wire I_WRESP_STATUS_FIFO_n_7;
  wire [2:0]in;
  wire m00_axi_aclk;
  wire m00_axi_bready;
  wire [1:0]m00_axi_bresp;
  wire m00_axi_bvalid;
  wire out;
  wire p_0_in;
  wire p_4_out;
  wire p_5_out;
  wire sig_cmd2all_doing_write;
  wire sig_coelsc_reg_empty;
  wire [2:0]sig_dcntl_sfifo_out;
  wire sig_inhibit_rdy_n;
  wire sig_init_done;
  wire sig_init_reg;
  wire sig_m_valid_dup_reg;
  wire sig_m_valid_out_reg;
  wire sig_next_calc_error_reg;
  wire sig_next_calc_error_reg_reg;
  wire sig_pcc2data_cmd_valid;
  wire sig_push_coelsc_reg;
  wire sig_push_to_wsc;
  wire sig_rd_empty;
  wire sig_rd_empty_0;
  wire sig_stat_error;
  wire sig_statcnt_gt_eq_thres;
  wire sig_status_reg_empty;
  wire sig_tlast_err_stop;
  wire [2:0]sig_wdc_statcnt;
  wire sig_wdc_status_going_full;
  wire [2:0]sig_wsc2stat_status;
  wire sig_wsc2stat_status_valid;

  design_1_myip_burst_test_0_0_axi_master_burst_fifo__parameterized0 \GEN_OMIT_STORE_FORWARD.I_DATA_CNTL_STATUS_FIFO 
       (.\GEN_OMIT_STORE_FORWARD.sig_coelsc_interr_reg_reg ({sig_dcntl_sfifo_out[2],sig_dcntl_sfifo_out[0]}),
        .\GEN_OMIT_STORE_FORWARD.sig_coelsc_reg_empty_reg (I_WRESP_STATUS_FIFO_n_7),
        .\GEN_OMIT_STORE_FORWARD.sig_tlast_err_stop_reg (\GEN_OMIT_STORE_FORWARD.sig_tlast_err_stop_reg ),
        .\INFERRED_GEN.cnt_i_reg[0] (\INFERRED_GEN.cnt_i_reg[0] ),
        .\INFERRED_GEN.cnt_i_reg[0]_0 (sig_inhibit_rdy_n),
        .\INFERRED_GEN.cnt_i_reg[1] (\GEN_OMIT_STORE_FORWARD.I_DATA_CNTL_STATUS_FIFO_n_7 ),
        .\INFERRED_GEN.cnt_i_reg[2] (sig_rd_empty_0),
        .Q(sig_rd_empty),
        .in(in),
        .m00_axi_aclk(m00_axi_aclk),
        .out(out),
        .p_0_in(p_0_in),
        .p_4_out(p_4_out),
        .sig_coelsc_reg_empty(sig_coelsc_reg_empty),
        .sig_init_done(sig_init_done),
        .sig_init_reg_reg(I_WRESP_STATUS_FIFO_n_4),
        .sig_push_coelsc_reg(sig_push_coelsc_reg),
        .sig_push_to_wsc(sig_push_to_wsc),
        .sig_tlast_err_stop(sig_tlast_err_stop),
        .sig_wdc_statcnt(sig_wdc_statcnt),
        .\sig_wdc_statcnt_reg[0] (\GEN_OMIT_STORE_FORWARD.I_DATA_CNTL_STATUS_FIFO_n_12 ),
        .\sig_wdc_statcnt_reg[1] (\GEN_OMIT_STORE_FORWARD.I_DATA_CNTL_STATUS_FIFO_n_11 ),
        .\sig_wdc_statcnt_reg[2] (\GEN_OMIT_STORE_FORWARD.I_DATA_CNTL_STATUS_FIFO_n_10 ),
        .sig_wsc2stat_status(sig_wsc2stat_status[0]));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_OMIT_STORE_FORWARD.sig_coelsc_decerr_reg_reg 
       (.C(m00_axi_aclk),
        .CE(sig_push_coelsc_reg),
        .D(I_WRESP_STATUS_FIFO_n_2),
        .Q(sig_wsc2stat_status[1]),
        .R(p_5_out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_OMIT_STORE_FORWARD.sig_coelsc_interr_reg_reg 
       (.C(m00_axi_aclk),
        .CE(sig_push_coelsc_reg),
        .D(p_4_out),
        .Q(sig_wsc2stat_status[0]),
        .R(p_5_out));
  FDSE #(
    .INIT(1'b0)) 
    \GEN_OMIT_STORE_FORWARD.sig_coelsc_reg_empty_reg 
       (.C(m00_axi_aclk),
        .CE(sig_push_coelsc_reg),
        .D(p_0_in),
        .Q(sig_coelsc_reg_empty),
        .S(p_5_out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_OMIT_STORE_FORWARD.sig_coelsc_reg_full_reg 
       (.C(m00_axi_aclk),
        .CE(sig_push_coelsc_reg),
        .D(sig_dcntl_sfifo_out[0]),
        .Q(sig_wsc2stat_status_valid),
        .R(p_5_out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_OMIT_STORE_FORWARD.sig_coelsc_slverr_reg_reg 
       (.C(m00_axi_aclk),
        .CE(sig_push_coelsc_reg),
        .D(I_WRESP_STATUS_FIFO_n_3),
        .Q(sig_wsc2stat_status[2]),
        .R(p_5_out));
  design_1_myip_burst_test_0_0_axi_master_burst_fifo I_WRESP_STATUS_FIFO
       (.FIFO_Full_reg(I_WRESP_STATUS_FIFO_n_7),
        .\GEN_OMIT_STORE_FORWARD.sig_coelsc_decerr_reg_reg (I_WRESP_STATUS_FIFO_n_2),
        .\GEN_OMIT_STORE_FORWARD.sig_coelsc_slverr_reg_reg (I_WRESP_STATUS_FIFO_n_3),
        .\INFERRED_GEN.cnt_i_reg[2] (\GEN_OMIT_STORE_FORWARD.I_DATA_CNTL_STATUS_FIFO_n_7 ),
        .\INFERRED_GEN.cnt_i_reg[2]_0 (sig_rd_empty),
        .Q(sig_rd_empty_0),
        .m00_axi_aclk(m00_axi_aclk),
        .m00_axi_bready(m00_axi_bready),
        .m00_axi_bresp(m00_axi_bresp),
        .m00_axi_bvalid(m00_axi_bvalid),
        .out(out),
        .sig_coelsc_reg_empty(sig_coelsc_reg_empty),
        .sig_data2wsc_calc_err_reg(sig_dcntl_sfifo_out[2]),
        .sig_init_done(sig_init_done),
        .sig_init_done_reg_0(I_WRESP_STATUS_FIFO_n_4),
        .sig_init_reg2_reg_0(sig_init_reg),
        .sig_m_valid_dup_reg(sig_m_valid_dup_reg),
        .sig_m_valid_out_reg(sig_m_valid_out_reg),
        .sig_wsc2stat_status(sig_wsc2stat_status[2:1]));
  LUT6 #(
    .INIT(64'hEFFFFFFFEFFFEFFF)) 
    sig_dqual_reg_full_i_4
       (.I0(sig_next_calc_error_reg),
        .I1(sig_wdc_status_going_full),
        .I2(sig_cmd2all_doing_write),
        .I3(sig_pcc2data_cmd_valid),
        .I4(sig_status_reg_empty),
        .I5(sig_wsc2stat_status_valid),
        .O(sig_next_calc_error_reg_reg));
  LUT4 #(
    .INIT(16'hAAA8)) 
    sig_stat_error_reg_i_2
       (.I0(sig_cmd2all_doing_write),
        .I1(sig_wsc2stat_status[0]),
        .I2(sig_wsc2stat_status[1]),
        .I3(sig_wsc2stat_status[2]),
        .O(sig_stat_error));
  FDRE #(
    .INIT(1'b0)) 
    \sig_wdc_statcnt_reg[0] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(\GEN_OMIT_STORE_FORWARD.I_DATA_CNTL_STATUS_FIFO_n_12 ),
        .Q(sig_wdc_statcnt[0]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_wdc_statcnt_reg[1] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(\GEN_OMIT_STORE_FORWARD.I_DATA_CNTL_STATUS_FIFO_n_11 ),
        .Q(sig_wdc_statcnt[1]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_wdc_statcnt_reg[2] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(\GEN_OMIT_STORE_FORWARD.I_DATA_CNTL_STATUS_FIFO_n_10 ),
        .Q(sig_wdc_statcnt[2]),
        .R(out));
  LUT3 #(
    .INIT(8'hFE)) 
    sig_wdc_status_going_full_i_1
       (.I0(sig_wdc_statcnt[2]),
        .I1(sig_wdc_statcnt[1]),
        .I2(sig_wdc_statcnt[0]),
        .O(sig_statcnt_gt_eq_thres));
  FDRE #(
    .INIT(1'b0)) 
    sig_wdc_status_going_full_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_statcnt_gt_eq_thres),
        .Q(sig_wdc_status_going_full),
        .R(out));
endmodule

(* ORIG_REF_NAME = "axi_master_burst_wrdata_cntl" *) 
module design_1_myip_burst_test_0_0_axi_master_burst_wrdata_cntl
   (sig_wdc2pcc_cmd_ready,
    sig_next_calc_error_reg,
    sig_push_to_wsc,
    in,
    \GEN_OMIT_STORE_FORWARD.sig_tlast_err_stop_reg_0 ,
    sig_tlast_err_stop,
    E,
    sig_s_ready_dup_reg,
    sig_s_ready_dup_reg_0,
    sig_last_skid_mux_out,
    sig_wdc2wrskid_wlast,
    \sig_wdc_statcnt_reg[2] ,
    \sig_strb_reg_out_reg[3] ,
    D,
    m00_axi_aclk,
    sig_pcc2data_calc_error,
    out,
    sig_pcc2data_sequential,
    sig_pcc2data_eof,
    sig_pcc2data_cmd_cmplt,
    p_1_in,
    sig_inhibit_rdy_n,
    FIFO_Full_reg,
    sig_wrskid2wdc_tlast,
    \sig_xfer_len_reg_reg[3] ,
    sig_next_calc_error_reg_reg_0,
    sig_s_ready_out_reg,
    sig_m_valid_dup_reg,
    sig_m_valid_out_reg,
    sig_posted_to_axi_reg,
    sig_cmd2all_doing_write,
    sig_s_ready_dup_reg_1,
    sig_last_skid_reg,
    \sig_strb_skid_reg_reg[3] ,
    \sig_xfer_end_strb_reg_reg[3] ,
    \sig_xfer_strt_strb_reg_reg[3] );
  output sig_wdc2pcc_cmd_ready;
  output sig_next_calc_error_reg;
  output sig_push_to_wsc;
  output [2:0]in;
  output \GEN_OMIT_STORE_FORWARD.sig_tlast_err_stop_reg_0 ;
  output sig_tlast_err_stop;
  output [0:0]E;
  output sig_s_ready_dup_reg;
  output sig_s_ready_dup_reg_0;
  output sig_last_skid_mux_out;
  output sig_wdc2wrskid_wlast;
  output \sig_wdc_statcnt_reg[2] ;
  output [3:0]\sig_strb_reg_out_reg[3] ;
  output [3:0]D;
  input m00_axi_aclk;
  input sig_pcc2data_calc_error;
  input out;
  input sig_pcc2data_sequential;
  input sig_pcc2data_eof;
  input sig_pcc2data_cmd_cmplt;
  input p_1_in;
  input sig_inhibit_rdy_n;
  input FIFO_Full_reg;
  input sig_wrskid2wdc_tlast;
  input [3:0]\sig_xfer_len_reg_reg[3] ;
  input sig_next_calc_error_reg_reg_0;
  input sig_s_ready_out_reg;
  input sig_m_valid_dup_reg;
  input sig_m_valid_out_reg;
  input sig_posted_to_axi_reg;
  input sig_cmd2all_doing_write;
  input sig_s_ready_dup_reg_1;
  input sig_last_skid_reg;
  input [3:0]\sig_strb_skid_reg_reg[3] ;
  input [3:0]\sig_xfer_end_strb_reg_reg[3] ;
  input [3:0]\sig_xfer_strt_strb_reg_reg[3] ;

  wire [3:0]D;
  wire [0:0]E;
  wire FIFO_Full_reg;
  wire \GEN_OMIT_STORE_FORWARD.sig_tlast_err_stop_i_1_n_0 ;
  wire \GEN_OMIT_STORE_FORWARD.sig_tlast_err_stop_reg_0 ;
  wire \GEN_OMIT_STORE_FORWARD.sig_tlast_error_reg_i_1_n_0 ;
  wire [2:0]in;
  wire m00_axi_aclk;
  wire out;
  wire [7:0]p_0_in__0;
  wire p_1_in;
  wire [2:0]sig_addr_posted_cntr;
  wire \sig_addr_posted_cntr[0]_i_1_n_0 ;
  wire \sig_addr_posted_cntr[1]_i_1_n_0 ;
  wire \sig_addr_posted_cntr[2]_i_1_n_0 ;
  wire sig_clr_dqual_reg;
  wire sig_cmd2all_doing_write;
  wire sig_data2wsc_cmd_cmplt0;
  wire sig_data2wsc_cmd_cmplt_i_2_n_0;
  wire sig_data2wsc_last_err0;
  wire \sig_dbeat_cntr[7]_i_1_n_0 ;
  wire [7:0]sig_dbeat_cntr_reg__0;
  wire sig_dqual_reg_empty;
  wire sig_dqual_reg_full;
  wire sig_dqual_reg_full_i_3_n_0;
  wire sig_dqual_reg_full_i_5_n_0;
  wire sig_first_dbeat_i_1_n_0;
  wire sig_first_dbeat_reg_n_0;
  wire sig_inhibit_rdy_n;
  wire sig_last_dbeat_i_1_n_0;
  wire sig_last_dbeat_i_2_n_0;
  wire sig_last_dbeat_i_4_n_0;
  wire sig_last_dbeat_reg_n_0;
  wire sig_last_mmap_dbeat;
  wire sig_last_mmap_dbeat_reg;
  wire sig_last_mmap_dbeat_reg_i_2_n_0;
  wire sig_last_reg_out_i_2_n_0;
  wire sig_last_skid_mux_out;
  wire sig_last_skid_reg;
  wire sig_ld_new_cmd_reg;
  wire sig_ld_new_cmd_reg_i_1_n_0;
  wire sig_m_valid_dup_reg;
  wire sig_m_valid_out_reg;
  wire sig_next_calc_error_reg;
  wire sig_next_calc_error_reg_reg_0;
  wire sig_next_cmd_cmplt_reg;
  wire sig_next_eof_reg;
  wire [3:0]sig_next_last_strb_reg;
  wire sig_next_sequential_reg;
  wire [3:0]sig_next_strt_strb_reg;
  wire sig_pcc2data_calc_error;
  wire sig_pcc2data_cmd_cmplt;
  wire sig_pcc2data_eof;
  wire sig_pcc2data_sequential;
  wire sig_posted_to_axi_reg;
  wire sig_push_err2wsc;
  wire sig_push_err2wsc_i_1_n_0;
  wire sig_push_to_wsc;
  wire sig_push_to_wsc0;
  wire sig_push_to_wsc_i_2_n_0;
  wire sig_s_ready_dup_reg;
  wire sig_s_ready_dup_reg_0;
  wire sig_s_ready_dup_reg_1;
  wire sig_s_ready_out_reg;
  wire [3:0]\sig_strb_reg_out_reg[3] ;
  wire [3:0]\sig_strb_skid_reg_reg[3] ;
  wire sig_tlast_err_stop;
  wire sig_wdc2pcc_cmd_ready;
  wire sig_wdc2wrskid_wlast;
  wire \sig_wdc_statcnt_reg[2] ;
  wire sig_wrskid2wdc_tlast;
  wire [3:0]\sig_xfer_end_strb_reg_reg[3] ;
  wire [3:0]\sig_xfer_len_reg_reg[3] ;
  wire [3:0]\sig_xfer_strt_strb_reg_reg[3] ;

  LUT6 #(
    .INIT(64'hFFFFFFFF20000000)) 
    \GEN_OMIT_STORE_FORWARD.sig_tlast_err_stop_i_1 
       (.I0(sig_inhibit_rdy_n),
        .I1(FIFO_Full_reg),
        .I2(sig_push_to_wsc),
        .I3(sig_data2wsc_cmd_cmplt_i_2_n_0),
        .I4(\GEN_OMIT_STORE_FORWARD.sig_tlast_err_stop_reg_0 ),
        .I5(sig_tlast_err_stop),
        .O(\GEN_OMIT_STORE_FORWARD.sig_tlast_err_stop_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_OMIT_STORE_FORWARD.sig_tlast_err_stop_reg 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(\GEN_OMIT_STORE_FORWARD.sig_tlast_err_stop_i_1_n_0 ),
        .Q(sig_tlast_err_stop),
        .R(out));
  LUT5 #(
    .INIT(32'hFFFFA208)) 
    \GEN_OMIT_STORE_FORWARD.sig_tlast_error_reg_i_1 
       (.I0(sig_dqual_reg_full_i_3_n_0),
        .I1(sig_next_eof_reg),
        .I2(sig_last_reg_out_i_2_n_0),
        .I3(sig_wrskid2wdc_tlast),
        .I4(\GEN_OMIT_STORE_FORWARD.sig_tlast_err_stop_reg_0 ),
        .O(\GEN_OMIT_STORE_FORWARD.sig_tlast_error_reg_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_OMIT_STORE_FORWARD.sig_tlast_error_reg_reg 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(\GEN_OMIT_STORE_FORWARD.sig_tlast_error_reg_i_1_n_0 ),
        .Q(\GEN_OMIT_STORE_FORWARD.sig_tlast_err_stop_reg_0 ),
        .R(out));
  LUT4 #(
    .INIT(16'hFBFF)) 
    \INFERRED_GEN.cnt_i[1]_i_2 
       (.I0(sig_tlast_err_stop),
        .I1(sig_push_to_wsc),
        .I2(FIFO_Full_reg),
        .I3(sig_inhibit_rdy_n),
        .O(\sig_wdc_statcnt_reg[2] ));
  LUT6 #(
    .INIT(64'hF0008FFF0EEEF000)) 
    \sig_addr_posted_cntr[0]_i_1 
       (.I0(sig_addr_posted_cntr[1]),
        .I1(sig_addr_posted_cntr[2]),
        .I2(sig_cmd2all_doing_write),
        .I3(sig_posted_to_axi_reg),
        .I4(sig_last_mmap_dbeat_reg),
        .I5(sig_addr_posted_cntr[0]),
        .O(\sig_addr_posted_cntr[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFBF4040D5D52A00)) 
    \sig_addr_posted_cntr[1]_i_1 
       (.I0(sig_last_mmap_dbeat_reg),
        .I1(sig_posted_to_axi_reg),
        .I2(sig_cmd2all_doing_write),
        .I3(sig_addr_posted_cntr[2]),
        .I4(sig_addr_posted_cntr[1]),
        .I5(sig_addr_posted_cntr[0]),
        .O(\sig_addr_posted_cntr[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF40FF00FF00D500)) 
    \sig_addr_posted_cntr[2]_i_1 
       (.I0(sig_last_mmap_dbeat_reg),
        .I1(sig_posted_to_axi_reg),
        .I2(sig_cmd2all_doing_write),
        .I3(sig_addr_posted_cntr[2]),
        .I4(sig_addr_posted_cntr[1]),
        .I5(sig_addr_posted_cntr[0]),
        .O(\sig_addr_posted_cntr[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_posted_cntr_reg[0] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(\sig_addr_posted_cntr[0]_i_1_n_0 ),
        .Q(sig_addr_posted_cntr[0]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_posted_cntr_reg[1] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(\sig_addr_posted_cntr[1]_i_1_n_0 ),
        .Q(sig_addr_posted_cntr[1]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_posted_cntr_reg[2] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(\sig_addr_posted_cntr[2]_i_1_n_0 ),
        .Q(sig_addr_posted_cntr[2]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    sig_data2wsc_calc_err_reg
       (.C(m00_axi_aclk),
        .CE(sig_push_to_wsc_i_2_n_0),
        .D(sig_next_calc_error_reg),
        .Q(in[2]),
        .R(sig_push_to_wsc0));
  LUT3 #(
    .INIT(8'hEA)) 
    sig_data2wsc_cmd_cmplt_i_1
       (.I0(sig_next_cmd_cmplt_reg),
        .I1(\GEN_OMIT_STORE_FORWARD.sig_tlast_err_stop_reg_0 ),
        .I2(sig_data2wsc_cmd_cmplt_i_2_n_0),
        .O(sig_data2wsc_cmd_cmplt0));
  LUT6 #(
    .INIT(64'h00000070000000FF)) 
    sig_data2wsc_cmd_cmplt_i_2
       (.I0(sig_posted_to_axi_reg),
        .I1(sig_cmd2all_doing_write),
        .I2(sig_last_mmap_dbeat_reg),
        .I3(sig_addr_posted_cntr[2]),
        .I4(sig_addr_posted_cntr[1]),
        .I5(sig_addr_posted_cntr[0]),
        .O(sig_data2wsc_cmd_cmplt_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_data2wsc_cmd_cmplt_reg
       (.C(m00_axi_aclk),
        .CE(sig_push_to_wsc_i_2_n_0),
        .D(sig_data2wsc_cmd_cmplt0),
        .Q(in[0]),
        .R(sig_push_to_wsc0));
  LUT5 #(
    .INIT(32'hEEAEAAEA)) 
    sig_data2wsc_last_err_i_1
       (.I0(\GEN_OMIT_STORE_FORWARD.sig_tlast_err_stop_reg_0 ),
        .I1(sig_dqual_reg_full_i_3_n_0),
        .I2(sig_next_eof_reg),
        .I3(sig_last_reg_out_i_2_n_0),
        .I4(sig_wrskid2wdc_tlast),
        .O(sig_data2wsc_last_err0));
  FDRE #(
    .INIT(1'b0)) 
    sig_data2wsc_last_err_reg
       (.C(m00_axi_aclk),
        .CE(sig_push_to_wsc_i_2_n_0),
        .D(sig_data2wsc_last_err0),
        .Q(in[1]),
        .R(sig_push_to_wsc0));
  LUT6 #(
    .INIT(64'h00000200FFFFFFFF)) 
    \sig_data_reg_out[31]_i_1 
       (.I0(sig_dqual_reg_full),
        .I1(sig_next_calc_error_reg),
        .I2(sig_data2wsc_cmd_cmplt_i_2_n_0),
        .I3(sig_s_ready_out_reg),
        .I4(\GEN_OMIT_STORE_FORWARD.sig_tlast_err_stop_reg_0 ),
        .I5(sig_m_valid_dup_reg),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \sig_dbeat_cntr[0]_i_1 
       (.I0(\sig_xfer_len_reg_reg[3] [0]),
        .I1(sig_wdc2pcc_cmd_ready),
        .I2(sig_dbeat_cntr_reg__0[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hB88B)) 
    \sig_dbeat_cntr[1]_i_1 
       (.I0(\sig_xfer_len_reg_reg[3] [1]),
        .I1(sig_wdc2pcc_cmd_ready),
        .I2(sig_dbeat_cntr_reg__0[1]),
        .I3(sig_dbeat_cntr_reg__0[0]),
        .O(p_0_in__0[1]));
  LUT5 #(
    .INIT(32'hBBB8888B)) 
    \sig_dbeat_cntr[2]_i_1 
       (.I0(\sig_xfer_len_reg_reg[3] [2]),
        .I1(sig_wdc2pcc_cmd_ready),
        .I2(sig_dbeat_cntr_reg__0[1]),
        .I3(sig_dbeat_cntr_reg__0[0]),
        .I4(sig_dbeat_cntr_reg__0[2]),
        .O(p_0_in__0[2]));
  LUT6 #(
    .INIT(64'hBBBBBBB88888888B)) 
    \sig_dbeat_cntr[3]_i_1 
       (.I0(\sig_xfer_len_reg_reg[3] [3]),
        .I1(sig_wdc2pcc_cmd_ready),
        .I2(sig_dbeat_cntr_reg__0[2]),
        .I3(sig_dbeat_cntr_reg__0[0]),
        .I4(sig_dbeat_cntr_reg__0[1]),
        .I5(sig_dbeat_cntr_reg__0[3]),
        .O(p_0_in__0[3]));
  LUT6 #(
    .INIT(64'h5555555400000001)) 
    \sig_dbeat_cntr[4]_i_1 
       (.I0(sig_wdc2pcc_cmd_ready),
        .I1(sig_dbeat_cntr_reg__0[0]),
        .I2(sig_dbeat_cntr_reg__0[1]),
        .I3(sig_dbeat_cntr_reg__0[3]),
        .I4(sig_dbeat_cntr_reg__0[2]),
        .I5(sig_dbeat_cntr_reg__0[4]),
        .O(p_0_in__0[4]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h5401)) 
    \sig_dbeat_cntr[5]_i_1 
       (.I0(sig_wdc2pcc_cmd_ready),
        .I1(sig_dbeat_cntr_reg__0[4]),
        .I2(sig_last_mmap_dbeat_reg_i_2_n_0),
        .I3(sig_dbeat_cntr_reg__0[5]),
        .O(p_0_in__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h0000FE01)) 
    \sig_dbeat_cntr[6]_i_1 
       (.I0(sig_dbeat_cntr_reg__0[5]),
        .I1(sig_last_mmap_dbeat_reg_i_2_n_0),
        .I2(sig_dbeat_cntr_reg__0[4]),
        .I3(sig_dbeat_cntr_reg__0[6]),
        .I4(sig_wdc2pcc_cmd_ready),
        .O(p_0_in__0[6]));
  LUT3 #(
    .INIT(8'hEA)) 
    \sig_dbeat_cntr[7]_i_1 
       (.I0(sig_wdc2pcc_cmd_ready),
        .I1(sig_last_reg_out_i_2_n_0),
        .I2(sig_dqual_reg_full_i_3_n_0),
        .O(\sig_dbeat_cntr[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5555555400000001)) 
    \sig_dbeat_cntr[7]_i_2 
       (.I0(sig_wdc2pcc_cmd_ready),
        .I1(sig_dbeat_cntr_reg__0[6]),
        .I2(sig_dbeat_cntr_reg__0[5]),
        .I3(sig_last_mmap_dbeat_reg_i_2_n_0),
        .I4(sig_dbeat_cntr_reg__0[4]),
        .I5(sig_dbeat_cntr_reg__0[7]),
        .O(p_0_in__0[7]));
  FDRE #(
    .INIT(1'b0)) 
    \sig_dbeat_cntr_reg[0] 
       (.C(m00_axi_aclk),
        .CE(\sig_dbeat_cntr[7]_i_1_n_0 ),
        .D(p_0_in__0[0]),
        .Q(sig_dbeat_cntr_reg__0[0]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_dbeat_cntr_reg[1] 
       (.C(m00_axi_aclk),
        .CE(\sig_dbeat_cntr[7]_i_1_n_0 ),
        .D(p_0_in__0[1]),
        .Q(sig_dbeat_cntr_reg__0[1]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_dbeat_cntr_reg[2] 
       (.C(m00_axi_aclk),
        .CE(\sig_dbeat_cntr[7]_i_1_n_0 ),
        .D(p_0_in__0[2]),
        .Q(sig_dbeat_cntr_reg__0[2]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_dbeat_cntr_reg[3] 
       (.C(m00_axi_aclk),
        .CE(\sig_dbeat_cntr[7]_i_1_n_0 ),
        .D(p_0_in__0[3]),
        .Q(sig_dbeat_cntr_reg__0[3]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_dbeat_cntr_reg[4] 
       (.C(m00_axi_aclk),
        .CE(\sig_dbeat_cntr[7]_i_1_n_0 ),
        .D(p_0_in__0[4]),
        .Q(sig_dbeat_cntr_reg__0[4]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_dbeat_cntr_reg[5] 
       (.C(m00_axi_aclk),
        .CE(\sig_dbeat_cntr[7]_i_1_n_0 ),
        .D(p_0_in__0[5]),
        .Q(sig_dbeat_cntr_reg__0[5]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_dbeat_cntr_reg[6] 
       (.C(m00_axi_aclk),
        .CE(\sig_dbeat_cntr[7]_i_1_n_0 ),
        .D(p_0_in__0[6]),
        .Q(sig_dbeat_cntr_reg__0[6]),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_dbeat_cntr_reg[7] 
       (.C(m00_axi_aclk),
        .CE(\sig_dbeat_cntr[7]_i_1_n_0 ),
        .D(p_0_in__0[7]),
        .Q(sig_dbeat_cntr_reg__0[7]),
        .R(out));
  FDSE #(
    .INIT(1'b0)) 
    sig_dqual_reg_empty_reg
       (.C(m00_axi_aclk),
        .CE(sig_wdc2pcc_cmd_ready),
        .D(1'b0),
        .Q(sig_dqual_reg_empty),
        .S(sig_clr_dqual_reg));
  LUT3 #(
    .INIT(8'hF4)) 
    sig_dqual_reg_full_i_1
       (.I0(sig_wdc2pcc_cmd_ready),
        .I1(sig_last_mmap_dbeat),
        .I2(out),
        .O(sig_clr_dqual_reg));
  LUT6 #(
    .INIT(64'h000000000000FF80)) 
    sig_dqual_reg_full_i_2
       (.I0(sig_dqual_reg_full_i_3_n_0),
        .I1(sig_next_sequential_reg),
        .I2(sig_last_dbeat_reg_n_0),
        .I3(sig_dqual_reg_empty),
        .I4(sig_next_calc_error_reg_reg_0),
        .I5(sig_dqual_reg_full_i_5_n_0),
        .O(sig_wdc2pcc_cmd_ready));
  LUT6 #(
    .INIT(64'h0008000800080000)) 
    sig_dqual_reg_full_i_3
       (.I0(sig_s_ready_out_reg),
        .I1(sig_dqual_reg_full),
        .I2(sig_next_calc_error_reg),
        .I3(sig_data2wsc_cmd_cmplt_i_2_n_0),
        .I4(\GEN_OMIT_STORE_FORWARD.sig_tlast_err_stop_reg_0 ),
        .I5(sig_m_valid_out_reg),
        .O(sig_dqual_reg_full_i_3_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    sig_dqual_reg_full_i_5
       (.I0(sig_addr_posted_cntr[2]),
        .I1(sig_addr_posted_cntr[1]),
        .I2(sig_addr_posted_cntr[0]),
        .O(sig_dqual_reg_full_i_5_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_dqual_reg_full_reg
       (.C(m00_axi_aclk),
        .CE(sig_wdc2pcc_cmd_ready),
        .D(sig_wdc2pcc_cmd_ready),
        .Q(sig_dqual_reg_full),
        .R(sig_clr_dqual_reg));
  LUT6 #(
    .INIT(64'h00000000C0CACACA)) 
    sig_first_dbeat_i_1
       (.I0(sig_first_dbeat_reg_n_0),
        .I1(p_1_in),
        .I2(sig_wdc2pcc_cmd_ready),
        .I3(sig_last_reg_out_i_2_n_0),
        .I4(sig_dqual_reg_full_i_3_n_0),
        .I5(out),
        .O(sig_first_dbeat_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_first_dbeat_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_first_dbeat_i_1_n_0),
        .Q(sig_first_dbeat_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h001D00FF001D0000)) 
    sig_last_dbeat_i_1
       (.I0(sig_last_dbeat_i_2_n_0),
        .I1(sig_wdc2pcc_cmd_ready),
        .I2(p_1_in),
        .I3(out),
        .I4(\sig_dbeat_cntr[7]_i_1_n_0 ),
        .I5(sig_last_dbeat_reg_n_0),
        .O(sig_last_dbeat_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFDFF)) 
    sig_last_dbeat_i_2
       (.I0(sig_dqual_reg_full_i_3_n_0),
        .I1(sig_dbeat_cntr_reg__0[3]),
        .I2(sig_dbeat_cntr_reg__0[2]),
        .I3(sig_dbeat_cntr_reg__0[0]),
        .I4(sig_dbeat_cntr_reg__0[1]),
        .I5(sig_last_dbeat_i_4_n_0),
        .O(sig_last_dbeat_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    sig_last_dbeat_i_4
       (.I0(sig_dbeat_cntr_reg__0[6]),
        .I1(sig_dbeat_cntr_reg__0[5]),
        .I2(sig_dbeat_cntr_reg__0[7]),
        .I3(sig_dbeat_cntr_reg__0[4]),
        .O(sig_last_dbeat_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_last_dbeat_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_last_dbeat_i_1_n_0),
        .Q(sig_last_dbeat_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    sig_last_mmap_dbeat_reg_i_1
       (.I0(sig_dqual_reg_full_i_3_n_0),
        .I1(sig_dbeat_cntr_reg__0[6]),
        .I2(sig_dbeat_cntr_reg__0[5]),
        .I3(sig_dbeat_cntr_reg__0[7]),
        .I4(sig_dbeat_cntr_reg__0[4]),
        .I5(sig_last_mmap_dbeat_reg_i_2_n_0),
        .O(sig_last_mmap_dbeat));
  LUT4 #(
    .INIT(16'hFFFE)) 
    sig_last_mmap_dbeat_reg_i_2
       (.I0(sig_dbeat_cntr_reg__0[0]),
        .I1(sig_dbeat_cntr_reg__0[1]),
        .I2(sig_dbeat_cntr_reg__0[3]),
        .I3(sig_dbeat_cntr_reg__0[2]),
        .O(sig_last_mmap_dbeat_reg_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_last_mmap_dbeat_reg_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_last_mmap_dbeat),
        .Q(sig_last_mmap_dbeat_reg),
        .R(out));
  LUT4 #(
    .INIT(16'h2F20)) 
    sig_last_reg_out_i_1
       (.I0(sig_dqual_reg_full),
        .I1(sig_last_reg_out_i_2_n_0),
        .I2(sig_s_ready_dup_reg_1),
        .I3(sig_last_skid_reg),
        .O(sig_last_skid_mux_out));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    sig_last_reg_out_i_2
       (.I0(sig_last_mmap_dbeat_reg_i_2_n_0),
        .I1(sig_dbeat_cntr_reg__0[4]),
        .I2(sig_dbeat_cntr_reg__0[7]),
        .I3(sig_dbeat_cntr_reg__0[5]),
        .I4(sig_dbeat_cntr_reg__0[6]),
        .O(sig_last_reg_out_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    sig_last_skid_reg_i_1
       (.I0(sig_dqual_reg_full),
        .I1(sig_dbeat_cntr_reg__0[6]),
        .I2(sig_dbeat_cntr_reg__0[5]),
        .I3(sig_dbeat_cntr_reg__0[7]),
        .I4(sig_dbeat_cntr_reg__0[4]),
        .I5(sig_last_mmap_dbeat_reg_i_2_n_0),
        .O(sig_wdc2wrskid_wlast));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h02)) 
    sig_ld_new_cmd_reg_i_1
       (.I0(sig_wdc2pcc_cmd_ready),
        .I1(sig_ld_new_cmd_reg),
        .I2(out),
        .O(sig_ld_new_cmd_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_ld_new_cmd_reg_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_ld_new_cmd_reg_i_1_n_0),
        .Q(sig_ld_new_cmd_reg),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFF1FFFF)) 
    sig_m_valid_dup_i_2
       (.I0(sig_m_valid_out_reg),
        .I1(\GEN_OMIT_STORE_FORWARD.sig_tlast_err_stop_reg_0 ),
        .I2(sig_data2wsc_cmd_cmplt_i_2_n_0),
        .I3(sig_next_calc_error_reg),
        .I4(sig_dqual_reg_full),
        .O(sig_s_ready_dup_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_next_calc_error_reg_reg
       (.C(m00_axi_aclk),
        .CE(sig_wdc2pcc_cmd_ready),
        .D(sig_pcc2data_calc_error),
        .Q(sig_next_calc_error_reg),
        .R(sig_clr_dqual_reg));
  FDRE #(
    .INIT(1'b0)) 
    sig_next_cmd_cmplt_reg_reg
       (.C(m00_axi_aclk),
        .CE(sig_wdc2pcc_cmd_ready),
        .D(sig_pcc2data_cmd_cmplt),
        .Q(sig_next_cmd_cmplt_reg),
        .R(sig_clr_dqual_reg));
  FDRE #(
    .INIT(1'b0)) 
    sig_next_eof_reg_reg
       (.C(m00_axi_aclk),
        .CE(sig_wdc2pcc_cmd_ready),
        .D(sig_pcc2data_eof),
        .Q(sig_next_eof_reg),
        .R(sig_clr_dqual_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_last_strb_reg_reg[0] 
       (.C(m00_axi_aclk),
        .CE(sig_wdc2pcc_cmd_ready),
        .D(\sig_xfer_end_strb_reg_reg[3] [0]),
        .Q(sig_next_last_strb_reg[0]),
        .R(sig_clr_dqual_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_last_strb_reg_reg[1] 
       (.C(m00_axi_aclk),
        .CE(sig_wdc2pcc_cmd_ready),
        .D(\sig_xfer_end_strb_reg_reg[3] [1]),
        .Q(sig_next_last_strb_reg[1]),
        .R(sig_clr_dqual_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_last_strb_reg_reg[2] 
       (.C(m00_axi_aclk),
        .CE(sig_wdc2pcc_cmd_ready),
        .D(\sig_xfer_end_strb_reg_reg[3] [2]),
        .Q(sig_next_last_strb_reg[2]),
        .R(sig_clr_dqual_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_last_strb_reg_reg[3] 
       (.C(m00_axi_aclk),
        .CE(sig_wdc2pcc_cmd_ready),
        .D(\sig_xfer_end_strb_reg_reg[3] [3]),
        .Q(sig_next_last_strb_reg[3]),
        .R(sig_clr_dqual_reg));
  FDRE #(
    .INIT(1'b0)) 
    sig_next_sequential_reg_reg
       (.C(m00_axi_aclk),
        .CE(sig_wdc2pcc_cmd_ready),
        .D(sig_pcc2data_sequential),
        .Q(sig_next_sequential_reg),
        .R(sig_clr_dqual_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_strt_strb_reg_reg[0] 
       (.C(m00_axi_aclk),
        .CE(sig_wdc2pcc_cmd_ready),
        .D(\sig_xfer_strt_strb_reg_reg[3] [0]),
        .Q(sig_next_strt_strb_reg[0]),
        .R(sig_clr_dqual_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_strt_strb_reg_reg[1] 
       (.C(m00_axi_aclk),
        .CE(sig_wdc2pcc_cmd_ready),
        .D(\sig_xfer_strt_strb_reg_reg[3] [1]),
        .Q(sig_next_strt_strb_reg[1]),
        .R(sig_clr_dqual_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_strt_strb_reg_reg[2] 
       (.C(m00_axi_aclk),
        .CE(sig_wdc2pcc_cmd_ready),
        .D(\sig_xfer_strt_strb_reg_reg[3] [2]),
        .Q(sig_next_strt_strb_reg[2]),
        .R(sig_clr_dqual_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_strt_strb_reg_reg[3] 
       (.C(m00_axi_aclk),
        .CE(sig_wdc2pcc_cmd_ready),
        .D(\sig_xfer_strt_strb_reg_reg[3] [3]),
        .Q(sig_next_strt_strb_reg[3]),
        .R(sig_clr_dqual_reg));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    sig_push_err2wsc_i_1
       (.I0(sig_ld_new_cmd_reg),
        .I1(sig_next_calc_error_reg),
        .I2(sig_push_err2wsc),
        .I3(out),
        .O(sig_push_err2wsc_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_push_err2wsc_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sig_push_err2wsc_i_1_n_0),
        .Q(sig_push_err2wsc),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAAAABAAAAAAAAAA)) 
    sig_push_to_wsc_i_1
       (.I0(out),
        .I1(sig_push_err2wsc),
        .I2(sig_last_mmap_dbeat),
        .I3(sig_inhibit_rdy_n),
        .I4(FIFO_Full_reg),
        .I5(sig_push_to_wsc),
        .O(sig_push_to_wsc0));
  LUT3 #(
    .INIT(8'h0E)) 
    sig_push_to_wsc_i_2
       (.I0(sig_last_mmap_dbeat),
        .I1(sig_push_err2wsc),
        .I2(sig_tlast_err_stop),
        .O(sig_push_to_wsc_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_push_to_wsc_reg
       (.C(m00_axi_aclk),
        .CE(sig_push_to_wsc_i_2_n_0),
        .D(sig_push_to_wsc_i_2_n_0),
        .Q(sig_push_to_wsc),
        .R(sig_push_to_wsc0));
  LUT5 #(
    .INIT(32'h00040000)) 
    sig_s_ready_dup_i_2
       (.I0(\GEN_OMIT_STORE_FORWARD.sig_tlast_err_stop_reg_0 ),
        .I1(sig_s_ready_out_reg),
        .I2(sig_data2wsc_cmd_cmplt_i_2_n_0),
        .I3(sig_next_calc_error_reg),
        .I4(sig_dqual_reg_full),
        .O(sig_s_ready_dup_reg));
  LUT6 #(
    .INIT(64'hB8BBFFFFB8BB0000)) 
    \sig_strb_reg_out[0]_i_1 
       (.I0(sig_next_strt_strb_reg[0]),
        .I1(sig_first_dbeat_reg_n_0),
        .I2(sig_next_last_strb_reg[0]),
        .I3(sig_last_dbeat_reg_n_0),
        .I4(sig_s_ready_dup_reg_1),
        .I5(\sig_strb_skid_reg_reg[3] [0]),
        .O(\sig_strb_reg_out_reg[3] [0]));
  LUT6 #(
    .INIT(64'hB8BBFFFFB8BB0000)) 
    \sig_strb_reg_out[1]_i_1 
       (.I0(sig_next_strt_strb_reg[1]),
        .I1(sig_first_dbeat_reg_n_0),
        .I2(sig_next_last_strb_reg[1]),
        .I3(sig_last_dbeat_reg_n_0),
        .I4(sig_s_ready_dup_reg_1),
        .I5(\sig_strb_skid_reg_reg[3] [1]),
        .O(\sig_strb_reg_out_reg[3] [1]));
  LUT6 #(
    .INIT(64'hB8BBFFFFB8BB0000)) 
    \sig_strb_reg_out[2]_i_1 
       (.I0(sig_next_strt_strb_reg[2]),
        .I1(sig_first_dbeat_reg_n_0),
        .I2(sig_next_last_strb_reg[2]),
        .I3(sig_last_dbeat_reg_n_0),
        .I4(sig_s_ready_dup_reg_1),
        .I5(\sig_strb_skid_reg_reg[3] [2]),
        .O(\sig_strb_reg_out_reg[3] [2]));
  LUT6 #(
    .INIT(64'hB8BBFFFFB8BB0000)) 
    \sig_strb_reg_out[3]_i_1 
       (.I0(sig_next_strt_strb_reg[3]),
        .I1(sig_first_dbeat_reg_n_0),
        .I2(sig_next_last_strb_reg[3]),
        .I3(sig_last_dbeat_reg_n_0),
        .I4(sig_s_ready_dup_reg_1),
        .I5(\sig_strb_skid_reg_reg[3] [3]),
        .O(\sig_strb_reg_out_reg[3] [3]));
  LUT4 #(
    .INIT(16'hB8BB)) 
    \sig_strb_skid_reg[0]_i_1 
       (.I0(sig_next_strt_strb_reg[0]),
        .I1(sig_first_dbeat_reg_n_0),
        .I2(sig_next_last_strb_reg[0]),
        .I3(sig_last_dbeat_reg_n_0),
        .O(D[0]));
  LUT4 #(
    .INIT(16'hB8BB)) 
    \sig_strb_skid_reg[1]_i_1 
       (.I0(sig_next_strt_strb_reg[1]),
        .I1(sig_first_dbeat_reg_n_0),
        .I2(sig_next_last_strb_reg[1]),
        .I3(sig_last_dbeat_reg_n_0),
        .O(D[1]));
  LUT4 #(
    .INIT(16'hB8BB)) 
    \sig_strb_skid_reg[2]_i_1 
       (.I0(sig_next_strt_strb_reg[2]),
        .I1(sig_first_dbeat_reg_n_0),
        .I2(sig_next_last_strb_reg[2]),
        .I3(sig_last_dbeat_reg_n_0),
        .O(D[2]));
  LUT4 #(
    .INIT(16'hB8BB)) 
    \sig_strb_skid_reg[3]_i_1 
       (.I0(sig_next_strt_strb_reg[3]),
        .I1(sig_first_dbeat_reg_n_0),
        .I2(sig_next_last_strb_reg[3]),
        .I3(sig_last_dbeat_reg_n_0),
        .O(D[3]));
endmodule

(* ORIG_REF_NAME = "cntr_incr_decr_addn_f" *) 
module design_1_myip_burst_test_0_0_cntr_incr_decr_addn_f
   (fifo_full_p1,
    Q,
    FIFO_Full_reg,
    \INFERRED_GEN.cnt_i_reg[2]_0 ,
    sig_inhibit_rdy_n_reg,
    sig_inhibit_rdy_n,
    FIFO_Full_reg_0,
    m00_axi_bvalid,
    sig_coelsc_reg_empty,
    sig_data2wsc_calc_err_reg,
    \INFERRED_GEN.cnt_i_reg[2]_1 ,
    out,
    m00_axi_aclk);
  output fifo_full_p1;
  output [2:0]Q;
  output FIFO_Full_reg;
  input \INFERRED_GEN.cnt_i_reg[2]_0 ;
  input sig_inhibit_rdy_n_reg;
  input sig_inhibit_rdy_n;
  input FIFO_Full_reg_0;
  input m00_axi_bvalid;
  input sig_coelsc_reg_empty;
  input [0:0]sig_data2wsc_calc_err_reg;
  input [0:0]\INFERRED_GEN.cnt_i_reg[2]_1 ;
  input out;
  input m00_axi_aclk;

  wire FIFO_Full_reg;
  wire FIFO_Full_reg_0;
  wire \INFERRED_GEN.cnt_i[1]_i_2__0_n_0 ;
  wire \INFERRED_GEN.cnt_i[2]_i_2__0_n_0 ;
  wire \INFERRED_GEN.cnt_i_reg[2]_0 ;
  wire [0:0]\INFERRED_GEN.cnt_i_reg[2]_1 ;
  wire [2:0]Q;
  wire [2:0]addr_i_p1;
  wire fifo_full_p1;
  wire m00_axi_aclk;
  wire m00_axi_bvalid;
  wire out;
  wire sig_coelsc_reg_empty;
  wire [0:0]sig_data2wsc_calc_err_reg;
  wire sig_inhibit_rdy_n;
  wire sig_inhibit_rdy_n_reg;

  LUT5 #(
    .INIT(32'h10210200)) 
    FIFO_Full_i_1__0
       (.I0(\INFERRED_GEN.cnt_i_reg[2]_0 ),
        .I1(Q[2]),
        .I2(sig_inhibit_rdy_n_reg),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(fifo_full_p1));
  LUT3 #(
    .INIT(8'h5D)) 
    FIFO_Full_i_2__0
       (.I0(sig_coelsc_reg_empty),
        .I1(Q[2]),
        .I2(sig_data2wsc_calc_err_reg),
        .O(FIFO_Full_reg));
  LUT6 #(
    .INIT(64'hEE1EEEEE11E11111)) 
    \INFERRED_GEN.cnt_i[0]_i_1__0 
       (.I0(\INFERRED_GEN.cnt_i_reg[2]_0 ),
        .I1(Q[2]),
        .I2(sig_inhibit_rdy_n),
        .I3(FIFO_Full_reg_0),
        .I4(m00_axi_bvalid),
        .I5(Q[0]),
        .O(addr_i_p1[0]));
  LUT6 #(
    .INIT(64'hDFFFFF20200000DF)) 
    \INFERRED_GEN.cnt_i[1]_i_1__0 
       (.I0(m00_axi_bvalid),
        .I1(FIFO_Full_reg_0),
        .I2(sig_inhibit_rdy_n),
        .I3(Q[0]),
        .I4(\INFERRED_GEN.cnt_i[1]_i_2__0_n_0 ),
        .I5(Q[1]),
        .O(addr_i_p1[1]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \INFERRED_GEN.cnt_i[1]_i_2__0 
       (.I0(sig_coelsc_reg_empty),
        .I1(Q[2]),
        .I2(\INFERRED_GEN.cnt_i_reg[2]_1 ),
        .O(\INFERRED_GEN.cnt_i[1]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'hDD22DD42)) 
    \INFERRED_GEN.cnt_i[2]_i_1__0 
       (.I0(Q[1]),
        .I1(\INFERRED_GEN.cnt_i[2]_i_2__0_n_0 ),
        .I2(sig_coelsc_reg_empty),
        .I3(Q[2]),
        .I4(\INFERRED_GEN.cnt_i_reg[2]_1 ),
        .O(addr_i_p1[2]));
  LUT6 #(
    .INIT(64'hFDFD54FDFDFDFDFD)) 
    \INFERRED_GEN.cnt_i[2]_i_2__0 
       (.I0(Q[0]),
        .I1(\INFERRED_GEN.cnt_i_reg[2]_0 ),
        .I2(Q[2]),
        .I3(sig_inhibit_rdy_n),
        .I4(FIFO_Full_reg_0),
        .I5(m00_axi_bvalid),
        .O(\INFERRED_GEN.cnt_i[2]_i_2__0_n_0 ));
  FDSE \INFERRED_GEN.cnt_i_reg[0] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(addr_i_p1[0]),
        .Q(Q[0]),
        .S(out));
  FDSE \INFERRED_GEN.cnt_i_reg[1] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(addr_i_p1[1]),
        .Q(Q[1]),
        .S(out));
  FDSE \INFERRED_GEN.cnt_i_reg[2] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(addr_i_p1[2]),
        .Q(Q[2]),
        .S(out));
endmodule

(* ORIG_REF_NAME = "cntr_incr_decr_addn_f" *) 
module design_1_myip_burst_test_0_0_cntr_incr_decr_addn_f_1
   (fifo_full_p1,
    Q,
    \INFERRED_GEN.cnt_i_reg[1]_0 ,
    \sig_wdc_statcnt_reg[2] ,
    \sig_wdc_statcnt_reg[1] ,
    \sig_wdc_statcnt_reg[0] ,
    \GEN_OMIT_STORE_FORWARD.sig_coelsc_reg_empty_reg ,
    \GEN_OMIT_STORE_FORWARD.sig_tlast_err_stop_reg ,
    sig_tlast_err_stop,
    sig_push_to_wsc,
    FIFO_Full_reg,
    sig_inhibit_rdy_n_reg,
    sig_coelsc_reg_empty,
    \INFERRED_GEN.cnt_i_reg[2]_0 ,
    out,
    sig_wdc_statcnt,
    sig_rdwr_reset_reg_reg,
    m00_axi_aclk);
  output fifo_full_p1;
  output [2:0]Q;
  output \INFERRED_GEN.cnt_i_reg[1]_0 ;
  output \sig_wdc_statcnt_reg[2] ;
  output \sig_wdc_statcnt_reg[1] ;
  output \sig_wdc_statcnt_reg[0] ;
  input \GEN_OMIT_STORE_FORWARD.sig_coelsc_reg_empty_reg ;
  input \GEN_OMIT_STORE_FORWARD.sig_tlast_err_stop_reg ;
  input sig_tlast_err_stop;
  input sig_push_to_wsc;
  input FIFO_Full_reg;
  input sig_inhibit_rdy_n_reg;
  input sig_coelsc_reg_empty;
  input [0:0]\INFERRED_GEN.cnt_i_reg[2]_0 ;
  input [0:0]out;
  input [2:0]sig_wdc_statcnt;
  input sig_rdwr_reset_reg_reg;
  input m00_axi_aclk;

  wire FIFO_Full_reg;
  wire \GEN_OMIT_STORE_FORWARD.sig_coelsc_reg_empty_reg ;
  wire \GEN_OMIT_STORE_FORWARD.sig_tlast_err_stop_reg ;
  wire \INFERRED_GEN.cnt_i[2]_i_2_n_0 ;
  wire \INFERRED_GEN.cnt_i_reg[1]_0 ;
  wire [0:0]\INFERRED_GEN.cnt_i_reg[2]_0 ;
  wire [2:0]Q;
  wire [2:0]addr_i_p1;
  wire fifo_full_p1;
  wire m00_axi_aclk;
  wire [0:0]out;
  wire sig_coelsc_reg_empty;
  wire sig_inhibit_rdy_n_reg;
  wire sig_push_to_wsc;
  wire sig_rdwr_reset_reg_reg;
  wire sig_tlast_err_stop;
  wire [2:0]sig_wdc_statcnt;
  wire \sig_wdc_statcnt_reg[0] ;
  wire \sig_wdc_statcnt_reg[1] ;
  wire \sig_wdc_statcnt_reg[2] ;

  LUT5 #(
    .INIT(32'h10210200)) 
    FIFO_Full_i_1
       (.I0(\GEN_OMIT_STORE_FORWARD.sig_coelsc_reg_empty_reg ),
        .I1(Q[2]),
        .I2(\GEN_OMIT_STORE_FORWARD.sig_tlast_err_stop_reg ),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(fifo_full_p1));
  LUT6 #(
    .INIT(64'hAA9AAAAA55655555)) 
    \INFERRED_GEN.cnt_i[0]_i_1 
       (.I0(\INFERRED_GEN.cnt_i_reg[1]_0 ),
        .I1(sig_tlast_err_stop),
        .I2(sig_push_to_wsc),
        .I3(FIFO_Full_reg),
        .I4(sig_inhibit_rdy_n_reg),
        .I5(Q[0]),
        .O(addr_i_p1[0]));
  LUT4 #(
    .INIT(16'hBAFF)) 
    \INFERRED_GEN.cnt_i[0]_i_2 
       (.I0(Q[2]),
        .I1(out),
        .I2(\INFERRED_GEN.cnt_i_reg[2]_0 ),
        .I3(sig_coelsc_reg_empty),
        .O(\INFERRED_GEN.cnt_i_reg[1]_0 ));
  LUT4 #(
    .INIT(16'hDB24)) 
    \INFERRED_GEN.cnt_i[1]_i_1 
       (.I0(Q[0]),
        .I1(\GEN_OMIT_STORE_FORWARD.sig_tlast_err_stop_reg ),
        .I2(\INFERRED_GEN.cnt_i_reg[1]_0 ),
        .I3(Q[1]),
        .O(addr_i_p1[1]));
  LUT6 #(
    .INIT(64'hFF00FFA2005DFF00)) 
    \INFERRED_GEN.cnt_i[2]_i_1 
       (.I0(sig_coelsc_reg_empty),
        .I1(\INFERRED_GEN.cnt_i_reg[2]_0 ),
        .I2(out),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(\INFERRED_GEN.cnt_i[2]_i_2_n_0 ),
        .O(addr_i_p1[2]));
  LUT6 #(
    .INIT(64'hFBFF0000FFFFFBFF)) 
    \INFERRED_GEN.cnt_i[2]_i_2 
       (.I0(sig_tlast_err_stop),
        .I1(sig_push_to_wsc),
        .I2(FIFO_Full_reg),
        .I3(sig_inhibit_rdy_n_reg),
        .I4(\INFERRED_GEN.cnt_i_reg[1]_0 ),
        .I5(Q[0]),
        .O(\INFERRED_GEN.cnt_i[2]_i_2_n_0 ));
  FDSE \INFERRED_GEN.cnt_i_reg[0] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(addr_i_p1[0]),
        .Q(Q[0]),
        .S(sig_rdwr_reset_reg_reg));
  FDSE \INFERRED_GEN.cnt_i_reg[1] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(addr_i_p1[1]),
        .Q(Q[1]),
        .S(sig_rdwr_reset_reg_reg));
  FDSE \INFERRED_GEN.cnt_i_reg[2] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(addr_i_p1[2]),
        .Q(Q[2]),
        .S(sig_rdwr_reset_reg_reg));
  LUT5 #(
    .INIT(32'hAA5D54AA)) 
    \sig_wdc_statcnt[0]_i_1 
       (.I0(\INFERRED_GEN.cnt_i_reg[1]_0 ),
        .I1(sig_wdc_statcnt[1]),
        .I2(sig_wdc_statcnt[2]),
        .I3(\GEN_OMIT_STORE_FORWARD.sig_tlast_err_stop_reg ),
        .I4(sig_wdc_statcnt[0]),
        .O(\sig_wdc_statcnt_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'hB5F0F058)) 
    \sig_wdc_statcnt[1]_i_1 
       (.I0(\GEN_OMIT_STORE_FORWARD.sig_tlast_err_stop_reg ),
        .I1(sig_wdc_statcnt[2]),
        .I2(sig_wdc_statcnt[1]),
        .I3(sig_wdc_statcnt[0]),
        .I4(\INFERRED_GEN.cnt_i_reg[1]_0 ),
        .O(\sig_wdc_statcnt_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h8CCCCCC4)) 
    \sig_wdc_statcnt[2]_i_1 
       (.I0(\GEN_OMIT_STORE_FORWARD.sig_tlast_err_stop_reg ),
        .I1(sig_wdc_statcnt[2]),
        .I2(sig_wdc_statcnt[1]),
        .I3(sig_wdc_statcnt[0]),
        .I4(\INFERRED_GEN.cnt_i_reg[1]_0 ),
        .O(\sig_wdc_statcnt_reg[2] ));
endmodule

(* ORIG_REF_NAME = "dynshreg_f" *) 
module design_1_myip_burst_test_0_0_dynshreg_f
   (\GEN_OMIT_STORE_FORWARD.sig_coelsc_decerr_reg_reg ,
    \GEN_OMIT_STORE_FORWARD.sig_coelsc_slverr_reg_reg ,
    sig_data2wsc_calc_err_reg,
    sig_wsc2stat_status,
    m00_axi_bvalid,
    FIFO_Full_reg,
    sig_inhibit_rdy_n,
    m00_axi_bresp,
    addr,
    m00_axi_aclk);
  output \GEN_OMIT_STORE_FORWARD.sig_coelsc_decerr_reg_reg ;
  output \GEN_OMIT_STORE_FORWARD.sig_coelsc_slverr_reg_reg ;
  input [0:0]sig_data2wsc_calc_err_reg;
  input [1:0]sig_wsc2stat_status;
  input m00_axi_bvalid;
  input FIFO_Full_reg;
  input sig_inhibit_rdy_n;
  input [1:0]m00_axi_bresp;
  input [0:1]addr;
  input m00_axi_aclk;

  wire FIFO_Full_reg;
  wire \GEN_OMIT_STORE_FORWARD.sig_coelsc_decerr_reg_reg ;
  wire \GEN_OMIT_STORE_FORWARD.sig_coelsc_slverr_reg_reg ;
  wire [0:1]addr;
  wire m00_axi_aclk;
  wire [1:0]m00_axi_bresp;
  wire m00_axi_bvalid;
  wire [0:0]sig_data2wsc_calc_err_reg;
  wire sig_inhibit_rdy_n;
  wire sig_wr_fifo;
  wire [1:0]sig_wresp_sfifo_out;
  wire [1:0]sig_wsc2stat_status;

  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h5444)) 
    \GEN_OMIT_STORE_FORWARD.sig_coelsc_decerr_reg_i_1 
       (.I0(sig_data2wsc_calc_err_reg),
        .I1(sig_wsc2stat_status[0]),
        .I2(sig_wresp_sfifo_out[1]),
        .I3(sig_wresp_sfifo_out[0]),
        .O(\GEN_OMIT_STORE_FORWARD.sig_coelsc_decerr_reg_reg ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h4544)) 
    \GEN_OMIT_STORE_FORWARD.sig_coelsc_slverr_reg_i_1 
       (.I0(sig_data2wsc_calc_err_reg),
        .I1(sig_wsc2stat_status[1]),
        .I2(sig_wresp_sfifo_out[0]),
        .I3(sig_wresp_sfifo_out[1]),
        .O(\GEN_OMIT_STORE_FORWARD.sig_coelsc_slverr_reg_reg ));
  (* srl_bus_name = "\inst/myip_burst_test_v1_0_M00_AXI_inst/I_RD_WR_CNTRL_MODULE/I_WR_STATUS_CNTLR/I_WRESP_STATUS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[2] " *) 
  (* srl_name = "\inst/myip_burst_test_v1_0_M00_AXI_inst/I_RD_WR_CNTRL_MODULE/I_WR_STATUS_CNTLR/I_WRESP_STATUS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[2][0]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[2][0]_srl3 
       (.A0(addr[1]),
        .A1(addr[0]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_wr_fifo),
        .CLK(m00_axi_aclk),
        .D(m00_axi_bresp[0]),
        .Q(sig_wresp_sfifo_out[0]));
  LUT3 #(
    .INIT(8'h20)) 
    \INFERRED_GEN.data_reg[2][0]_srl3_i_1__0 
       (.I0(m00_axi_bvalid),
        .I1(FIFO_Full_reg),
        .I2(sig_inhibit_rdy_n),
        .O(sig_wr_fifo));
  (* srl_bus_name = "\inst/myip_burst_test_v1_0_M00_AXI_inst/I_RD_WR_CNTRL_MODULE/I_WR_STATUS_CNTLR/I_WRESP_STATUS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[2] " *) 
  (* srl_name = "\inst/myip_burst_test_v1_0_M00_AXI_inst/I_RD_WR_CNTRL_MODULE/I_WR_STATUS_CNTLR/I_WRESP_STATUS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[2][1]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[2][1]_srl3 
       (.A0(addr[1]),
        .A1(addr[0]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_wr_fifo),
        .CLK(m00_axi_aclk),
        .D(m00_axi_bresp[1]),
        .Q(sig_wresp_sfifo_out[1]));
endmodule

(* ORIG_REF_NAME = "dynshreg_f" *) 
module design_1_myip_burst_test_0_0_dynshreg_f__parameterized0
   (p_0_in,
    \GEN_OMIT_STORE_FORWARD.sig_coelsc_interr_reg_reg ,
    sig_push_coelsc_reg,
    p_4_out,
    sig_inhibit_rdy_n_reg,
    FIFO_Full_reg,
    sig_push_to_wsc,
    sig_tlast_err_stop,
    sig_coelsc_reg_empty,
    \INFERRED_GEN.cnt_i_reg[2] ,
    Q,
    sig_wsc2stat_status,
    in,
    m00_axi_aclk);
  output p_0_in;
  output [1:0]\GEN_OMIT_STORE_FORWARD.sig_coelsc_interr_reg_reg ;
  output sig_push_coelsc_reg;
  output p_4_out;
  input sig_inhibit_rdy_n_reg;
  input FIFO_Full_reg;
  input sig_push_to_wsc;
  input sig_tlast_err_stop;
  input sig_coelsc_reg_empty;
  input [0:0]\INFERRED_GEN.cnt_i_reg[2] ;
  input [2:0]Q;
  input [0:0]sig_wsc2stat_status;
  input [2:0]in;
  input m00_axi_aclk;

  wire FIFO_Full_reg;
  wire [1:0]\GEN_OMIT_STORE_FORWARD.sig_coelsc_interr_reg_reg ;
  wire [0:0]\INFERRED_GEN.cnt_i_reg[2] ;
  wire [2:0]Q;
  wire [2:0]in;
  wire m00_axi_aclk;
  wire p_0_in;
  wire p_4_out;
  wire sig_coelsc_reg_empty;
  wire [1:1]sig_dcntl_sfifo_out;
  wire sig_inhibit_rdy_n_reg;
  wire sig_push_coelsc_reg;
  wire sig_push_to_wsc;
  wire sig_tlast_err_stop;
  wire sig_wr_fifo;
  wire [0:0]sig_wsc2stat_status;

  LUT3 #(
    .INIT(8'hFE)) 
    \GEN_OMIT_STORE_FORWARD.sig_coelsc_interr_reg_i_1 
       (.I0(sig_dcntl_sfifo_out),
        .I1(sig_wsc2stat_status),
        .I2(\GEN_OMIT_STORE_FORWARD.sig_coelsc_interr_reg_reg [1]),
        .O(p_4_out));
  LUT4 #(
    .INIT(16'h00A2)) 
    \GEN_OMIT_STORE_FORWARD.sig_coelsc_reg_empty_i_2 
       (.I0(sig_coelsc_reg_empty),
        .I1(\INFERRED_GEN.cnt_i_reg[2] ),
        .I2(\GEN_OMIT_STORE_FORWARD.sig_coelsc_interr_reg_reg [1]),
        .I3(Q[2]),
        .O(sig_push_coelsc_reg));
  LUT1 #(
    .INIT(2'h1)) 
    \GEN_OMIT_STORE_FORWARD.sig_coelsc_reg_empty_i_3 
       (.I0(\GEN_OMIT_STORE_FORWARD.sig_coelsc_interr_reg_reg [0]),
        .O(p_0_in));
  (* srl_bus_name = "\inst/myip_burst_test_v1_0_M00_AXI_inst/I_RD_WR_CNTRL_MODULE/I_WR_STATUS_CNTLR/GEN_OMIT_STORE_FORWARD.I_DATA_CNTL_STATUS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[2] " *) 
  (* srl_name = "\inst/myip_burst_test_v1_0_M00_AXI_inst/I_RD_WR_CNTRL_MODULE/I_WR_STATUS_CNTLR/GEN_OMIT_STORE_FORWARD.I_DATA_CNTL_STATUS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[2][0]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[2][0]_srl3 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_wr_fifo),
        .CLK(m00_axi_aclk),
        .D(in[0]),
        .Q(\GEN_OMIT_STORE_FORWARD.sig_coelsc_interr_reg_reg [0]));
  LUT4 #(
    .INIT(16'h0020)) 
    \INFERRED_GEN.data_reg[2][0]_srl3_i_1 
       (.I0(sig_inhibit_rdy_n_reg),
        .I1(FIFO_Full_reg),
        .I2(sig_push_to_wsc),
        .I3(sig_tlast_err_stop),
        .O(sig_wr_fifo));
  (* srl_bus_name = "\inst/myip_burst_test_v1_0_M00_AXI_inst/I_RD_WR_CNTRL_MODULE/I_WR_STATUS_CNTLR/GEN_OMIT_STORE_FORWARD.I_DATA_CNTL_STATUS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[2] " *) 
  (* srl_name = "\inst/myip_burst_test_v1_0_M00_AXI_inst/I_RD_WR_CNTRL_MODULE/I_WR_STATUS_CNTLR/GEN_OMIT_STORE_FORWARD.I_DATA_CNTL_STATUS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[2][1]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[2][1]_srl3 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_wr_fifo),
        .CLK(m00_axi_aclk),
        .D(in[1]),
        .Q(sig_dcntl_sfifo_out));
  (* srl_bus_name = "\inst/myip_burst_test_v1_0_M00_AXI_inst/I_RD_WR_CNTRL_MODULE/I_WR_STATUS_CNTLR/GEN_OMIT_STORE_FORWARD.I_DATA_CNTL_STATUS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[2] " *) 
  (* srl_name = "\inst/myip_burst_test_v1_0_M00_AXI_inst/I_RD_WR_CNTRL_MODULE/I_WR_STATUS_CNTLR/GEN_OMIT_STORE_FORWARD.I_DATA_CNTL_STATUS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[2][2]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[2][2]_srl3 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_wr_fifo),
        .CLK(m00_axi_aclk),
        .D(in[2]),
        .Q(\GEN_OMIT_STORE_FORWARD.sig_coelsc_interr_reg_reg [1]));
endmodule

(* ORIG_REF_NAME = "myip_burst_test_v1_0" *) 
module design_1_myip_burst_test_0_0_myip_burst_test_v1_0
   (s00_axi_arready,
    m00_axi_wvalid,
    m00_axi_wdata,
    m00_axi_wstrb,
    m00_axi_wlast,
    m00_axi_araddr,
    m00_axi_arlen,
    m00_axi_arsize,
    m00_axi_arburst,
    m00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wready,
    slave_reg_0,
    slave_reg_1,
    Q,
    s00_axi_rdata,
    s00_axi_rvalid,
    m00_axi_bready,
    ip2bus_otputs,
    s00_axi_bvalid,
    ip2bus_inputs,
    m00_axi_wready,
    s00_axi_arvalid,
    m00_axi_aresetn,
    m00_axi_aclk,
    m00_axi_bresp,
    ip2bus_mstwr_d,
    s00_axi_aclk,
    s00_axi_awaddr,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_wdata,
    s00_axi_araddr,
    pwm,
    ip2bus_mst_length,
    ip2bus_mst_addr,
    s00_axi_wstrb,
    m00_axi_bvalid,
    m00_axi_awready,
    s00_axi_aresetn,
    s00_axi_bready,
    s00_axi_rready);
  output s00_axi_arready;
  output m00_axi_wvalid;
  output [31:0]m00_axi_wdata;
  output [3:0]m00_axi_wstrb;
  output m00_axi_wlast;
  output [31:0]m00_axi_araddr;
  output [3:0]m00_axi_arlen;
  output [0:0]m00_axi_arsize;
  output [0:0]m00_axi_arburst;
  output m00_axi_awvalid;
  output s00_axi_awready;
  output s00_axi_wready;
  output [31:0]slave_reg_0;
  output [31:0]slave_reg_1;
  output [12:0]Q;
  output [31:0]s00_axi_rdata;
  output s00_axi_rvalid;
  output m00_axi_bready;
  output [5:0]ip2bus_otputs;
  output s00_axi_bvalid;
  input [3:0]ip2bus_inputs;
  input m00_axi_wready;
  input s00_axi_arvalid;
  input m00_axi_aresetn;
  input m00_axi_aclk;
  input [1:0]m00_axi_bresp;
  input [31:0]ip2bus_mstwr_d;
  input s00_axi_aclk;
  input [1:0]s00_axi_awaddr;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input [31:0]s00_axi_wdata;
  input [1:0]s00_axi_araddr;
  input pwm;
  input [11:0]ip2bus_mst_length;
  input [31:0]ip2bus_mst_addr;
  input [3:0]s00_axi_wstrb;
  input m00_axi_bvalid;
  input m00_axi_awready;
  input s00_axi_aresetn;
  input s00_axi_bready;
  input s00_axi_rready;

  wire [12:0]Q;
  wire [3:0]ip2bus_inputs;
  wire [31:0]ip2bus_mst_addr;
  wire [11:0]ip2bus_mst_length;
  wire [31:0]ip2bus_mstwr_d;
  wire [5:0]ip2bus_otputs;
  wire m00_axi_aclk;
  wire [31:0]m00_axi_araddr;
  wire [0:0]m00_axi_arburst;
  wire m00_axi_aresetn;
  wire [3:0]m00_axi_arlen;
  wire [0:0]m00_axi_arsize;
  wire m00_axi_awready;
  wire m00_axi_awvalid;
  wire m00_axi_bready;
  wire [1:0]m00_axi_bresp;
  wire m00_axi_bvalid;
  wire [31:0]m00_axi_wdata;
  wire m00_axi_wlast;
  wire m00_axi_wready;
  wire [3:0]m00_axi_wstrb;
  wire m00_axi_wvalid;
  wire pwm;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire [31:0]slave_reg_0;
  wire [31:0]slave_reg_1;

  design_1_myip_burst_test_0_0_axi_master_burst myip_burst_test_v1_0_M00_AXI_inst
       (.ip2bus_inputs(ip2bus_inputs),
        .ip2bus_mst_addr(ip2bus_mst_addr),
        .ip2bus_mst_length(ip2bus_mst_length),
        .ip2bus_mstwr_d(ip2bus_mstwr_d),
        .ip2bus_otputs(ip2bus_otputs),
        .m00_axi_aclk(m00_axi_aclk),
        .m00_axi_araddr(m00_axi_araddr),
        .m00_axi_arburst(m00_axi_arburst),
        .m00_axi_aresetn(m00_axi_aresetn),
        .m00_axi_arlen(m00_axi_arlen),
        .m00_axi_arsize(m00_axi_arsize),
        .m00_axi_awready(m00_axi_awready),
        .m00_axi_awvalid(m00_axi_awvalid),
        .m00_axi_bready(m00_axi_bready),
        .m00_axi_bresp(m00_axi_bresp),
        .m00_axi_bvalid(m00_axi_bvalid),
        .m00_axi_wdata(m00_axi_wdata),
        .m00_axi_wlast(m00_axi_wlast),
        .m00_axi_wready(m00_axi_wready),
        .m00_axi_wstrb(m00_axi_wstrb),
        .m00_axi_wvalid(m00_axi_wvalid));
  design_1_myip_burst_test_0_0_myip_burst_test_v1_0_S00_AXI myip_burst_test_v1_0_S00_AXI_inst
       (.Q(Q),
        .pwm(pwm),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arready(s00_axi_arready),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awready(s00_axi_awready),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid),
        .slave_reg_0(slave_reg_0),
        .slave_reg_1(slave_reg_1));
endmodule

(* ORIG_REF_NAME = "myip_burst_test_v1_0_S00_AXI" *) 
module design_1_myip_burst_test_0_0_myip_burst_test_v1_0_S00_AXI
   (s00_axi_awready,
    s00_axi_wready,
    s00_axi_arready,
    s00_axi_rvalid,
    s00_axi_bvalid,
    slave_reg_0,
    slave_reg_1,
    Q,
    s00_axi_rdata,
    s00_axi_aclk,
    s00_axi_arvalid,
    s00_axi_aresetn,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_bready,
    s00_axi_rready,
    s00_axi_awaddr,
    s00_axi_wdata,
    s00_axi_araddr,
    pwm,
    s00_axi_wstrb);
  output s00_axi_awready;
  output s00_axi_wready;
  output s00_axi_arready;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  output [31:0]slave_reg_0;
  output [31:0]slave_reg_1;
  output [12:0]Q;
  output [31:0]s00_axi_rdata;
  input s00_axi_aclk;
  input s00_axi_arvalid;
  input s00_axi_aresetn;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input s00_axi_bready;
  input s00_axi_rready;
  input [1:0]s00_axi_awaddr;
  input [31:0]s00_axi_wdata;
  input [1:0]s00_axi_araddr;
  input pwm;
  input [3:0]s00_axi_wstrb;

  wire [12:0]Q;
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire [3:2]axi_araddr;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire axi_arready_i_1_n_0;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire axi_awready0;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire [1:0]p_0_in;
  wire [31:7]p_1_in;
  wire pwm;
  wire [31:0]reg_data_out;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire [31:0]slave_reg_0;
  wire [31:0]slave_reg_1;
  wire \slv_reg0[31]_i_1_n_0 ;
  wire \slv_reg1[15]_i_1_n_0 ;
  wire \slv_reg1[23]_i_1_n_0 ;
  wire \slv_reg1[31]_i_1_n_0 ;
  wire \slv_reg1[7]_i_1_n_0 ;
  wire \slv_reg2[1]_i_1_n_0 ;
  wire \slv_reg2[23]_i_1_n_0 ;
  wire \slv_reg2[31]_i_1_n_0 ;
  wire \slv_reg2[9]_i_1_n_0 ;
  wire \slv_reg2_reg_n_0_[15] ;
  wire \slv_reg2_reg_n_0_[16] ;
  wire \slv_reg2_reg_n_0_[17] ;
  wire \slv_reg2_reg_n_0_[18] ;
  wire \slv_reg2_reg_n_0_[19] ;
  wire \slv_reg2_reg_n_0_[20] ;
  wire \slv_reg2_reg_n_0_[21] ;
  wire \slv_reg2_reg_n_0_[22] ;
  wire \slv_reg2_reg_n_0_[23] ;
  wire \slv_reg2_reg_n_0_[24] ;
  wire \slv_reg2_reg_n_0_[25] ;
  wire \slv_reg2_reg_n_0_[26] ;
  wire \slv_reg2_reg_n_0_[27] ;
  wire \slv_reg2_reg_n_0_[28] ;
  wire \slv_reg2_reg_n_0_[29] ;
  wire \slv_reg2_reg_n_0_[30] ;
  wire \slv_reg2_reg_n_0_[31] ;
  wire \slv_reg2_reg_n_0_[3] ;
  wire [31:0]slv_reg3;
  wire \slv_reg3[15]_i_1_n_0 ;
  wire \slv_reg3[23]_i_1_n_0 ;
  wire \slv_reg3[31]_i_1_n_0 ;
  wire \slv_reg3[7]_i_1_n_0 ;
  wire slv_reg_rden__0;
  wire slv_reg_wren__0;

  LUT6 #(
    .INIT(64'hF7FFC4CCC4CCC4CC)) 
    aw_en_i_1
       (.I0(s00_axi_wvalid),
        .I1(aw_en_reg_n_0),
        .I2(s00_axi_awready),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(aw_en_i_1_n_0));
  FDSE aw_en_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(aw_en_i_1_n_0),
        .Q(aw_en_reg_n_0),
        .S(\slv_reg0[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[2]_i_1 
       (.I0(s00_axi_araddr[0]),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_arready),
        .I3(axi_araddr[2]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[3]_i_1 
       (.I0(s00_axi_araddr[1]),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_arready),
        .I3(axi_araddr[3]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  FDRE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(axi_araddr[2]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(axi_araddr[3]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(s00_axi_arready),
        .O(axi_arready_i_1_n_0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready_i_1_n_0),
        .Q(s00_axi_arready),
        .R(\slv_reg0[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \axi_awaddr[2]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_awready),
        .I3(aw_en_reg_n_0),
        .I4(s00_axi_wvalid),
        .I5(p_0_in[0]),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \axi_awaddr[3]_i_1 
       (.I0(s00_axi_awaddr[1]),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_awready),
        .I3(aw_en_reg_n_0),
        .I4(s00_axi_wvalid),
        .I5(p_0_in[1]),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(p_0_in[0]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(p_0_in[1]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    axi_awready_i_1
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_awready),
        .I2(aw_en_reg_n_0),
        .I3(s00_axi_wvalid),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(s00_axi_awready),
        .R(\slv_reg0[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(s00_axi_wready),
        .I1(s00_axi_awready),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(\slv_reg0[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[0]_i_1 
       (.I0(slave_reg_1[0]),
        .I1(slave_reg_0[0]),
        .I2(slv_reg3[0]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(pwm),
        .O(reg_data_out[0]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[10]_i_1 
       (.I0(slave_reg_1[10]),
        .I1(slave_reg_0[10]),
        .I2(slv_reg3[10]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(Q[8]),
        .O(reg_data_out[10]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[11]_i_1 
       (.I0(slave_reg_1[11]),
        .I1(slave_reg_0[11]),
        .I2(slv_reg3[11]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(Q[9]),
        .O(reg_data_out[11]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[12]_i_1 
       (.I0(slave_reg_1[12]),
        .I1(slave_reg_0[12]),
        .I2(slv_reg3[12]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(Q[10]),
        .O(reg_data_out[12]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[13]_i_1 
       (.I0(slave_reg_1[13]),
        .I1(slave_reg_0[13]),
        .I2(slv_reg3[13]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(Q[11]),
        .O(reg_data_out[13]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[14]_i_1 
       (.I0(slave_reg_1[14]),
        .I1(slave_reg_0[14]),
        .I2(slv_reg3[14]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(Q[12]),
        .O(reg_data_out[14]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[15]_i_1 
       (.I0(slave_reg_1[15]),
        .I1(slave_reg_0[15]),
        .I2(slv_reg3[15]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[15] ),
        .O(reg_data_out[15]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[16]_i_1 
       (.I0(slave_reg_1[16]),
        .I1(slave_reg_0[16]),
        .I2(slv_reg3[16]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[16] ),
        .O(reg_data_out[16]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[17]_i_1 
       (.I0(slave_reg_1[17]),
        .I1(slave_reg_0[17]),
        .I2(slv_reg3[17]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[17] ),
        .O(reg_data_out[17]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[18]_i_1 
       (.I0(slave_reg_1[18]),
        .I1(slave_reg_0[18]),
        .I2(slv_reg3[18]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[18] ),
        .O(reg_data_out[18]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[19]_i_1 
       (.I0(slave_reg_1[19]),
        .I1(slave_reg_0[19]),
        .I2(slv_reg3[19]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[19] ),
        .O(reg_data_out[19]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[1]_i_1 
       (.I0(slave_reg_1[1]),
        .I1(slave_reg_0[1]),
        .I2(slv_reg3[1]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(Q[0]),
        .O(reg_data_out[1]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[20]_i_1 
       (.I0(slave_reg_1[20]),
        .I1(slave_reg_0[20]),
        .I2(slv_reg3[20]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[20] ),
        .O(reg_data_out[20]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[21]_i_1 
       (.I0(slave_reg_1[21]),
        .I1(slave_reg_0[21]),
        .I2(slv_reg3[21]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[21] ),
        .O(reg_data_out[21]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[22]_i_1 
       (.I0(slave_reg_1[22]),
        .I1(slave_reg_0[22]),
        .I2(slv_reg3[22]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[22] ),
        .O(reg_data_out[22]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[23]_i_1 
       (.I0(slave_reg_1[23]),
        .I1(slave_reg_0[23]),
        .I2(slv_reg3[23]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[23] ),
        .O(reg_data_out[23]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[24]_i_1 
       (.I0(slave_reg_1[24]),
        .I1(slave_reg_0[24]),
        .I2(slv_reg3[24]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[24] ),
        .O(reg_data_out[24]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[25]_i_1 
       (.I0(slave_reg_1[25]),
        .I1(slave_reg_0[25]),
        .I2(slv_reg3[25]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[25] ),
        .O(reg_data_out[25]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[26]_i_1 
       (.I0(slave_reg_1[26]),
        .I1(slave_reg_0[26]),
        .I2(slv_reg3[26]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[26] ),
        .O(reg_data_out[26]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[27]_i_1 
       (.I0(slave_reg_1[27]),
        .I1(slave_reg_0[27]),
        .I2(slv_reg3[27]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[27] ),
        .O(reg_data_out[27]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[28]_i_1 
       (.I0(slave_reg_1[28]),
        .I1(slave_reg_0[28]),
        .I2(slv_reg3[28]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[28] ),
        .O(reg_data_out[28]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[29]_i_1 
       (.I0(slave_reg_1[29]),
        .I1(slave_reg_0[29]),
        .I2(slv_reg3[29]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[29] ),
        .O(reg_data_out[29]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[2]_i_1 
       (.I0(slave_reg_1[2]),
        .I1(slave_reg_0[2]),
        .I2(slv_reg3[2]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(Q[1]),
        .O(reg_data_out[2]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[30]_i_1 
       (.I0(slave_reg_1[30]),
        .I1(slave_reg_0[30]),
        .I2(slv_reg3[30]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[30] ),
        .O(reg_data_out[30]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[31]_i_1 
       (.I0(slave_reg_1[31]),
        .I1(slave_reg_0[31]),
        .I2(slv_reg3[31]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[31] ),
        .O(reg_data_out[31]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[3]_i_1 
       (.I0(slave_reg_1[3]),
        .I1(slave_reg_0[3]),
        .I2(slv_reg3[3]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[3] ),
        .O(reg_data_out[3]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[4]_i_1 
       (.I0(slave_reg_1[4]),
        .I1(slave_reg_0[4]),
        .I2(slv_reg3[4]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(Q[2]),
        .O(reg_data_out[4]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[5]_i_1 
       (.I0(slave_reg_1[5]),
        .I1(slave_reg_0[5]),
        .I2(slv_reg3[5]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(Q[3]),
        .O(reg_data_out[5]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[6]_i_1 
       (.I0(slave_reg_1[6]),
        .I1(slave_reg_0[6]),
        .I2(slv_reg3[6]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(Q[4]),
        .O(reg_data_out[6]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[7]_i_1 
       (.I0(slave_reg_1[7]),
        .I1(slave_reg_0[7]),
        .I2(slv_reg3[7]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(Q[5]),
        .O(reg_data_out[7]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[8]_i_1 
       (.I0(slave_reg_1[8]),
        .I1(slave_reg_0[8]),
        .I2(slv_reg3[8]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(Q[6]),
        .O(reg_data_out[8]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[9]_i_1 
       (.I0(slave_reg_1[9]),
        .I1(slave_reg_0[9]),
        .I2(slv_reg3[9]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(Q[7]),
        .O(reg_data_out[9]));
  FDRE \axi_rdata_reg[0] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[0]),
        .Q(s00_axi_rdata[0]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[10] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[10]),
        .Q(s00_axi_rdata[10]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[11] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[11]),
        .Q(s00_axi_rdata[11]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[12] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[12]),
        .Q(s00_axi_rdata[12]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[13] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[13]),
        .Q(s00_axi_rdata[13]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[14] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[14]),
        .Q(s00_axi_rdata[14]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[15] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[15]),
        .Q(s00_axi_rdata[15]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[16] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[16]),
        .Q(s00_axi_rdata[16]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[17] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[17]),
        .Q(s00_axi_rdata[17]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[18] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[18]),
        .Q(s00_axi_rdata[18]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[19] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[19]),
        .Q(s00_axi_rdata[19]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[1] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[1]),
        .Q(s00_axi_rdata[1]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[20] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[20]),
        .Q(s00_axi_rdata[20]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[21] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[21]),
        .Q(s00_axi_rdata[21]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[22] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[22]),
        .Q(s00_axi_rdata[22]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[23] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[23]),
        .Q(s00_axi_rdata[23]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[24] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[24]),
        .Q(s00_axi_rdata[24]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[25] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[25]),
        .Q(s00_axi_rdata[25]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[26] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[26]),
        .Q(s00_axi_rdata[26]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[27] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[27]),
        .Q(s00_axi_rdata[27]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[28] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[28]),
        .Q(s00_axi_rdata[28]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[29] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[29]),
        .Q(s00_axi_rdata[29]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[2] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[2]),
        .Q(s00_axi_rdata[2]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[30] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[30]),
        .Q(s00_axi_rdata[30]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[31] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[31]),
        .Q(s00_axi_rdata[31]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[3] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[3]),
        .Q(s00_axi_rdata[3]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[4] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[4]),
        .Q(s00_axi_rdata[4]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[5] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[5]),
        .Q(s00_axi_rdata[5]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[6] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[6]),
        .Q(s00_axi_rdata[6]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[7] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[7]),
        .Q(s00_axi_rdata[7]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[8] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[8]),
        .Q(s00_axi_rdata[8]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[9] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[9]),
        .Q(s00_axi_rdata[9]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(s00_axi_arready),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_rvalid),
        .I3(s00_axi_rready),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(s00_axi_rvalid),
        .R(\slv_reg0[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    axi_wready_i_1
       (.I0(s00_axi_wready),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_awvalid),
        .I3(aw_en_reg_n_0),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(s00_axi_wready),
        .R(\slv_reg0[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[1]),
        .O(p_1_in[15]));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[2]),
        .O(p_1_in[23]));
  LUT1 #(
    .INIT(2'h1)) 
    \slv_reg0[31]_i_1 
       (.I0(s00_axi_aresetn),
        .O(\slv_reg0[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[31]_i_2 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[3]),
        .O(p_1_in[31]));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg0[31]_i_3 
       (.I0(s00_axi_wready),
        .I1(s00_axi_awready),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_wvalid),
        .O(slv_reg_wren__0));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[0]),
        .O(p_1_in[7]));
  FDRE \slv_reg0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[0]),
        .Q(slave_reg_0[0]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[10] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[10]),
        .Q(slave_reg_0[10]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[11] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[11]),
        .Q(slave_reg_0[11]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[12] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[12]),
        .Q(slave_reg_0[12]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[13] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[13]),
        .Q(slave_reg_0[13]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[14] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[14]),
        .Q(slave_reg_0[14]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[15] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[15]),
        .Q(slave_reg_0[15]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[16] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[16]),
        .Q(slave_reg_0[16]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[17] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[17]),
        .Q(slave_reg_0[17]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[18] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[18]),
        .Q(slave_reg_0[18]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[19] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[19]),
        .Q(slave_reg_0[19]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[1] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[1]),
        .Q(slave_reg_0[1]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[20] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[20]),
        .Q(slave_reg_0[20]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[21] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[21]),
        .Q(slave_reg_0[21]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[22] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[22]),
        .Q(slave_reg_0[22]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[23] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[23]),
        .Q(slave_reg_0[23]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[24] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[24]),
        .Q(slave_reg_0[24]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[25] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[25]),
        .Q(slave_reg_0[25]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[26] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[26]),
        .Q(slave_reg_0[26]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[27] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[27]),
        .Q(slave_reg_0[27]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[28] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[28]),
        .Q(slave_reg_0[28]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[29] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[29]),
        .Q(slave_reg_0[29]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[2] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[2]),
        .Q(slave_reg_0[2]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[30] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[30]),
        .Q(slave_reg_0[30]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[31] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[31]),
        .Q(slave_reg_0[31]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[3] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[3]),
        .Q(slave_reg_0[3]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[4] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[4]),
        .Q(slave_reg_0[4]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[5] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[5]),
        .Q(slave_reg_0[5]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[6] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[6]),
        .Q(slave_reg_0[6]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[7] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[7]),
        .Q(slave_reg_0[7]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[8] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[8]),
        .Q(slave_reg_0[8]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[9] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[9]),
        .Q(slave_reg_0[9]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg1[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg1[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg1[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[2]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg1[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg1[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[3]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg1[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg1[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[0]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slave_reg_1[0]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg1_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slave_reg_1[10]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg1_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slave_reg_1[11]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg1_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slave_reg_1[12]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg1_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slave_reg_1[13]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg1_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slave_reg_1[14]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg1_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slave_reg_1[15]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg1_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slave_reg_1[16]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg1_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slave_reg_1[17]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg1_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slave_reg_1[18]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg1_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slave_reg_1[19]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slave_reg_1[1]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg1_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slave_reg_1[20]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg1_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slave_reg_1[21]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg1_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slave_reg_1[22]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg1_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slave_reg_1[23]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg1_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slave_reg_1[24]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg1_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slave_reg_1[25]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg1_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slave_reg_1[26]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg1_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slave_reg_1[27]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg1_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slave_reg_1[28]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg1_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slave_reg_1[29]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slave_reg_1[2]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg1_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slave_reg_1[30]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg1_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slave_reg_1[31]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slave_reg_1[3]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg1_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slave_reg_1[4]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg1_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slave_reg_1[5]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg1_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slave_reg_1[6]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg1_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slave_reg_1[7]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg1_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slave_reg_1[8]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg1_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slave_reg_1[9]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[1]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[0]),
        .I3(p_0_in[0]),
        .O(\slv_reg2[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[2]),
        .I3(p_0_in[0]),
        .O(\slv_reg2[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[3]),
        .I3(p_0_in[0]),
        .O(\slv_reg2[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[9]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[1]),
        .I3(p_0_in[0]),
        .O(\slv_reg2[9]_i_1_n_0 ));
  FDRE \slv_reg2_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[9]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(Q[8]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[9]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(Q[9]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[9]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(Q[10]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[9]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(Q[11]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[9]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(Q[12]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[9]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(\slv_reg2_reg_n_0_[15] ),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(\slv_reg2_reg_n_0_[16] ),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(\slv_reg2_reg_n_0_[17] ),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(\slv_reg2_reg_n_0_[18] ),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(\slv_reg2_reg_n_0_[19] ),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[1]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(Q[0]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(\slv_reg2_reg_n_0_[20] ),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(\slv_reg2_reg_n_0_[21] ),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(\slv_reg2_reg_n_0_[22] ),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(\slv_reg2_reg_n_0_[23] ),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(\slv_reg2_reg_n_0_[24] ),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(\slv_reg2_reg_n_0_[25] ),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(\slv_reg2_reg_n_0_[26] ),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(\slv_reg2_reg_n_0_[27] ),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(\slv_reg2_reg_n_0_[28] ),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(\slv_reg2_reg_n_0_[29] ),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[1]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(Q[1]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(\slv_reg2_reg_n_0_[30] ),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(\slv_reg2_reg_n_0_[31] ),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[1]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\slv_reg2_reg_n_0_[3] ),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[1]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(Q[2]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[1]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(Q[3]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[1]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(Q[4]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[1]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(Q[5]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[9]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(Q[6]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[9]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(Q[7]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg3[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[2]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg3[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[3]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg3[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[0]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg3[7]_i_1_n_0 ));
  FDRE \slv_reg3_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg3[0]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg3[10]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg3[11]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg3[12]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg3[13]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg3[14]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg3[15]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg3[16]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg3[17]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg3[18]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg3[19]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg3[1]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg3[20]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg3[21]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg3[22]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg3[23]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg3[24]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg3[25]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg3[26]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg3[27]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg3[28]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg3[29]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg3[2]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg3[30]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg3[31]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg3[3]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg3[4]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg3[5]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg3[6]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg3[7]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg3[8]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg3[9]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    slv_reg_rden
       (.I0(s00_axi_rvalid),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_arready),
        .O(slv_reg_rden__0));
endmodule

(* ORIG_REF_NAME = "srl_fifo_f" *) 
module design_1_myip_burst_test_0_0_srl_fifo_f
   (\GEN_OMIT_STORE_FORWARD.sig_coelsc_decerr_reg_reg ,
    \GEN_OMIT_STORE_FORWARD.sig_coelsc_slverr_reg_reg ,
    m00_axi_bready,
    Q,
    FIFO_Full_reg,
    out,
    m00_axi_aclk,
    sig_data2wsc_calc_err_reg,
    sig_wsc2stat_status,
    sig_inhibit_rdy_n,
    \INFERRED_GEN.cnt_i_reg[2] ,
    m00_axi_bvalid,
    sig_coelsc_reg_empty,
    \INFERRED_GEN.cnt_i_reg[2]_0 ,
    m00_axi_bresp);
  output \GEN_OMIT_STORE_FORWARD.sig_coelsc_decerr_reg_reg ;
  output \GEN_OMIT_STORE_FORWARD.sig_coelsc_slverr_reg_reg ;
  output m00_axi_bready;
  output [0:0]Q;
  output FIFO_Full_reg;
  input out;
  input m00_axi_aclk;
  input [0:0]sig_data2wsc_calc_err_reg;
  input [1:0]sig_wsc2stat_status;
  input sig_inhibit_rdy_n;
  input \INFERRED_GEN.cnt_i_reg[2] ;
  input m00_axi_bvalid;
  input sig_coelsc_reg_empty;
  input [0:0]\INFERRED_GEN.cnt_i_reg[2]_0 ;
  input [1:0]m00_axi_bresp;

  wire FIFO_Full_reg;
  wire \GEN_OMIT_STORE_FORWARD.sig_coelsc_decerr_reg_reg ;
  wire \GEN_OMIT_STORE_FORWARD.sig_coelsc_slverr_reg_reg ;
  wire \INFERRED_GEN.cnt_i_reg[2] ;
  wire [0:0]\INFERRED_GEN.cnt_i_reg[2]_0 ;
  wire [0:0]Q;
  wire m00_axi_aclk;
  wire m00_axi_bready;
  wire [1:0]m00_axi_bresp;
  wire m00_axi_bvalid;
  wire out;
  wire sig_coelsc_reg_empty;
  wire [0:0]sig_data2wsc_calc_err_reg;
  wire sig_inhibit_rdy_n;
  wire [1:0]sig_wsc2stat_status;

  design_1_myip_burst_test_0_0_srl_fifo_rbu_f I_SRL_FIFO_RBU_F
       (.FIFO_Full_reg_0(FIFO_Full_reg),
        .\GEN_OMIT_STORE_FORWARD.sig_coelsc_decerr_reg_reg (\GEN_OMIT_STORE_FORWARD.sig_coelsc_decerr_reg_reg ),
        .\GEN_OMIT_STORE_FORWARD.sig_coelsc_slverr_reg_reg (\GEN_OMIT_STORE_FORWARD.sig_coelsc_slverr_reg_reg ),
        .\INFERRED_GEN.cnt_i_reg[2] (\INFERRED_GEN.cnt_i_reg[2] ),
        .\INFERRED_GEN.cnt_i_reg[2]_0 (\INFERRED_GEN.cnt_i_reg[2]_0 ),
        .Q(Q),
        .m00_axi_aclk(m00_axi_aclk),
        .m00_axi_bready(m00_axi_bready),
        .m00_axi_bresp(m00_axi_bresp),
        .m00_axi_bvalid(m00_axi_bvalid),
        .out(out),
        .sig_coelsc_reg_empty(sig_coelsc_reg_empty),
        .sig_data2wsc_calc_err_reg(sig_data2wsc_calc_err_reg),
        .sig_inhibit_rdy_n(sig_inhibit_rdy_n),
        .sig_wsc2stat_status(sig_wsc2stat_status));
endmodule

(* ORIG_REF_NAME = "srl_fifo_f" *) 
module design_1_myip_burst_test_0_0_srl_fifo_f__parameterized0
   (\INFERRED_GEN.cnt_i_reg[0] ,
    p_0_in,
    \GEN_OMIT_STORE_FORWARD.sig_coelsc_interr_reg_reg ,
    Q,
    \INFERRED_GEN.cnt_i_reg[1] ,
    sig_push_coelsc_reg,
    p_4_out,
    \sig_wdc_statcnt_reg[2] ,
    \sig_wdc_statcnt_reg[1] ,
    \sig_wdc_statcnt_reg[0] ,
    out,
    m00_axi_aclk,
    \GEN_OMIT_STORE_FORWARD.sig_coelsc_reg_empty_reg ,
    \GEN_OMIT_STORE_FORWARD.sig_tlast_err_stop_reg ,
    sig_tlast_err_stop,
    sig_push_to_wsc,
    sig_inhibit_rdy_n_reg,
    sig_coelsc_reg_empty,
    \INFERRED_GEN.cnt_i_reg[2] ,
    sig_wsc2stat_status,
    sig_wdc_statcnt,
    in);
  output \INFERRED_GEN.cnt_i_reg[0] ;
  output p_0_in;
  output [1:0]\GEN_OMIT_STORE_FORWARD.sig_coelsc_interr_reg_reg ;
  output [0:0]Q;
  output \INFERRED_GEN.cnt_i_reg[1] ;
  output sig_push_coelsc_reg;
  output p_4_out;
  output \sig_wdc_statcnt_reg[2] ;
  output \sig_wdc_statcnt_reg[1] ;
  output \sig_wdc_statcnt_reg[0] ;
  input out;
  input m00_axi_aclk;
  input \GEN_OMIT_STORE_FORWARD.sig_coelsc_reg_empty_reg ;
  input \GEN_OMIT_STORE_FORWARD.sig_tlast_err_stop_reg ;
  input sig_tlast_err_stop;
  input sig_push_to_wsc;
  input sig_inhibit_rdy_n_reg;
  input sig_coelsc_reg_empty;
  input [0:0]\INFERRED_GEN.cnt_i_reg[2] ;
  input [0:0]sig_wsc2stat_status;
  input [2:0]sig_wdc_statcnt;
  input [2:0]in;

  wire [1:0]\GEN_OMIT_STORE_FORWARD.sig_coelsc_interr_reg_reg ;
  wire \GEN_OMIT_STORE_FORWARD.sig_coelsc_reg_empty_reg ;
  wire \GEN_OMIT_STORE_FORWARD.sig_tlast_err_stop_reg ;
  wire \INFERRED_GEN.cnt_i_reg[0] ;
  wire \INFERRED_GEN.cnt_i_reg[1] ;
  wire [0:0]\INFERRED_GEN.cnt_i_reg[2] ;
  wire [0:0]Q;
  wire [2:0]in;
  wire m00_axi_aclk;
  wire out;
  wire p_0_in;
  wire p_4_out;
  wire sig_coelsc_reg_empty;
  wire sig_inhibit_rdy_n_reg;
  wire sig_push_coelsc_reg;
  wire sig_push_to_wsc;
  wire sig_tlast_err_stop;
  wire [2:0]sig_wdc_statcnt;
  wire \sig_wdc_statcnt_reg[0] ;
  wire \sig_wdc_statcnt_reg[1] ;
  wire \sig_wdc_statcnt_reg[2] ;
  wire [0:0]sig_wsc2stat_status;

  design_1_myip_burst_test_0_0_srl_fifo_rbu_f__parameterized0 I_SRL_FIFO_RBU_F
       (.\GEN_OMIT_STORE_FORWARD.sig_coelsc_interr_reg_reg (\GEN_OMIT_STORE_FORWARD.sig_coelsc_interr_reg_reg ),
        .\GEN_OMIT_STORE_FORWARD.sig_coelsc_reg_empty_reg (\GEN_OMIT_STORE_FORWARD.sig_coelsc_reg_empty_reg ),
        .\GEN_OMIT_STORE_FORWARD.sig_tlast_err_stop_reg (\GEN_OMIT_STORE_FORWARD.sig_tlast_err_stop_reg ),
        .\INFERRED_GEN.cnt_i_reg[0] (\INFERRED_GEN.cnt_i_reg[0] ),
        .\INFERRED_GEN.cnt_i_reg[1] (\INFERRED_GEN.cnt_i_reg[1] ),
        .\INFERRED_GEN.cnt_i_reg[2] (\INFERRED_GEN.cnt_i_reg[2] ),
        .Q(Q),
        .in(in),
        .m00_axi_aclk(m00_axi_aclk),
        .out(out),
        .p_0_in(p_0_in),
        .p_4_out(p_4_out),
        .sig_coelsc_reg_empty(sig_coelsc_reg_empty),
        .sig_inhibit_rdy_n_reg(sig_inhibit_rdy_n_reg),
        .sig_push_coelsc_reg(sig_push_coelsc_reg),
        .sig_push_to_wsc(sig_push_to_wsc),
        .sig_tlast_err_stop(sig_tlast_err_stop),
        .sig_wdc_statcnt(sig_wdc_statcnt),
        .\sig_wdc_statcnt_reg[0] (\sig_wdc_statcnt_reg[0] ),
        .\sig_wdc_statcnt_reg[1] (\sig_wdc_statcnt_reg[1] ),
        .\sig_wdc_statcnt_reg[2] (\sig_wdc_statcnt_reg[2] ),
        .sig_wsc2stat_status(sig_wsc2stat_status));
endmodule

(* ORIG_REF_NAME = "srl_fifo_rbu_f" *) 
module design_1_myip_burst_test_0_0_srl_fifo_rbu_f
   (\GEN_OMIT_STORE_FORWARD.sig_coelsc_decerr_reg_reg ,
    \GEN_OMIT_STORE_FORWARD.sig_coelsc_slverr_reg_reg ,
    m00_axi_bready,
    Q,
    FIFO_Full_reg_0,
    out,
    m00_axi_aclk,
    sig_data2wsc_calc_err_reg,
    sig_wsc2stat_status,
    sig_inhibit_rdy_n,
    \INFERRED_GEN.cnt_i_reg[2] ,
    m00_axi_bvalid,
    sig_coelsc_reg_empty,
    \INFERRED_GEN.cnt_i_reg[2]_0 ,
    m00_axi_bresp);
  output \GEN_OMIT_STORE_FORWARD.sig_coelsc_decerr_reg_reg ;
  output \GEN_OMIT_STORE_FORWARD.sig_coelsc_slverr_reg_reg ;
  output m00_axi_bready;
  output [0:0]Q;
  output FIFO_Full_reg_0;
  input out;
  input m00_axi_aclk;
  input [0:0]sig_data2wsc_calc_err_reg;
  input [1:0]sig_wsc2stat_status;
  input sig_inhibit_rdy_n;
  input \INFERRED_GEN.cnt_i_reg[2] ;
  input m00_axi_bvalid;
  input sig_coelsc_reg_empty;
  input [0:0]\INFERRED_GEN.cnt_i_reg[2]_0 ;
  input [1:0]m00_axi_bresp;

  wire CNTR_INCR_DECR_ADDN_F_I_n_2;
  wire CNTR_INCR_DECR_ADDN_F_I_n_3;
  wire FIFO_Full_i_2_n_0;
  wire FIFO_Full_reg_0;
  wire FIFO_Full_reg_n_0;
  wire \GEN_OMIT_STORE_FORWARD.sig_coelsc_decerr_reg_reg ;
  wire \GEN_OMIT_STORE_FORWARD.sig_coelsc_slverr_reg_reg ;
  wire \INFERRED_GEN.cnt_i_reg[2] ;
  wire [0:0]\INFERRED_GEN.cnt_i_reg[2]_0 ;
  wire [0:0]Q;
  wire fifo_full_p1;
  wire m00_axi_aclk;
  wire m00_axi_bready;
  wire [1:0]m00_axi_bresp;
  wire m00_axi_bvalid;
  wire out;
  wire sig_coelsc_reg_empty;
  wire [0:0]sig_data2wsc_calc_err_reg;
  wire sig_inhibit_rdy_n;
  wire [1:0]sig_wsc2stat_status;

  design_1_myip_burst_test_0_0_cntr_incr_decr_addn_f CNTR_INCR_DECR_ADDN_F_I
       (.FIFO_Full_reg(FIFO_Full_reg_0),
        .FIFO_Full_reg_0(FIFO_Full_reg_n_0),
        .\INFERRED_GEN.cnt_i_reg[2]_0 (\INFERRED_GEN.cnt_i_reg[2] ),
        .\INFERRED_GEN.cnt_i_reg[2]_1 (\INFERRED_GEN.cnt_i_reg[2]_0 ),
        .Q({Q,CNTR_INCR_DECR_ADDN_F_I_n_2,CNTR_INCR_DECR_ADDN_F_I_n_3}),
        .fifo_full_p1(fifo_full_p1),
        .m00_axi_aclk(m00_axi_aclk),
        .m00_axi_bvalid(m00_axi_bvalid),
        .out(out),
        .sig_coelsc_reg_empty(sig_coelsc_reg_empty),
        .sig_data2wsc_calc_err_reg(sig_data2wsc_calc_err_reg),
        .sig_inhibit_rdy_n(sig_inhibit_rdy_n),
        .sig_inhibit_rdy_n_reg(FIFO_Full_i_2_n_0));
  design_1_myip_burst_test_0_0_dynshreg_f DYNSHREG_F_I
       (.FIFO_Full_reg(FIFO_Full_reg_n_0),
        .\GEN_OMIT_STORE_FORWARD.sig_coelsc_decerr_reg_reg (\GEN_OMIT_STORE_FORWARD.sig_coelsc_decerr_reg_reg ),
        .\GEN_OMIT_STORE_FORWARD.sig_coelsc_slverr_reg_reg (\GEN_OMIT_STORE_FORWARD.sig_coelsc_slverr_reg_reg ),
        .addr({CNTR_INCR_DECR_ADDN_F_I_n_2,CNTR_INCR_DECR_ADDN_F_I_n_3}),
        .m00_axi_aclk(m00_axi_aclk),
        .m00_axi_bresp(m00_axi_bresp),
        .m00_axi_bvalid(m00_axi_bvalid),
        .sig_data2wsc_calc_err_reg(sig_data2wsc_calc_err_reg),
        .sig_inhibit_rdy_n(sig_inhibit_rdy_n),
        .sig_wsc2stat_status(sig_wsc2stat_status));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    FIFO_Full_i_2
       (.I0(sig_inhibit_rdy_n),
        .I1(FIFO_Full_reg_n_0),
        .I2(m00_axi_bvalid),
        .O(FIFO_Full_i_2_n_0));
  FDRE FIFO_Full_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(fifo_full_p1),
        .Q(FIFO_Full_reg_n_0),
        .R(out));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h2)) 
    m00_axi_bready_INST_0
       (.I0(sig_inhibit_rdy_n),
        .I1(FIFO_Full_reg_n_0),
        .O(m00_axi_bready));
endmodule

(* ORIG_REF_NAME = "srl_fifo_rbu_f" *) 
module design_1_myip_burst_test_0_0_srl_fifo_rbu_f__parameterized0
   (\INFERRED_GEN.cnt_i_reg[0] ,
    p_0_in,
    \GEN_OMIT_STORE_FORWARD.sig_coelsc_interr_reg_reg ,
    Q,
    \INFERRED_GEN.cnt_i_reg[1] ,
    sig_push_coelsc_reg,
    p_4_out,
    \sig_wdc_statcnt_reg[2] ,
    \sig_wdc_statcnt_reg[1] ,
    \sig_wdc_statcnt_reg[0] ,
    out,
    m00_axi_aclk,
    \GEN_OMIT_STORE_FORWARD.sig_coelsc_reg_empty_reg ,
    \GEN_OMIT_STORE_FORWARD.sig_tlast_err_stop_reg ,
    sig_tlast_err_stop,
    sig_push_to_wsc,
    sig_inhibit_rdy_n_reg,
    sig_coelsc_reg_empty,
    \INFERRED_GEN.cnt_i_reg[2] ,
    sig_wsc2stat_status,
    sig_wdc_statcnt,
    in);
  output \INFERRED_GEN.cnt_i_reg[0] ;
  output p_0_in;
  output [1:0]\GEN_OMIT_STORE_FORWARD.sig_coelsc_interr_reg_reg ;
  output [0:0]Q;
  output \INFERRED_GEN.cnt_i_reg[1] ;
  output sig_push_coelsc_reg;
  output p_4_out;
  output \sig_wdc_statcnt_reg[2] ;
  output \sig_wdc_statcnt_reg[1] ;
  output \sig_wdc_statcnt_reg[0] ;
  input out;
  input m00_axi_aclk;
  input \GEN_OMIT_STORE_FORWARD.sig_coelsc_reg_empty_reg ;
  input \GEN_OMIT_STORE_FORWARD.sig_tlast_err_stop_reg ;
  input sig_tlast_err_stop;
  input sig_push_to_wsc;
  input sig_inhibit_rdy_n_reg;
  input sig_coelsc_reg_empty;
  input [0:0]\INFERRED_GEN.cnt_i_reg[2] ;
  input [0:0]sig_wsc2stat_status;
  input [2:0]sig_wdc_statcnt;
  input [2:0]in;

  wire CNTR_INCR_DECR_ADDN_F_I_n_2;
  wire CNTR_INCR_DECR_ADDN_F_I_n_3;
  wire [1:0]\GEN_OMIT_STORE_FORWARD.sig_coelsc_interr_reg_reg ;
  wire \GEN_OMIT_STORE_FORWARD.sig_coelsc_reg_empty_reg ;
  wire \GEN_OMIT_STORE_FORWARD.sig_tlast_err_stop_reg ;
  wire \INFERRED_GEN.cnt_i_reg[0] ;
  wire \INFERRED_GEN.cnt_i_reg[1] ;
  wire [0:0]\INFERRED_GEN.cnt_i_reg[2] ;
  wire [0:0]Q;
  wire fifo_full_p1;
  wire [2:0]in;
  wire m00_axi_aclk;
  wire out;
  wire p_0_in;
  wire p_4_out;
  wire sig_coelsc_reg_empty;
  wire sig_inhibit_rdy_n_reg;
  wire sig_push_coelsc_reg;
  wire sig_push_to_wsc;
  wire sig_tlast_err_stop;
  wire [2:0]sig_wdc_statcnt;
  wire \sig_wdc_statcnt_reg[0] ;
  wire \sig_wdc_statcnt_reg[1] ;
  wire \sig_wdc_statcnt_reg[2] ;
  wire [0:0]sig_wsc2stat_status;

  design_1_myip_burst_test_0_0_cntr_incr_decr_addn_f_1 CNTR_INCR_DECR_ADDN_F_I
       (.FIFO_Full_reg(\INFERRED_GEN.cnt_i_reg[0] ),
        .\GEN_OMIT_STORE_FORWARD.sig_coelsc_reg_empty_reg (\GEN_OMIT_STORE_FORWARD.sig_coelsc_reg_empty_reg ),
        .\GEN_OMIT_STORE_FORWARD.sig_tlast_err_stop_reg (\GEN_OMIT_STORE_FORWARD.sig_tlast_err_stop_reg ),
        .\INFERRED_GEN.cnt_i_reg[1]_0 (\INFERRED_GEN.cnt_i_reg[1] ),
        .\INFERRED_GEN.cnt_i_reg[2]_0 (\INFERRED_GEN.cnt_i_reg[2] ),
        .Q({Q,CNTR_INCR_DECR_ADDN_F_I_n_2,CNTR_INCR_DECR_ADDN_F_I_n_3}),
        .fifo_full_p1(fifo_full_p1),
        .m00_axi_aclk(m00_axi_aclk),
        .out(\GEN_OMIT_STORE_FORWARD.sig_coelsc_interr_reg_reg [1]),
        .sig_coelsc_reg_empty(sig_coelsc_reg_empty),
        .sig_inhibit_rdy_n_reg(sig_inhibit_rdy_n_reg),
        .sig_push_to_wsc(sig_push_to_wsc),
        .sig_rdwr_reset_reg_reg(out),
        .sig_tlast_err_stop(sig_tlast_err_stop),
        .sig_wdc_statcnt(sig_wdc_statcnt),
        .\sig_wdc_statcnt_reg[0] (\sig_wdc_statcnt_reg[0] ),
        .\sig_wdc_statcnt_reg[1] (\sig_wdc_statcnt_reg[1] ),
        .\sig_wdc_statcnt_reg[2] (\sig_wdc_statcnt_reg[2] ));
  design_1_myip_burst_test_0_0_dynshreg_f__parameterized0 DYNSHREG_F_I
       (.FIFO_Full_reg(\INFERRED_GEN.cnt_i_reg[0] ),
        .\GEN_OMIT_STORE_FORWARD.sig_coelsc_interr_reg_reg (\GEN_OMIT_STORE_FORWARD.sig_coelsc_interr_reg_reg ),
        .\INFERRED_GEN.cnt_i_reg[2] (\INFERRED_GEN.cnt_i_reg[2] ),
        .Q({Q,CNTR_INCR_DECR_ADDN_F_I_n_2,CNTR_INCR_DECR_ADDN_F_I_n_3}),
        .in(in),
        .m00_axi_aclk(m00_axi_aclk),
        .p_0_in(p_0_in),
        .p_4_out(p_4_out),
        .sig_coelsc_reg_empty(sig_coelsc_reg_empty),
        .sig_inhibit_rdy_n_reg(sig_inhibit_rdy_n_reg),
        .sig_push_coelsc_reg(sig_push_coelsc_reg),
        .sig_push_to_wsc(sig_push_to_wsc),
        .sig_tlast_err_stop(sig_tlast_err_stop),
        .sig_wsc2stat_status(sig_wsc2stat_status));
  FDRE FIFO_Full_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(fifo_full_p1),
        .Q(\INFERRED_GEN.cnt_i_reg[0] ),
        .R(out));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
