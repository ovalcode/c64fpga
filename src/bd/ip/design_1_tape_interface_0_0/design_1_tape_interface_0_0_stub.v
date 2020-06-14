// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Sun Jun 14 10:35:13 2020
// Host        : johan-Latitude-E5550 running 64-bit Ubuntu 16.04.5 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/johan/v20/c64fpga/src/bd/ip/design_1_tape_interface_0_0/design_1_tape_interface_0_0_stub.v
// Design      : design_1_tape_interface_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "top,Vivado 2019.1" *)
module design_1_tape_interface_0_0(clk, clk_1_mhz, restart, reset, ip2bus_mst_addr, 
  ip2bus_mst_length, ip2bus_mstrd_d, ip2bus_inputs, ip2bus_otputs, motor_control, pwm)
/* synthesis syn_black_box black_box_pad_pin="clk,clk_1_mhz,restart,reset,ip2bus_mst_addr[31:0],ip2bus_mst_length[11:0],ip2bus_mstrd_d[31:0],ip2bus_inputs[4:0],ip2bus_otputs[5:0],motor_control,pwm" */;
  input clk;
  input clk_1_mhz;
  input restart;
  input reset;
  output [31:0]ip2bus_mst_addr;
  output [11:0]ip2bus_mst_length;
  input [31:0]ip2bus_mstrd_d;
  output [4:0]ip2bus_inputs;
  input [5:0]ip2bus_otputs;
  input motor_control;
  output pwm;
endmodule
