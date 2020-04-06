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


// IP VLNV: user.org:user:tape_interface:1.0
// IP Revision: 22

(* X_CORE_INFO = "top,Vivado 2017.1" *)
(* CHECK_LICENSE_TYPE = "design_1_tape_interface_0_0,top,{}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_tape_interface_0_0 (
  clk,
  clk_1_mhz,
  restart,
  reset,
  ip2bus_mst_addr,
  ip2bus_mst_length,
  ip2bus_mstrd_d,
  ip2bus_inputs,
  ip2bus_otputs,
  motor_control,
  pwm
);

(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk;
input wire clk_1_mhz;
input wire restart;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *)
input wire reset;
output wire [31 : 0] ip2bus_mst_addr;
output wire [11 : 0] ip2bus_mst_length;
input wire [31 : 0] ip2bus_mstrd_d;
output wire [4 : 0] ip2bus_inputs;
input wire [5 : 0] ip2bus_otputs;
input wire motor_control;
output wire pwm;

  top inst (
    .clk(clk),
    .clk_1_mhz(clk_1_mhz),
    .restart(restart),
    .reset(reset),
    .ip2bus_mst_addr(ip2bus_mst_addr),
    .ip2bus_mst_length(ip2bus_mst_length),
    .ip2bus_mstrd_d(ip2bus_mstrd_d),
    .ip2bus_inputs(ip2bus_inputs),
    .ip2bus_otputs(ip2bus_otputs),
    .motor_control(motor_control),
    .pwm(pwm)
  );
endmodule
