-- (c) Copyright 1995-2020 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:ip:smartconnect:1.0
-- IP Revision: 11

-- The following code must appear in the VHDL architecture header.

------------- Begin Cut here for COMPONENT Declaration ------ COMP_TAG
COMPONENT design_1_axi_smc_0
  PORT (
    aclk : IN STD_LOGIC;
    aresetn : IN STD_LOGIC;
    S00_AXI_awid : IN STD_LOGIC;
    S00_AXI_awaddr : IN STD_LOGIC;
    S00_AXI_awlen : IN STD_LOGIC;
    S00_AXI_awsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    S00_AXI_awburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    S00_AXI_awlock : IN STD_LOGIC;
    S00_AXI_awcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    S00_AXI_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    S00_AXI_awregion : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    S00_AXI_awqos : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    S00_AXI_awuser : IN STD_LOGIC;
    S00_AXI_awvalid : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    S00_AXI_awready : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    S00_AXI_wid : IN STD_LOGIC;
    S00_AXI_wdata : IN STD_LOGIC;
    S00_AXI_wstrb : IN STD_LOGIC;
    S00_AXI_wlast : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    S00_AXI_wuser : IN STD_LOGIC;
    S00_AXI_wvalid : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    S00_AXI_wready : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    S00_AXI_bid : OUT STD_LOGIC;
    S00_AXI_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    S00_AXI_buser : OUT STD_LOGIC;
    S00_AXI_bvalid : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    S00_AXI_bready : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    S00_AXI_arid : IN STD_LOGIC;
    S00_AXI_araddr : IN STD_LOGIC;
    S00_AXI_arlen : IN STD_LOGIC;
    S00_AXI_arsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    S00_AXI_arburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    S00_AXI_arlock : IN STD_LOGIC;
    S00_AXI_arcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    S00_AXI_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    S00_AXI_arregion : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    S00_AXI_arqos : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    S00_AXI_aruser : IN STD_LOGIC;
    S00_AXI_arvalid : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    S00_AXI_arready : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    S00_AXI_rid : OUT STD_LOGIC;
    S00_AXI_rdata : OUT STD_LOGIC;
    S00_AXI_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    S00_AXI_rlast : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    S00_AXI_ruser : OUT STD_LOGIC;
    S00_AXI_rvalid : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    S00_AXI_rready : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    S01_AXI_awid : IN STD_LOGIC;
    S01_AXI_awaddr : IN STD_LOGIC;
    S01_AXI_awlen : IN STD_LOGIC;
    S01_AXI_awsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    S01_AXI_awburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    S01_AXI_awlock : IN STD_LOGIC;
    S01_AXI_awcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    S01_AXI_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    S01_AXI_awregion : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    S01_AXI_awqos : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    S01_AXI_awuser : IN STD_LOGIC;
    S01_AXI_awvalid : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    S01_AXI_awready : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    S01_AXI_wid : IN STD_LOGIC;
    S01_AXI_wdata : IN STD_LOGIC;
    S01_AXI_wstrb : IN STD_LOGIC;
    S01_AXI_wlast : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    S01_AXI_wuser : IN STD_LOGIC;
    S01_AXI_wvalid : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    S01_AXI_wready : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    S01_AXI_bid : OUT STD_LOGIC;
    S01_AXI_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    S01_AXI_buser : OUT STD_LOGIC;
    S01_AXI_bvalid : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    S01_AXI_bready : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    S01_AXI_arid : IN STD_LOGIC;
    S01_AXI_araddr : IN STD_LOGIC;
    S01_AXI_arlen : IN STD_LOGIC;
    S01_AXI_arsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    S01_AXI_arburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    S01_AXI_arlock : IN STD_LOGIC;
    S01_AXI_arcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    S01_AXI_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    S01_AXI_arregion : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    S01_AXI_arqos : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    S01_AXI_aruser : IN STD_LOGIC;
    S01_AXI_arvalid : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    S01_AXI_arready : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    S01_AXI_rid : OUT STD_LOGIC;
    S01_AXI_rdata : OUT STD_LOGIC;
    S01_AXI_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    S01_AXI_rlast : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    S01_AXI_ruser : OUT STD_LOGIC;
    S01_AXI_rvalid : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    S01_AXI_rready : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    M00_AXI_awid : OUT STD_LOGIC;
    M00_AXI_awaddr : OUT STD_LOGIC;
    M00_AXI_awlen : OUT STD_LOGIC;
    M00_AXI_awsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    M00_AXI_awburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    M00_AXI_awlock : OUT STD_LOGIC;
    M00_AXI_awcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    M00_AXI_awprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    M00_AXI_awregion : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    M00_AXI_awqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    M00_AXI_awuser : OUT STD_LOGIC;
    M00_AXI_awvalid : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    M00_AXI_awready : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    M00_AXI_wid : OUT STD_LOGIC;
    M00_AXI_wdata : OUT STD_LOGIC;
    M00_AXI_wstrb : OUT STD_LOGIC;
    M00_AXI_wlast : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    M00_AXI_wuser : OUT STD_LOGIC;
    M00_AXI_wvalid : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    M00_AXI_wready : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    M00_AXI_bid : IN STD_LOGIC;
    M00_AXI_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    M00_AXI_buser : IN STD_LOGIC;
    M00_AXI_bvalid : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    M00_AXI_bready : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    M00_AXI_arid : OUT STD_LOGIC;
    M00_AXI_araddr : OUT STD_LOGIC;
    M00_AXI_arlen : OUT STD_LOGIC;
    M00_AXI_arsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    M00_AXI_arburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    M00_AXI_arlock : OUT STD_LOGIC;
    M00_AXI_arcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    M00_AXI_arprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    M00_AXI_arregion : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    M00_AXI_arqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    M00_AXI_aruser : OUT STD_LOGIC;
    M00_AXI_arvalid : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    M00_AXI_arready : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    M00_AXI_rid : IN STD_LOGIC;
    M00_AXI_rdata : IN STD_LOGIC;
    M00_AXI_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    M00_AXI_rlast : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    M00_AXI_ruser : IN STD_LOGIC;
    M00_AXI_rvalid : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    M00_AXI_rready : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    M01_AXI_awid : OUT STD_LOGIC;
    M01_AXI_awaddr : OUT STD_LOGIC;
    M01_AXI_awlen : OUT STD_LOGIC;
    M01_AXI_awsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    M01_AXI_awburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    M01_AXI_awlock : OUT STD_LOGIC;
    M01_AXI_awcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    M01_AXI_awprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    M01_AXI_awregion : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    M01_AXI_awqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    M01_AXI_awuser : OUT STD_LOGIC;
    M01_AXI_awvalid : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    M01_AXI_awready : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    M01_AXI_wid : OUT STD_LOGIC;
    M01_AXI_wdata : OUT STD_LOGIC;
    M01_AXI_wstrb : OUT STD_LOGIC;
    M01_AXI_wlast : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    M01_AXI_wuser : OUT STD_LOGIC;
    M01_AXI_wvalid : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    M01_AXI_wready : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    M01_AXI_bid : IN STD_LOGIC;
    M01_AXI_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    M01_AXI_buser : IN STD_LOGIC;
    M01_AXI_bvalid : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    M01_AXI_bready : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    M01_AXI_arid : OUT STD_LOGIC;
    M01_AXI_araddr : OUT STD_LOGIC;
    M01_AXI_arlen : OUT STD_LOGIC;
    M01_AXI_arsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    M01_AXI_arburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    M01_AXI_arlock : OUT STD_LOGIC;
    M01_AXI_arcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    M01_AXI_arprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    M01_AXI_arregion : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    M01_AXI_arqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    M01_AXI_aruser : OUT STD_LOGIC;
    M01_AXI_arvalid : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    M01_AXI_arready : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    M01_AXI_rid : IN STD_LOGIC;
    M01_AXI_rdata : IN STD_LOGIC;
    M01_AXI_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    M01_AXI_rlast : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    M01_AXI_ruser : IN STD_LOGIC;
    M01_AXI_rvalid : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    M01_AXI_rready : OUT STD_LOGIC_VECTOR(0 DOWNTO 0)
  );
END COMPONENT;
-- COMP_TAG_END ------ End COMPONENT Declaration ------------

-- The following code must appear in the VHDL architecture
-- body. Substitute your own instance name and net names.

------------- Begin Cut here for INSTANTIATION Template ----- INST_TAG
your_instance_name : design_1_axi_smc_0
  PORT MAP (
    aclk => aclk,
    aresetn => aresetn,
    S00_AXI_awid => S00_AXI_awid,
    S00_AXI_awaddr => S00_AXI_awaddr,
    S00_AXI_awlen => S00_AXI_awlen,
    S00_AXI_awsize => S00_AXI_awsize,
    S00_AXI_awburst => S00_AXI_awburst,
    S00_AXI_awlock => S00_AXI_awlock,
    S00_AXI_awcache => S00_AXI_awcache,
    S00_AXI_awprot => S00_AXI_awprot,
    S00_AXI_awregion => S00_AXI_awregion,
    S00_AXI_awqos => S00_AXI_awqos,
    S00_AXI_awuser => S00_AXI_awuser,
    S00_AXI_awvalid => S00_AXI_awvalid,
    S00_AXI_awready => S00_AXI_awready,
    S00_AXI_wid => S00_AXI_wid,
    S00_AXI_wdata => S00_AXI_wdata,
    S00_AXI_wstrb => S00_AXI_wstrb,
    S00_AXI_wlast => S00_AXI_wlast,
    S00_AXI_wuser => S00_AXI_wuser,
    S00_AXI_wvalid => S00_AXI_wvalid,
    S00_AXI_wready => S00_AXI_wready,
    S00_AXI_bid => S00_AXI_bid,
    S00_AXI_bresp => S00_AXI_bresp,
    S00_AXI_buser => S00_AXI_buser,
    S00_AXI_bvalid => S00_AXI_bvalid,
    S00_AXI_bready => S00_AXI_bready,
    S00_AXI_arid => S00_AXI_arid,
    S00_AXI_araddr => S00_AXI_araddr,
    S00_AXI_arlen => S00_AXI_arlen,
    S00_AXI_arsize => S00_AXI_arsize,
    S00_AXI_arburst => S00_AXI_arburst,
    S00_AXI_arlock => S00_AXI_arlock,
    S00_AXI_arcache => S00_AXI_arcache,
    S00_AXI_arprot => S00_AXI_arprot,
    S00_AXI_arregion => S00_AXI_arregion,
    S00_AXI_arqos => S00_AXI_arqos,
    S00_AXI_aruser => S00_AXI_aruser,
    S00_AXI_arvalid => S00_AXI_arvalid,
    S00_AXI_arready => S00_AXI_arready,
    S00_AXI_rid => S00_AXI_rid,
    S00_AXI_rdata => S00_AXI_rdata,
    S00_AXI_rresp => S00_AXI_rresp,
    S00_AXI_rlast => S00_AXI_rlast,
    S00_AXI_ruser => S00_AXI_ruser,
    S00_AXI_rvalid => S00_AXI_rvalid,
    S00_AXI_rready => S00_AXI_rready,
    S01_AXI_awid => S01_AXI_awid,
    S01_AXI_awaddr => S01_AXI_awaddr,
    S01_AXI_awlen => S01_AXI_awlen,
    S01_AXI_awsize => S01_AXI_awsize,
    S01_AXI_awburst => S01_AXI_awburst,
    S01_AXI_awlock => S01_AXI_awlock,
    S01_AXI_awcache => S01_AXI_awcache,
    S01_AXI_awprot => S01_AXI_awprot,
    S01_AXI_awregion => S01_AXI_awregion,
    S01_AXI_awqos => S01_AXI_awqos,
    S01_AXI_awuser => S01_AXI_awuser,
    S01_AXI_awvalid => S01_AXI_awvalid,
    S01_AXI_awready => S01_AXI_awready,
    S01_AXI_wid => S01_AXI_wid,
    S01_AXI_wdata => S01_AXI_wdata,
    S01_AXI_wstrb => S01_AXI_wstrb,
    S01_AXI_wlast => S01_AXI_wlast,
    S01_AXI_wuser => S01_AXI_wuser,
    S01_AXI_wvalid => S01_AXI_wvalid,
    S01_AXI_wready => S01_AXI_wready,
    S01_AXI_bid => S01_AXI_bid,
    S01_AXI_bresp => S01_AXI_bresp,
    S01_AXI_buser => S01_AXI_buser,
    S01_AXI_bvalid => S01_AXI_bvalid,
    S01_AXI_bready => S01_AXI_bready,
    S01_AXI_arid => S01_AXI_arid,
    S01_AXI_araddr => S01_AXI_araddr,
    S01_AXI_arlen => S01_AXI_arlen,
    S01_AXI_arsize => S01_AXI_arsize,
    S01_AXI_arburst => S01_AXI_arburst,
    S01_AXI_arlock => S01_AXI_arlock,
    S01_AXI_arcache => S01_AXI_arcache,
    S01_AXI_arprot => S01_AXI_arprot,
    S01_AXI_arregion => S01_AXI_arregion,
    S01_AXI_arqos => S01_AXI_arqos,
    S01_AXI_aruser => S01_AXI_aruser,
    S01_AXI_arvalid => S01_AXI_arvalid,
    S01_AXI_arready => S01_AXI_arready,
    S01_AXI_rid => S01_AXI_rid,
    S01_AXI_rdata => S01_AXI_rdata,
    S01_AXI_rresp => S01_AXI_rresp,
    S01_AXI_rlast => S01_AXI_rlast,
    S01_AXI_ruser => S01_AXI_ruser,
    S01_AXI_rvalid => S01_AXI_rvalid,
    S01_AXI_rready => S01_AXI_rready,
    M00_AXI_awid => M00_AXI_awid,
    M00_AXI_awaddr => M00_AXI_awaddr,
    M00_AXI_awlen => M00_AXI_awlen,
    M00_AXI_awsize => M00_AXI_awsize,
    M00_AXI_awburst => M00_AXI_awburst,
    M00_AXI_awlock => M00_AXI_awlock,
    M00_AXI_awcache => M00_AXI_awcache,
    M00_AXI_awprot => M00_AXI_awprot,
    M00_AXI_awregion => M00_AXI_awregion,
    M00_AXI_awqos => M00_AXI_awqos,
    M00_AXI_awuser => M00_AXI_awuser,
    M00_AXI_awvalid => M00_AXI_awvalid,
    M00_AXI_awready => M00_AXI_awready,
    M00_AXI_wid => M00_AXI_wid,
    M00_AXI_wdata => M00_AXI_wdata,
    M00_AXI_wstrb => M00_AXI_wstrb,
    M00_AXI_wlast => M00_AXI_wlast,
    M00_AXI_wuser => M00_AXI_wuser,
    M00_AXI_wvalid => M00_AXI_wvalid,
    M00_AXI_wready => M00_AXI_wready,
    M00_AXI_bid => M00_AXI_bid,
    M00_AXI_bresp => M00_AXI_bresp,
    M00_AXI_buser => M00_AXI_buser,
    M00_AXI_bvalid => M00_AXI_bvalid,
    M00_AXI_bready => M00_AXI_bready,
    M00_AXI_arid => M00_AXI_arid,
    M00_AXI_araddr => M00_AXI_araddr,
    M00_AXI_arlen => M00_AXI_arlen,
    M00_AXI_arsize => M00_AXI_arsize,
    M00_AXI_arburst => M00_AXI_arburst,
    M00_AXI_arlock => M00_AXI_arlock,
    M00_AXI_arcache => M00_AXI_arcache,
    M00_AXI_arprot => M00_AXI_arprot,
    M00_AXI_arregion => M00_AXI_arregion,
    M00_AXI_arqos => M00_AXI_arqos,
    M00_AXI_aruser => M00_AXI_aruser,
    M00_AXI_arvalid => M00_AXI_arvalid,
    M00_AXI_arready => M00_AXI_arready,
    M00_AXI_rid => M00_AXI_rid,
    M00_AXI_rdata => M00_AXI_rdata,
    M00_AXI_rresp => M00_AXI_rresp,
    M00_AXI_rlast => M00_AXI_rlast,
    M00_AXI_ruser => M00_AXI_ruser,
    M00_AXI_rvalid => M00_AXI_rvalid,
    M00_AXI_rready => M00_AXI_rready,
    M01_AXI_awid => M01_AXI_awid,
    M01_AXI_awaddr => M01_AXI_awaddr,
    M01_AXI_awlen => M01_AXI_awlen,
    M01_AXI_awsize => M01_AXI_awsize,
    M01_AXI_awburst => M01_AXI_awburst,
    M01_AXI_awlock => M01_AXI_awlock,
    M01_AXI_awcache => M01_AXI_awcache,
    M01_AXI_awprot => M01_AXI_awprot,
    M01_AXI_awregion => M01_AXI_awregion,
    M01_AXI_awqos => M01_AXI_awqos,
    M01_AXI_awuser => M01_AXI_awuser,
    M01_AXI_awvalid => M01_AXI_awvalid,
    M01_AXI_awready => M01_AXI_awready,
    M01_AXI_wid => M01_AXI_wid,
    M01_AXI_wdata => M01_AXI_wdata,
    M01_AXI_wstrb => M01_AXI_wstrb,
    M01_AXI_wlast => M01_AXI_wlast,
    M01_AXI_wuser => M01_AXI_wuser,
    M01_AXI_wvalid => M01_AXI_wvalid,
    M01_AXI_wready => M01_AXI_wready,
    M01_AXI_bid => M01_AXI_bid,
    M01_AXI_bresp => M01_AXI_bresp,
    M01_AXI_buser => M01_AXI_buser,
    M01_AXI_bvalid => M01_AXI_bvalid,
    M01_AXI_bready => M01_AXI_bready,
    M01_AXI_arid => M01_AXI_arid,
    M01_AXI_araddr => M01_AXI_araddr,
    M01_AXI_arlen => M01_AXI_arlen,
    M01_AXI_arsize => M01_AXI_arsize,
    M01_AXI_arburst => M01_AXI_arburst,
    M01_AXI_arlock => M01_AXI_arlock,
    M01_AXI_arcache => M01_AXI_arcache,
    M01_AXI_arprot => M01_AXI_arprot,
    M01_AXI_arregion => M01_AXI_arregion,
    M01_AXI_arqos => M01_AXI_arqos,
    M01_AXI_aruser => M01_AXI_aruser,
    M01_AXI_arvalid => M01_AXI_arvalid,
    M01_AXI_arready => M01_AXI_arready,
    M01_AXI_rid => M01_AXI_rid,
    M01_AXI_rdata => M01_AXI_rdata,
    M01_AXI_rresp => M01_AXI_rresp,
    M01_AXI_rlast => M01_AXI_rlast,
    M01_AXI_ruser => M01_AXI_ruser,
    M01_AXI_rvalid => M01_AXI_rvalid,
    M01_AXI_rready => M01_AXI_rready
  );
-- INST_TAG_END ------ End INSTANTIATION Template ---------

-- You must compile the wrapper file design_1_axi_smc_0.vhd when simulating
-- the core, design_1_axi_smc_0. When compiling the wrapper file, be sure to
-- reference the VHDL simulation library.

