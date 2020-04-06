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


// IP VLNV: xilinx.com:ip:sc_switchboard:1.0
// IP Revision: 4

(* X_CORE_INFO = "sc_switchboard_v1_0_4_top,Vivado 2017.1" *)
(* CHECK_LICENSE_TYPE = "bd_6e42_wsw_0,sc_switchboard_v1_0_4_top,{}" *)
(* CORE_GENERATION_INFO = "bd_6e42_wsw_0,sc_switchboard_v1_0_4_top,{x_ipProduct=Vivado 2017.1,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=sc_switchboard,x_ipVersion=1.0,x_ipCoreRevision=4,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_PAYLD_WIDTH=53,K_MAX_INFO_WIDTH=1,C_S_PIPELINES=0,C_M_PIPELINES=1,C_S_LATENCY=0,C_NUM_SI=3,C_NUM_MI=2,C_TESTING_MODE=0,C_CONNECTIVITY=0b101001}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module bd_6e42_wsw_0 (
  aclk,
  aclken,
  s_sc_send,
  s_sc_req,
  s_sc_info,
  s_sc_payld,
  s_sc_recv,
  m_sc_recv,
  m_sc_send,
  m_sc_req,
  m_sc_info,
  m_sc_payld
);

(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *)
input wire aclk;
(* X_INTERFACE_INFO = "xilinx.com:signal:clockenable:1.0 aclken CE" *)
input wire aclken;
(* X_INTERFACE_INFO = "xilinx.com:interface:sc:1.0 S00_SC SEND [1:0] [1:0], xilinx.com:interface:sc:1.0 S01_SC SEND [1:0] [3:2], xilinx.com:interface:sc:1.0 S02_SC SEND [1:0] [5:4]" *)
input wire [5 : 0] s_sc_send;
(* X_INTERFACE_INFO = "xilinx.com:interface:sc:1.0 S00_SC REQ [1:0] [1:0], xilinx.com:interface:sc:1.0 S01_SC REQ [1:0] [3:2], xilinx.com:interface:sc:1.0 S02_SC REQ [1:0] [5:4]" *)
input wire [5 : 0] s_sc_req;
(* X_INTERFACE_INFO = "xilinx.com:interface:sc:1.0 S00_SC INFO [1:0] [1:0], xilinx.com:interface:sc:1.0 S01_SC INFO [1:0] [3:2], xilinx.com:interface:sc:1.0 S02_SC INFO [1:0] [5:4]" *)
input wire [5 : 0] s_sc_info;
(* X_INTERFACE_INFO = "xilinx.com:interface:sc:1.0 S00_SC PAYLD [52:0] [52:0], xilinx.com:interface:sc:1.0 S01_SC PAYLD [52:0] [105:53], xilinx.com:interface:sc:1.0 S02_SC PAYLD [52:0] [158:106]" *)
input wire [158 : 0] s_sc_payld;
(* X_INTERFACE_INFO = "xilinx.com:interface:sc:1.0 S00_SC RECV [1:0] [1:0], xilinx.com:interface:sc:1.0 S01_SC RECV [1:0] [3:2], xilinx.com:interface:sc:1.0 S02_SC RECV [1:0] [5:4]" *)
output wire [5 : 0] s_sc_recv;
(* X_INTERFACE_INFO = "xilinx.com:interface:sc:1.0 M00_SC RECV [2:0] [2:0], xilinx.com:interface:sc:1.0 M01_SC RECV [2:0] [5:3]" *)
input wire [5 : 0] m_sc_recv;
(* X_INTERFACE_INFO = "xilinx.com:interface:sc:1.0 M00_SC SEND [2:0] [2:0], xilinx.com:interface:sc:1.0 M01_SC SEND [2:0] [5:3]" *)
output wire [5 : 0] m_sc_send;
(* X_INTERFACE_INFO = "xilinx.com:interface:sc:1.0 M00_SC REQ [2:0] [2:0], xilinx.com:interface:sc:1.0 M01_SC REQ [2:0] [5:3]" *)
output wire [5 : 0] m_sc_req;
(* X_INTERFACE_INFO = "xilinx.com:interface:sc:1.0 M00_SC INFO [2:0] [2:0], xilinx.com:interface:sc:1.0 M01_SC INFO [2:0] [5:3]" *)
output wire [5 : 0] m_sc_info;
(* X_INTERFACE_INFO = "xilinx.com:interface:sc:1.0 M00_SC PAYLD [52:0] [52:0], xilinx.com:interface:sc:1.0 M01_SC PAYLD [52:0] [105:53]" *)
output wire [105 : 0] m_sc_payld;

  sc_switchboard_v1_0_4_top #(
    .C_PAYLD_WIDTH(53),
    .K_MAX_INFO_WIDTH(1),
    .C_S_PIPELINES(0),
    .C_M_PIPELINES(1),
    .C_S_LATENCY(0),
    .C_NUM_SI(3),
    .C_NUM_MI(2),
    .C_TESTING_MODE(0),
    .C_CONNECTIVITY(6'B101001)
  ) inst (
    .aclk(aclk),
    .aclken(aclken),
    .connectivity(6'B101001),
    .s_sc_send(s_sc_send),
    .s_sc_req(s_sc_req),
    .s_sc_info(s_sc_info),
    .s_sc_payld(s_sc_payld),
    .s_sc_recv(s_sc_recv),
    .m_sc_recv(m_sc_recv),
    .m_sc_send(m_sc_send),
    .m_sc_req(m_sc_req),
    .m_sc_info(m_sc_info),
    .m_sc_payld(m_sc_payld)
  );
endmodule
