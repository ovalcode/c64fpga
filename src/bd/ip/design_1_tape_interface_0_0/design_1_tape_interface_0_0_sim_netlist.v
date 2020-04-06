// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.1 (lin64) Build 1846317 Fri Apr 14 18:54:47 MDT 2017
// Date        : Sun Apr  5 18:34:32 2020
// Host        : johan-Latitude-E5550 running 64-bit Ubuntu 16.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/johan/v/c64fpga/src/bd/ip/design_1_tape_interface_0_0/design_1_tape_interface_0_0_sim_netlist.v
// Design      : design_1_tape_interface_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_tape_interface_0_0,top,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "top,Vivado 2017.1" *) 
(* NotValidForBitStream *)
module design_1_tape_interface_0_0
   (clk,
    clk_1_mhz,
    restart,
    reset,
    ip2bus_mst_addr,
    ip2bus_mst_length,
    ip2bus_mstrd_d,
    ip2bus_inputs,
    ip2bus_otputs,
    motor_control,
    pwm);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) input clk;
  input clk_1_mhz;
  input restart;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *) input reset;
  output [31:0]ip2bus_mst_addr;
  output [11:0]ip2bus_mst_length;
  input [31:0]ip2bus_mstrd_d;
  output [4:0]ip2bus_inputs;
  input [5:0]ip2bus_otputs;
  input motor_control;
  output pwm;

  wire \<const0> ;
  wire \<const1> ;
  wire \axi_start_address_reg[31]_i_4_n_0 ;
  wire clk;
  wire clk_1_mhz;
  wire [2:1]\^ip2bus_inputs ;
  wire [31:2]\^ip2bus_mst_addr ;
  wire [31:0]ip2bus_mstrd_d;
  wire [5:0]ip2bus_otputs;
  wire motor_control;
  wire pwm;
  wire reset;
  wire restart;

  assign ip2bus_inputs[4] = \<const0> ;
  assign ip2bus_inputs[3] = \<const0> ;
  assign ip2bus_inputs[2:1] = \^ip2bus_inputs [2:1];
  assign ip2bus_inputs[0] = \^ip2bus_inputs [1];
  assign ip2bus_mst_addr[31:2] = \^ip2bus_mst_addr [31:2];
  assign ip2bus_mst_addr[1] = \<const0> ;
  assign ip2bus_mst_addr[0] = \<const0> ;
  assign ip2bus_mst_length[11] = \<const0> ;
  assign ip2bus_mst_length[10] = \<const0> ;
  assign ip2bus_mst_length[9] = \<const0> ;
  assign ip2bus_mst_length[8] = \<const0> ;
  assign ip2bus_mst_length[7] = \<const0> ;
  assign ip2bus_mst_length[6] = \<const0> ;
  assign ip2bus_mst_length[5] = \<const0> ;
  assign ip2bus_mst_length[4] = \<const0> ;
  assign ip2bus_mst_length[3] = \<const0> ;
  assign ip2bus_mst_length[2] = \<const1> ;
  assign ip2bus_mst_length[1] = \<const0> ;
  assign ip2bus_mst_length[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT1 #(
    .INIT(2'h1)) 
    \axi_start_address_reg[31]_i_4 
       (.I0(clk),
        .O(\axi_start_address_reg[31]_i_4_n_0 ));
  design_1_tape_interface_0_0_top inst
       (.clk(clk),
        .clk_0(\axi_start_address_reg[31]_i_4_n_0 ),
        .clk_1_mhz(clk_1_mhz),
        .ip2bus_inputs(\^ip2bus_inputs ),
        .ip2bus_mst_addr(\^ip2bus_mst_addr ),
        .ip2bus_mstrd_d(ip2bus_mstrd_d),
        .ip2bus_otputs({ip2bus_otputs[3],ip2bus_otputs[0]}),
        .motor_control(motor_control),
        .pwm(pwm),
        .reset(reset),
        .restart(restart));
endmodule

(* ORIG_REF_NAME = "byteslicer" *) 
module design_1_tape_interface_0_0_byteslicer
   (state,
    in0,
    D,
    \timer_val_reg[23] ,
    \timer_val_reg[3] ,
    data_valid_byte,
    data_valid_read_word,
    clk_1_mhz,
    ack_sample_assem,
    Q,
    state_0,
    \timer_val_reg[18] ,
    restart);
  output [2:0]state;
  output in0;
  output [7:0]D;
  output [7:0]\timer_val_reg[23] ;
  output \timer_val_reg[3] ;
  output data_valid_byte;
  input data_valid_read_word;
  input clk_1_mhz;
  input ack_sample_assem;
  input [31:0]Q;
  input [2:0]state_0;
  input [7:0]\timer_val_reg[18] ;
  input restart;

  wire [7:0]D;
  wire [31:0]Q;
  wire ack_sample_assem;
  wire clk_1_mhz;
  wire \data_reg[31]_i_1_n_0 ;
  wire \data_reg[7]_i_1_n_0 ;
  wire \data_reg_reg_n_0_[0] ;
  wire \data_reg_reg_n_0_[10] ;
  wire \data_reg_reg_n_0_[11] ;
  wire \data_reg_reg_n_0_[12] ;
  wire \data_reg_reg_n_0_[13] ;
  wire \data_reg_reg_n_0_[14] ;
  wire \data_reg_reg_n_0_[15] ;
  wire \data_reg_reg_n_0_[16] ;
  wire \data_reg_reg_n_0_[17] ;
  wire \data_reg_reg_n_0_[18] ;
  wire \data_reg_reg_n_0_[19] ;
  wire \data_reg_reg_n_0_[1] ;
  wire \data_reg_reg_n_0_[20] ;
  wire \data_reg_reg_n_0_[21] ;
  wire \data_reg_reg_n_0_[22] ;
  wire \data_reg_reg_n_0_[23] ;
  wire \data_reg_reg_n_0_[2] ;
  wire \data_reg_reg_n_0_[3] ;
  wire \data_reg_reg_n_0_[4] ;
  wire \data_reg_reg_n_0_[5] ;
  wire \data_reg_reg_n_0_[6] ;
  wire \data_reg_reg_n_0_[7] ;
  wire \data_reg_reg_n_0_[8] ;
  wire \data_reg_reg_n_0_[9] ;
  (* async_reg = "true" *) wire data_valid_0;
  (* async_reg = "true" *) wire data_valid_1;
  wire data_valid_byte;
  wire data_valid_read_word;
  wire in0;
  wire [31:8]p_1_in;
  wire restart;
  wire [2:0]state;
  wire \state[0]_i_1_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire \state[2]_i_1_n_0 ;
  wire [2:0]state_0;
  wire \timer_val[10]_i_5_n_0 ;
  wire \timer_val[10]_i_6_n_0 ;
  wire [7:0]\timer_val_reg[18] ;
  wire [7:0]\timer_val_reg[23] ;
  wire \timer_val_reg[3] ;

  LUT4 #(
    .INIT(16'h0002)) 
    ack_inferred_i_1
       (.I0(data_valid_1),
        .I1(state[1]),
        .I2(state[0]),
        .I3(state[2]),
        .O(in0));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \data_reg[10]_i_1 
       (.I0(Q[18]),
        .I1(data_valid_1),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .I5(\data_reg_reg_n_0_[2] ),
        .O(p_1_in[10]));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \data_reg[11]_i_1 
       (.I0(Q[19]),
        .I1(data_valid_1),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .I5(\data_reg_reg_n_0_[3] ),
        .O(p_1_in[11]));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \data_reg[12]_i_1 
       (.I0(Q[20]),
        .I1(data_valid_1),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .I5(\data_reg_reg_n_0_[4] ),
        .O(p_1_in[12]));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \data_reg[13]_i_1 
       (.I0(Q[21]),
        .I1(data_valid_1),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .I5(\data_reg_reg_n_0_[5] ),
        .O(p_1_in[13]));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \data_reg[14]_i_1 
       (.I0(Q[22]),
        .I1(data_valid_1),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .I5(\data_reg_reg_n_0_[6] ),
        .O(p_1_in[14]));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \data_reg[15]_i_1 
       (.I0(Q[23]),
        .I1(data_valid_1),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .I5(\data_reg_reg_n_0_[7] ),
        .O(p_1_in[15]));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \data_reg[16]_i_1 
       (.I0(Q[8]),
        .I1(data_valid_1),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .I5(\data_reg_reg_n_0_[8] ),
        .O(p_1_in[16]));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \data_reg[17]_i_1 
       (.I0(Q[9]),
        .I1(data_valid_1),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .I5(\data_reg_reg_n_0_[9] ),
        .O(p_1_in[17]));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \data_reg[18]_i_1 
       (.I0(Q[10]),
        .I1(data_valid_1),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .I5(\data_reg_reg_n_0_[10] ),
        .O(p_1_in[18]));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \data_reg[19]_i_1 
       (.I0(Q[11]),
        .I1(data_valid_1),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .I5(\data_reg_reg_n_0_[11] ),
        .O(p_1_in[19]));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \data_reg[20]_i_1 
       (.I0(Q[12]),
        .I1(data_valid_1),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .I5(\data_reg_reg_n_0_[12] ),
        .O(p_1_in[20]));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \data_reg[21]_i_1 
       (.I0(Q[13]),
        .I1(data_valid_1),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .I5(\data_reg_reg_n_0_[13] ),
        .O(p_1_in[21]));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \data_reg[22]_i_1 
       (.I0(Q[14]),
        .I1(data_valid_1),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .I5(\data_reg_reg_n_0_[14] ),
        .O(p_1_in[22]));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \data_reg[23]_i_1 
       (.I0(Q[15]),
        .I1(data_valid_1),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .I5(\data_reg_reg_n_0_[15] ),
        .O(p_1_in[23]));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \data_reg[24]_i_1 
       (.I0(Q[0]),
        .I1(data_valid_1),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .I5(\data_reg_reg_n_0_[16] ),
        .O(p_1_in[24]));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \data_reg[25]_i_1 
       (.I0(Q[1]),
        .I1(data_valid_1),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .I5(\data_reg_reg_n_0_[17] ),
        .O(p_1_in[25]));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \data_reg[26]_i_1 
       (.I0(Q[2]),
        .I1(data_valid_1),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .I5(\data_reg_reg_n_0_[18] ),
        .O(p_1_in[26]));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \data_reg[27]_i_1 
       (.I0(Q[3]),
        .I1(data_valid_1),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .I5(\data_reg_reg_n_0_[19] ),
        .O(p_1_in[27]));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \data_reg[28]_i_1 
       (.I0(Q[4]),
        .I1(data_valid_1),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .I5(\data_reg_reg_n_0_[20] ),
        .O(p_1_in[28]));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \data_reg[29]_i_1 
       (.I0(Q[5]),
        .I1(data_valid_1),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .I5(\data_reg_reg_n_0_[21] ),
        .O(p_1_in[29]));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \data_reg[30]_i_1 
       (.I0(Q[6]),
        .I1(data_valid_1),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .I5(\data_reg_reg_n_0_[22] ),
        .O(p_1_in[30]));
  LUT5 #(
    .INIT(32'hFFFF0100)) 
    \data_reg[31]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(data_valid_1),
        .I4(ack_sample_assem),
        .O(\data_reg[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \data_reg[31]_i_2 
       (.I0(Q[7]),
        .I1(data_valid_1),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .I5(\data_reg_reg_n_0_[23] ),
        .O(p_1_in[31]));
  LUT5 #(
    .INIT(32'hFEFF0000)) 
    \data_reg[7]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(data_valid_1),
        .I4(ack_sample_assem),
        .O(\data_reg[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \data_reg[8]_i_1 
       (.I0(Q[16]),
        .I1(data_valid_1),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .I5(\data_reg_reg_n_0_[0] ),
        .O(p_1_in[8]));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \data_reg[9]_i_1 
       (.I0(Q[17]),
        .I1(data_valid_1),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .I5(\data_reg_reg_n_0_[1] ),
        .O(p_1_in[9]));
  FDRE \data_reg_reg[0] 
       (.C(clk_1_mhz),
        .CE(\data_reg[31]_i_1_n_0 ),
        .D(Q[24]),
        .Q(\data_reg_reg_n_0_[0] ),
        .R(\data_reg[7]_i_1_n_0 ));
  FDRE \data_reg_reg[10] 
       (.C(clk_1_mhz),
        .CE(\data_reg[31]_i_1_n_0 ),
        .D(p_1_in[10]),
        .Q(\data_reg_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \data_reg_reg[11] 
       (.C(clk_1_mhz),
        .CE(\data_reg[31]_i_1_n_0 ),
        .D(p_1_in[11]),
        .Q(\data_reg_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \data_reg_reg[12] 
       (.C(clk_1_mhz),
        .CE(\data_reg[31]_i_1_n_0 ),
        .D(p_1_in[12]),
        .Q(\data_reg_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \data_reg_reg[13] 
       (.C(clk_1_mhz),
        .CE(\data_reg[31]_i_1_n_0 ),
        .D(p_1_in[13]),
        .Q(\data_reg_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \data_reg_reg[14] 
       (.C(clk_1_mhz),
        .CE(\data_reg[31]_i_1_n_0 ),
        .D(p_1_in[14]),
        .Q(\data_reg_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \data_reg_reg[15] 
       (.C(clk_1_mhz),
        .CE(\data_reg[31]_i_1_n_0 ),
        .D(p_1_in[15]),
        .Q(\data_reg_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \data_reg_reg[16] 
       (.C(clk_1_mhz),
        .CE(\data_reg[31]_i_1_n_0 ),
        .D(p_1_in[16]),
        .Q(\data_reg_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \data_reg_reg[17] 
       (.C(clk_1_mhz),
        .CE(\data_reg[31]_i_1_n_0 ),
        .D(p_1_in[17]),
        .Q(\data_reg_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \data_reg_reg[18] 
       (.C(clk_1_mhz),
        .CE(\data_reg[31]_i_1_n_0 ),
        .D(p_1_in[18]),
        .Q(\data_reg_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \data_reg_reg[19] 
       (.C(clk_1_mhz),
        .CE(\data_reg[31]_i_1_n_0 ),
        .D(p_1_in[19]),
        .Q(\data_reg_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \data_reg_reg[1] 
       (.C(clk_1_mhz),
        .CE(\data_reg[31]_i_1_n_0 ),
        .D(Q[25]),
        .Q(\data_reg_reg_n_0_[1] ),
        .R(\data_reg[7]_i_1_n_0 ));
  FDRE \data_reg_reg[20] 
       (.C(clk_1_mhz),
        .CE(\data_reg[31]_i_1_n_0 ),
        .D(p_1_in[20]),
        .Q(\data_reg_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \data_reg_reg[21] 
       (.C(clk_1_mhz),
        .CE(\data_reg[31]_i_1_n_0 ),
        .D(p_1_in[21]),
        .Q(\data_reg_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \data_reg_reg[22] 
       (.C(clk_1_mhz),
        .CE(\data_reg[31]_i_1_n_0 ),
        .D(p_1_in[22]),
        .Q(\data_reg_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \data_reg_reg[23] 
       (.C(clk_1_mhz),
        .CE(\data_reg[31]_i_1_n_0 ),
        .D(p_1_in[23]),
        .Q(\data_reg_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \data_reg_reg[24] 
       (.C(clk_1_mhz),
        .CE(\data_reg[31]_i_1_n_0 ),
        .D(p_1_in[24]),
        .Q(\timer_val_reg[23] [0]),
        .R(1'b0));
  FDRE \data_reg_reg[25] 
       (.C(clk_1_mhz),
        .CE(\data_reg[31]_i_1_n_0 ),
        .D(p_1_in[25]),
        .Q(\timer_val_reg[23] [1]),
        .R(1'b0));
  FDRE \data_reg_reg[26] 
       (.C(clk_1_mhz),
        .CE(\data_reg[31]_i_1_n_0 ),
        .D(p_1_in[26]),
        .Q(\timer_val_reg[23] [2]),
        .R(1'b0));
  FDRE \data_reg_reg[27] 
       (.C(clk_1_mhz),
        .CE(\data_reg[31]_i_1_n_0 ),
        .D(p_1_in[27]),
        .Q(\timer_val_reg[23] [3]),
        .R(1'b0));
  FDRE \data_reg_reg[28] 
       (.C(clk_1_mhz),
        .CE(\data_reg[31]_i_1_n_0 ),
        .D(p_1_in[28]),
        .Q(\timer_val_reg[23] [4]),
        .R(1'b0));
  FDRE \data_reg_reg[29] 
       (.C(clk_1_mhz),
        .CE(\data_reg[31]_i_1_n_0 ),
        .D(p_1_in[29]),
        .Q(\timer_val_reg[23] [5]),
        .R(1'b0));
  FDRE \data_reg_reg[2] 
       (.C(clk_1_mhz),
        .CE(\data_reg[31]_i_1_n_0 ),
        .D(Q[26]),
        .Q(\data_reg_reg_n_0_[2] ),
        .R(\data_reg[7]_i_1_n_0 ));
  FDRE \data_reg_reg[30] 
       (.C(clk_1_mhz),
        .CE(\data_reg[31]_i_1_n_0 ),
        .D(p_1_in[30]),
        .Q(\timer_val_reg[23] [6]),
        .R(1'b0));
  FDRE \data_reg_reg[31] 
       (.C(clk_1_mhz),
        .CE(\data_reg[31]_i_1_n_0 ),
        .D(p_1_in[31]),
        .Q(\timer_val_reg[23] [7]),
        .R(1'b0));
  FDRE \data_reg_reg[3] 
       (.C(clk_1_mhz),
        .CE(\data_reg[31]_i_1_n_0 ),
        .D(Q[27]),
        .Q(\data_reg_reg_n_0_[3] ),
        .R(\data_reg[7]_i_1_n_0 ));
  FDRE \data_reg_reg[4] 
       (.C(clk_1_mhz),
        .CE(\data_reg[31]_i_1_n_0 ),
        .D(Q[28]),
        .Q(\data_reg_reg_n_0_[4] ),
        .R(\data_reg[7]_i_1_n_0 ));
  FDRE \data_reg_reg[5] 
       (.C(clk_1_mhz),
        .CE(\data_reg[31]_i_1_n_0 ),
        .D(Q[29]),
        .Q(\data_reg_reg_n_0_[5] ),
        .R(\data_reg[7]_i_1_n_0 ));
  FDRE \data_reg_reg[6] 
       (.C(clk_1_mhz),
        .CE(\data_reg[31]_i_1_n_0 ),
        .D(Q[30]),
        .Q(\data_reg_reg_n_0_[6] ),
        .R(\data_reg[7]_i_1_n_0 ));
  FDRE \data_reg_reg[7] 
       (.C(clk_1_mhz),
        .CE(\data_reg[31]_i_1_n_0 ),
        .D(Q[31]),
        .Q(\data_reg_reg_n_0_[7] ),
        .R(\data_reg[7]_i_1_n_0 ));
  FDRE \data_reg_reg[8] 
       (.C(clk_1_mhz),
        .CE(\data_reg[31]_i_1_n_0 ),
        .D(p_1_in[8]),
        .Q(\data_reg_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \data_reg_reg[9] 
       (.C(clk_1_mhz),
        .CE(\data_reg[31]_i_1_n_0 ),
        .D(p_1_in[9]),
        .Q(\data_reg_reg_n_0_[9] ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE data_valid_0_reg
       (.C(clk_1_mhz),
        .CE(1'b1),
        .D(data_valid_read_word),
        .Q(data_valid_0),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE data_valid_1_reg
       (.C(clk_1_mhz),
        .CE(1'b1),
        .D(data_valid_0),
        .Q(data_valid_1),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFF0033CA)) 
    \state[0]_i_1 
       (.I0(data_valid_1),
        .I1(ack_sample_assem),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(\state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF00AC53FF00)) 
    \state[1]_i_1 
       (.I0(state_0[2]),
        .I1(state_0[0]),
        .I2(state_0[1]),
        .I3(state[1]),
        .I4(state[0]),
        .I5(state[2]),
        .O(\state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFAC53000000)) 
    \state[2]_i_1 
       (.I0(state_0[2]),
        .I1(state_0[0]),
        .I2(state_0[1]),
        .I3(state[1]),
        .I4(state[0]),
        .I5(state[2]),
        .O(\state[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(clk_1_mhz),
        .CE(1'b1),
        .D(\state[0]_i_1_n_0 ),
        .Q(state[0]),
        .R(restart));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(clk_1_mhz),
        .CE(1'b1),
        .D(\state[1]_i_1_n_0 ),
        .Q(state[1]),
        .R(restart));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[2] 
       (.C(clk_1_mhz),
        .CE(1'b1),
        .D(\state[2]_i_1_n_0 ),
        .Q(state[2]),
        .R(restart));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \timer_val[10]_i_2 
       (.I0(\timer_val_reg[23] [7]),
        .I1(state_0[2]),
        .I2(state_0[0]),
        .I3(\timer_val_reg[3] ),
        .I4(\timer_val[10]_i_5_n_0 ),
        .I5(\timer_val_reg[18] [7]),
        .O(D[7]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \timer_val[10]_i_3 
       (.I0(\timer_val_reg[23] [3]),
        .I1(\timer_val_reg[23] [2]),
        .I2(\timer_val_reg[23] [1]),
        .I3(\timer_val_reg[23] [0]),
        .I4(\timer_val[10]_i_6_n_0 ),
        .O(\timer_val_reg[3] ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \timer_val[10]_i_4 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .O(data_valid_byte));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hAAAB)) 
    \timer_val[10]_i_5 
       (.I0(state_0[1]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(state[2]),
        .O(\timer_val[10]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \timer_val[10]_i_6 
       (.I0(\timer_val_reg[23] [4]),
        .I1(\timer_val_reg[23] [5]),
        .I2(\timer_val_reg[23] [7]),
        .I3(\timer_val_reg[23] [6]),
        .O(\timer_val[10]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \timer_val[3]_i_1 
       (.I0(\timer_val_reg[23] [0]),
        .I1(state_0[2]),
        .I2(state_0[0]),
        .I3(\timer_val_reg[3] ),
        .I4(\timer_val[10]_i_5_n_0 ),
        .I5(\timer_val_reg[18] [0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \timer_val[4]_i_1 
       (.I0(\timer_val_reg[23] [1]),
        .I1(state_0[2]),
        .I2(state_0[0]),
        .I3(\timer_val_reg[3] ),
        .I4(\timer_val[10]_i_5_n_0 ),
        .I5(\timer_val_reg[18] [1]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \timer_val[5]_i_1 
       (.I0(\timer_val_reg[23] [2]),
        .I1(state_0[2]),
        .I2(state_0[0]),
        .I3(\timer_val_reg[3] ),
        .I4(\timer_val[10]_i_5_n_0 ),
        .I5(\timer_val_reg[18] [2]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \timer_val[6]_i_1 
       (.I0(\timer_val_reg[23] [3]),
        .I1(state_0[2]),
        .I2(state_0[0]),
        .I3(\timer_val_reg[3] ),
        .I4(\timer_val[10]_i_5_n_0 ),
        .I5(\timer_val_reg[18] [3]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \timer_val[7]_i_1 
       (.I0(\timer_val_reg[23] [4]),
        .I1(state_0[2]),
        .I2(state_0[0]),
        .I3(\timer_val_reg[3] ),
        .I4(\timer_val[10]_i_5_n_0 ),
        .I5(\timer_val_reg[18] [4]),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \timer_val[8]_i_1 
       (.I0(\timer_val_reg[23] [5]),
        .I1(state_0[2]),
        .I2(state_0[0]),
        .I3(\timer_val_reg[3] ),
        .I4(\timer_val[10]_i_5_n_0 ),
        .I5(\timer_val_reg[18] [5]),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \timer_val[9]_i_1 
       (.I0(\timer_val_reg[23] [6]),
        .I1(state_0[2]),
        .I2(state_0[0]),
        .I3(\timer_val_reg[3] ),
        .I4(\timer_val[10]_i_5_n_0 ),
        .I5(\timer_val_reg[18] [6]),
        .O(D[6]));
endmodule

(* ORIG_REF_NAME = "read_word" *) 
module design_1_tape_interface_0_0_read_word
   (ip2bus_mst_addr,
    data_valid_read_word,
    Q,
    ip2bus_inputs,
    in0,
    clk,
    clk_0,
    reset,
    restart,
    ip2bus_otputs,
    ip2bus_mstrd_d);
  output [29:0]ip2bus_mst_addr;
  output data_valid_read_word;
  output [31:0]Q;
  output [1:0]ip2bus_inputs;
  input in0;
  input clk;
  input clk_0;
  input reset;
  input restart;
  input [1:0]ip2bus_otputs;
  input [31:0]ip2bus_mstrd_d;

  wire \/i__n_0 ;
  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_1_n_0 ;
  wire [31:0]Q;
  wire [2:2]axi_data_inc;
  wire \axi_data_inc[2]_i_1_n_0 ;
  wire axi_data_loaded20_in;
  wire axi_data_loaded_i_1_n_0;
  wire axi_start_address;
  wire \axi_start_address[13]_i_2_n_0 ;
  wire \axi_start_address[13]_i_3_n_0 ;
  wire \axi_start_address[13]_i_4_n_0 ;
  wire \axi_start_address[13]_i_5_n_0 ;
  wire \axi_start_address[17]_i_2_n_0 ;
  wire \axi_start_address[17]_i_3_n_0 ;
  wire \axi_start_address[17]_i_4_n_0 ;
  wire \axi_start_address[17]_i_5_n_0 ;
  wire \axi_start_address[21]_i_2_n_0 ;
  wire \axi_start_address[21]_i_3_n_0 ;
  wire \axi_start_address[21]_i_4_n_0 ;
  wire \axi_start_address[21]_i_5_n_0 ;
  wire \axi_start_address[25]_i_2_n_0 ;
  wire \axi_start_address[25]_i_3_n_0 ;
  wire \axi_start_address[25]_i_4_n_0 ;
  wire \axi_start_address[25]_i_5_n_0 ;
  wire \axi_start_address[29]_i_2_n_0 ;
  wire \axi_start_address[29]_i_3_n_0 ;
  wire \axi_start_address[29]_i_4_n_0 ;
  wire \axi_start_address[29]_i_5_n_0 ;
  wire \axi_start_address[2]_i_1_n_0 ;
  wire \axi_start_address[31]_i_5_n_0 ;
  wire \axi_start_address[31]_i_6_n_0 ;
  wire \axi_start_address[5]_i_2_n_0 ;
  wire \axi_start_address[5]_i_3_n_0 ;
  wire \axi_start_address[5]_i_4_n_0 ;
  wire \axi_start_address[5]_i_5_n_0 ;
  wire \axi_start_address[9]_i_2_n_0 ;
  wire \axi_start_address[9]_i_3_n_0 ;
  wire \axi_start_address[9]_i_4_n_0 ;
  wire \axi_start_address[9]_i_5_n_0 ;
  wire \axi_start_address_reg[13]_i_1_n_0 ;
  wire \axi_start_address_reg[13]_i_1_n_1 ;
  wire \axi_start_address_reg[13]_i_1_n_2 ;
  wire \axi_start_address_reg[13]_i_1_n_3 ;
  wire \axi_start_address_reg[13]_i_1_n_4 ;
  wire \axi_start_address_reg[13]_i_1_n_5 ;
  wire \axi_start_address_reg[13]_i_1_n_6 ;
  wire \axi_start_address_reg[13]_i_1_n_7 ;
  wire \axi_start_address_reg[17]_i_1_n_0 ;
  wire \axi_start_address_reg[17]_i_1_n_1 ;
  wire \axi_start_address_reg[17]_i_1_n_2 ;
  wire \axi_start_address_reg[17]_i_1_n_3 ;
  wire \axi_start_address_reg[17]_i_1_n_4 ;
  wire \axi_start_address_reg[17]_i_1_n_5 ;
  wire \axi_start_address_reg[17]_i_1_n_6 ;
  wire \axi_start_address_reg[17]_i_1_n_7 ;
  wire \axi_start_address_reg[21]_i_1_n_0 ;
  wire \axi_start_address_reg[21]_i_1_n_1 ;
  wire \axi_start_address_reg[21]_i_1_n_2 ;
  wire \axi_start_address_reg[21]_i_1_n_3 ;
  wire \axi_start_address_reg[21]_i_1_n_4 ;
  wire \axi_start_address_reg[21]_i_1_n_5 ;
  wire \axi_start_address_reg[21]_i_1_n_6 ;
  wire \axi_start_address_reg[21]_i_1_n_7 ;
  wire \axi_start_address_reg[25]_i_1_n_0 ;
  wire \axi_start_address_reg[25]_i_1_n_1 ;
  wire \axi_start_address_reg[25]_i_1_n_2 ;
  wire \axi_start_address_reg[25]_i_1_n_3 ;
  wire \axi_start_address_reg[25]_i_1_n_4 ;
  wire \axi_start_address_reg[25]_i_1_n_5 ;
  wire \axi_start_address_reg[25]_i_1_n_6 ;
  wire \axi_start_address_reg[25]_i_1_n_7 ;
  wire \axi_start_address_reg[29]_i_1_n_0 ;
  wire \axi_start_address_reg[29]_i_1_n_1 ;
  wire \axi_start_address_reg[29]_i_1_n_2 ;
  wire \axi_start_address_reg[29]_i_1_n_3 ;
  wire \axi_start_address_reg[29]_i_1_n_4 ;
  wire \axi_start_address_reg[29]_i_1_n_5 ;
  wire \axi_start_address_reg[29]_i_1_n_6 ;
  wire \axi_start_address_reg[29]_i_1_n_7 ;
  wire \axi_start_address_reg[31]_i_3_n_3 ;
  wire \axi_start_address_reg[31]_i_3_n_6 ;
  wire \axi_start_address_reg[31]_i_3_n_7 ;
  wire \axi_start_address_reg[5]_i_1_n_0 ;
  wire \axi_start_address_reg[5]_i_1_n_1 ;
  wire \axi_start_address_reg[5]_i_1_n_2 ;
  wire \axi_start_address_reg[5]_i_1_n_3 ;
  wire \axi_start_address_reg[5]_i_1_n_4 ;
  wire \axi_start_address_reg[5]_i_1_n_5 ;
  wire \axi_start_address_reg[5]_i_1_n_6 ;
  wire \axi_start_address_reg[9]_i_1_n_0 ;
  wire \axi_start_address_reg[9]_i_1_n_1 ;
  wire \axi_start_address_reg[9]_i_1_n_2 ;
  wire \axi_start_address_reg[9]_i_1_n_3 ;
  wire \axi_start_address_reg[9]_i_1_n_4 ;
  wire \axi_start_address_reg[9]_i_1_n_5 ;
  wire \axi_start_address_reg[9]_i_1_n_6 ;
  wire \axi_start_address_reg[9]_i_1_n_7 ;
  wire clk;
  wire clk_0;
  wire \data_cap[31]_i_1_n_0 ;
  wire data_valid_read_word;
  wire in0;
  wire [1:0]ip2bus_inputs;
  wire [29:0]ip2bus_mst_addr;
  wire [31:0]ip2bus_mstrd_d;
  wire [1:0]ip2bus_otputs;
  wire reset;
  wire restart;
  (* RTL_KEEP = "yes" *) wire [2:0]state;
  wire state0;
  wire state2;
  (* async_reg = "true" *) wire sync_ack_0;
  (* async_reg = "true" *) wire sync_ack_1;
  (* async_reg = "true" *) wire sync_ack_2;
  wire [3:1]\NLW_axi_start_address_reg[31]_i_3_CO_UNCONNECTED ;
  wire [3:2]\NLW_axi_start_address_reg[31]_i_3_O_UNCONNECTED ;
  wire [0:0]\NLW_axi_start_address_reg[5]_i_1_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h03033D0D33333D0D)) 
    \/i_ 
       (.I0(data_valid_read_word),
        .I1(state[2]),
        .I2(state[1]),
        .I3(ip2bus_otputs[0]),
        .I4(state[0]),
        .I5(ip2bus_otputs[1]),
        .O(\/i__n_0 ));
  LUT5 #(
    .INIT(32'h0000222E)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(state[0]),
        .I1(\/i__n_0 ),
        .I2(state[2]),
        .I3(state[0]),
        .I4(state0),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000222E2E22)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(state[1]),
        .I1(\/i__n_0 ),
        .I2(state[2]),
        .I3(state[0]),
        .I4(state[1]),
        .I5(state0),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000002222E222)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(state[2]),
        .I1(\/i__n_0 ),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .I5(state0),
        .O(\FSM_sequential_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0001000100010000)) 
    \FSM_sequential_state[2]_i_2 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(data_valid_read_word),
        .I4(reset),
        .I5(restart),
        .O(state0));
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(state[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[2]_i_1_n_0 ),
        .Q(state[2]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h000000000000AAAE)) 
    \axi_data_inc[2]_i_1 
       (.I0(axi_data_inc),
        .I1(state[0]),
        .I2(state[2]),
        .I3(state[1]),
        .I4(restart),
        .I5(reset),
        .O(\axi_data_inc[2]_i_1_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \axi_data_inc_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\axi_data_inc[2]_i_1_n_0 ),
        .Q(axi_data_inc),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h24)) 
    axi_data_loaded2
       (.I0(state[0]),
        .I1(state[2]),
        .I2(state[1]),
        .O(axi_data_loaded20_in));
  LUT6 #(
    .INIT(64'h00000000BABA00BA)) 
    axi_data_loaded_i_1
       (.I0(data_valid_read_word),
        .I1(ip2bus_otputs[1]),
        .I2(axi_data_loaded20_in),
        .I3(sync_ack_1),
        .I4(sync_ack_2),
        .I5(state2),
        .O(axi_data_loaded_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axi_data_loaded_reg
       (.C(clk),
        .CE(1'b1),
        .D(axi_data_loaded_i_1_n_0),
        .Q(data_valid_read_word),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h2)) 
    \axi_start_address[13]_i_2 
       (.I0(ip2bus_mst_addr[11]),
        .O(\axi_start_address[13]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \axi_start_address[13]_i_3 
       (.I0(ip2bus_mst_addr[10]),
        .O(\axi_start_address[13]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \axi_start_address[13]_i_4 
       (.I0(ip2bus_mst_addr[9]),
        .O(\axi_start_address[13]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \axi_start_address[13]_i_5 
       (.I0(ip2bus_mst_addr[8]),
        .O(\axi_start_address[13]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \axi_start_address[17]_i_2 
       (.I0(ip2bus_mst_addr[15]),
        .O(\axi_start_address[17]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \axi_start_address[17]_i_3 
       (.I0(ip2bus_mst_addr[14]),
        .O(\axi_start_address[17]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \axi_start_address[17]_i_4 
       (.I0(ip2bus_mst_addr[13]),
        .O(\axi_start_address[17]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \axi_start_address[17]_i_5 
       (.I0(ip2bus_mst_addr[12]),
        .O(\axi_start_address[17]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \axi_start_address[21]_i_2 
       (.I0(ip2bus_mst_addr[19]),
        .O(\axi_start_address[21]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \axi_start_address[21]_i_3 
       (.I0(ip2bus_mst_addr[18]),
        .O(\axi_start_address[21]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \axi_start_address[21]_i_4 
       (.I0(ip2bus_mst_addr[17]),
        .O(\axi_start_address[21]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \axi_start_address[21]_i_5 
       (.I0(ip2bus_mst_addr[16]),
        .O(\axi_start_address[21]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \axi_start_address[25]_i_2 
       (.I0(ip2bus_mst_addr[23]),
        .O(\axi_start_address[25]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \axi_start_address[25]_i_3 
       (.I0(ip2bus_mst_addr[22]),
        .O(\axi_start_address[25]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \axi_start_address[25]_i_4 
       (.I0(ip2bus_mst_addr[21]),
        .O(\axi_start_address[25]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \axi_start_address[25]_i_5 
       (.I0(ip2bus_mst_addr[20]),
        .O(\axi_start_address[25]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \axi_start_address[29]_i_2 
       (.I0(ip2bus_mst_addr[27]),
        .O(\axi_start_address[29]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \axi_start_address[29]_i_3 
       (.I0(ip2bus_mst_addr[26]),
        .O(\axi_start_address[29]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \axi_start_address[29]_i_4 
       (.I0(ip2bus_mst_addr[25]),
        .O(\axi_start_address[29]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \axi_start_address[29]_i_5 
       (.I0(ip2bus_mst_addr[24]),
        .O(\axi_start_address[29]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_start_address[2]_i_1 
       (.I0(axi_data_inc),
        .I1(ip2bus_mst_addr[0]),
        .O(\axi_start_address[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \axi_start_address[31]_i_1 
       (.I0(reset),
        .I1(restart),
        .O(state2));
  LUT3 #(
    .INIT(8'h02)) 
    \axi_start_address[31]_i_2 
       (.I0(state[0]),
        .I1(state[2]),
        .I2(state[1]),
        .O(axi_start_address));
  LUT1 #(
    .INIT(2'h2)) 
    \axi_start_address[31]_i_5 
       (.I0(ip2bus_mst_addr[29]),
        .O(\axi_start_address[31]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \axi_start_address[31]_i_6 
       (.I0(ip2bus_mst_addr[28]),
        .O(\axi_start_address[31]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \axi_start_address[5]_i_2 
       (.I0(ip2bus_mst_addr[3]),
        .O(\axi_start_address[5]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \axi_start_address[5]_i_3 
       (.I0(ip2bus_mst_addr[2]),
        .O(\axi_start_address[5]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \axi_start_address[5]_i_4 
       (.I0(ip2bus_mst_addr[1]),
        .O(\axi_start_address[5]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_start_address[5]_i_5 
       (.I0(axi_data_inc),
        .I1(ip2bus_mst_addr[0]),
        .O(\axi_start_address[5]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \axi_start_address[9]_i_2 
       (.I0(ip2bus_mst_addr[7]),
        .O(\axi_start_address[9]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \axi_start_address[9]_i_3 
       (.I0(ip2bus_mst_addr[6]),
        .O(\axi_start_address[9]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \axi_start_address[9]_i_4 
       (.I0(ip2bus_mst_addr[5]),
        .O(\axi_start_address[9]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \axi_start_address[9]_i_5 
       (.I0(ip2bus_mst_addr[4]),
        .O(\axi_start_address[9]_i_5_n_0 ));
  FDRE \axi_start_address_reg[10] 
       (.C(clk_0),
        .CE(axi_start_address),
        .D(\axi_start_address_reg[13]_i_1_n_7 ),
        .Q(ip2bus_mst_addr[8]),
        .R(state2));
  FDRE \axi_start_address_reg[11] 
       (.C(clk_0),
        .CE(axi_start_address),
        .D(\axi_start_address_reg[13]_i_1_n_6 ),
        .Q(ip2bus_mst_addr[9]),
        .R(state2));
  FDRE \axi_start_address_reg[12] 
       (.C(clk_0),
        .CE(axi_start_address),
        .D(\axi_start_address_reg[13]_i_1_n_5 ),
        .Q(ip2bus_mst_addr[10]),
        .R(state2));
  FDRE \axi_start_address_reg[13] 
       (.C(clk_0),
        .CE(axi_start_address),
        .D(\axi_start_address_reg[13]_i_1_n_4 ),
        .Q(ip2bus_mst_addr[11]),
        .R(state2));
  CARRY4 \axi_start_address_reg[13]_i_1 
       (.CI(\axi_start_address_reg[9]_i_1_n_0 ),
        .CO({\axi_start_address_reg[13]_i_1_n_0 ,\axi_start_address_reg[13]_i_1_n_1 ,\axi_start_address_reg[13]_i_1_n_2 ,\axi_start_address_reg[13]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\axi_start_address_reg[13]_i_1_n_4 ,\axi_start_address_reg[13]_i_1_n_5 ,\axi_start_address_reg[13]_i_1_n_6 ,\axi_start_address_reg[13]_i_1_n_7 }),
        .S({\axi_start_address[13]_i_2_n_0 ,\axi_start_address[13]_i_3_n_0 ,\axi_start_address[13]_i_4_n_0 ,\axi_start_address[13]_i_5_n_0 }));
  FDRE \axi_start_address_reg[14] 
       (.C(clk_0),
        .CE(axi_start_address),
        .D(\axi_start_address_reg[17]_i_1_n_7 ),
        .Q(ip2bus_mst_addr[12]),
        .R(state2));
  FDRE \axi_start_address_reg[15] 
       (.C(clk_0),
        .CE(axi_start_address),
        .D(\axi_start_address_reg[17]_i_1_n_6 ),
        .Q(ip2bus_mst_addr[13]),
        .R(state2));
  FDRE \axi_start_address_reg[16] 
       (.C(clk_0),
        .CE(axi_start_address),
        .D(\axi_start_address_reg[17]_i_1_n_5 ),
        .Q(ip2bus_mst_addr[14]),
        .R(state2));
  FDRE \axi_start_address_reg[17] 
       (.C(clk_0),
        .CE(axi_start_address),
        .D(\axi_start_address_reg[17]_i_1_n_4 ),
        .Q(ip2bus_mst_addr[15]),
        .R(state2));
  CARRY4 \axi_start_address_reg[17]_i_1 
       (.CI(\axi_start_address_reg[13]_i_1_n_0 ),
        .CO({\axi_start_address_reg[17]_i_1_n_0 ,\axi_start_address_reg[17]_i_1_n_1 ,\axi_start_address_reg[17]_i_1_n_2 ,\axi_start_address_reg[17]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\axi_start_address_reg[17]_i_1_n_4 ,\axi_start_address_reg[17]_i_1_n_5 ,\axi_start_address_reg[17]_i_1_n_6 ,\axi_start_address_reg[17]_i_1_n_7 }),
        .S({\axi_start_address[17]_i_2_n_0 ,\axi_start_address[17]_i_3_n_0 ,\axi_start_address[17]_i_4_n_0 ,\axi_start_address[17]_i_5_n_0 }));
  FDRE \axi_start_address_reg[18] 
       (.C(clk_0),
        .CE(axi_start_address),
        .D(\axi_start_address_reg[21]_i_1_n_7 ),
        .Q(ip2bus_mst_addr[16]),
        .R(state2));
  FDRE \axi_start_address_reg[19] 
       (.C(clk_0),
        .CE(axi_start_address),
        .D(\axi_start_address_reg[21]_i_1_n_6 ),
        .Q(ip2bus_mst_addr[17]),
        .R(state2));
  FDSE \axi_start_address_reg[20] 
       (.C(clk_0),
        .CE(axi_start_address),
        .D(\axi_start_address_reg[21]_i_1_n_5 ),
        .Q(ip2bus_mst_addr[18]),
        .S(state2));
  FDRE \axi_start_address_reg[21] 
       (.C(clk_0),
        .CE(axi_start_address),
        .D(\axi_start_address_reg[21]_i_1_n_4 ),
        .Q(ip2bus_mst_addr[19]),
        .R(state2));
  CARRY4 \axi_start_address_reg[21]_i_1 
       (.CI(\axi_start_address_reg[17]_i_1_n_0 ),
        .CO({\axi_start_address_reg[21]_i_1_n_0 ,\axi_start_address_reg[21]_i_1_n_1 ,\axi_start_address_reg[21]_i_1_n_2 ,\axi_start_address_reg[21]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\axi_start_address_reg[21]_i_1_n_4 ,\axi_start_address_reg[21]_i_1_n_5 ,\axi_start_address_reg[21]_i_1_n_6 ,\axi_start_address_reg[21]_i_1_n_7 }),
        .S({\axi_start_address[21]_i_2_n_0 ,\axi_start_address[21]_i_3_n_0 ,\axi_start_address[21]_i_4_n_0 ,\axi_start_address[21]_i_5_n_0 }));
  FDSE \axi_start_address_reg[22] 
       (.C(clk_0),
        .CE(axi_start_address),
        .D(\axi_start_address_reg[25]_i_1_n_7 ),
        .Q(ip2bus_mst_addr[20]),
        .S(state2));
  FDRE \axi_start_address_reg[23] 
       (.C(clk_0),
        .CE(axi_start_address),
        .D(\axi_start_address_reg[25]_i_1_n_6 ),
        .Q(ip2bus_mst_addr[21]),
        .R(state2));
  FDSE \axi_start_address_reg[24] 
       (.C(clk_0),
        .CE(axi_start_address),
        .D(\axi_start_address_reg[25]_i_1_n_5 ),
        .Q(ip2bus_mst_addr[22]),
        .S(state2));
  FDSE \axi_start_address_reg[25] 
       (.C(clk_0),
        .CE(axi_start_address),
        .D(\axi_start_address_reg[25]_i_1_n_4 ),
        .Q(ip2bus_mst_addr[23]),
        .S(state2));
  CARRY4 \axi_start_address_reg[25]_i_1 
       (.CI(\axi_start_address_reg[21]_i_1_n_0 ),
        .CO({\axi_start_address_reg[25]_i_1_n_0 ,\axi_start_address_reg[25]_i_1_n_1 ,\axi_start_address_reg[25]_i_1_n_2 ,\axi_start_address_reg[25]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\axi_start_address_reg[25]_i_1_n_4 ,\axi_start_address_reg[25]_i_1_n_5 ,\axi_start_address_reg[25]_i_1_n_6 ,\axi_start_address_reg[25]_i_1_n_7 }),
        .S({\axi_start_address[25]_i_2_n_0 ,\axi_start_address[25]_i_3_n_0 ,\axi_start_address[25]_i_4_n_0 ,\axi_start_address[25]_i_5_n_0 }));
  FDSE \axi_start_address_reg[26] 
       (.C(clk_0),
        .CE(axi_start_address),
        .D(\axi_start_address_reg[29]_i_1_n_7 ),
        .Q(ip2bus_mst_addr[24]),
        .S(state2));
  FDSE \axi_start_address_reg[27] 
       (.C(clk_0),
        .CE(axi_start_address),
        .D(\axi_start_address_reg[29]_i_1_n_6 ),
        .Q(ip2bus_mst_addr[25]),
        .S(state2));
  FDSE \axi_start_address_reg[28] 
       (.C(clk_0),
        .CE(axi_start_address),
        .D(\axi_start_address_reg[29]_i_1_n_5 ),
        .Q(ip2bus_mst_addr[26]),
        .S(state2));
  FDRE \axi_start_address_reg[29] 
       (.C(clk_0),
        .CE(axi_start_address),
        .D(\axi_start_address_reg[29]_i_1_n_4 ),
        .Q(ip2bus_mst_addr[27]),
        .R(state2));
  CARRY4 \axi_start_address_reg[29]_i_1 
       (.CI(\axi_start_address_reg[25]_i_1_n_0 ),
        .CO({\axi_start_address_reg[29]_i_1_n_0 ,\axi_start_address_reg[29]_i_1_n_1 ,\axi_start_address_reg[29]_i_1_n_2 ,\axi_start_address_reg[29]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\axi_start_address_reg[29]_i_1_n_4 ,\axi_start_address_reg[29]_i_1_n_5 ,\axi_start_address_reg[29]_i_1_n_6 ,\axi_start_address_reg[29]_i_1_n_7 }),
        .S({\axi_start_address[29]_i_2_n_0 ,\axi_start_address[29]_i_3_n_0 ,\axi_start_address[29]_i_4_n_0 ,\axi_start_address[29]_i_5_n_0 }));
  FDRE \axi_start_address_reg[2] 
       (.C(clk_0),
        .CE(axi_start_address),
        .D(\axi_start_address[2]_i_1_n_0 ),
        .Q(ip2bus_mst_addr[0]),
        .R(state2));
  FDRE \axi_start_address_reg[30] 
       (.C(clk_0),
        .CE(axi_start_address),
        .D(\axi_start_address_reg[31]_i_3_n_7 ),
        .Q(ip2bus_mst_addr[28]),
        .R(state2));
  FDRE \axi_start_address_reg[31] 
       (.C(clk_0),
        .CE(axi_start_address),
        .D(\axi_start_address_reg[31]_i_3_n_6 ),
        .Q(ip2bus_mst_addr[29]),
        .R(state2));
  CARRY4 \axi_start_address_reg[31]_i_3 
       (.CI(\axi_start_address_reg[29]_i_1_n_0 ),
        .CO({\NLW_axi_start_address_reg[31]_i_3_CO_UNCONNECTED [3:1],\axi_start_address_reg[31]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_axi_start_address_reg[31]_i_3_O_UNCONNECTED [3:2],\axi_start_address_reg[31]_i_3_n_6 ,\axi_start_address_reg[31]_i_3_n_7 }),
        .S({1'b0,1'b0,\axi_start_address[31]_i_5_n_0 ,\axi_start_address[31]_i_6_n_0 }));
  FDRE \axi_start_address_reg[3] 
       (.C(clk_0),
        .CE(axi_start_address),
        .D(\axi_start_address_reg[5]_i_1_n_6 ),
        .Q(ip2bus_mst_addr[1]),
        .R(state2));
  FDRE \axi_start_address_reg[4] 
       (.C(clk_0),
        .CE(axi_start_address),
        .D(\axi_start_address_reg[5]_i_1_n_5 ),
        .Q(ip2bus_mst_addr[2]),
        .R(state2));
  FDRE \axi_start_address_reg[5] 
       (.C(clk_0),
        .CE(axi_start_address),
        .D(\axi_start_address_reg[5]_i_1_n_4 ),
        .Q(ip2bus_mst_addr[3]),
        .R(state2));
  CARRY4 \axi_start_address_reg[5]_i_1 
       (.CI(1'b0),
        .CO({\axi_start_address_reg[5]_i_1_n_0 ,\axi_start_address_reg[5]_i_1_n_1 ,\axi_start_address_reg[5]_i_1_n_2 ,\axi_start_address_reg[5]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,axi_data_inc}),
        .O({\axi_start_address_reg[5]_i_1_n_4 ,\axi_start_address_reg[5]_i_1_n_5 ,\axi_start_address_reg[5]_i_1_n_6 ,\NLW_axi_start_address_reg[5]_i_1_O_UNCONNECTED [0]}),
        .S({\axi_start_address[5]_i_2_n_0 ,\axi_start_address[5]_i_3_n_0 ,\axi_start_address[5]_i_4_n_0 ,\axi_start_address[5]_i_5_n_0 }));
  FDRE \axi_start_address_reg[6] 
       (.C(clk_0),
        .CE(axi_start_address),
        .D(\axi_start_address_reg[9]_i_1_n_7 ),
        .Q(ip2bus_mst_addr[4]),
        .R(state2));
  FDRE \axi_start_address_reg[7] 
       (.C(clk_0),
        .CE(axi_start_address),
        .D(\axi_start_address_reg[9]_i_1_n_6 ),
        .Q(ip2bus_mst_addr[5]),
        .R(state2));
  FDRE \axi_start_address_reg[8] 
       (.C(clk_0),
        .CE(axi_start_address),
        .D(\axi_start_address_reg[9]_i_1_n_5 ),
        .Q(ip2bus_mst_addr[6]),
        .R(state2));
  FDRE \axi_start_address_reg[9] 
       (.C(clk_0),
        .CE(axi_start_address),
        .D(\axi_start_address_reg[9]_i_1_n_4 ),
        .Q(ip2bus_mst_addr[7]),
        .R(state2));
  CARRY4 \axi_start_address_reg[9]_i_1 
       (.CI(\axi_start_address_reg[5]_i_1_n_0 ),
        .CO({\axi_start_address_reg[9]_i_1_n_0 ,\axi_start_address_reg[9]_i_1_n_1 ,\axi_start_address_reg[9]_i_1_n_2 ,\axi_start_address_reg[9]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\axi_start_address_reg[9]_i_1_n_4 ,\axi_start_address_reg[9]_i_1_n_5 ,\axi_start_address_reg[9]_i_1_n_6 ,\axi_start_address_reg[9]_i_1_n_7 }),
        .S({\axi_start_address[9]_i_2_n_0 ,\axi_start_address[9]_i_3_n_0 ,\axi_start_address[9]_i_4_n_0 ,\axi_start_address[9]_i_5_n_0 }));
  LUT2 #(
    .INIT(4'h1)) 
    \data_cap[31]_i_1 
       (.I0(ip2bus_otputs[1]),
        .I1(data_valid_read_word),
        .O(\data_cap[31]_i_1_n_0 ));
  FDRE \data_cap_reg[0] 
       (.C(clk),
        .CE(\data_cap[31]_i_1_n_0 ),
        .D(ip2bus_mstrd_d[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \data_cap_reg[10] 
       (.C(clk),
        .CE(\data_cap[31]_i_1_n_0 ),
        .D(ip2bus_mstrd_d[10]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE \data_cap_reg[11] 
       (.C(clk),
        .CE(\data_cap[31]_i_1_n_0 ),
        .D(ip2bus_mstrd_d[11]),
        .Q(Q[11]),
        .R(1'b0));
  FDRE \data_cap_reg[12] 
       (.C(clk),
        .CE(\data_cap[31]_i_1_n_0 ),
        .D(ip2bus_mstrd_d[12]),
        .Q(Q[12]),
        .R(1'b0));
  FDRE \data_cap_reg[13] 
       (.C(clk),
        .CE(\data_cap[31]_i_1_n_0 ),
        .D(ip2bus_mstrd_d[13]),
        .Q(Q[13]),
        .R(1'b0));
  FDRE \data_cap_reg[14] 
       (.C(clk),
        .CE(\data_cap[31]_i_1_n_0 ),
        .D(ip2bus_mstrd_d[14]),
        .Q(Q[14]),
        .R(1'b0));
  FDRE \data_cap_reg[15] 
       (.C(clk),
        .CE(\data_cap[31]_i_1_n_0 ),
        .D(ip2bus_mstrd_d[15]),
        .Q(Q[15]),
        .R(1'b0));
  FDRE \data_cap_reg[16] 
       (.C(clk),
        .CE(\data_cap[31]_i_1_n_0 ),
        .D(ip2bus_mstrd_d[16]),
        .Q(Q[16]),
        .R(1'b0));
  FDRE \data_cap_reg[17] 
       (.C(clk),
        .CE(\data_cap[31]_i_1_n_0 ),
        .D(ip2bus_mstrd_d[17]),
        .Q(Q[17]),
        .R(1'b0));
  FDRE \data_cap_reg[18] 
       (.C(clk),
        .CE(\data_cap[31]_i_1_n_0 ),
        .D(ip2bus_mstrd_d[18]),
        .Q(Q[18]),
        .R(1'b0));
  FDRE \data_cap_reg[19] 
       (.C(clk),
        .CE(\data_cap[31]_i_1_n_0 ),
        .D(ip2bus_mstrd_d[19]),
        .Q(Q[19]),
        .R(1'b0));
  FDRE \data_cap_reg[1] 
       (.C(clk),
        .CE(\data_cap[31]_i_1_n_0 ),
        .D(ip2bus_mstrd_d[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \data_cap_reg[20] 
       (.C(clk),
        .CE(\data_cap[31]_i_1_n_0 ),
        .D(ip2bus_mstrd_d[20]),
        .Q(Q[20]),
        .R(1'b0));
  FDRE \data_cap_reg[21] 
       (.C(clk),
        .CE(\data_cap[31]_i_1_n_0 ),
        .D(ip2bus_mstrd_d[21]),
        .Q(Q[21]),
        .R(1'b0));
  FDRE \data_cap_reg[22] 
       (.C(clk),
        .CE(\data_cap[31]_i_1_n_0 ),
        .D(ip2bus_mstrd_d[22]),
        .Q(Q[22]),
        .R(1'b0));
  FDRE \data_cap_reg[23] 
       (.C(clk),
        .CE(\data_cap[31]_i_1_n_0 ),
        .D(ip2bus_mstrd_d[23]),
        .Q(Q[23]),
        .R(1'b0));
  FDRE \data_cap_reg[24] 
       (.C(clk),
        .CE(\data_cap[31]_i_1_n_0 ),
        .D(ip2bus_mstrd_d[24]),
        .Q(Q[24]),
        .R(1'b0));
  FDRE \data_cap_reg[25] 
       (.C(clk),
        .CE(\data_cap[31]_i_1_n_0 ),
        .D(ip2bus_mstrd_d[25]),
        .Q(Q[25]),
        .R(1'b0));
  FDRE \data_cap_reg[26] 
       (.C(clk),
        .CE(\data_cap[31]_i_1_n_0 ),
        .D(ip2bus_mstrd_d[26]),
        .Q(Q[26]),
        .R(1'b0));
  FDRE \data_cap_reg[27] 
       (.C(clk),
        .CE(\data_cap[31]_i_1_n_0 ),
        .D(ip2bus_mstrd_d[27]),
        .Q(Q[27]),
        .R(1'b0));
  FDRE \data_cap_reg[28] 
       (.C(clk),
        .CE(\data_cap[31]_i_1_n_0 ),
        .D(ip2bus_mstrd_d[28]),
        .Q(Q[28]),
        .R(1'b0));
  FDRE \data_cap_reg[29] 
       (.C(clk),
        .CE(\data_cap[31]_i_1_n_0 ),
        .D(ip2bus_mstrd_d[29]),
        .Q(Q[29]),
        .R(1'b0));
  FDRE \data_cap_reg[2] 
       (.C(clk),
        .CE(\data_cap[31]_i_1_n_0 ),
        .D(ip2bus_mstrd_d[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \data_cap_reg[30] 
       (.C(clk),
        .CE(\data_cap[31]_i_1_n_0 ),
        .D(ip2bus_mstrd_d[30]),
        .Q(Q[30]),
        .R(1'b0));
  FDRE \data_cap_reg[31] 
       (.C(clk),
        .CE(\data_cap[31]_i_1_n_0 ),
        .D(ip2bus_mstrd_d[31]),
        .Q(Q[31]),
        .R(1'b0));
  FDRE \data_cap_reg[3] 
       (.C(clk),
        .CE(\data_cap[31]_i_1_n_0 ),
        .D(ip2bus_mstrd_d[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \data_cap_reg[4] 
       (.C(clk),
        .CE(\data_cap[31]_i_1_n_0 ),
        .D(ip2bus_mstrd_d[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \data_cap_reg[5] 
       (.C(clk),
        .CE(\data_cap[31]_i_1_n_0 ),
        .D(ip2bus_mstrd_d[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \data_cap_reg[6] 
       (.C(clk),
        .CE(\data_cap[31]_i_1_n_0 ),
        .D(ip2bus_mstrd_d[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \data_cap_reg[7] 
       (.C(clk),
        .CE(\data_cap[31]_i_1_n_0 ),
        .D(ip2bus_mstrd_d[7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \data_cap_reg[8] 
       (.C(clk),
        .CE(\data_cap[31]_i_1_n_0 ),
        .D(ip2bus_mstrd_d[8]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE \data_cap_reg[9] 
       (.C(clk),
        .CE(\data_cap[31]_i_1_n_0 ),
        .D(ip2bus_mstrd_d[9]),
        .Q(Q[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h02)) 
    \ip2bus_inputs[0]_INST_0 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .O(ip2bus_inputs[0]));
  LUT4 #(
    .INIT(16'hECFB)) 
    master_read_dst_rdy
       (.I0(data_valid_read_word),
        .I1(state[2]),
        .I2(state[0]),
        .I3(state[1]),
        .O(ip2bus_inputs[1]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE sync_ack_0_reg
       (.C(clk),
        .CE(1'b1),
        .D(in0),
        .Q(sync_ack_0),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE sync_ack_1_reg
       (.C(clk),
        .CE(1'b1),
        .D(sync_ack_0),
        .Q(sync_ack_1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE sync_ack_2_reg
       (.C(clk),
        .CE(1'b1),
        .D(sync_ack_1),
        .Q(sync_ack_2),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "sample_assembler" *) 
module design_1_tape_interface_0_0_sample_assembler
   (ack_sample_assem,
    state,
    E,
    D,
    pwm,
    clk_1_mhz,
    state_0,
    \data_reg_reg[27] ,
    data_valid_byte,
    \data_reg_reg[31] ,
    \data_reg_reg[31]_0 ,
    restart);
  output ack_sample_assem;
  output [2:0]state;
  output [0:0]E;
  output [22:0]D;
  input pwm;
  input clk_1_mhz;
  input [2:0]state_0;
  input \data_reg_reg[27] ;
  input data_valid_byte;
  input [7:0]\data_reg_reg[31] ;
  input [7:0]\data_reg_reg[31]_0 ;
  input restart;

  wire [22:0]D;
  wire [0:0]E;
  wire ack_sample_assem;
  wire clk_1_mhz;
  wire \data_reg_reg[27] ;
  wire [7:0]\data_reg_reg[31] ;
  wire [7:0]\data_reg_reg[31]_0 ;
  wire data_valid_byte;
  wire pwm;
  wire pwm_0;
  wire pwm_1;
  wire restart;
  wire [2:0]state;
  wire \state[0]_i_1_n_0 ;
  wire \state[0]_i_2__0_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire \state[2]_i_1_n_0 ;
  wire [2:0]state_0;
  wire \timer_val[10]_i_1_n_0 ;
  wire \timer_val[23]_i_1_n_0 ;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00000200)) 
    \load[22]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(pwm_1),
        .I4(pwm_0),
        .O(E));
  FDRE pwm_0_reg
       (.C(clk_1_mhz),
        .CE(1'b1),
        .D(pwm),
        .Q(pwm_0),
        .R(1'b0));
  FDRE pwm_1_reg
       (.C(clk_1_mhz),
        .CE(1'b1),
        .D(pwm_0),
        .Q(pwm_1),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hF00FFCFAFF00FC00)) 
    \state[0]_i_1 
       (.I0(\data_reg_reg[27] ),
        .I1(\state[0]_i_2__0_n_0 ),
        .I2(state[2]),
        .I3(state[0]),
        .I4(state[1]),
        .I5(data_valid_byte),
        .O(\state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5353535353535301)) 
    \state[0]_i_2 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(state_0[1]),
        .I4(state_0[0]),
        .I5(state_0[2]),
        .O(ack_sample_assem));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \state[0]_i_2__0 
       (.I0(pwm_0),
        .I1(pwm_1),
        .O(\state[0]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'hCF01FF00)) 
    \state[1]_i_1 
       (.I0(\data_reg_reg[27] ),
        .I1(state[2]),
        .I2(state[0]),
        .I3(state[1]),
        .I4(data_valid_byte),
        .O(\state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hE8E8E8E8E8E8E8AA)) 
    \state[2]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(state_0[1]),
        .I4(state_0[0]),
        .I5(state_0[2]),
        .O(\state[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(clk_1_mhz),
        .CE(1'b1),
        .D(\state[0]_i_1_n_0 ),
        .Q(state[0]),
        .R(restart));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(clk_1_mhz),
        .CE(1'b1),
        .D(\state[1]_i_1_n_0 ),
        .Q(state[1]),
        .R(restart));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[2] 
       (.C(clk_1_mhz),
        .CE(1'b1),
        .D(\state[2]_i_1_n_0 ),
        .Q(state[2]),
        .R(restart));
  LUT5 #(
    .INIT(32'h00C030E0)) 
    \timer_val[10]_i_1 
       (.I0(\data_reg_reg[27] ),
        .I1(state[1]),
        .I2(data_valid_byte),
        .I3(state[2]),
        .I4(state[0]),
        .O(\timer_val[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \timer_val[23]_i_1 
       (.I0(state[0]),
        .I1(state[2]),
        .I2(data_valid_byte),
        .I3(state[1]),
        .I4(\data_reg_reg[27] ),
        .O(\timer_val[23]_i_1_n_0 ));
  FDRE \timer_val_reg[10] 
       (.C(clk_1_mhz),
        .CE(\timer_val[10]_i_1_n_0 ),
        .D(\data_reg_reg[31] [7]),
        .Q(D[9]),
        .R(1'b0));
  FDRE \timer_val_reg[11] 
       (.C(clk_1_mhz),
        .CE(\timer_val[10]_i_1_n_0 ),
        .D(D[18]),
        .Q(D[10]),
        .R(\timer_val[23]_i_1_n_0 ));
  FDRE \timer_val_reg[12] 
       (.C(clk_1_mhz),
        .CE(\timer_val[10]_i_1_n_0 ),
        .D(D[19]),
        .Q(D[11]),
        .R(\timer_val[23]_i_1_n_0 ));
  FDRE \timer_val_reg[13] 
       (.C(clk_1_mhz),
        .CE(\timer_val[10]_i_1_n_0 ),
        .D(D[20]),
        .Q(D[12]),
        .R(\timer_val[23]_i_1_n_0 ));
  FDRE \timer_val_reg[14] 
       (.C(clk_1_mhz),
        .CE(\timer_val[10]_i_1_n_0 ),
        .D(D[21]),
        .Q(D[13]),
        .R(\timer_val[23]_i_1_n_0 ));
  FDRE \timer_val_reg[15] 
       (.C(clk_1_mhz),
        .CE(\timer_val[10]_i_1_n_0 ),
        .D(D[22]),
        .Q(D[14]),
        .R(\timer_val[23]_i_1_n_0 ));
  FDRE \timer_val_reg[16] 
       (.C(clk_1_mhz),
        .CE(\timer_val[10]_i_1_n_0 ),
        .D(\data_reg_reg[31]_0 [0]),
        .Q(D[15]),
        .R(\timer_val[23]_i_1_n_0 ));
  FDRE \timer_val_reg[17] 
       (.C(clk_1_mhz),
        .CE(\timer_val[10]_i_1_n_0 ),
        .D(\data_reg_reg[31]_0 [1]),
        .Q(D[16]),
        .R(\timer_val[23]_i_1_n_0 ));
  FDRE \timer_val_reg[18] 
       (.C(clk_1_mhz),
        .CE(\timer_val[10]_i_1_n_0 ),
        .D(\data_reg_reg[31]_0 [2]),
        .Q(D[17]),
        .R(\timer_val[23]_i_1_n_0 ));
  FDRE \timer_val_reg[19] 
       (.C(clk_1_mhz),
        .CE(\timer_val[10]_i_1_n_0 ),
        .D(\data_reg_reg[31]_0 [3]),
        .Q(D[18]),
        .R(\timer_val[23]_i_1_n_0 ));
  FDRE \timer_val_reg[1] 
       (.C(clk_1_mhz),
        .CE(\timer_val[10]_i_1_n_0 ),
        .D(D[8]),
        .Q(D[0]),
        .R(\timer_val[23]_i_1_n_0 ));
  FDRE \timer_val_reg[20] 
       (.C(clk_1_mhz),
        .CE(\timer_val[10]_i_1_n_0 ),
        .D(\data_reg_reg[31]_0 [4]),
        .Q(D[19]),
        .R(\timer_val[23]_i_1_n_0 ));
  FDRE \timer_val_reg[21] 
       (.C(clk_1_mhz),
        .CE(\timer_val[10]_i_1_n_0 ),
        .D(\data_reg_reg[31]_0 [5]),
        .Q(D[20]),
        .R(\timer_val[23]_i_1_n_0 ));
  FDRE \timer_val_reg[22] 
       (.C(clk_1_mhz),
        .CE(\timer_val[10]_i_1_n_0 ),
        .D(\data_reg_reg[31]_0 [6]),
        .Q(D[21]),
        .R(\timer_val[23]_i_1_n_0 ));
  FDRE \timer_val_reg[23] 
       (.C(clk_1_mhz),
        .CE(\timer_val[10]_i_1_n_0 ),
        .D(\data_reg_reg[31]_0 [7]),
        .Q(D[22]),
        .R(\timer_val[23]_i_1_n_0 ));
  FDRE \timer_val_reg[2] 
       (.C(clk_1_mhz),
        .CE(\timer_val[10]_i_1_n_0 ),
        .D(D[9]),
        .Q(D[1]),
        .R(\timer_val[23]_i_1_n_0 ));
  FDRE \timer_val_reg[3] 
       (.C(clk_1_mhz),
        .CE(\timer_val[10]_i_1_n_0 ),
        .D(\data_reg_reg[31] [0]),
        .Q(D[2]),
        .R(1'b0));
  FDRE \timer_val_reg[4] 
       (.C(clk_1_mhz),
        .CE(\timer_val[10]_i_1_n_0 ),
        .D(\data_reg_reg[31] [1]),
        .Q(D[3]),
        .R(1'b0));
  FDRE \timer_val_reg[5] 
       (.C(clk_1_mhz),
        .CE(\timer_val[10]_i_1_n_0 ),
        .D(\data_reg_reg[31] [2]),
        .Q(D[4]),
        .R(1'b0));
  FDRE \timer_val_reg[6] 
       (.C(clk_1_mhz),
        .CE(\timer_val[10]_i_1_n_0 ),
        .D(\data_reg_reg[31] [3]),
        .Q(D[5]),
        .R(1'b0));
  FDRE \timer_val_reg[7] 
       (.C(clk_1_mhz),
        .CE(\timer_val[10]_i_1_n_0 ),
        .D(\data_reg_reg[31] [4]),
        .Q(D[6]),
        .R(1'b0));
  FDRE \timer_val_reg[8] 
       (.C(clk_1_mhz),
        .CE(\timer_val[10]_i_1_n_0 ),
        .D(\data_reg_reg[31] [5]),
        .Q(D[7]),
        .R(1'b0));
  FDRE \timer_val_reg[9] 
       (.C(clk_1_mhz),
        .CE(\timer_val[10]_i_1_n_0 ),
        .D(\data_reg_reg[31] [6]),
        .Q(D[8]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "tape_pwm" *) 
module design_1_tape_interface_0_0_tape_pwm
   (pwm,
    clk_1_mhz,
    E,
    D,
    motor_control);
  output pwm;
  input clk_1_mhz;
  input [0:0]E;
  input [22:0]D;
  input motor_control;

  wire [22:0]D;
  wire [0:0]E;
  wire clk_1_mhz;
  wire \load_reg_n_0_[0] ;
  wire \load_reg_n_0_[10] ;
  wire \load_reg_n_0_[11] ;
  wire \load_reg_n_0_[12] ;
  wire \load_reg_n_0_[13] ;
  wire \load_reg_n_0_[14] ;
  wire \load_reg_n_0_[15] ;
  wire \load_reg_n_0_[16] ;
  wire \load_reg_n_0_[17] ;
  wire \load_reg_n_0_[18] ;
  wire \load_reg_n_0_[19] ;
  wire \load_reg_n_0_[1] ;
  wire \load_reg_n_0_[20] ;
  wire \load_reg_n_0_[21] ;
  wire \load_reg_n_0_[22] ;
  wire \load_reg_n_0_[2] ;
  wire \load_reg_n_0_[3] ;
  wire \load_reg_n_0_[4] ;
  wire \load_reg_n_0_[5] ;
  wire \load_reg_n_0_[6] ;
  wire \load_reg_n_0_[7] ;
  wire \load_reg_n_0_[8] ;
  wire \load_reg_n_0_[9] ;
  wire motor_control;
  wire polarity_i_1_n_0;
  wire polarity_i_3_n_0;
  wire polarity_i_4_n_0;
  wire polarity_i_5_n_0;
  wire polarity_i_6_n_0;
  wire polarity_i_7_n_0;
  wire polarity_i_8_n_0;
  wire pwm;
  wire timer;
  wire \timer[0]_i_10_n_0 ;
  wire \timer[0]_i_1_n_0 ;
  wire \timer[0]_i_3_n_0 ;
  wire \timer[0]_i_4_n_0 ;
  wire \timer[0]_i_5_n_0 ;
  wire \timer[0]_i_6_n_0 ;
  wire \timer[0]_i_7_n_0 ;
  wire \timer[0]_i_8_n_0 ;
  wire \timer[0]_i_9_n_0 ;
  wire \timer[12]_i_2_n_0 ;
  wire \timer[12]_i_3_n_0 ;
  wire \timer[12]_i_4_n_0 ;
  wire \timer[12]_i_5_n_0 ;
  wire \timer[12]_i_6_n_0 ;
  wire \timer[12]_i_7_n_0 ;
  wire \timer[12]_i_8_n_0 ;
  wire \timer[12]_i_9_n_0 ;
  wire \timer[16]_i_2_n_0 ;
  wire \timer[16]_i_3_n_0 ;
  wire \timer[16]_i_4_n_0 ;
  wire \timer[16]_i_5_n_0 ;
  wire \timer[16]_i_6_n_0 ;
  wire \timer[16]_i_7_n_0 ;
  wire \timer[16]_i_8_n_0 ;
  wire \timer[16]_i_9_n_0 ;
  wire \timer[20]_i_2_n_0 ;
  wire \timer[20]_i_3_n_0 ;
  wire \timer[20]_i_4_n_0 ;
  wire \timer[20]_i_5_n_0 ;
  wire \timer[20]_i_6_n_0 ;
  wire \timer[20]_i_7_n_0 ;
  wire \timer[20]_i_8_n_0 ;
  wire \timer[4]_i_2_n_0 ;
  wire \timer[4]_i_3_n_0 ;
  wire \timer[4]_i_4_n_0 ;
  wire \timer[4]_i_5_n_0 ;
  wire \timer[4]_i_6_n_0 ;
  wire \timer[4]_i_7_n_0 ;
  wire \timer[4]_i_8_n_0 ;
  wire \timer[4]_i_9_n_0 ;
  wire \timer[8]_i_2_n_0 ;
  wire \timer[8]_i_3_n_0 ;
  wire \timer[8]_i_4_n_0 ;
  wire \timer[8]_i_5_n_0 ;
  wire \timer[8]_i_6_n_0 ;
  wire \timer[8]_i_7_n_0 ;
  wire \timer[8]_i_8_n_0 ;
  wire \timer[8]_i_9_n_0 ;
  wire [23:0]timer_reg;
  wire \timer_reg[0]_i_2_n_0 ;
  wire \timer_reg[0]_i_2_n_1 ;
  wire \timer_reg[0]_i_2_n_2 ;
  wire \timer_reg[0]_i_2_n_3 ;
  wire \timer_reg[0]_i_2_n_4 ;
  wire \timer_reg[0]_i_2_n_5 ;
  wire \timer_reg[0]_i_2_n_6 ;
  wire \timer_reg[0]_i_2_n_7 ;
  wire \timer_reg[12]_i_1_n_0 ;
  wire \timer_reg[12]_i_1_n_1 ;
  wire \timer_reg[12]_i_1_n_2 ;
  wire \timer_reg[12]_i_1_n_3 ;
  wire \timer_reg[12]_i_1_n_4 ;
  wire \timer_reg[12]_i_1_n_5 ;
  wire \timer_reg[12]_i_1_n_6 ;
  wire \timer_reg[12]_i_1_n_7 ;
  wire \timer_reg[16]_i_1_n_0 ;
  wire \timer_reg[16]_i_1_n_1 ;
  wire \timer_reg[16]_i_1_n_2 ;
  wire \timer_reg[16]_i_1_n_3 ;
  wire \timer_reg[16]_i_1_n_4 ;
  wire \timer_reg[16]_i_1_n_5 ;
  wire \timer_reg[16]_i_1_n_6 ;
  wire \timer_reg[16]_i_1_n_7 ;
  wire \timer_reg[20]_i_1_n_1 ;
  wire \timer_reg[20]_i_1_n_2 ;
  wire \timer_reg[20]_i_1_n_3 ;
  wire \timer_reg[20]_i_1_n_4 ;
  wire \timer_reg[20]_i_1_n_5 ;
  wire \timer_reg[20]_i_1_n_6 ;
  wire \timer_reg[20]_i_1_n_7 ;
  wire \timer_reg[4]_i_1_n_0 ;
  wire \timer_reg[4]_i_1_n_1 ;
  wire \timer_reg[4]_i_1_n_2 ;
  wire \timer_reg[4]_i_1_n_3 ;
  wire \timer_reg[4]_i_1_n_4 ;
  wire \timer_reg[4]_i_1_n_5 ;
  wire \timer_reg[4]_i_1_n_6 ;
  wire \timer_reg[4]_i_1_n_7 ;
  wire \timer_reg[8]_i_1_n_0 ;
  wire \timer_reg[8]_i_1_n_1 ;
  wire \timer_reg[8]_i_1_n_2 ;
  wire \timer_reg[8]_i_1_n_3 ;
  wire \timer_reg[8]_i_1_n_4 ;
  wire \timer_reg[8]_i_1_n_5 ;
  wire \timer_reg[8]_i_1_n_6 ;
  wire \timer_reg[8]_i_1_n_7 ;
  wire [3:3]\NLW_timer_reg[20]_i_1_CO_UNCONNECTED ;

  FDRE #(
    .INIT(1'b0)) 
    \load_reg[0] 
       (.C(clk_1_mhz),
        .CE(E),
        .D(D[0]),
        .Q(\load_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \load_reg[10] 
       (.C(clk_1_mhz),
        .CE(E),
        .D(D[10]),
        .Q(\load_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \load_reg[11] 
       (.C(clk_1_mhz),
        .CE(E),
        .D(D[11]),
        .Q(\load_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \load_reg[12] 
       (.C(clk_1_mhz),
        .CE(E),
        .D(D[12]),
        .Q(\load_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \load_reg[13] 
       (.C(clk_1_mhz),
        .CE(E),
        .D(D[13]),
        .Q(\load_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \load_reg[14] 
       (.C(clk_1_mhz),
        .CE(E),
        .D(D[14]),
        .Q(\load_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \load_reg[15] 
       (.C(clk_1_mhz),
        .CE(E),
        .D(D[15]),
        .Q(\load_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \load_reg[16] 
       (.C(clk_1_mhz),
        .CE(E),
        .D(D[16]),
        .Q(\load_reg_n_0_[16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \load_reg[17] 
       (.C(clk_1_mhz),
        .CE(E),
        .D(D[17]),
        .Q(\load_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \load_reg[18] 
       (.C(clk_1_mhz),
        .CE(E),
        .D(D[18]),
        .Q(\load_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \load_reg[19] 
       (.C(clk_1_mhz),
        .CE(E),
        .D(D[19]),
        .Q(\load_reg_n_0_[19] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \load_reg[1] 
       (.C(clk_1_mhz),
        .CE(E),
        .D(D[1]),
        .Q(\load_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \load_reg[20] 
       (.C(clk_1_mhz),
        .CE(E),
        .D(D[20]),
        .Q(\load_reg_n_0_[20] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \load_reg[21] 
       (.C(clk_1_mhz),
        .CE(E),
        .D(D[21]),
        .Q(\load_reg_n_0_[21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \load_reg[22] 
       (.C(clk_1_mhz),
        .CE(E),
        .D(D[22]),
        .Q(\load_reg_n_0_[22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \load_reg[2] 
       (.C(clk_1_mhz),
        .CE(E),
        .D(D[2]),
        .Q(\load_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \load_reg[3] 
       (.C(clk_1_mhz),
        .CE(E),
        .D(D[3]),
        .Q(\load_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \load_reg[4] 
       (.C(clk_1_mhz),
        .CE(E),
        .D(D[4]),
        .Q(\load_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \load_reg[5] 
       (.C(clk_1_mhz),
        .CE(E),
        .D(D[5]),
        .Q(\load_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \load_reg[6] 
       (.C(clk_1_mhz),
        .CE(E),
        .D(D[6]),
        .Q(\load_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \load_reg[7] 
       (.C(clk_1_mhz),
        .CE(E),
        .D(D[7]),
        .Q(\load_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \load_reg[8] 
       (.C(clk_1_mhz),
        .CE(E),
        .D(D[8]),
        .Q(\load_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \load_reg[9] 
       (.C(clk_1_mhz),
        .CE(E),
        .D(D[9]),
        .Q(\load_reg_n_0_[9] ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    polarity_i_1
       (.I0(timer),
        .I1(pwm),
        .O(polarity_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    polarity_i_2
       (.I0(polarity_i_3_n_0),
        .I1(polarity_i_4_n_0),
        .I2(polarity_i_5_n_0),
        .I3(polarity_i_6_n_0),
        .I4(polarity_i_7_n_0),
        .I5(polarity_i_8_n_0),
        .O(timer));
  LUT4 #(
    .INIT(16'hFFFE)) 
    polarity_i_3
       (.I0(timer_reg[18]),
        .I1(timer_reg[19]),
        .I2(timer_reg[16]),
        .I3(timer_reg[17]),
        .O(polarity_i_3_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    polarity_i_4
       (.I0(timer_reg[23]),
        .I1(timer_reg[22]),
        .I2(timer_reg[20]),
        .I3(timer_reg[21]),
        .O(polarity_i_4_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    polarity_i_5
       (.I0(timer_reg[6]),
        .I1(timer_reg[7]),
        .I2(timer_reg[4]),
        .I3(timer_reg[5]),
        .O(polarity_i_5_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    polarity_i_6
       (.I0(timer_reg[2]),
        .I1(timer_reg[3]),
        .I2(timer_reg[0]),
        .I3(timer_reg[1]),
        .O(polarity_i_6_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    polarity_i_7
       (.I0(timer_reg[14]),
        .I1(timer_reg[15]),
        .I2(timer_reg[12]),
        .I3(timer_reg[13]),
        .O(polarity_i_7_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    polarity_i_8
       (.I0(timer_reg[10]),
        .I1(timer_reg[11]),
        .I2(timer_reg[8]),
        .I3(timer_reg[9]),
        .O(polarity_i_8_n_0));
  FDRE #(
    .INIT(1'b1)) 
    polarity_reg
       (.C(clk_1_mhz),
        .CE(1'b1),
        .D(polarity_i_1_n_0),
        .Q(pwm),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hD)) 
    \timer[0]_i_1 
       (.I0(motor_control),
        .I1(timer),
        .O(\timer[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAA3)) 
    \timer[0]_i_10 
       (.I0(\load_reg_n_0_[0] ),
        .I1(timer_reg[0]),
        .I2(timer),
        .I3(motor_control),
        .O(\timer[0]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \timer[0]_i_3 
       (.I0(timer_reg[3]),
        .I1(motor_control),
        .I2(timer),
        .I3(\load_reg_n_0_[3] ),
        .O(\timer[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \timer[0]_i_4 
       (.I0(timer_reg[2]),
        .I1(motor_control),
        .I2(timer),
        .I3(\load_reg_n_0_[2] ),
        .O(\timer[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \timer[0]_i_5 
       (.I0(timer_reg[1]),
        .I1(motor_control),
        .I2(timer),
        .I3(\load_reg_n_0_[1] ),
        .O(\timer[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \timer[0]_i_6 
       (.I0(timer_reg[0]),
        .I1(motor_control),
        .I2(timer),
        .I3(\load_reg_n_0_[0] ),
        .O(\timer[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hAAA3)) 
    \timer[0]_i_7 
       (.I0(\load_reg_n_0_[3] ),
        .I1(timer_reg[3]),
        .I2(timer),
        .I3(motor_control),
        .O(\timer[0]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hAAA3)) 
    \timer[0]_i_8 
       (.I0(\load_reg_n_0_[2] ),
        .I1(timer_reg[2]),
        .I2(timer),
        .I3(motor_control),
        .O(\timer[0]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hAAA3)) 
    \timer[0]_i_9 
       (.I0(\load_reg_n_0_[1] ),
        .I1(timer_reg[1]),
        .I2(timer),
        .I3(motor_control),
        .O(\timer[0]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \timer[12]_i_2 
       (.I0(timer_reg[15]),
        .I1(motor_control),
        .I2(timer),
        .I3(\load_reg_n_0_[15] ),
        .O(\timer[12]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \timer[12]_i_3 
       (.I0(timer_reg[14]),
        .I1(motor_control),
        .I2(timer),
        .I3(\load_reg_n_0_[14] ),
        .O(\timer[12]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \timer[12]_i_4 
       (.I0(timer_reg[13]),
        .I1(motor_control),
        .I2(timer),
        .I3(\load_reg_n_0_[13] ),
        .O(\timer[12]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \timer[12]_i_5 
       (.I0(timer_reg[12]),
        .I1(motor_control),
        .I2(timer),
        .I3(\load_reg_n_0_[12] ),
        .O(\timer[12]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hAAA3)) 
    \timer[12]_i_6 
       (.I0(\load_reg_n_0_[15] ),
        .I1(timer_reg[15]),
        .I2(timer),
        .I3(motor_control),
        .O(\timer[12]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hAAA3)) 
    \timer[12]_i_7 
       (.I0(\load_reg_n_0_[14] ),
        .I1(timer_reg[14]),
        .I2(timer),
        .I3(motor_control),
        .O(\timer[12]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hAAA3)) 
    \timer[12]_i_8 
       (.I0(\load_reg_n_0_[13] ),
        .I1(timer_reg[13]),
        .I2(timer),
        .I3(motor_control),
        .O(\timer[12]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hAAA3)) 
    \timer[12]_i_9 
       (.I0(\load_reg_n_0_[12] ),
        .I1(timer_reg[12]),
        .I2(timer),
        .I3(motor_control),
        .O(\timer[12]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \timer[16]_i_2 
       (.I0(timer_reg[19]),
        .I1(motor_control),
        .I2(timer),
        .I3(\load_reg_n_0_[19] ),
        .O(\timer[16]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \timer[16]_i_3 
       (.I0(timer_reg[18]),
        .I1(motor_control),
        .I2(timer),
        .I3(\load_reg_n_0_[18] ),
        .O(\timer[16]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \timer[16]_i_4 
       (.I0(timer_reg[17]),
        .I1(motor_control),
        .I2(timer),
        .I3(\load_reg_n_0_[17] ),
        .O(\timer[16]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \timer[16]_i_5 
       (.I0(timer_reg[16]),
        .I1(motor_control),
        .I2(timer),
        .I3(\load_reg_n_0_[16] ),
        .O(\timer[16]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hAAA3)) 
    \timer[16]_i_6 
       (.I0(\load_reg_n_0_[19] ),
        .I1(timer_reg[19]),
        .I2(timer),
        .I3(motor_control),
        .O(\timer[16]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hAAA3)) 
    \timer[16]_i_7 
       (.I0(\load_reg_n_0_[18] ),
        .I1(timer_reg[18]),
        .I2(timer),
        .I3(motor_control),
        .O(\timer[16]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hAAA3)) 
    \timer[16]_i_8 
       (.I0(\load_reg_n_0_[17] ),
        .I1(timer_reg[17]),
        .I2(timer),
        .I3(motor_control),
        .O(\timer[16]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hAAA3)) 
    \timer[16]_i_9 
       (.I0(\load_reg_n_0_[16] ),
        .I1(timer_reg[16]),
        .I2(timer),
        .I3(motor_control),
        .O(\timer[16]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \timer[20]_i_2 
       (.I0(timer_reg[22]),
        .I1(motor_control),
        .I2(timer),
        .I3(\load_reg_n_0_[22] ),
        .O(\timer[20]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \timer[20]_i_3 
       (.I0(timer_reg[21]),
        .I1(motor_control),
        .I2(timer),
        .I3(\load_reg_n_0_[21] ),
        .O(\timer[20]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \timer[20]_i_4 
       (.I0(timer_reg[20]),
        .I1(motor_control),
        .I2(timer),
        .I3(\load_reg_n_0_[20] ),
        .O(\timer[20]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \timer[20]_i_5 
       (.I0(timer_reg[23]),
        .I1(timer),
        .I2(motor_control),
        .O(\timer[20]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hAAA3)) 
    \timer[20]_i_6 
       (.I0(\load_reg_n_0_[22] ),
        .I1(timer_reg[22]),
        .I2(timer),
        .I3(motor_control),
        .O(\timer[20]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hAAA3)) 
    \timer[20]_i_7 
       (.I0(\load_reg_n_0_[21] ),
        .I1(timer_reg[21]),
        .I2(timer),
        .I3(motor_control),
        .O(\timer[20]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hAAA3)) 
    \timer[20]_i_8 
       (.I0(\load_reg_n_0_[20] ),
        .I1(timer_reg[20]),
        .I2(timer),
        .I3(motor_control),
        .O(\timer[20]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \timer[4]_i_2 
       (.I0(timer_reg[7]),
        .I1(motor_control),
        .I2(timer),
        .I3(\load_reg_n_0_[7] ),
        .O(\timer[4]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \timer[4]_i_3 
       (.I0(timer_reg[6]),
        .I1(motor_control),
        .I2(timer),
        .I3(\load_reg_n_0_[6] ),
        .O(\timer[4]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \timer[4]_i_4 
       (.I0(timer_reg[5]),
        .I1(motor_control),
        .I2(timer),
        .I3(\load_reg_n_0_[5] ),
        .O(\timer[4]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \timer[4]_i_5 
       (.I0(timer_reg[4]),
        .I1(motor_control),
        .I2(timer),
        .I3(\load_reg_n_0_[4] ),
        .O(\timer[4]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hAAA3)) 
    \timer[4]_i_6 
       (.I0(\load_reg_n_0_[7] ),
        .I1(timer_reg[7]),
        .I2(timer),
        .I3(motor_control),
        .O(\timer[4]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hAAA3)) 
    \timer[4]_i_7 
       (.I0(\load_reg_n_0_[6] ),
        .I1(timer_reg[6]),
        .I2(timer),
        .I3(motor_control),
        .O(\timer[4]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hAAA3)) 
    \timer[4]_i_8 
       (.I0(\load_reg_n_0_[5] ),
        .I1(timer_reg[5]),
        .I2(timer),
        .I3(motor_control),
        .O(\timer[4]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hAAA3)) 
    \timer[4]_i_9 
       (.I0(\load_reg_n_0_[4] ),
        .I1(timer_reg[4]),
        .I2(timer),
        .I3(motor_control),
        .O(\timer[4]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \timer[8]_i_2 
       (.I0(timer_reg[11]),
        .I1(motor_control),
        .I2(timer),
        .I3(\load_reg_n_0_[11] ),
        .O(\timer[8]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \timer[8]_i_3 
       (.I0(timer_reg[10]),
        .I1(motor_control),
        .I2(timer),
        .I3(\load_reg_n_0_[10] ),
        .O(\timer[8]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \timer[8]_i_4 
       (.I0(timer_reg[9]),
        .I1(motor_control),
        .I2(timer),
        .I3(\load_reg_n_0_[9] ),
        .O(\timer[8]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \timer[8]_i_5 
       (.I0(timer_reg[8]),
        .I1(motor_control),
        .I2(timer),
        .I3(\load_reg_n_0_[8] ),
        .O(\timer[8]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hAAA3)) 
    \timer[8]_i_6 
       (.I0(\load_reg_n_0_[11] ),
        .I1(timer_reg[11]),
        .I2(timer),
        .I3(motor_control),
        .O(\timer[8]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hAAA3)) 
    \timer[8]_i_7 
       (.I0(\load_reg_n_0_[10] ),
        .I1(timer_reg[10]),
        .I2(timer),
        .I3(motor_control),
        .O(\timer[8]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hAAA3)) 
    \timer[8]_i_8 
       (.I0(\load_reg_n_0_[9] ),
        .I1(timer_reg[9]),
        .I2(timer),
        .I3(motor_control),
        .O(\timer[8]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hAAA3)) 
    \timer[8]_i_9 
       (.I0(\load_reg_n_0_[8] ),
        .I1(timer_reg[8]),
        .I2(timer),
        .I3(motor_control),
        .O(\timer[8]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[0] 
       (.C(clk_1_mhz),
        .CE(\timer[0]_i_1_n_0 ),
        .D(\timer_reg[0]_i_2_n_7 ),
        .Q(timer_reg[0]),
        .R(1'b0));
  CARRY4 \timer_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\timer_reg[0]_i_2_n_0 ,\timer_reg[0]_i_2_n_1 ,\timer_reg[0]_i_2_n_2 ,\timer_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\timer[0]_i_3_n_0 ,\timer[0]_i_4_n_0 ,\timer[0]_i_5_n_0 ,\timer[0]_i_6_n_0 }),
        .O({\timer_reg[0]_i_2_n_4 ,\timer_reg[0]_i_2_n_5 ,\timer_reg[0]_i_2_n_6 ,\timer_reg[0]_i_2_n_7 }),
        .S({\timer[0]_i_7_n_0 ,\timer[0]_i_8_n_0 ,\timer[0]_i_9_n_0 ,\timer[0]_i_10_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[10] 
       (.C(clk_1_mhz),
        .CE(\timer[0]_i_1_n_0 ),
        .D(\timer_reg[8]_i_1_n_5 ),
        .Q(timer_reg[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[11] 
       (.C(clk_1_mhz),
        .CE(\timer[0]_i_1_n_0 ),
        .D(\timer_reg[8]_i_1_n_4 ),
        .Q(timer_reg[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[12] 
       (.C(clk_1_mhz),
        .CE(\timer[0]_i_1_n_0 ),
        .D(\timer_reg[12]_i_1_n_7 ),
        .Q(timer_reg[12]),
        .R(1'b0));
  CARRY4 \timer_reg[12]_i_1 
       (.CI(\timer_reg[8]_i_1_n_0 ),
        .CO({\timer_reg[12]_i_1_n_0 ,\timer_reg[12]_i_1_n_1 ,\timer_reg[12]_i_1_n_2 ,\timer_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\timer[12]_i_2_n_0 ,\timer[12]_i_3_n_0 ,\timer[12]_i_4_n_0 ,\timer[12]_i_5_n_0 }),
        .O({\timer_reg[12]_i_1_n_4 ,\timer_reg[12]_i_1_n_5 ,\timer_reg[12]_i_1_n_6 ,\timer_reg[12]_i_1_n_7 }),
        .S({\timer[12]_i_6_n_0 ,\timer[12]_i_7_n_0 ,\timer[12]_i_8_n_0 ,\timer[12]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[13] 
       (.C(clk_1_mhz),
        .CE(\timer[0]_i_1_n_0 ),
        .D(\timer_reg[12]_i_1_n_6 ),
        .Q(timer_reg[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[14] 
       (.C(clk_1_mhz),
        .CE(\timer[0]_i_1_n_0 ),
        .D(\timer_reg[12]_i_1_n_5 ),
        .Q(timer_reg[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[15] 
       (.C(clk_1_mhz),
        .CE(\timer[0]_i_1_n_0 ),
        .D(\timer_reg[12]_i_1_n_4 ),
        .Q(timer_reg[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[16] 
       (.C(clk_1_mhz),
        .CE(\timer[0]_i_1_n_0 ),
        .D(\timer_reg[16]_i_1_n_7 ),
        .Q(timer_reg[16]),
        .R(1'b0));
  CARRY4 \timer_reg[16]_i_1 
       (.CI(\timer_reg[12]_i_1_n_0 ),
        .CO({\timer_reg[16]_i_1_n_0 ,\timer_reg[16]_i_1_n_1 ,\timer_reg[16]_i_1_n_2 ,\timer_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\timer[16]_i_2_n_0 ,\timer[16]_i_3_n_0 ,\timer[16]_i_4_n_0 ,\timer[16]_i_5_n_0 }),
        .O({\timer_reg[16]_i_1_n_4 ,\timer_reg[16]_i_1_n_5 ,\timer_reg[16]_i_1_n_6 ,\timer_reg[16]_i_1_n_7 }),
        .S({\timer[16]_i_6_n_0 ,\timer[16]_i_7_n_0 ,\timer[16]_i_8_n_0 ,\timer[16]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[17] 
       (.C(clk_1_mhz),
        .CE(\timer[0]_i_1_n_0 ),
        .D(\timer_reg[16]_i_1_n_6 ),
        .Q(timer_reg[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[18] 
       (.C(clk_1_mhz),
        .CE(\timer[0]_i_1_n_0 ),
        .D(\timer_reg[16]_i_1_n_5 ),
        .Q(timer_reg[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[19] 
       (.C(clk_1_mhz),
        .CE(\timer[0]_i_1_n_0 ),
        .D(\timer_reg[16]_i_1_n_4 ),
        .Q(timer_reg[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[1] 
       (.C(clk_1_mhz),
        .CE(\timer[0]_i_1_n_0 ),
        .D(\timer_reg[0]_i_2_n_6 ),
        .Q(timer_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[20] 
       (.C(clk_1_mhz),
        .CE(\timer[0]_i_1_n_0 ),
        .D(\timer_reg[20]_i_1_n_7 ),
        .Q(timer_reg[20]),
        .R(1'b0));
  CARRY4 \timer_reg[20]_i_1 
       (.CI(\timer_reg[16]_i_1_n_0 ),
        .CO({\NLW_timer_reg[20]_i_1_CO_UNCONNECTED [3],\timer_reg[20]_i_1_n_1 ,\timer_reg[20]_i_1_n_2 ,\timer_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\timer[20]_i_2_n_0 ,\timer[20]_i_3_n_0 ,\timer[20]_i_4_n_0 }),
        .O({\timer_reg[20]_i_1_n_4 ,\timer_reg[20]_i_1_n_5 ,\timer_reg[20]_i_1_n_6 ,\timer_reg[20]_i_1_n_7 }),
        .S({\timer[20]_i_5_n_0 ,\timer[20]_i_6_n_0 ,\timer[20]_i_7_n_0 ,\timer[20]_i_8_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[21] 
       (.C(clk_1_mhz),
        .CE(\timer[0]_i_1_n_0 ),
        .D(\timer_reg[20]_i_1_n_6 ),
        .Q(timer_reg[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[22] 
       (.C(clk_1_mhz),
        .CE(\timer[0]_i_1_n_0 ),
        .D(\timer_reg[20]_i_1_n_5 ),
        .Q(timer_reg[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[23] 
       (.C(clk_1_mhz),
        .CE(\timer[0]_i_1_n_0 ),
        .D(\timer_reg[20]_i_1_n_4 ),
        .Q(timer_reg[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \timer_reg[2] 
       (.C(clk_1_mhz),
        .CE(\timer[0]_i_1_n_0 ),
        .D(\timer_reg[0]_i_2_n_5 ),
        .Q(timer_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[3] 
       (.C(clk_1_mhz),
        .CE(\timer[0]_i_1_n_0 ),
        .D(\timer_reg[0]_i_2_n_4 ),
        .Q(timer_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[4] 
       (.C(clk_1_mhz),
        .CE(\timer[0]_i_1_n_0 ),
        .D(\timer_reg[4]_i_1_n_7 ),
        .Q(timer_reg[4]),
        .R(1'b0));
  CARRY4 \timer_reg[4]_i_1 
       (.CI(\timer_reg[0]_i_2_n_0 ),
        .CO({\timer_reg[4]_i_1_n_0 ,\timer_reg[4]_i_1_n_1 ,\timer_reg[4]_i_1_n_2 ,\timer_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\timer[4]_i_2_n_0 ,\timer[4]_i_3_n_0 ,\timer[4]_i_4_n_0 ,\timer[4]_i_5_n_0 }),
        .O({\timer_reg[4]_i_1_n_4 ,\timer_reg[4]_i_1_n_5 ,\timer_reg[4]_i_1_n_6 ,\timer_reg[4]_i_1_n_7 }),
        .S({\timer[4]_i_6_n_0 ,\timer[4]_i_7_n_0 ,\timer[4]_i_8_n_0 ,\timer[4]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b1)) 
    \timer_reg[5] 
       (.C(clk_1_mhz),
        .CE(\timer[0]_i_1_n_0 ),
        .D(\timer_reg[4]_i_1_n_6 ),
        .Q(timer_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \timer_reg[6] 
       (.C(clk_1_mhz),
        .CE(\timer[0]_i_1_n_0 ),
        .D(\timer_reg[4]_i_1_n_5 ),
        .Q(timer_reg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[7] 
       (.C(clk_1_mhz),
        .CE(\timer[0]_i_1_n_0 ),
        .D(\timer_reg[4]_i_1_n_4 ),
        .Q(timer_reg[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[8] 
       (.C(clk_1_mhz),
        .CE(\timer[0]_i_1_n_0 ),
        .D(\timer_reg[8]_i_1_n_7 ),
        .Q(timer_reg[8]),
        .R(1'b0));
  CARRY4 \timer_reg[8]_i_1 
       (.CI(\timer_reg[4]_i_1_n_0 ),
        .CO({\timer_reg[8]_i_1_n_0 ,\timer_reg[8]_i_1_n_1 ,\timer_reg[8]_i_1_n_2 ,\timer_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\timer[8]_i_2_n_0 ,\timer[8]_i_3_n_0 ,\timer[8]_i_4_n_0 ,\timer[8]_i_5_n_0 }),
        .O({\timer_reg[8]_i_1_n_4 ,\timer_reg[8]_i_1_n_5 ,\timer_reg[8]_i_1_n_6 ,\timer_reg[8]_i_1_n_7 }),
        .S({\timer[8]_i_6_n_0 ,\timer[8]_i_7_n_0 ,\timer[8]_i_8_n_0 ,\timer[8]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[9] 
       (.C(clk_1_mhz),
        .CE(\timer[0]_i_1_n_0 ),
        .D(\timer_reg[8]_i_1_n_6 ),
        .Q(timer_reg[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "top" *) 
module design_1_tape_interface_0_0_top
   (pwm,
    ip2bus_mst_addr,
    ip2bus_inputs,
    clk,
    clk_1_mhz,
    clk_0,
    reset,
    restart,
    ip2bus_otputs,
    ip2bus_mstrd_d,
    motor_control);
  output pwm;
  output [29:0]ip2bus_mst_addr;
  output [1:0]ip2bus_inputs;
  input clk;
  input clk_1_mhz;
  input clk_0;
  input reset;
  input restart;
  input [1:0]ip2bus_otputs;
  input [31:0]ip2bus_mstrd_d;
  input motor_control;

  wire ack_byte_slice;
  wire ack_sample_assem;
  wire [7:0]byte_data;
  wire byte_slice_n_10;
  wire byte_slice_n_11;
  wire byte_slice_n_20;
  wire byte_slice_n_4;
  wire byte_slice_n_5;
  wire byte_slice_n_6;
  wire byte_slice_n_7;
  wire byte_slice_n_8;
  wire byte_slice_n_9;
  wire clk;
  wire clk_0;
  wire clk_1_mhz;
  wire [31:0]data_cap;
  wire data_valid_byte;
  wire data_valid_read_word;
  wire [1:0]ip2bus_inputs;
  wire [29:0]ip2bus_mst_addr;
  wire [31:0]ip2bus_mstrd_d;
  wire [1:0]ip2bus_otputs;
  wire load_timer;
  wire motor_control;
  wire [22:0]p_0_in;
  wire pwm;
  wire reset;
  wire restart;
  wire [2:0]state;
  wire [2:0]state_0;

  design_1_tape_interface_0_0_byteslicer byte_slice
       (.D({byte_slice_n_4,byte_slice_n_5,byte_slice_n_6,byte_slice_n_7,byte_slice_n_8,byte_slice_n_9,byte_slice_n_10,byte_slice_n_11}),
        .Q(data_cap),
        .ack_sample_assem(ack_sample_assem),
        .clk_1_mhz(clk_1_mhz),
        .data_valid_byte(data_valid_byte),
        .data_valid_read_word(data_valid_read_word),
        .in0(ack_byte_slice),
        .restart(restart),
        .state(state),
        .state_0(state_0),
        .\timer_val_reg[18] (p_0_in[17:10]),
        .\timer_val_reg[23] (byte_data),
        .\timer_val_reg[3] (byte_slice_n_20));
  design_1_tape_interface_0_0_read_word r_word
       (.Q(data_cap),
        .clk(clk),
        .clk_0(clk_0),
        .data_valid_read_word(data_valid_read_word),
        .in0(ack_byte_slice),
        .ip2bus_inputs(ip2bus_inputs),
        .ip2bus_mst_addr(ip2bus_mst_addr),
        .ip2bus_mstrd_d(ip2bus_mstrd_d),
        .ip2bus_otputs(ip2bus_otputs),
        .reset(reset),
        .restart(restart));
  design_1_tape_interface_0_0_sample_assembler samp_assem
       (.D(p_0_in),
        .E(load_timer),
        .ack_sample_assem(ack_sample_assem),
        .clk_1_mhz(clk_1_mhz),
        .\data_reg_reg[27] (byte_slice_n_20),
        .\data_reg_reg[31] ({byte_slice_n_4,byte_slice_n_5,byte_slice_n_6,byte_slice_n_7,byte_slice_n_8,byte_slice_n_9,byte_slice_n_10,byte_slice_n_11}),
        .\data_reg_reg[31]_0 (byte_data),
        .data_valid_byte(data_valid_byte),
        .pwm(pwm),
        .restart(restart),
        .state(state_0),
        .state_0(state));
  design_1_tape_interface_0_0_tape_pwm t_pwm
       (.D(p_0_in),
        .E(load_timer),
        .clk_1_mhz(clk_1_mhz),
        .motor_control(motor_control),
        .pwm(pwm));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
