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

// The following must be inserted into your Verilog file for this
// core to be instantiated. Change the instance name and port connections
// (in parentheses) to your own signal names.

//----------- Begin Cut here for INSTANTIATION Template ---// INST_TAG
design_1_vga_tst_c64_0_0 your_instance_name (
  .clk(clk),                                              // input wire clk
  .clk_axi(clk_axi),                                      // input wire clk_axi
  .reset(reset),                                          // input wire reset
  .vert_sync(vert_sync),                                  // output wire vert_sync
  .horiz_sync(horiz_sync),                                // output wire horiz_sync
  .red(red),                                              // output wire [4 : 0] red
  .green(green),                                          // output wire [5 : 0] green
  .blue(blue),                                            // output wire [4 : 0] blue
  .ip2bus_mst_addr(ip2bus_mst_addr),                      // output wire [31 : 0] ip2bus_mst_addr
  .ip2bus_mst_length(ip2bus_mst_length),                  // output wire [11 : 0] ip2bus_mst_length
  .ip2bus_mstrd_d(ip2bus_mstrd_d),                        // input wire [31 : 0] ip2bus_mstrd_d
  .ip2bus_inputs(ip2bus_inputs),                          // output wire [4 : 0] ip2bus_inputs
  .ip2bus_otputs(ip2bus_otputs),                          // input wire [5 : 0] ip2bus_otputs
  .c64_mode_in(c64_mode_in),                              // input wire c64_mode_in
  .rst_status(rst_status),                                // output wire rst_status
  .horiz_pos_debug(horiz_pos_debug),                      // output wire [10 : 0] horiz_pos_debug
  .vert_pos_debug(vert_pos_debug),                        // output wire [10 : 0] vert_pos_debug
  .start_debug(start_debug),                              // output wire start_debug
  .data_in_debug(data_in_debug),                          // output wire [23 : 0] data_in_debug
  .data_out_debug(data_out_debug),                        // output wire [23 : 0] data_out_debug
  .next_in_debug(next_in_debug),                          // output wire next_in_debug
  .next_out_debug(next_out_debug),                        // output wire next_out_debug
  .data_valid_in_debug(data_valid_in_debug),              // output wire data_valid_in_debug
  .data_valid_out_debug(data_valid_out_debug),            // output wire data_valid_out_debug
  .shift_reg_debug(shift_reg_debug),                      // output wire [31 : 0] shift_reg_debug
  .axi_data_out_debug(axi_data_out_debug),                // output wire [31 : 0] axi_data_out_debug
  .axi_read_debug(axi_read_debug),                        // output wire axi_read_debug
  .enable_write_async_debug(enable_write_async_debug),    // output wire enable_write_async_debug
  .address_debug(address_debug),                          // output wire [31 : 0] address_debug
  .fifo_write_address_debug(fifo_write_address_debug),    // output wire [7 : 0] fifo_write_address_debug
  .fifo_read_address_debug(fifo_read_address_debug),      // output wire [7 : 0] fifo_read_address_debug
  .fifo_full_debug(fifo_full_debug),                      // output wire fifo_full_debug
  .fifo_empty_debug(fifo_empty_debug),                    // output wire fifo_empty_debug
  .vert_sync_delayed_1_debug(vert_sync_delayed_1_debug),  // output wire vert_sync_delayed_1_debug
  .vert_sync_delayed_2_debug(vert_sync_delayed_2_debug),  // output wire vert_sync_delayed_2_debug
  .vert_sync_delayed_3_debug(vert_sync_delayed_3_debug),  // output wire vert_sync_delayed_3_debug
  .vert_sync_delayed_4_debug(vert_sync_delayed_4_debug),  // output wire vert_sync_delayed_4_debug
  .vert_sync_delayed_5_debug(vert_sync_delayed_5_debug)  // output wire vert_sync_delayed_5_debug
);
// INST_TAG_END ------ End INSTANTIATION Template ---------

