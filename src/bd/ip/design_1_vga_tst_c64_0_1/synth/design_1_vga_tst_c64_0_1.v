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


// IP VLNV: user.org:user:vga_tst_c64:1.0
// IP Revision: 11

(* X_CORE_INFO = "vga,Vivado 2017.1" *)
(* CHECK_LICENSE_TYPE = "design_1_vga_tst_c64_0_1,vga,{}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_vga_tst_c64_0_1 (
  clk,
  clk_axi,
  reset,
  vert_sync,
  horiz_sync,
  red,
  green,
  blue,
  ip2bus_mst_addr,
  ip2bus_mst_length,
  ip2bus_mstrd_d,
  ip2bus_inputs,
  ip2bus_otputs,
  c64_mode_in,
  rst_status,
  horiz_pos_debug,
  vert_pos_debug,
  start_debug,
  data_in_debug,
  data_out_debug,
  next_in_debug,
  next_out_debug,
  data_valid_in_debug,
  data_valid_out_debug,
  shift_reg_debug,
  axi_data_out_debug,
  axi_read_debug,
  enable_write_async_debug,
  address_debug,
  fifo_write_address_debug,
  fifo_read_address_debug,
  fifo_full_debug,
  fifo_empty_debug,
  vert_sync_delayed_1_debug,
  vert_sync_delayed_2_debug,
  vert_sync_delayed_3_debug,
  vert_sync_delayed_4_debug,
  vert_sync_delayed_5_debug
);

(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk;
input wire clk_axi;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *)
input wire reset;
output wire vert_sync;
output wire horiz_sync;
output wire [4 : 0] red;
output wire [5 : 0] green;
output wire [4 : 0] blue;
output wire [31 : 0] ip2bus_mst_addr;
output wire [11 : 0] ip2bus_mst_length;
input wire [31 : 0] ip2bus_mstrd_d;
output wire [4 : 0] ip2bus_inputs;
input wire [5 : 0] ip2bus_otputs;
input wire c64_mode_in;
output wire rst_status;
output wire [10 : 0] horiz_pos_debug;
output wire [10 : 0] vert_pos_debug;
output wire start_debug;
output wire [23 : 0] data_in_debug;
output wire [23 : 0] data_out_debug;
output wire next_in_debug;
output wire next_out_debug;
output wire data_valid_in_debug;
output wire data_valid_out_debug;
output wire [31 : 0] shift_reg_debug;
output wire [31 : 0] axi_data_out_debug;
output wire axi_read_debug;
output wire enable_write_async_debug;
output wire [31 : 0] address_debug;
output wire [7 : 0] fifo_write_address_debug;
output wire [7 : 0] fifo_read_address_debug;
output wire fifo_full_debug;
output wire fifo_empty_debug;
output wire vert_sync_delayed_1_debug;
output wire vert_sync_delayed_2_debug;
output wire vert_sync_delayed_3_debug;
output wire vert_sync_delayed_4_debug;
output wire vert_sync_delayed_5_debug;

  vga #(
    .HORIZ_RES(1360),
    .VERT_RES(767),
    .HORIZ_BACK_PORCH(248),
    .HORIZ_FRONT_PORCH(48),
    .HORIZ_SYNC(112),
    .VERT_BACK_PORCH(38),
    .VERT_FRONT_PORCH(1),
    .VERT_SYNC(3),
    .TOTAL_HORIZ_RES(1768),
    .TOTAL_VERT_RES(809),
    .HORIZ_SYNC_START(1408),
    .HORIZ_SYNC_END(1520),
    .VERT_SYNC_START(768),
    .VERT_SYNC_END(771),
    .WAIT_START_VSYNC(2'B00),
    .RESET_CYCLE(2'B01),
    .GET_SET(2'B10),
    .WAIT_END_VSYNC(2'B11),
    .RESTART_STATE_WAIT(2'B00),
    .RESTART_STATE_RESTART(2'B01),
    .RESTART_STATE_END(2'B10),
    .STATE_16_SHIFT_IDLE(2'B00),
    .STATE_16_SHIFT_STORED(2'B01),
    .STATE_16_SHIFT_SHIFTED(2'B10)
  ) inst (
    .clk(clk),
    .clk_axi(clk_axi),
    .reset(reset),
    .vert_sync(vert_sync),
    .horiz_sync(horiz_sync),
    .red(red),
    .green(green),
    .blue(blue),
    .ip2bus_mst_addr(ip2bus_mst_addr),
    .ip2bus_mst_length(ip2bus_mst_length),
    .ip2bus_mstrd_d(ip2bus_mstrd_d),
    .ip2bus_inputs(ip2bus_inputs),
    .ip2bus_otputs(ip2bus_otputs),
    .c64_mode_in(c64_mode_in),
    .rst_status(rst_status),
    .horiz_pos_debug(horiz_pos_debug),
    .vert_pos_debug(vert_pos_debug),
    .start_debug(start_debug),
    .data_in_debug(data_in_debug),
    .data_out_debug(data_out_debug),
    .next_in_debug(next_in_debug),
    .next_out_debug(next_out_debug),
    .data_valid_in_debug(data_valid_in_debug),
    .data_valid_out_debug(data_valid_out_debug),
    .shift_reg_debug(shift_reg_debug),
    .axi_data_out_debug(axi_data_out_debug),
    .axi_read_debug(axi_read_debug),
    .enable_write_async_debug(enable_write_async_debug),
    .address_debug(address_debug),
    .fifo_write_address_debug(fifo_write_address_debug),
    .fifo_read_address_debug(fifo_read_address_debug),
    .fifo_full_debug(fifo_full_debug),
    .fifo_empty_debug(fifo_empty_debug),
    .vert_sync_delayed_1_debug(vert_sync_delayed_1_debug),
    .vert_sync_delayed_2_debug(vert_sync_delayed_2_debug),
    .vert_sync_delayed_3_debug(vert_sync_delayed_3_debug),
    .vert_sync_delayed_4_debug(vert_sync_delayed_4_debug),
    .vert_sync_delayed_5_debug(vert_sync_delayed_5_debug)
  );
endmodule
