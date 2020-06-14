// (c) Copyright 1995-2020 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.

// IP VLNV: xilinx.com:ip:processing_system7:5.5
// IP Revision: 6

// The following must be inserted into your Verilog file for this
// core to be instantiated. Change the instance name and port connections
// (in parentheses) to your own signal names.

//----------- Begin Cut here for INSTANTIATION Template ---// INST_TAG
design_1_processing_system7_0_0 your_instance_name (
  .ENET0_MDIO_MDC(ENET0_MDIO_MDC),            // output wire ENET0_MDIO_MDC
  .ENET0_MDIO_O(ENET0_MDIO_O),                // output wire ENET0_MDIO_O
  .ENET0_MDIO_T(ENET0_MDIO_T),                // output wire ENET0_MDIO_T
  .ENET0_MDIO_I(ENET0_MDIO_I),                // input wire ENET0_MDIO_I
  .SDIO0_WP(SDIO0_WP),                        // input wire SDIO0_WP
  .TTC0_WAVE0_OUT(TTC0_WAVE0_OUT),            // output wire TTC0_WAVE0_OUT
  .TTC0_WAVE1_OUT(TTC0_WAVE1_OUT),            // output wire TTC0_WAVE1_OUT
  .TTC0_WAVE2_OUT(TTC0_WAVE2_OUT),            // output wire TTC0_WAVE2_OUT
  .USB0_PORT_INDCTL(USB0_PORT_INDCTL),        // output wire [1 : 0] USB0_PORT_INDCTL
  .USB0_VBUS_PWRSELECT(USB0_VBUS_PWRSELECT),  // output wire USB0_VBUS_PWRSELECT
  .USB0_VBUS_PWRFAULT(USB0_VBUS_PWRFAULT),    // input wire USB0_VBUS_PWRFAULT
  .M_AXI_GP0_ARVALID(M_AXI_GP0_ARVALID),      // output wire M_AXI_GP0_ARVALID
  .M_AXI_GP0_AWVALID(M_AXI_GP0_AWVALID),      // output wire M_AXI_GP0_AWVALID
  .M_AXI_GP0_BREADY(M_AXI_GP0_BREADY),        // output wire M_AXI_GP0_BREADY
  .M_AXI_GP0_RREADY(M_AXI_GP0_RREADY),        // output wire M_AXI_GP0_RREADY
  .M_AXI_GP0_WLAST(M_AXI_GP0_WLAST),          // output wire M_AXI_GP0_WLAST
  .M_AXI_GP0_WVALID(M_AXI_GP0_WVALID),        // output wire M_AXI_GP0_WVALID
  .M_AXI_GP0_ARID(M_AXI_GP0_ARID),            // output wire [11 : 0] M_AXI_GP0_ARID
  .M_AXI_GP0_AWID(M_AXI_GP0_AWID),            // output wire [11 : 0] M_AXI_GP0_AWID
  .M_AXI_GP0_WID(M_AXI_GP0_WID),              // output wire [11 : 0] M_AXI_GP0_WID
  .M_AXI_GP0_ARBURST(M_AXI_GP0_ARBURST),      // output wire [1 : 0] M_AXI_GP0_ARBURST
  .M_AXI_GP0_ARLOCK(M_AXI_GP0_ARLOCK),        // output wire [1 : 0] M_AXI_GP0_ARLOCK
  .M_AXI_GP0_ARSIZE(M_AXI_GP0_ARSIZE),        // output wire [2 : 0] M_AXI_GP0_ARSIZE
  .M_AXI_GP0_AWBURST(M_AXI_GP0_AWBURST),      // output wire [1 : 0] M_AXI_GP0_AWBURST
  .M_AXI_GP0_AWLOCK(M_AXI_GP0_AWLOCK),        // output wire [1 : 0] M_AXI_GP0_AWLOCK
  .M_AXI_GP0_AWSIZE(M_AXI_GP0_AWSIZE),        // output wire [2 : 0] M_AXI_GP0_AWSIZE
  .M_AXI_GP0_ARPROT(M_AXI_GP0_ARPROT),        // output wire [2 : 0] M_AXI_GP0_ARPROT
  .M_AXI_GP0_AWPROT(M_AXI_GP0_AWPROT),        // output wire [2 : 0] M_AXI_GP0_AWPROT
  .M_AXI_GP0_ARADDR(M_AXI_GP0_ARADDR),        // output wire [31 : 0] M_AXI_GP0_ARADDR
  .M_AXI_GP0_AWADDR(M_AXI_GP0_AWADDR),        // output wire [31 : 0] M_AXI_GP0_AWADDR
  .M_AXI_GP0_WDATA(M_AXI_GP0_WDATA),          // output wire [31 : 0] M_AXI_GP0_WDATA
  .M_AXI_GP0_ARCACHE(M_AXI_GP0_ARCACHE),      // output wire [3 : 0] M_AXI_GP0_ARCACHE
  .M_AXI_GP0_ARLEN(M_AXI_GP0_ARLEN),          // output wire [3 : 0] M_AXI_GP0_ARLEN
  .M_AXI_GP0_ARQOS(M_AXI_GP0_ARQOS),          // output wire [3 : 0] M_AXI_GP0_ARQOS
  .M_AXI_GP0_AWCACHE(M_AXI_GP0_AWCACHE),      // output wire [3 : 0] M_AXI_GP0_AWCACHE
  .M_AXI_GP0_AWLEN(M_AXI_GP0_AWLEN),          // output wire [3 : 0] M_AXI_GP0_AWLEN
  .M_AXI_GP0_AWQOS(M_AXI_GP0_AWQOS),          // output wire [3 : 0] M_AXI_GP0_AWQOS
  .M_AXI_GP0_WSTRB(M_AXI_GP0_WSTRB),          // output wire [3 : 0] M_AXI_GP0_WSTRB
  .M_AXI_GP0_ACLK(M_AXI_GP0_ACLK),            // input wire M_AXI_GP0_ACLK
  .M_AXI_GP0_ARREADY(M_AXI_GP0_ARREADY),      // input wire M_AXI_GP0_ARREADY
  .M_AXI_GP0_AWREADY(M_AXI_GP0_AWREADY),      // input wire M_AXI_GP0_AWREADY
  .M_AXI_GP0_BVALID(M_AXI_GP0_BVALID),        // input wire M_AXI_GP0_BVALID
  .M_AXI_GP0_RLAST(M_AXI_GP0_RLAST),          // input wire M_AXI_GP0_RLAST
  .M_AXI_GP0_RVALID(M_AXI_GP0_RVALID),        // input wire M_AXI_GP0_RVALID
  .M_AXI_GP0_WREADY(M_AXI_GP0_WREADY),        // input wire M_AXI_GP0_WREADY
  .M_AXI_GP0_BID(M_AXI_GP0_BID),              // input wire [11 : 0] M_AXI_GP0_BID
  .M_AXI_GP0_RID(M_AXI_GP0_RID),              // input wire [11 : 0] M_AXI_GP0_RID
  .M_AXI_GP0_BRESP(M_AXI_GP0_BRESP),          // input wire [1 : 0] M_AXI_GP0_BRESP
  .M_AXI_GP0_RRESP(M_AXI_GP0_RRESP),          // input wire [1 : 0] M_AXI_GP0_RRESP
  .M_AXI_GP0_RDATA(M_AXI_GP0_RDATA),          // input wire [31 : 0] M_AXI_GP0_RDATA
  .M_AXI_GP1_ARVALID(M_AXI_GP1_ARVALID),      // output wire M_AXI_GP1_ARVALID
  .M_AXI_GP1_AWVALID(M_AXI_GP1_AWVALID),      // output wire M_AXI_GP1_AWVALID
  .M_AXI_GP1_BREADY(M_AXI_GP1_BREADY),        // output wire M_AXI_GP1_BREADY
  .M_AXI_GP1_RREADY(M_AXI_GP1_RREADY),        // output wire M_AXI_GP1_RREADY
  .M_AXI_GP1_WLAST(M_AXI_GP1_WLAST),          // output wire M_AXI_GP1_WLAST
  .M_AXI_GP1_WVALID(M_AXI_GP1_WVALID),        // output wire M_AXI_GP1_WVALID
  .M_AXI_GP1_ARID(M_AXI_GP1_ARID),            // output wire [11 : 0] M_AXI_GP1_ARID
  .M_AXI_GP1_AWID(M_AXI_GP1_AWID),            // output wire [11 : 0] M_AXI_GP1_AWID
  .M_AXI_GP1_WID(M_AXI_GP1_WID),              // output wire [11 : 0] M_AXI_GP1_WID
  .M_AXI_GP1_ARBURST(M_AXI_GP1_ARBURST),      // output wire [1 : 0] M_AXI_GP1_ARBURST
  .M_AXI_GP1_ARLOCK(M_AXI_GP1_ARLOCK),        // output wire [1 : 0] M_AXI_GP1_ARLOCK
  .M_AXI_GP1_ARSIZE(M_AXI_GP1_ARSIZE),        // output wire [2 : 0] M_AXI_GP1_ARSIZE
  .M_AXI_GP1_AWBURST(M_AXI_GP1_AWBURST),      // output wire [1 : 0] M_AXI_GP1_AWBURST
  .M_AXI_GP1_AWLOCK(M_AXI_GP1_AWLOCK),        // output wire [1 : 0] M_AXI_GP1_AWLOCK
  .M_AXI_GP1_AWSIZE(M_AXI_GP1_AWSIZE),        // output wire [2 : 0] M_AXI_GP1_AWSIZE
  .M_AXI_GP1_ARPROT(M_AXI_GP1_ARPROT),        // output wire [2 : 0] M_AXI_GP1_ARPROT
  .M_AXI_GP1_AWPROT(M_AXI_GP1_AWPROT),        // output wire [2 : 0] M_AXI_GP1_AWPROT
  .M_AXI_GP1_ARADDR(M_AXI_GP1_ARADDR),        // output wire [31 : 0] M_AXI_GP1_ARADDR
  .M_AXI_GP1_AWADDR(M_AXI_GP1_AWADDR),        // output wire [31 : 0] M_AXI_GP1_AWADDR
  .M_AXI_GP1_WDATA(M_AXI_GP1_WDATA),          // output wire [31 : 0] M_AXI_GP1_WDATA
  .M_AXI_GP1_ARCACHE(M_AXI_GP1_ARCACHE),      // output wire [3 : 0] M_AXI_GP1_ARCACHE
  .M_AXI_GP1_ARLEN(M_AXI_GP1_ARLEN),          // output wire [3 : 0] M_AXI_GP1_ARLEN
  .M_AXI_GP1_ARQOS(M_AXI_GP1_ARQOS),          // output wire [3 : 0] M_AXI_GP1_ARQOS
  .M_AXI_GP1_AWCACHE(M_AXI_GP1_AWCACHE),      // output wire [3 : 0] M_AXI_GP1_AWCACHE
  .M_AXI_GP1_AWLEN(M_AXI_GP1_AWLEN),          // output wire [3 : 0] M_AXI_GP1_AWLEN
  .M_AXI_GP1_AWQOS(M_AXI_GP1_AWQOS),          // output wire [3 : 0] M_AXI_GP1_AWQOS
  .M_AXI_GP1_WSTRB(M_AXI_GP1_WSTRB),          // output wire [3 : 0] M_AXI_GP1_WSTRB
  .M_AXI_GP1_ACLK(M_AXI_GP1_ACLK),            // input wire M_AXI_GP1_ACLK
  .M_AXI_GP1_ARREADY(M_AXI_GP1_ARREADY),      // input wire M_AXI_GP1_ARREADY
  .M_AXI_GP1_AWREADY(M_AXI_GP1_AWREADY),      // input wire M_AXI_GP1_AWREADY
  .M_AXI_GP1_BVALID(M_AXI_GP1_BVALID),        // input wire M_AXI_GP1_BVALID
  .M_AXI_GP1_RLAST(M_AXI_GP1_RLAST),          // input wire M_AXI_GP1_RLAST
  .M_AXI_GP1_RVALID(M_AXI_GP1_RVALID),        // input wire M_AXI_GP1_RVALID
  .M_AXI_GP1_WREADY(M_AXI_GP1_WREADY),        // input wire M_AXI_GP1_WREADY
  .M_AXI_GP1_BID(M_AXI_GP1_BID),              // input wire [11 : 0] M_AXI_GP1_BID
  .M_AXI_GP1_RID(M_AXI_GP1_RID),              // input wire [11 : 0] M_AXI_GP1_RID
  .M_AXI_GP1_BRESP(M_AXI_GP1_BRESP),          // input wire [1 : 0] M_AXI_GP1_BRESP
  .M_AXI_GP1_RRESP(M_AXI_GP1_RRESP),          // input wire [1 : 0] M_AXI_GP1_RRESP
  .M_AXI_GP1_RDATA(M_AXI_GP1_RDATA),          // input wire [31 : 0] M_AXI_GP1_RDATA
  .S_AXI_GP0_ARREADY(S_AXI_GP0_ARREADY),      // output wire S_AXI_GP0_ARREADY
  .S_AXI_GP0_AWREADY(S_AXI_GP0_AWREADY),      // output wire S_AXI_GP0_AWREADY
  .S_AXI_GP0_BVALID(S_AXI_GP0_BVALID),        // output wire S_AXI_GP0_BVALID
  .S_AXI_GP0_RLAST(S_AXI_GP0_RLAST),          // output wire S_AXI_GP0_RLAST
  .S_AXI_GP0_RVALID(S_AXI_GP0_RVALID),        // output wire S_AXI_GP0_RVALID
  .S_AXI_GP0_WREADY(S_AXI_GP0_WREADY),        // output wire S_AXI_GP0_WREADY
  .S_AXI_GP0_BRESP(S_AXI_GP0_BRESP),          // output wire [1 : 0] S_AXI_GP0_BRESP
  .S_AXI_GP0_RRESP(S_AXI_GP0_RRESP),          // output wire [1 : 0] S_AXI_GP0_RRESP
  .S_AXI_GP0_RDATA(S_AXI_GP0_RDATA),          // output wire [31 : 0] S_AXI_GP0_RDATA
  .S_AXI_GP0_BID(S_AXI_GP0_BID),              // output wire [5 : 0] S_AXI_GP0_BID
  .S_AXI_GP0_RID(S_AXI_GP0_RID),              // output wire [5 : 0] S_AXI_GP0_RID
  .S_AXI_GP0_ACLK(S_AXI_GP0_ACLK),            // input wire S_AXI_GP0_ACLK
  .S_AXI_GP0_ARVALID(S_AXI_GP0_ARVALID),      // input wire S_AXI_GP0_ARVALID
  .S_AXI_GP0_AWVALID(S_AXI_GP0_AWVALID),      // input wire S_AXI_GP0_AWVALID
  .S_AXI_GP0_BREADY(S_AXI_GP0_BREADY),        // input wire S_AXI_GP0_BREADY
  .S_AXI_GP0_RREADY(S_AXI_GP0_RREADY),        // input wire S_AXI_GP0_RREADY
  .S_AXI_GP0_WLAST(S_AXI_GP0_WLAST),          // input wire S_AXI_GP0_WLAST
  .S_AXI_GP0_WVALID(S_AXI_GP0_WVALID),        // input wire S_AXI_GP0_WVALID
  .S_AXI_GP0_ARBURST(S_AXI_GP0_ARBURST),      // input wire [1 : 0] S_AXI_GP0_ARBURST
  .S_AXI_GP0_ARLOCK(S_AXI_GP0_ARLOCK),        // input wire [1 : 0] S_AXI_GP0_ARLOCK
  .S_AXI_GP0_ARSIZE(S_AXI_GP0_ARSIZE),        // input wire [2 : 0] S_AXI_GP0_ARSIZE
  .S_AXI_GP0_AWBURST(S_AXI_GP0_AWBURST),      // input wire [1 : 0] S_AXI_GP0_AWBURST
  .S_AXI_GP0_AWLOCK(S_AXI_GP0_AWLOCK),        // input wire [1 : 0] S_AXI_GP0_AWLOCK
  .S_AXI_GP0_AWSIZE(S_AXI_GP0_AWSIZE),        // input wire [2 : 0] S_AXI_GP0_AWSIZE
  .S_AXI_GP0_ARPROT(S_AXI_GP0_ARPROT),        // input wire [2 : 0] S_AXI_GP0_ARPROT
  .S_AXI_GP0_AWPROT(S_AXI_GP0_AWPROT),        // input wire [2 : 0] S_AXI_GP0_AWPROT
  .S_AXI_GP0_ARADDR(S_AXI_GP0_ARADDR),        // input wire [31 : 0] S_AXI_GP0_ARADDR
  .S_AXI_GP0_AWADDR(S_AXI_GP0_AWADDR),        // input wire [31 : 0] S_AXI_GP0_AWADDR
  .S_AXI_GP0_WDATA(S_AXI_GP0_WDATA),          // input wire [31 : 0] S_AXI_GP0_WDATA
  .S_AXI_GP0_ARCACHE(S_AXI_GP0_ARCACHE),      // input wire [3 : 0] S_AXI_GP0_ARCACHE
  .S_AXI_GP0_ARLEN(S_AXI_GP0_ARLEN),          // input wire [3 : 0] S_AXI_GP0_ARLEN
  .S_AXI_GP0_ARQOS(S_AXI_GP0_ARQOS),          // input wire [3 : 0] S_AXI_GP0_ARQOS
  .S_AXI_GP0_AWCACHE(S_AXI_GP0_AWCACHE),      // input wire [3 : 0] S_AXI_GP0_AWCACHE
  .S_AXI_GP0_AWLEN(S_AXI_GP0_AWLEN),          // input wire [3 : 0] S_AXI_GP0_AWLEN
  .S_AXI_GP0_AWQOS(S_AXI_GP0_AWQOS),          // input wire [3 : 0] S_AXI_GP0_AWQOS
  .S_AXI_GP0_WSTRB(S_AXI_GP0_WSTRB),          // input wire [3 : 0] S_AXI_GP0_WSTRB
  .S_AXI_GP0_ARID(S_AXI_GP0_ARID),            // input wire [5 : 0] S_AXI_GP0_ARID
  .S_AXI_GP0_AWID(S_AXI_GP0_AWID),            // input wire [5 : 0] S_AXI_GP0_AWID
  .S_AXI_GP0_WID(S_AXI_GP0_WID),              // input wire [5 : 0] S_AXI_GP0_WID
  .S_AXI_GP1_ARREADY(S_AXI_GP1_ARREADY),      // output wire S_AXI_GP1_ARREADY
  .S_AXI_GP1_AWREADY(S_AXI_GP1_AWREADY),      // output wire S_AXI_GP1_AWREADY
  .S_AXI_GP1_BVALID(S_AXI_GP1_BVALID),        // output wire S_AXI_GP1_BVALID
  .S_AXI_GP1_RLAST(S_AXI_GP1_RLAST),          // output wire S_AXI_GP1_RLAST
  .S_AXI_GP1_RVALID(S_AXI_GP1_RVALID),        // output wire S_AXI_GP1_RVALID
  .S_AXI_GP1_WREADY(S_AXI_GP1_WREADY),        // output wire S_AXI_GP1_WREADY
  .S_AXI_GP1_BRESP(S_AXI_GP1_BRESP),          // output wire [1 : 0] S_AXI_GP1_BRESP
  .S_AXI_GP1_RRESP(S_AXI_GP1_RRESP),          // output wire [1 : 0] S_AXI_GP1_RRESP
  .S_AXI_GP1_RDATA(S_AXI_GP1_RDATA),          // output wire [31 : 0] S_AXI_GP1_RDATA
  .S_AXI_GP1_BID(S_AXI_GP1_BID),              // output wire [5 : 0] S_AXI_GP1_BID
  .S_AXI_GP1_RID(S_AXI_GP1_RID),              // output wire [5 : 0] S_AXI_GP1_RID
  .S_AXI_GP1_ACLK(S_AXI_GP1_ACLK),            // input wire S_AXI_GP1_ACLK
  .S_AXI_GP1_ARVALID(S_AXI_GP1_ARVALID),      // input wire S_AXI_GP1_ARVALID
  .S_AXI_GP1_AWVALID(S_AXI_GP1_AWVALID),      // input wire S_AXI_GP1_AWVALID
  .S_AXI_GP1_BREADY(S_AXI_GP1_BREADY),        // input wire S_AXI_GP1_BREADY
  .S_AXI_GP1_RREADY(S_AXI_GP1_RREADY),        // input wire S_AXI_GP1_RREADY
  .S_AXI_GP1_WLAST(S_AXI_GP1_WLAST),          // input wire S_AXI_GP1_WLAST
  .S_AXI_GP1_WVALID(S_AXI_GP1_WVALID),        // input wire S_AXI_GP1_WVALID
  .S_AXI_GP1_ARBURST(S_AXI_GP1_ARBURST),      // input wire [1 : 0] S_AXI_GP1_ARBURST
  .S_AXI_GP1_ARLOCK(S_AXI_GP1_ARLOCK),        // input wire [1 : 0] S_AXI_GP1_ARLOCK
  .S_AXI_GP1_ARSIZE(S_AXI_GP1_ARSIZE),        // input wire [2 : 0] S_AXI_GP1_ARSIZE
  .S_AXI_GP1_AWBURST(S_AXI_GP1_AWBURST),      // input wire [1 : 0] S_AXI_GP1_AWBURST
  .S_AXI_GP1_AWLOCK(S_AXI_GP1_AWLOCK),        // input wire [1 : 0] S_AXI_GP1_AWLOCK
  .S_AXI_GP1_AWSIZE(S_AXI_GP1_AWSIZE),        // input wire [2 : 0] S_AXI_GP1_AWSIZE
  .S_AXI_GP1_ARPROT(S_AXI_GP1_ARPROT),        // input wire [2 : 0] S_AXI_GP1_ARPROT
  .S_AXI_GP1_AWPROT(S_AXI_GP1_AWPROT),        // input wire [2 : 0] S_AXI_GP1_AWPROT
  .S_AXI_GP1_ARADDR(S_AXI_GP1_ARADDR),        // input wire [31 : 0] S_AXI_GP1_ARADDR
  .S_AXI_GP1_AWADDR(S_AXI_GP1_AWADDR),        // input wire [31 : 0] S_AXI_GP1_AWADDR
  .S_AXI_GP1_WDATA(S_AXI_GP1_WDATA),          // input wire [31 : 0] S_AXI_GP1_WDATA
  .S_AXI_GP1_ARCACHE(S_AXI_GP1_ARCACHE),      // input wire [3 : 0] S_AXI_GP1_ARCACHE
  .S_AXI_GP1_ARLEN(S_AXI_GP1_ARLEN),          // input wire [3 : 0] S_AXI_GP1_ARLEN
  .S_AXI_GP1_ARQOS(S_AXI_GP1_ARQOS),          // input wire [3 : 0] S_AXI_GP1_ARQOS
  .S_AXI_GP1_AWCACHE(S_AXI_GP1_AWCACHE),      // input wire [3 : 0] S_AXI_GP1_AWCACHE
  .S_AXI_GP1_AWLEN(S_AXI_GP1_AWLEN),          // input wire [3 : 0] S_AXI_GP1_AWLEN
  .S_AXI_GP1_AWQOS(S_AXI_GP1_AWQOS),          // input wire [3 : 0] S_AXI_GP1_AWQOS
  .S_AXI_GP1_WSTRB(S_AXI_GP1_WSTRB),          // input wire [3 : 0] S_AXI_GP1_WSTRB
  .S_AXI_GP1_ARID(S_AXI_GP1_ARID),            // input wire [5 : 0] S_AXI_GP1_ARID
  .S_AXI_GP1_AWID(S_AXI_GP1_AWID),            // input wire [5 : 0] S_AXI_GP1_AWID
  .S_AXI_GP1_WID(S_AXI_GP1_WID),              // input wire [5 : 0] S_AXI_GP1_WID
  .FCLK_CLK0(FCLK_CLK0),                      // output wire FCLK_CLK0
  .FCLK_RESET0_N(FCLK_RESET0_N),              // output wire FCLK_RESET0_N
  .MIO(MIO),                                  // inout wire [53 : 0] MIO
  .DDR_CAS_n(DDR_CAS_n),                      // inout wire DDR_CAS_n
  .DDR_CKE(DDR_CKE),                          // inout wire DDR_CKE
  .DDR_Clk_n(DDR_Clk_n),                      // inout wire DDR_Clk_n
  .DDR_Clk(DDR_Clk),                          // inout wire DDR_Clk
  .DDR_CS_n(DDR_CS_n),                        // inout wire DDR_CS_n
  .DDR_DRSTB(DDR_DRSTB),                      // inout wire DDR_DRSTB
  .DDR_ODT(DDR_ODT),                          // inout wire DDR_ODT
  .DDR_RAS_n(DDR_RAS_n),                      // inout wire DDR_RAS_n
  .DDR_WEB(DDR_WEB),                          // inout wire DDR_WEB
  .DDR_BankAddr(DDR_BankAddr),                // inout wire [2 : 0] DDR_BankAddr
  .DDR_Addr(DDR_Addr),                        // inout wire [14 : 0] DDR_Addr
  .DDR_VRN(DDR_VRN),                          // inout wire DDR_VRN
  .DDR_VRP(DDR_VRP),                          // inout wire DDR_VRP
  .DDR_DM(DDR_DM),                            // inout wire [3 : 0] DDR_DM
  .DDR_DQ(DDR_DQ),                            // inout wire [31 : 0] DDR_DQ
  .DDR_DQS_n(DDR_DQS_n),                      // inout wire [3 : 0] DDR_DQS_n
  .DDR_DQS(DDR_DQS),                          // inout wire [3 : 0] DDR_DQS
  .PS_SRSTB(PS_SRSTB),                        // inout wire PS_SRSTB
  .PS_CLK(PS_CLK),                            // inout wire PS_CLK
  .PS_PORB(PS_PORB)                          // inout wire PS_PORB
);
// INST_TAG_END ------ End INSTANTIATION Template ---------

// You must compile the wrapper file design_1_processing_system7_0_0.v when simulating
// the core, design_1_processing_system7_0_0. When compiling the wrapper file, be sure to
// reference the Verilog simulation library.

