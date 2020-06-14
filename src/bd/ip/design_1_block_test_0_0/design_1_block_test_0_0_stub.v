// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Sun Jun 14 10:36:03 2020
// Host        : johan-Latitude-E5550 running 64-bit Ubuntu 16.04.5 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/johan/v20/c64fpga/src/bd/ip/design_1_block_test_0_0/design_1_block_test_0_0_stub.v
// Design      : design_1_block_test_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "block_test,Vivado 2019.1" *)
module design_1_block_test_0_0(clk, axi_clk_in, addr_a, data_a, c_data_debug, 
  cpu_data_debug, we_debug, addr_b, data_b, x_pos_debug, cycle_in_line_debug, 
  clk_counter_debug, c64reset_debug, flag1_debug, flag1_delayed_debug, irq_debug, addr_debug, 
  proc_rst, reset_cpu, locked, proc_rst_neg, clk_2_mhz_debug, out_rgb, blank_signal, 
  ip2bus_mst_addr, ip2bus_mst_length, clk_1_mhz, pwm, joybits, joybits2, flag1, ip2bus_mstwr_d, 
  ip2bus_inputs, ip2bus_otputs, slave_0_reg, slave_1_reg, tape_button, motor_control, 
  count_in_buf, read, audio_out)
/* synthesis syn_black_box black_box_pad_pin="clk,axi_clk_in,addr_a[15:0],data_a[7:0],c_data_debug[7:0],cpu_data_debug[7:0],we_debug,addr_b[15:0],data_b[7:0],x_pos_debug[8:0],cycle_in_line_debug[6:0],clk_counter_debug[2:0],c64reset_debug,flag1_debug,flag1_delayed_debug,irq_debug,addr_debug,proc_rst,reset_cpu,locked,proc_rst_neg,clk_2_mhz_debug,out_rgb[23:0],blank_signal,ip2bus_mst_addr[31:0],ip2bus_mst_length[11:0],clk_1_mhz,pwm,joybits[4:0],joybits2[4:0],flag1,ip2bus_mstwr_d[31:0],ip2bus_inputs[4:0],ip2bus_otputs[5:0],slave_0_reg[31:0],slave_1_reg[31:0],tape_button,motor_control,count_in_buf[12:0],read,audio_out[15:0]" */;
  input clk;
  input axi_clk_in;
  output [15:0]addr_a;
  output [7:0]data_a;
  output [7:0]c_data_debug;
  output [7:0]cpu_data_debug;
  output we_debug;
  output [15:0]addr_b;
  output [7:0]data_b;
  output [8:0]x_pos_debug;
  output [6:0]cycle_in_line_debug;
  output [2:0]clk_counter_debug;
  output c64reset_debug;
  output flag1_debug;
  output flag1_delayed_debug;
  output irq_debug;
  output addr_debug;
  input proc_rst;
  input reset_cpu;
  input locked;
  output proc_rst_neg;
  output clk_2_mhz_debug;
  output [23:0]out_rgb;
  output blank_signal;
  output [31:0]ip2bus_mst_addr;
  output [11:0]ip2bus_mst_length;
  output clk_1_mhz;
  input pwm;
  input [4:0]joybits;
  input [4:0]joybits2;
  input flag1;
  output [31:0]ip2bus_mstwr_d;
  output [4:0]ip2bus_inputs;
  input [5:0]ip2bus_otputs;
  input [31:0]slave_0_reg;
  input [31:0]slave_1_reg;
  input tape_button;
  output motor_control;
  output [12:0]count_in_buf;
  output read;
  output [15:0]audio_out;
endmodule
