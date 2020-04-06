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


// IP VLNV: user.org:user:block_test:1.0
// IP Revision: 106

(* X_CORE_INFO = "block_test,Vivado 2017.1" *)
(* CHECK_LICENSE_TYPE = "design_1_block_test_0_0,block_test,{}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_block_test_0_0 (
  clk,
  axi_clk_in,
  addr_a,
  data_a,
  c_data_debug,
  cpu_data_debug,
  we_debug,
  addr_b,
  data_b,
  x_pos_debug,
  cycle_in_line_debug,
  clk_counter_debug,
  c64reset_debug,
  flag1_debug,
  flag1_delayed_debug,
  irq_debug,
  addr_debug,
  proc_rst,
  reset_cpu,
  locked,
  proc_rst_neg,
  clk_2_mhz_debug,
  out_rgb,
  blank_signal,
  ip2bus_mst_addr,
  ip2bus_mst_length,
  clk_1_mhz,
  pwm,
  joybits,
  joybits2,
  flag1,
  ip2bus_mstwr_d,
  ip2bus_inputs,
  ip2bus_otputs,
  slave_0_reg,
  slave_1_reg,
  tape_button,
  motor_control,
  count_in_buf,
  read,
  audio_out
);

(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk;
input wire axi_clk_in;
output wire [15 : 0] addr_a;
output wire [7 : 0] data_a;
output wire [7 : 0] c_data_debug;
output wire [7 : 0] cpu_data_debug;
output wire we_debug;
output wire [15 : 0] addr_b;
output wire [7 : 0] data_b;
output wire [8 : 0] x_pos_debug;
output wire [6 : 0] cycle_in_line_debug;
output wire [2 : 0] clk_counter_debug;
output wire c64reset_debug;
output wire flag1_debug;
output wire flag1_delayed_debug;
output wire irq_debug;
output wire addr_debug;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 proc_rst RST" *)
input wire proc_rst;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset_cpu RST" *)
input wire reset_cpu;
input wire locked;
output wire proc_rst_neg;
output wire clk_2_mhz_debug;
output wire [23 : 0] out_rgb;
output wire blank_signal;
output wire [31 : 0] ip2bus_mst_addr;
output wire [11 : 0] ip2bus_mst_length;
output wire clk_1_mhz;
input wire pwm;
input wire [4 : 0] joybits;
input wire [4 : 0] joybits2;
input wire flag1;
output wire [31 : 0] ip2bus_mstwr_d;
output wire [4 : 0] ip2bus_inputs;
input wire [5 : 0] ip2bus_otputs;
input wire [31 : 0] slave_0_reg;
input wire [31 : 0] slave_1_reg;
input wire tape_button;
output wire motor_control;
output wire [12 : 0] count_in_buf;
output wire read;
output wire [15 : 0] audio_out;

  block_test inst (
    .clk(clk),
    .axi_clk_in(axi_clk_in),
    .addr_a(addr_a),
    .data_a(data_a),
    .c_data_debug(c_data_debug),
    .cpu_data_debug(cpu_data_debug),
    .we_debug(we_debug),
    .addr_b(addr_b),
    .data_b(data_b),
    .x_pos_debug(x_pos_debug),
    .cycle_in_line_debug(cycle_in_line_debug),
    .clk_counter_debug(clk_counter_debug),
    .c64reset_debug(c64reset_debug),
    .flag1_debug(flag1_debug),
    .flag1_delayed_debug(flag1_delayed_debug),
    .irq_debug(irq_debug),
    .addr_debug(addr_debug),
    .proc_rst(proc_rst),
    .reset_cpu(reset_cpu),
    .locked(locked),
    .proc_rst_neg(proc_rst_neg),
    .clk_2_mhz_debug(clk_2_mhz_debug),
    .out_rgb(out_rgb),
    .blank_signal(blank_signal),
    .ip2bus_mst_addr(ip2bus_mst_addr),
    .ip2bus_mst_length(ip2bus_mst_length),
    .clk_1_mhz(clk_1_mhz),
    .pwm(pwm),
    .joybits(joybits),
    .joybits2(joybits2),
    .flag1(flag1),
    .ip2bus_mstwr_d(ip2bus_mstwr_d),
    .ip2bus_inputs(ip2bus_inputs),
    .ip2bus_otputs(ip2bus_otputs),
    .slave_0_reg(slave_0_reg),
    .slave_1_reg(slave_1_reg),
    .tape_button(tape_button),
    .motor_control(motor_control),
    .count_in_buf(count_in_buf),
    .read(read),
    .audio_out(audio_out)
  );
endmodule
