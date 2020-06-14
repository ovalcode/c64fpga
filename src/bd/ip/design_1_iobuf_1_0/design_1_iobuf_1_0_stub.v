// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Sun Jun 14 10:42:43 2020
// Host        : johan-Latitude-E5550 running 64-bit Ubuntu 16.04.5 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/johan/v20/c64fpga/src/bd/ip/design_1_iobuf_1_0/design_1_iobuf_1_0_stub.v
// Design      : design_1_iobuf_1_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "iobuf,Vivado 2019.1" *)
module design_1_iobuf_1_0(out, in, tristate, pin)
/* synthesis syn_black_box black_box_pad_pin="out,in,tristate,pin" */;
  output out;
  input in;
  input tristate;
  inout pin;
endmodule
