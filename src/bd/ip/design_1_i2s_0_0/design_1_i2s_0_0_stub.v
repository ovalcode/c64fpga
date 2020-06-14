// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Sun Jun 14 10:31:55 2020
// Host        : johan-Latitude-E5550 running 64-bit Ubuntu 16.04.5 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/johan/v20/c64fpga/src/bd/ip/design_1_i2s_0_0/design_1_i2s_0_0_stub.v
// Design      : design_1_i2s_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "i2s,Vivado 2019.1" *)
module design_1_i2s_0_0(clk, clk_1_mhz, clk_100_mhz, audio_in, clk_reset, 
  clk_1_5_mhz, channel_enable, out_data, mute_en)
/* synthesis syn_black_box black_box_pad_pin="clk,clk_1_mhz,clk_100_mhz,audio_in[15:0],clk_reset,clk_1_5_mhz,channel_enable,out_data,mute_en" */;
  input clk;
  input clk_1_mhz;
  input clk_100_mhz;
  input [15:0]audio_in;
  output clk_reset;
  output clk_1_5_mhz;
  output channel_enable;
  output out_data;
  output mute_en;
endmodule
