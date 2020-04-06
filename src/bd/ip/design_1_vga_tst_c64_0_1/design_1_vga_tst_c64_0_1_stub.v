// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.1 (lin64) Build 1846317 Fri Apr 14 18:54:47 MDT 2017
// Date        : Sun Apr  5 19:21:47 2020
// Host        : johan-Latitude-E5550 running 64-bit Ubuntu 16.04.5 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/johan/v/c64fpga/src/bd/ip/design_1_vga_tst_c64_0_1/design_1_vga_tst_c64_0_1_stub.v
// Design      : design_1_vga_tst_c64_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "vga,Vivado 2017.1" *)
module design_1_vga_tst_c64_0_1(clk, clk_axi, reset, vert_sync, horiz_sync, red, 
  green, blue, ip2bus_mst_addr, ip2bus_mst_length, ip2bus_mstrd_d, ip2bus_inputs, 
  ip2bus_otputs, c64_mode_in, rst_status, horiz_pos_debug, vert_pos_debug, start_debug, 
  data_in_debug, data_out_debug, next_in_debug, next_out_debug, data_valid_in_debug, 
  data_valid_out_debug, shift_reg_debug, axi_data_out_debug, axi_read_debug, 
  enable_write_async_debug, address_debug, fifo_write_address_debug, 
  fifo_read_address_debug, fifo_full_debug, fifo_empty_debug, vert_sync_delayed_1_debug, 
  vert_sync_delayed_2_debug, vert_sync_delayed_3_debug, vert_sync_delayed_4_debug, 
  vert_sync_delayed_5_debug)
/* synthesis syn_black_box black_box_pad_pin="clk,clk_axi,reset,vert_sync,horiz_sync,red[4:0],green[5:0],blue[4:0],ip2bus_mst_addr[31:0],ip2bus_mst_length[11:0],ip2bus_mstrd_d[31:0],ip2bus_inputs[4:0],ip2bus_otputs[5:0],c64_mode_in,rst_status,horiz_pos_debug[10:0],vert_pos_debug[10:0],start_debug,data_in_debug[23:0],data_out_debug[23:0],next_in_debug,next_out_debug,data_valid_in_debug,data_valid_out_debug,shift_reg_debug[31:0],axi_data_out_debug[31:0],axi_read_debug,enable_write_async_debug,address_debug[31:0],fifo_write_address_debug[7:0],fifo_read_address_debug[7:0],fifo_full_debug,fifo_empty_debug,vert_sync_delayed_1_debug,vert_sync_delayed_2_debug,vert_sync_delayed_3_debug,vert_sync_delayed_4_debug,vert_sync_delayed_5_debug" */;
  input clk;
  input clk_axi;
  input reset;
  output vert_sync;
  output horiz_sync;
  output [4:0]red;
  output [5:0]green;
  output [4:0]blue;
  output [31:0]ip2bus_mst_addr;
  output [11:0]ip2bus_mst_length;
  input [31:0]ip2bus_mstrd_d;
  output [4:0]ip2bus_inputs;
  input [5:0]ip2bus_otputs;
  input c64_mode_in;
  output rst_status;
  output [10:0]horiz_pos_debug;
  output [10:0]vert_pos_debug;
  output start_debug;
  output [23:0]data_in_debug;
  output [23:0]data_out_debug;
  output next_in_debug;
  output next_out_debug;
  output data_valid_in_debug;
  output data_valid_out_debug;
  output [31:0]shift_reg_debug;
  output [31:0]axi_data_out_debug;
  output axi_read_debug;
  output enable_write_async_debug;
  output [31:0]address_debug;
  output [7:0]fifo_write_address_debug;
  output [7:0]fifo_read_address_debug;
  output fifo_full_debug;
  output fifo_empty_debug;
  output vert_sync_delayed_1_debug;
  output vert_sync_delayed_2_debug;
  output vert_sync_delayed_3_debug;
  output vert_sync_delayed_4_debug;
  output vert_sync_delayed_5_debug;
endmodule
