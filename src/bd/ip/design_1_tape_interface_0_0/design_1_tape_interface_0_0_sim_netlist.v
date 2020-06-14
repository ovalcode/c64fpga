// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Sun Jun 14 10:35:13 2020
// Host        : johan-Latitude-E5550 running 64-bit Ubuntu 16.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/johan/v20/c64fpga/src/bd/ip/design_1_tape_interface_0_0/design_1_tape_interface_0_0_sim_netlist.v
// Design      : design_1_tape_interface_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_tape_interface_0_0,top,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "top,Vivado 2019.1" *) 
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_2_FCLK_CLK0" *) input clk;
  input clk_1_mhz;
  input restart;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset, POLARITY ACTIVE_HIGH" *) input reset;
  output [31:0]ip2bus_mst_addr;
  output [11:0]ip2bus_mst_length;
  input [31:0]ip2bus_mstrd_d;
  output [4:0]ip2bus_inputs;
  input [5:0]ip2bus_otputs;
  input motor_control;
  output pwm;

  wire \<const0> ;
  wire \<const1> ;
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
  design_1_tape_interface_0_0_top inst
       (.clk(clk),
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
   (out,
    \data_reg_reg[31]_0 ,
    Q,
    \FSM_onehot_state_reg[1]_0 ,
    in0,
    data_valid_read_word,
    clk_1_mhz,
    \data_reg_reg[7]_0 ,
    state,
    restart,
    D,
    \data_reg_reg[31]_1 ,
    \data_reg_reg[0]_0 );
  output out;
  output \data_reg_reg[31]_0 ;
  output [7:0]Q;
  output [1:0]\FSM_onehot_state_reg[1]_0 ;
  output in0;
  input data_valid_read_word;
  input clk_1_mhz;
  input [31:0]\data_reg_reg[7]_0 ;
  input [2:0]state;
  input restart;
  input [0:0]D;
  input \data_reg_reg[31]_1 ;
  input \data_reg_reg[0]_0 ;

  wire [0:0]D;
  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[3]_i_1_n_0 ;
  wire \FSM_onehot_state[4]_i_1_n_0 ;
  wire \FSM_onehot_state[4]_i_2_n_0 ;
  wire [1:0]\FSM_onehot_state_reg[1]_0 ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire \FSM_onehot_state_reg_n_0_[4] ;
  wire \FSM_sequential_state[2]_i_3_n_0 ;
  wire [7:0]Q;
  wire clk_1_mhz;
  wire \data_reg_reg[0]_0 ;
  wire \data_reg_reg[31]_0 ;
  wire \data_reg_reg[31]_1 ;
  wire [31:0]\data_reg_reg[7]_0 ;
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
  wire data_valid_read_word;
  wire in0;
  wire [31:8]p_1_in;
  wire p_1_in_0;
  wire restart;
  wire [2:0]state;

  assign out = data_valid_1;
  LUT6 #(
    .INIT(64'hAAAEABFEAAA2A802)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(\FSM_onehot_state_reg[1]_0 [0]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(state[2]),
        .I4(\FSM_onehot_state_reg[1]_0 [1]),
        .I5(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAEABFEAAA2A802)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(state[0]),
        .I2(state[1]),
        .I3(state[2]),
        .I4(\FSM_onehot_state_reg[1]_0 [1]),
        .I5(p_1_in_0),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAEABFEAAA2A802)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(p_1_in_0),
        .I1(state[0]),
        .I2(state[1]),
        .I3(state[2]),
        .I4(\FSM_onehot_state_reg[1]_0 [1]),
        .I5(\FSM_onehot_state_reg_n_0_[4] ),
        .O(\FSM_onehot_state[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_onehot_state[4]_i_1 
       (.I0(p_1_in_0),
        .I1(\FSM_onehot_state_reg[1]_0 [1]),
        .I2(\FSM_onehot_state_reg[1]_0 [0]),
        .I3(\FSM_onehot_state_reg_n_0_[4] ),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\FSM_onehot_state[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFC03AAAA0000)) 
    \FSM_onehot_state[4]_i_2 
       (.I0(data_valid_1),
        .I1(state[0]),
        .I2(state[1]),
        .I3(state[2]),
        .I4(\FSM_onehot_state_reg[1]_0 [1]),
        .I5(\FSM_onehot_state_reg_n_0_[4] ),
        .O(\FSM_onehot_state[4]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "STATE_LOADED:10000,STATE_SHIFT_1:01000,STATE_SHIFT_2:00100,STATE_SHIFT_3:00001,STATE_INIT:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[0] 
       (.C(clk_1_mhz),
        .CE(\FSM_onehot_state[4]_i_1_n_0 ),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg[1]_0 [0]),
        .R(restart));
  (* FSM_ENCODED_STATES = "STATE_LOADED:10000,STATE_SHIFT_1:01000,STATE_SHIFT_2:00100,STATE_SHIFT_3:00001,STATE_INIT:00010" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk_1_mhz),
        .CE(\FSM_onehot_state[4]_i_1_n_0 ),
        .D(D),
        .Q(\FSM_onehot_state_reg[1]_0 [1]),
        .S(restart));
  (* FSM_ENCODED_STATES = "STATE_LOADED:10000,STATE_SHIFT_1:01000,STATE_SHIFT_2:00100,STATE_SHIFT_3:00001,STATE_INIT:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk_1_mhz),
        .CE(\FSM_onehot_state[4]_i_1_n_0 ),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(restart));
  (* FSM_ENCODED_STATES = "STATE_LOADED:10000,STATE_SHIFT_1:01000,STATE_SHIFT_2:00100,STATE_SHIFT_3:00001,STATE_INIT:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(clk_1_mhz),
        .CE(\FSM_onehot_state[4]_i_1_n_0 ),
        .D(\FSM_onehot_state[3]_i_1_n_0 ),
        .Q(p_1_in_0),
        .R(restart));
  (* FSM_ENCODED_STATES = "STATE_LOADED:10000,STATE_SHIFT_1:01000,STATE_SHIFT_2:00100,STATE_SHIFT_3:00001,STATE_INIT:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(clk_1_mhz),
        .CE(\FSM_onehot_state[4]_i_1_n_0 ),
        .D(\FSM_onehot_state[4]_i_2_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[4] ),
        .R(restart));
  LUT6 #(
    .INIT(64'h00000000FFFFFFFE)) 
    \FSM_sequential_state[2]_i_2__0 
       (.I0(\FSM_sequential_state[2]_i_3_n_0 ),
        .I1(Q[7]),
        .I2(Q[6]),
        .I3(Q[4]),
        .I4(Q[5]),
        .I5(\FSM_onehot_state_reg[1]_0 [1]),
        .O(\data_reg_reg[31]_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_state[2]_i_3 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(\FSM_sequential_state[2]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    ack_inferred_i_1
       (.I0(\FSM_onehot_state_reg[1]_0 [1]),
        .I1(data_valid_1),
        .O(in0));
  LUT4 #(
    .INIT(16'hBF80)) 
    \data_reg[10]_i_1 
       (.I0(\data_reg_reg[7]_0 [18]),
        .I1(\FSM_onehot_state_reg[1]_0 [1]),
        .I2(data_valid_1),
        .I3(\data_reg_reg_n_0_[2] ),
        .O(p_1_in[10]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \data_reg[11]_i_1 
       (.I0(\data_reg_reg[7]_0 [19]),
        .I1(\FSM_onehot_state_reg[1]_0 [1]),
        .I2(data_valid_1),
        .I3(\data_reg_reg_n_0_[3] ),
        .O(p_1_in[11]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \data_reg[12]_i_1 
       (.I0(\data_reg_reg[7]_0 [20]),
        .I1(\FSM_onehot_state_reg[1]_0 [1]),
        .I2(data_valid_1),
        .I3(\data_reg_reg_n_0_[4] ),
        .O(p_1_in[12]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \data_reg[13]_i_1 
       (.I0(\data_reg_reg[7]_0 [21]),
        .I1(\FSM_onehot_state_reg[1]_0 [1]),
        .I2(data_valid_1),
        .I3(\data_reg_reg_n_0_[5] ),
        .O(p_1_in[13]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \data_reg[14]_i_1 
       (.I0(\data_reg_reg[7]_0 [22]),
        .I1(\FSM_onehot_state_reg[1]_0 [1]),
        .I2(data_valid_1),
        .I3(\data_reg_reg_n_0_[6] ),
        .O(p_1_in[14]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \data_reg[15]_i_1 
       (.I0(\data_reg_reg[7]_0 [23]),
        .I1(\FSM_onehot_state_reg[1]_0 [1]),
        .I2(data_valid_1),
        .I3(\data_reg_reg_n_0_[7] ),
        .O(p_1_in[15]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \data_reg[16]_i_1 
       (.I0(\data_reg_reg[7]_0 [8]),
        .I1(\FSM_onehot_state_reg[1]_0 [1]),
        .I2(data_valid_1),
        .I3(\data_reg_reg_n_0_[8] ),
        .O(p_1_in[16]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \data_reg[17]_i_1 
       (.I0(\data_reg_reg[7]_0 [9]),
        .I1(\FSM_onehot_state_reg[1]_0 [1]),
        .I2(data_valid_1),
        .I3(\data_reg_reg_n_0_[9] ),
        .O(p_1_in[17]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \data_reg[18]_i_1 
       (.I0(\data_reg_reg[7]_0 [10]),
        .I1(\FSM_onehot_state_reg[1]_0 [1]),
        .I2(data_valid_1),
        .I3(\data_reg_reg_n_0_[10] ),
        .O(p_1_in[18]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \data_reg[19]_i_1 
       (.I0(\data_reg_reg[7]_0 [11]),
        .I1(\FSM_onehot_state_reg[1]_0 [1]),
        .I2(data_valid_1),
        .I3(\data_reg_reg_n_0_[11] ),
        .O(p_1_in[19]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \data_reg[20]_i_1 
       (.I0(\data_reg_reg[7]_0 [12]),
        .I1(\FSM_onehot_state_reg[1]_0 [1]),
        .I2(data_valid_1),
        .I3(\data_reg_reg_n_0_[12] ),
        .O(p_1_in[20]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \data_reg[21]_i_1 
       (.I0(\data_reg_reg[7]_0 [13]),
        .I1(\FSM_onehot_state_reg[1]_0 [1]),
        .I2(data_valid_1),
        .I3(\data_reg_reg_n_0_[13] ),
        .O(p_1_in[21]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \data_reg[22]_i_1 
       (.I0(\data_reg_reg[7]_0 [14]),
        .I1(\FSM_onehot_state_reg[1]_0 [1]),
        .I2(data_valid_1),
        .I3(\data_reg_reg_n_0_[14] ),
        .O(p_1_in[22]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \data_reg[23]_i_1 
       (.I0(\data_reg_reg[7]_0 [15]),
        .I1(\FSM_onehot_state_reg[1]_0 [1]),
        .I2(data_valid_1),
        .I3(\data_reg_reg_n_0_[15] ),
        .O(p_1_in[23]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \data_reg[24]_i_1 
       (.I0(\data_reg_reg[7]_0 [0]),
        .I1(\FSM_onehot_state_reg[1]_0 [1]),
        .I2(data_valid_1),
        .I3(\data_reg_reg_n_0_[16] ),
        .O(p_1_in[24]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \data_reg[25]_i_1 
       (.I0(\data_reg_reg[7]_0 [1]),
        .I1(\FSM_onehot_state_reg[1]_0 [1]),
        .I2(data_valid_1),
        .I3(\data_reg_reg_n_0_[17] ),
        .O(p_1_in[25]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \data_reg[26]_i_1 
       (.I0(\data_reg_reg[7]_0 [2]),
        .I1(\FSM_onehot_state_reg[1]_0 [1]),
        .I2(data_valid_1),
        .I3(\data_reg_reg_n_0_[18] ),
        .O(p_1_in[26]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \data_reg[27]_i_1 
       (.I0(\data_reg_reg[7]_0 [3]),
        .I1(\FSM_onehot_state_reg[1]_0 [1]),
        .I2(data_valid_1),
        .I3(\data_reg_reg_n_0_[19] ),
        .O(p_1_in[27]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \data_reg[28]_i_1 
       (.I0(\data_reg_reg[7]_0 [4]),
        .I1(\FSM_onehot_state_reg[1]_0 [1]),
        .I2(data_valid_1),
        .I3(\data_reg_reg_n_0_[20] ),
        .O(p_1_in[28]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \data_reg[29]_i_1 
       (.I0(\data_reg_reg[7]_0 [5]),
        .I1(\FSM_onehot_state_reg[1]_0 [1]),
        .I2(data_valid_1),
        .I3(\data_reg_reg_n_0_[21] ),
        .O(p_1_in[29]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \data_reg[30]_i_1 
       (.I0(\data_reg_reg[7]_0 [6]),
        .I1(\FSM_onehot_state_reg[1]_0 [1]),
        .I2(data_valid_1),
        .I3(\data_reg_reg_n_0_[22] ),
        .O(p_1_in[30]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \data_reg[31]_i_2 
       (.I0(\data_reg_reg[7]_0 [7]),
        .I1(\FSM_onehot_state_reg[1]_0 [1]),
        .I2(data_valid_1),
        .I3(\data_reg_reg_n_0_[23] ),
        .O(p_1_in[31]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \data_reg[8]_i_1 
       (.I0(\data_reg_reg[7]_0 [16]),
        .I1(\FSM_onehot_state_reg[1]_0 [1]),
        .I2(data_valid_1),
        .I3(\data_reg_reg_n_0_[0] ),
        .O(p_1_in[8]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \data_reg[9]_i_1 
       (.I0(\data_reg_reg[7]_0 [17]),
        .I1(\FSM_onehot_state_reg[1]_0 [1]),
        .I2(data_valid_1),
        .I3(\data_reg_reg_n_0_[1] ),
        .O(p_1_in[9]));
  FDRE \data_reg_reg[0] 
       (.C(clk_1_mhz),
        .CE(\data_reg_reg[31]_1 ),
        .D(\data_reg_reg[7]_0 [24]),
        .Q(\data_reg_reg_n_0_[0] ),
        .R(\data_reg_reg[0]_0 ));
  FDRE \data_reg_reg[10] 
       (.C(clk_1_mhz),
        .CE(\data_reg_reg[31]_1 ),
        .D(p_1_in[10]),
        .Q(\data_reg_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \data_reg_reg[11] 
       (.C(clk_1_mhz),
        .CE(\data_reg_reg[31]_1 ),
        .D(p_1_in[11]),
        .Q(\data_reg_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \data_reg_reg[12] 
       (.C(clk_1_mhz),
        .CE(\data_reg_reg[31]_1 ),
        .D(p_1_in[12]),
        .Q(\data_reg_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \data_reg_reg[13] 
       (.C(clk_1_mhz),
        .CE(\data_reg_reg[31]_1 ),
        .D(p_1_in[13]),
        .Q(\data_reg_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \data_reg_reg[14] 
       (.C(clk_1_mhz),
        .CE(\data_reg_reg[31]_1 ),
        .D(p_1_in[14]),
        .Q(\data_reg_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \data_reg_reg[15] 
       (.C(clk_1_mhz),
        .CE(\data_reg_reg[31]_1 ),
        .D(p_1_in[15]),
        .Q(\data_reg_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \data_reg_reg[16] 
       (.C(clk_1_mhz),
        .CE(\data_reg_reg[31]_1 ),
        .D(p_1_in[16]),
        .Q(\data_reg_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \data_reg_reg[17] 
       (.C(clk_1_mhz),
        .CE(\data_reg_reg[31]_1 ),
        .D(p_1_in[17]),
        .Q(\data_reg_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \data_reg_reg[18] 
       (.C(clk_1_mhz),
        .CE(\data_reg_reg[31]_1 ),
        .D(p_1_in[18]),
        .Q(\data_reg_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \data_reg_reg[19] 
       (.C(clk_1_mhz),
        .CE(\data_reg_reg[31]_1 ),
        .D(p_1_in[19]),
        .Q(\data_reg_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \data_reg_reg[1] 
       (.C(clk_1_mhz),
        .CE(\data_reg_reg[31]_1 ),
        .D(\data_reg_reg[7]_0 [25]),
        .Q(\data_reg_reg_n_0_[1] ),
        .R(\data_reg_reg[0]_0 ));
  FDRE \data_reg_reg[20] 
       (.C(clk_1_mhz),
        .CE(\data_reg_reg[31]_1 ),
        .D(p_1_in[20]),
        .Q(\data_reg_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \data_reg_reg[21] 
       (.C(clk_1_mhz),
        .CE(\data_reg_reg[31]_1 ),
        .D(p_1_in[21]),
        .Q(\data_reg_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \data_reg_reg[22] 
       (.C(clk_1_mhz),
        .CE(\data_reg_reg[31]_1 ),
        .D(p_1_in[22]),
        .Q(\data_reg_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \data_reg_reg[23] 
       (.C(clk_1_mhz),
        .CE(\data_reg_reg[31]_1 ),
        .D(p_1_in[23]),
        .Q(\data_reg_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \data_reg_reg[24] 
       (.C(clk_1_mhz),
        .CE(\data_reg_reg[31]_1 ),
        .D(p_1_in[24]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \data_reg_reg[25] 
       (.C(clk_1_mhz),
        .CE(\data_reg_reg[31]_1 ),
        .D(p_1_in[25]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \data_reg_reg[26] 
       (.C(clk_1_mhz),
        .CE(\data_reg_reg[31]_1 ),
        .D(p_1_in[26]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \data_reg_reg[27] 
       (.C(clk_1_mhz),
        .CE(\data_reg_reg[31]_1 ),
        .D(p_1_in[27]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \data_reg_reg[28] 
       (.C(clk_1_mhz),
        .CE(\data_reg_reg[31]_1 ),
        .D(p_1_in[28]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \data_reg_reg[29] 
       (.C(clk_1_mhz),
        .CE(\data_reg_reg[31]_1 ),
        .D(p_1_in[29]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \data_reg_reg[2] 
       (.C(clk_1_mhz),
        .CE(\data_reg_reg[31]_1 ),
        .D(\data_reg_reg[7]_0 [26]),
        .Q(\data_reg_reg_n_0_[2] ),
        .R(\data_reg_reg[0]_0 ));
  FDRE \data_reg_reg[30] 
       (.C(clk_1_mhz),
        .CE(\data_reg_reg[31]_1 ),
        .D(p_1_in[30]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \data_reg_reg[31] 
       (.C(clk_1_mhz),
        .CE(\data_reg_reg[31]_1 ),
        .D(p_1_in[31]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \data_reg_reg[3] 
       (.C(clk_1_mhz),
        .CE(\data_reg_reg[31]_1 ),
        .D(\data_reg_reg[7]_0 [27]),
        .Q(\data_reg_reg_n_0_[3] ),
        .R(\data_reg_reg[0]_0 ));
  FDRE \data_reg_reg[4] 
       (.C(clk_1_mhz),
        .CE(\data_reg_reg[31]_1 ),
        .D(\data_reg_reg[7]_0 [28]),
        .Q(\data_reg_reg_n_0_[4] ),
        .R(\data_reg_reg[0]_0 ));
  FDRE \data_reg_reg[5] 
       (.C(clk_1_mhz),
        .CE(\data_reg_reg[31]_1 ),
        .D(\data_reg_reg[7]_0 [29]),
        .Q(\data_reg_reg_n_0_[5] ),
        .R(\data_reg_reg[0]_0 ));
  FDRE \data_reg_reg[6] 
       (.C(clk_1_mhz),
        .CE(\data_reg_reg[31]_1 ),
        .D(\data_reg_reg[7]_0 [30]),
        .Q(\data_reg_reg_n_0_[6] ),
        .R(\data_reg_reg[0]_0 ));
  FDRE \data_reg_reg[7] 
       (.C(clk_1_mhz),
        .CE(\data_reg_reg[31]_1 ),
        .D(\data_reg_reg[7]_0 [31]),
        .Q(\data_reg_reg_n_0_[7] ),
        .R(\data_reg_reg[0]_0 ));
  FDRE \data_reg_reg[8] 
       (.C(clk_1_mhz),
        .CE(\data_reg_reg[31]_1 ),
        .D(p_1_in[8]),
        .Q(\data_reg_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \data_reg_reg[9] 
       (.C(clk_1_mhz),
        .CE(\data_reg_reg[31]_1 ),
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
endmodule

(* ORIG_REF_NAME = "read_word" *) 
module design_1_tape_interface_0_0_read_word
   (data_valid_read_word,
    Q,
    ip2bus_mst_addr,
    ip2bus_inputs,
    in0,
    clk,
    ip2bus_otputs,
    restart,
    reset,
    ip2bus_mstrd_d);
  output data_valid_read_word;
  output [31:0]Q;
  output [29:0]ip2bus_mst_addr;
  output [1:0]ip2bus_inputs;
  input in0;
  input clk;
  input [1:0]ip2bus_otputs;
  input restart;
  input reset;
  input [31:0]ip2bus_mstrd_d;

  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_2_n_0 ;
  wire [31:0]Q;
  wire \axi_data_inc[2]_i_1_n_0 ;
  wire axi_data_loaded20_in;
  wire axi_data_loaded_i_1_n_0;
  wire \axi_start_address[2]_i_1_n_0 ;
  wire \axi_start_address[31]_i_2_n_0 ;
  wire \axi_start_address[5]_i_2_n_0 ;
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
  wire \data_cap[31]_i_1_n_0 ;
  wire data_valid_read_word;
  wire [2:2]in;
  wire in0;
  wire [1:0]ip2bus_inputs;
  wire [29:0]ip2bus_mst_addr;
  wire [31:0]ip2bus_mstrd_d;
  wire [1:0]ip2bus_otputs;
  wire reset;
  wire restart;
  wire [2:0]state;
  wire state2;
  (* async_reg = "true" *) wire sync_ack_0;
  (* async_reg = "true" *) wire sync_ack_1;
  (* async_reg = "true" *) wire sync_ack_2;
  wire [3:1]\NLW_axi_start_address_reg[31]_i_3_CO_UNCONNECTED ;
  wire [3:2]\NLW_axi_start_address_reg[31]_i_3_O_UNCONNECTED ;
  wire [0:0]\NLW_axi_start_address_reg[5]_i_1_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h550A5508550A550A)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(\FSM_sequential_state[2]_i_2_n_0 ),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[0]),
        .I4(data_valid_read_word),
        .I5(state2),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h464C)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(\FSM_sequential_state[2]_i_2_n_0 ),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[0]),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h5850)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(\FSM_sequential_state[2]_i_2_n_0 ),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[0]),
        .O(\FSM_sequential_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h03033D0D33333D0D)) 
    \FSM_sequential_state[2]_i_2 
       (.I0(data_valid_read_word),
        .I1(state[2]),
        .I2(state[1]),
        .I3(ip2bus_otputs[0]),
        .I4(state[0]),
        .I5(ip2bus_otputs[1]),
        .O(\FSM_sequential_state[2]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "IDLE:000,INIT_CMD:001,START:010,ACT:011,TRANSMITTING:100," *) 
  FDRE \FSM_sequential_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "IDLE:000,INIT_CMD:001,START:010,ACT:011,TRANSMITTING:100," *) 
  FDRE \FSM_sequential_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(state[1]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "IDLE:000,INIT_CMD:001,START:010,ACT:011,TRANSMITTING:100," *) 
  FDRE \FSM_sequential_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[2]_i_1_n_0 ),
        .Q(state[2]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h000000000000AAAE)) 
    \axi_data_inc[2]_i_1 
       (.I0(in),
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
        .Q(in),
        .R(1'b0));
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
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h24)) 
    axi_data_loaded_i_2
       (.I0(state[0]),
        .I1(state[2]),
        .I2(state[1]),
        .O(axi_data_loaded20_in));
  FDRE #(
    .INIT(1'b0)) 
    axi_data_loaded_reg
       (.C(clk),
        .CE(1'b1),
        .D(axi_data_loaded_i_1_n_0),
        .Q(data_valid_read_word),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_start_address[2]_i_1 
       (.I0(in),
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
        .O(\axi_start_address[31]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_start_address[5]_i_2 
       (.I0(in),
        .I1(ip2bus_mst_addr[0]),
        .O(\axi_start_address[5]_i_2_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \axi_start_address_reg[10] 
       (.C(clk),
        .CE(\axi_start_address[31]_i_2_n_0 ),
        .D(\axi_start_address_reg[13]_i_1_n_7 ),
        .Q(ip2bus_mst_addr[8]),
        .R(state2));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \axi_start_address_reg[11] 
       (.C(clk),
        .CE(\axi_start_address[31]_i_2_n_0 ),
        .D(\axi_start_address_reg[13]_i_1_n_6 ),
        .Q(ip2bus_mst_addr[9]),
        .R(state2));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \axi_start_address_reg[12] 
       (.C(clk),
        .CE(\axi_start_address[31]_i_2_n_0 ),
        .D(\axi_start_address_reg[13]_i_1_n_5 ),
        .Q(ip2bus_mst_addr[10]),
        .R(state2));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \axi_start_address_reg[13] 
       (.C(clk),
        .CE(\axi_start_address[31]_i_2_n_0 ),
        .D(\axi_start_address_reg[13]_i_1_n_4 ),
        .Q(ip2bus_mst_addr[11]),
        .R(state2));
  CARRY4 \axi_start_address_reg[13]_i_1 
       (.CI(\axi_start_address_reg[9]_i_1_n_0 ),
        .CO({\axi_start_address_reg[13]_i_1_n_0 ,\axi_start_address_reg[13]_i_1_n_1 ,\axi_start_address_reg[13]_i_1_n_2 ,\axi_start_address_reg[13]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\axi_start_address_reg[13]_i_1_n_4 ,\axi_start_address_reg[13]_i_1_n_5 ,\axi_start_address_reg[13]_i_1_n_6 ,\axi_start_address_reg[13]_i_1_n_7 }),
        .S(ip2bus_mst_addr[11:8]));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \axi_start_address_reg[14] 
       (.C(clk),
        .CE(\axi_start_address[31]_i_2_n_0 ),
        .D(\axi_start_address_reg[17]_i_1_n_7 ),
        .Q(ip2bus_mst_addr[12]),
        .R(state2));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \axi_start_address_reg[15] 
       (.C(clk),
        .CE(\axi_start_address[31]_i_2_n_0 ),
        .D(\axi_start_address_reg[17]_i_1_n_6 ),
        .Q(ip2bus_mst_addr[13]),
        .R(state2));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \axi_start_address_reg[16] 
       (.C(clk),
        .CE(\axi_start_address[31]_i_2_n_0 ),
        .D(\axi_start_address_reg[17]_i_1_n_5 ),
        .Q(ip2bus_mst_addr[14]),
        .R(state2));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \axi_start_address_reg[17] 
       (.C(clk),
        .CE(\axi_start_address[31]_i_2_n_0 ),
        .D(\axi_start_address_reg[17]_i_1_n_4 ),
        .Q(ip2bus_mst_addr[15]),
        .R(state2));
  CARRY4 \axi_start_address_reg[17]_i_1 
       (.CI(\axi_start_address_reg[13]_i_1_n_0 ),
        .CO({\axi_start_address_reg[17]_i_1_n_0 ,\axi_start_address_reg[17]_i_1_n_1 ,\axi_start_address_reg[17]_i_1_n_2 ,\axi_start_address_reg[17]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\axi_start_address_reg[17]_i_1_n_4 ,\axi_start_address_reg[17]_i_1_n_5 ,\axi_start_address_reg[17]_i_1_n_6 ,\axi_start_address_reg[17]_i_1_n_7 }),
        .S(ip2bus_mst_addr[15:12]));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \axi_start_address_reg[18] 
       (.C(clk),
        .CE(\axi_start_address[31]_i_2_n_0 ),
        .D(\axi_start_address_reg[21]_i_1_n_7 ),
        .Q(ip2bus_mst_addr[16]),
        .R(state2));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \axi_start_address_reg[19] 
       (.C(clk),
        .CE(\axi_start_address[31]_i_2_n_0 ),
        .D(\axi_start_address_reg[21]_i_1_n_6 ),
        .Q(ip2bus_mst_addr[17]),
        .R(state2));
  FDSE #(
    .IS_C_INVERTED(1'b1)) 
    \axi_start_address_reg[20] 
       (.C(clk),
        .CE(\axi_start_address[31]_i_2_n_0 ),
        .D(\axi_start_address_reg[21]_i_1_n_5 ),
        .Q(ip2bus_mst_addr[18]),
        .S(state2));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \axi_start_address_reg[21] 
       (.C(clk),
        .CE(\axi_start_address[31]_i_2_n_0 ),
        .D(\axi_start_address_reg[21]_i_1_n_4 ),
        .Q(ip2bus_mst_addr[19]),
        .R(state2));
  CARRY4 \axi_start_address_reg[21]_i_1 
       (.CI(\axi_start_address_reg[17]_i_1_n_0 ),
        .CO({\axi_start_address_reg[21]_i_1_n_0 ,\axi_start_address_reg[21]_i_1_n_1 ,\axi_start_address_reg[21]_i_1_n_2 ,\axi_start_address_reg[21]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\axi_start_address_reg[21]_i_1_n_4 ,\axi_start_address_reg[21]_i_1_n_5 ,\axi_start_address_reg[21]_i_1_n_6 ,\axi_start_address_reg[21]_i_1_n_7 }),
        .S(ip2bus_mst_addr[19:16]));
  FDSE #(
    .IS_C_INVERTED(1'b1)) 
    \axi_start_address_reg[22] 
       (.C(clk),
        .CE(\axi_start_address[31]_i_2_n_0 ),
        .D(\axi_start_address_reg[25]_i_1_n_7 ),
        .Q(ip2bus_mst_addr[20]),
        .S(state2));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \axi_start_address_reg[23] 
       (.C(clk),
        .CE(\axi_start_address[31]_i_2_n_0 ),
        .D(\axi_start_address_reg[25]_i_1_n_6 ),
        .Q(ip2bus_mst_addr[21]),
        .R(state2));
  FDSE #(
    .IS_C_INVERTED(1'b1)) 
    \axi_start_address_reg[24] 
       (.C(clk),
        .CE(\axi_start_address[31]_i_2_n_0 ),
        .D(\axi_start_address_reg[25]_i_1_n_5 ),
        .Q(ip2bus_mst_addr[22]),
        .S(state2));
  FDSE #(
    .IS_C_INVERTED(1'b1)) 
    \axi_start_address_reg[25] 
       (.C(clk),
        .CE(\axi_start_address[31]_i_2_n_0 ),
        .D(\axi_start_address_reg[25]_i_1_n_4 ),
        .Q(ip2bus_mst_addr[23]),
        .S(state2));
  CARRY4 \axi_start_address_reg[25]_i_1 
       (.CI(\axi_start_address_reg[21]_i_1_n_0 ),
        .CO({\axi_start_address_reg[25]_i_1_n_0 ,\axi_start_address_reg[25]_i_1_n_1 ,\axi_start_address_reg[25]_i_1_n_2 ,\axi_start_address_reg[25]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\axi_start_address_reg[25]_i_1_n_4 ,\axi_start_address_reg[25]_i_1_n_5 ,\axi_start_address_reg[25]_i_1_n_6 ,\axi_start_address_reg[25]_i_1_n_7 }),
        .S(ip2bus_mst_addr[23:20]));
  FDSE #(
    .IS_C_INVERTED(1'b1)) 
    \axi_start_address_reg[26] 
       (.C(clk),
        .CE(\axi_start_address[31]_i_2_n_0 ),
        .D(\axi_start_address_reg[29]_i_1_n_7 ),
        .Q(ip2bus_mst_addr[24]),
        .S(state2));
  FDSE #(
    .IS_C_INVERTED(1'b1)) 
    \axi_start_address_reg[27] 
       (.C(clk),
        .CE(\axi_start_address[31]_i_2_n_0 ),
        .D(\axi_start_address_reg[29]_i_1_n_6 ),
        .Q(ip2bus_mst_addr[25]),
        .S(state2));
  FDSE #(
    .IS_C_INVERTED(1'b1)) 
    \axi_start_address_reg[28] 
       (.C(clk),
        .CE(\axi_start_address[31]_i_2_n_0 ),
        .D(\axi_start_address_reg[29]_i_1_n_5 ),
        .Q(ip2bus_mst_addr[26]),
        .S(state2));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \axi_start_address_reg[29] 
       (.C(clk),
        .CE(\axi_start_address[31]_i_2_n_0 ),
        .D(\axi_start_address_reg[29]_i_1_n_4 ),
        .Q(ip2bus_mst_addr[27]),
        .R(state2));
  CARRY4 \axi_start_address_reg[29]_i_1 
       (.CI(\axi_start_address_reg[25]_i_1_n_0 ),
        .CO({\axi_start_address_reg[29]_i_1_n_0 ,\axi_start_address_reg[29]_i_1_n_1 ,\axi_start_address_reg[29]_i_1_n_2 ,\axi_start_address_reg[29]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\axi_start_address_reg[29]_i_1_n_4 ,\axi_start_address_reg[29]_i_1_n_5 ,\axi_start_address_reg[29]_i_1_n_6 ,\axi_start_address_reg[29]_i_1_n_7 }),
        .S(ip2bus_mst_addr[27:24]));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \axi_start_address_reg[2] 
       (.C(clk),
        .CE(\axi_start_address[31]_i_2_n_0 ),
        .D(\axi_start_address[2]_i_1_n_0 ),
        .Q(ip2bus_mst_addr[0]),
        .R(state2));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \axi_start_address_reg[30] 
       (.C(clk),
        .CE(\axi_start_address[31]_i_2_n_0 ),
        .D(\axi_start_address_reg[31]_i_3_n_7 ),
        .Q(ip2bus_mst_addr[28]),
        .R(state2));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \axi_start_address_reg[31] 
       (.C(clk),
        .CE(\axi_start_address[31]_i_2_n_0 ),
        .D(\axi_start_address_reg[31]_i_3_n_6 ),
        .Q(ip2bus_mst_addr[29]),
        .R(state2));
  CARRY4 \axi_start_address_reg[31]_i_3 
       (.CI(\axi_start_address_reg[29]_i_1_n_0 ),
        .CO({\NLW_axi_start_address_reg[31]_i_3_CO_UNCONNECTED [3:1],\axi_start_address_reg[31]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_axi_start_address_reg[31]_i_3_O_UNCONNECTED [3:2],\axi_start_address_reg[31]_i_3_n_6 ,\axi_start_address_reg[31]_i_3_n_7 }),
        .S({1'b0,1'b0,ip2bus_mst_addr[29:28]}));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \axi_start_address_reg[3] 
       (.C(clk),
        .CE(\axi_start_address[31]_i_2_n_0 ),
        .D(\axi_start_address_reg[5]_i_1_n_6 ),
        .Q(ip2bus_mst_addr[1]),
        .R(state2));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \axi_start_address_reg[4] 
       (.C(clk),
        .CE(\axi_start_address[31]_i_2_n_0 ),
        .D(\axi_start_address_reg[5]_i_1_n_5 ),
        .Q(ip2bus_mst_addr[2]),
        .R(state2));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \axi_start_address_reg[5] 
       (.C(clk),
        .CE(\axi_start_address[31]_i_2_n_0 ),
        .D(\axi_start_address_reg[5]_i_1_n_4 ),
        .Q(ip2bus_mst_addr[3]),
        .R(state2));
  CARRY4 \axi_start_address_reg[5]_i_1 
       (.CI(1'b0),
        .CO({\axi_start_address_reg[5]_i_1_n_0 ,\axi_start_address_reg[5]_i_1_n_1 ,\axi_start_address_reg[5]_i_1_n_2 ,\axi_start_address_reg[5]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,in}),
        .O({\axi_start_address_reg[5]_i_1_n_4 ,\axi_start_address_reg[5]_i_1_n_5 ,\axi_start_address_reg[5]_i_1_n_6 ,\NLW_axi_start_address_reg[5]_i_1_O_UNCONNECTED [0]}),
        .S({ip2bus_mst_addr[3:1],\axi_start_address[5]_i_2_n_0 }));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \axi_start_address_reg[6] 
       (.C(clk),
        .CE(\axi_start_address[31]_i_2_n_0 ),
        .D(\axi_start_address_reg[9]_i_1_n_7 ),
        .Q(ip2bus_mst_addr[4]),
        .R(state2));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \axi_start_address_reg[7] 
       (.C(clk),
        .CE(\axi_start_address[31]_i_2_n_0 ),
        .D(\axi_start_address_reg[9]_i_1_n_6 ),
        .Q(ip2bus_mst_addr[5]),
        .R(state2));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \axi_start_address_reg[8] 
       (.C(clk),
        .CE(\axi_start_address[31]_i_2_n_0 ),
        .D(\axi_start_address_reg[9]_i_1_n_5 ),
        .Q(ip2bus_mst_addr[6]),
        .R(state2));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \axi_start_address_reg[9] 
       (.C(clk),
        .CE(\axi_start_address[31]_i_2_n_0 ),
        .D(\axi_start_address_reg[9]_i_1_n_4 ),
        .Q(ip2bus_mst_addr[7]),
        .R(state2));
  CARRY4 \axi_start_address_reg[9]_i_1 
       (.CI(\axi_start_address_reg[5]_i_1_n_0 ),
        .CO({\axi_start_address_reg[9]_i_1_n_0 ,\axi_start_address_reg[9]_i_1_n_1 ,\axi_start_address_reg[9]_i_1_n_2 ,\axi_start_address_reg[9]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\axi_start_address_reg[9]_i_1_n_4 ,\axi_start_address_reg[9]_i_1_n_5 ,\axi_start_address_reg[9]_i_1_n_6 ,\axi_start_address_reg[9]_i_1_n_7 }),
        .S(ip2bus_mst_addr[7:4]));
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
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hECFB)) 
    \ip2bus_inputs[2]_INST_0 
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
   (\FSM_sequential_state_reg[0]_0 ,
    state,
    data_valid_1_reg,
    E,
    D,
    \FSM_sequential_state_reg[0]_1 ,
    pwm,
    clk_1_mhz,
    out,
    \FSM_sequential_state_reg[2]_0 ,
    restart,
    Q,
    \FSM_sequential_state_reg[2]_1 );
  output \FSM_sequential_state_reg[0]_0 ;
  output [2:0]state;
  output data_valid_1_reg;
  output [0:0]E;
  output [22:0]D;
  output [0:0]\FSM_sequential_state_reg[0]_1 ;
  input pwm;
  input clk_1_mhz;
  input out;
  input [1:0]\FSM_sequential_state_reg[2]_0 ;
  input restart;
  input [7:0]Q;
  input \FSM_sequential_state_reg[2]_1 ;

  wire [22:0]D;
  wire [0:0]E;
  wire \FSM_sequential_state[0]_i_1__0_n_0 ;
  wire \FSM_sequential_state[1]_i_1__0_n_0 ;
  wire \FSM_sequential_state[2]_i_1__0_n_0 ;
  wire \FSM_sequential_state_reg[0]_0 ;
  wire [0:0]\FSM_sequential_state_reg[0]_1 ;
  wire [1:0]\FSM_sequential_state_reg[2]_0 ;
  wire \FSM_sequential_state_reg[2]_1 ;
  wire [7:0]Q;
  wire clk_1_mhz;
  wire data_valid_1_reg;
  wire out;
  wire p_1_in;
  wire pwm;
  wire pwm_0;
  wire pwm_1;
  wire restart;
  wire [2:0]state;
  wire \timer_val[10]_i_1_n_0 ;
  wire \timer_val[10]_i_2_n_0 ;
  wire \timer_val[23]_i_1_n_0 ;
  wire \timer_val[3]_i_1_n_0 ;
  wire \timer_val[4]_i_1_n_0 ;
  wire \timer_val[5]_i_1_n_0 ;
  wire \timer_val[6]_i_1_n_0 ;
  wire \timer_val[7]_i_1_n_0 ;
  wire \timer_val[8]_i_1_n_0 ;
  wire \timer_val[9]_i_1_n_0 ;

  LUT6 #(
    .INIT(64'h0200FFFF1E001E00)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(\FSM_sequential_state_reg[2]_0 [0]),
        .I4(out),
        .I5(\FSM_sequential_state_reg[2]_0 [1]),
        .O(\FSM_sequential_state_reg[0]_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFC15FC04)) 
    \FSM_sequential_state[0]_i_1__0 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(\FSM_sequential_state_reg[2]_0 [1]),
        .I3(state[0]),
        .I4(p_1_in),
        .I5(restart),
        .O(\FSM_sequential_state[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_state[0]_i_2 
       (.I0(pwm_1),
        .I1(pwm_0),
        .O(p_1_in));
  LUT5 #(
    .INIT(32'h0000FE10)) 
    \FSM_sequential_state[1]_i_1__0 
       (.I0(state[0]),
        .I1(\FSM_sequential_state_reg[2]_0 [1]),
        .I2(state[2]),
        .I3(state[1]),
        .I4(restart),
        .O(\FSM_sequential_state[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF00EE02)) 
    \FSM_sequential_state[2]_i_1__0 
       (.I0(state[0]),
        .I1(\FSM_sequential_state_reg[2]_0 [1]),
        .I2(\FSM_sequential_state_reg[2]_1 ),
        .I3(state[2]),
        .I4(state[1]),
        .I5(restart),
        .O(\FSM_sequential_state[2]_i_1__0_n_0 ));
  (* FSM_ENCODED_STATES = "STATE_LOADED_2:011,STATE_LOADED_3:010,STATE_LOADED_1:100,STATE_LOADED:000,STATE_START:001" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_sequential_state_reg[0] 
       (.C(clk_1_mhz),
        .CE(1'b1),
        .D(\FSM_sequential_state[0]_i_1__0_n_0 ),
        .Q(state[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "STATE_LOADED_2:011,STATE_LOADED_3:010,STATE_LOADED_1:100,STATE_LOADED:000,STATE_START:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(clk_1_mhz),
        .CE(1'b1),
        .D(\FSM_sequential_state[1]_i_1__0_n_0 ),
        .Q(state[1]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "STATE_LOADED_2:011,STATE_LOADED_3:010,STATE_LOADED_1:100,STATE_LOADED:000,STATE_START:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[2] 
       (.C(clk_1_mhz),
        .CE(1'b1),
        .D(\FSM_sequential_state[2]_i_1__0_n_0 ),
        .Q(state[2]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h8B8F8BB8)) 
    \data_reg[31]_i_1 
       (.I0(out),
        .I1(\FSM_sequential_state_reg[2]_0 [1]),
        .I2(state[2]),
        .I3(state[1]),
        .I4(state[0]),
        .O(data_valid_1_reg));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00021E1E)) 
    \data_reg[7]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(out),
        .I4(\FSM_sequential_state_reg[2]_0 [1]),
        .O(\FSM_sequential_state_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00010000)) 
    \load[22]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(pwm_0),
        .I4(pwm_1),
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
  LUT5 #(
    .INIT(32'h030A0330)) 
    \timer_val[10]_i_1 
       (.I0(\FSM_sequential_state_reg[2]_1 ),
        .I1(\FSM_sequential_state_reg[2]_0 [1]),
        .I2(state[2]),
        .I3(state[1]),
        .I4(state[0]),
        .O(\timer_val[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \timer_val[10]_i_2 
       (.I0(Q[7]),
        .I1(\FSM_sequential_state_reg[2]_1 ),
        .I2(state[2]),
        .I3(state[1]),
        .I4(state[0]),
        .I5(D[17]),
        .O(\timer_val[10]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \timer_val[23]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(\FSM_sequential_state_reg[2]_1 ),
        .O(\timer_val[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \timer_val[3]_i_1 
       (.I0(Q[0]),
        .I1(\FSM_sequential_state_reg[2]_1 ),
        .I2(state[2]),
        .I3(state[1]),
        .I4(state[0]),
        .I5(D[10]),
        .O(\timer_val[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \timer_val[4]_i_1 
       (.I0(Q[1]),
        .I1(\FSM_sequential_state_reg[2]_1 ),
        .I2(state[2]),
        .I3(state[1]),
        .I4(state[0]),
        .I5(D[11]),
        .O(\timer_val[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \timer_val[5]_i_1 
       (.I0(Q[2]),
        .I1(\FSM_sequential_state_reg[2]_1 ),
        .I2(state[2]),
        .I3(state[1]),
        .I4(state[0]),
        .I5(D[12]),
        .O(\timer_val[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \timer_val[6]_i_1 
       (.I0(Q[3]),
        .I1(\FSM_sequential_state_reg[2]_1 ),
        .I2(state[2]),
        .I3(state[1]),
        .I4(state[0]),
        .I5(D[13]),
        .O(\timer_val[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \timer_val[7]_i_1 
       (.I0(Q[4]),
        .I1(\FSM_sequential_state_reg[2]_1 ),
        .I2(state[2]),
        .I3(state[1]),
        .I4(state[0]),
        .I5(D[14]),
        .O(\timer_val[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \timer_val[8]_i_1 
       (.I0(Q[5]),
        .I1(\FSM_sequential_state_reg[2]_1 ),
        .I2(state[2]),
        .I3(state[1]),
        .I4(state[0]),
        .I5(D[15]),
        .O(\timer_val[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \timer_val[9]_i_1 
       (.I0(Q[6]),
        .I1(\FSM_sequential_state_reg[2]_1 ),
        .I2(state[2]),
        .I3(state[1]),
        .I4(state[0]),
        .I5(D[16]),
        .O(\timer_val[9]_i_1_n_0 ));
  FDRE \timer_val_reg[10] 
       (.C(clk_1_mhz),
        .CE(\timer_val[10]_i_1_n_0 ),
        .D(\timer_val[10]_i_2_n_0 ),
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
        .D(Q[0]),
        .Q(D[15]),
        .R(\timer_val[23]_i_1_n_0 ));
  FDRE \timer_val_reg[17] 
       (.C(clk_1_mhz),
        .CE(\timer_val[10]_i_1_n_0 ),
        .D(Q[1]),
        .Q(D[16]),
        .R(\timer_val[23]_i_1_n_0 ));
  FDRE \timer_val_reg[18] 
       (.C(clk_1_mhz),
        .CE(\timer_val[10]_i_1_n_0 ),
        .D(Q[2]),
        .Q(D[17]),
        .R(\timer_val[23]_i_1_n_0 ));
  FDRE \timer_val_reg[19] 
       (.C(clk_1_mhz),
        .CE(\timer_val[10]_i_1_n_0 ),
        .D(Q[3]),
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
        .D(Q[4]),
        .Q(D[19]),
        .R(\timer_val[23]_i_1_n_0 ));
  FDRE \timer_val_reg[21] 
       (.C(clk_1_mhz),
        .CE(\timer_val[10]_i_1_n_0 ),
        .D(Q[5]),
        .Q(D[20]),
        .R(\timer_val[23]_i_1_n_0 ));
  FDRE \timer_val_reg[22] 
       (.C(clk_1_mhz),
        .CE(\timer_val[10]_i_1_n_0 ),
        .D(Q[6]),
        .Q(D[21]),
        .R(\timer_val[23]_i_1_n_0 ));
  FDRE \timer_val_reg[23] 
       (.C(clk_1_mhz),
        .CE(\timer_val[10]_i_1_n_0 ),
        .D(Q[7]),
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
        .D(\timer_val[3]_i_1_n_0 ),
        .Q(D[2]),
        .R(1'b0));
  FDRE \timer_val_reg[4] 
       (.C(clk_1_mhz),
        .CE(\timer_val[10]_i_1_n_0 ),
        .D(\timer_val[4]_i_1_n_0 ),
        .Q(D[3]),
        .R(1'b0));
  FDRE \timer_val_reg[5] 
       (.C(clk_1_mhz),
        .CE(\timer_val[10]_i_1_n_0 ),
        .D(\timer_val[5]_i_1_n_0 ),
        .Q(D[4]),
        .R(1'b0));
  FDRE \timer_val_reg[6] 
       (.C(clk_1_mhz),
        .CE(\timer_val[10]_i_1_n_0 ),
        .D(\timer_val[6]_i_1_n_0 ),
        .Q(D[5]),
        .R(1'b0));
  FDRE \timer_val_reg[7] 
       (.C(clk_1_mhz),
        .CE(\timer_val[10]_i_1_n_0 ),
        .D(\timer_val[7]_i_1_n_0 ),
        .Q(D[6]),
        .R(1'b0));
  FDRE \timer_val_reg[8] 
       (.C(clk_1_mhz),
        .CE(\timer_val[10]_i_1_n_0 ),
        .D(\timer_val[8]_i_1_n_0 ),
        .Q(D[7]),
        .R(1'b0));
  FDRE \timer_val_reg[9] 
       (.C(clk_1_mhz),
        .CE(\timer_val[10]_i_1_n_0 ),
        .D(\timer_val[9]_i_1_n_0 ),
        .Q(D[8]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "tape_pwm" *) 
module design_1_tape_interface_0_0_tape_pwm
   (pwm,
    clk_1_mhz,
    motor_control,
    E,
    D);
  output pwm;
  input clk_1_mhz;
  input motor_control;
  input [0:0]E;
  input [22:0]D;

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
    .INIT(64'h0000000000000004)) 
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
       (.I0(timer_reg[2]),
        .I1(timer_reg[1]),
        .I2(timer_reg[4]),
        .I3(timer_reg[3]),
        .O(polarity_i_3_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    polarity_i_4
       (.I0(timer_reg[6]),
        .I1(timer_reg[5]),
        .I2(timer_reg[8]),
        .I3(timer_reg[7]),
        .O(polarity_i_4_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    polarity_i_5
       (.I0(timer_reg[12]),
        .I1(timer_reg[11]),
        .I2(timer_reg[10]),
        .I3(timer_reg[9]),
        .O(polarity_i_5_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    polarity_i_6
       (.I0(timer_reg[14]),
        .I1(timer_reg[13]),
        .I2(timer_reg[16]),
        .I3(timer_reg[15]),
        .O(polarity_i_6_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    polarity_i_7
       (.I0(timer_reg[23]),
        .I1(timer_reg[0]),
        .I2(timer_reg[22]),
        .I3(timer_reg[21]),
        .O(polarity_i_7_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    polarity_i_8
       (.I0(timer_reg[20]),
        .I1(timer_reg[19]),
        .I2(timer_reg[18]),
        .I3(timer_reg[17]),
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
    .INIT(4'hB)) 
    \timer[0]_i_1 
       (.I0(timer),
        .I1(motor_control),
        .O(\timer[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAA3)) 
    \timer[0]_i_10 
       (.I0(\load_reg_n_0_[0] ),
        .I1(timer_reg[0]),
        .I2(timer),
        .I3(motor_control),
        .O(\timer[0]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \timer[0]_i_3 
       (.I0(motor_control),
        .I1(timer),
        .O(\timer[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \timer[0]_i_4 
       (.I0(motor_control),
        .I1(timer),
        .O(\timer[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \timer[0]_i_5 
       (.I0(motor_control),
        .I1(timer),
        .O(\timer[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \timer[0]_i_6 
       (.I0(motor_control),
        .I1(timer),
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
  LUT2 #(
    .INIT(4'h1)) 
    \timer[12]_i_2 
       (.I0(motor_control),
        .I1(timer),
        .O(\timer[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \timer[12]_i_3 
       (.I0(motor_control),
        .I1(timer),
        .O(\timer[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \timer[12]_i_4 
       (.I0(motor_control),
        .I1(timer),
        .O(\timer[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \timer[12]_i_5 
       (.I0(motor_control),
        .I1(timer),
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
  LUT2 #(
    .INIT(4'h1)) 
    \timer[16]_i_2 
       (.I0(motor_control),
        .I1(timer),
        .O(\timer[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \timer[16]_i_3 
       (.I0(motor_control),
        .I1(timer),
        .O(\timer[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \timer[16]_i_4 
       (.I0(motor_control),
        .I1(timer),
        .O(\timer[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \timer[16]_i_5 
       (.I0(motor_control),
        .I1(timer),
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
  LUT2 #(
    .INIT(4'h1)) 
    \timer[20]_i_2 
       (.I0(motor_control),
        .I1(timer),
        .O(\timer[20]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \timer[20]_i_3 
       (.I0(motor_control),
        .I1(timer),
        .O(\timer[20]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \timer[20]_i_4 
       (.I0(motor_control),
        .I1(timer),
        .O(\timer[20]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \timer[20]_i_5 
       (.I0(timer),
        .I1(motor_control),
        .I2(timer_reg[23]),
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
  LUT2 #(
    .INIT(4'h1)) 
    \timer[4]_i_2 
       (.I0(motor_control),
        .I1(timer),
        .O(\timer[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \timer[4]_i_3 
       (.I0(motor_control),
        .I1(timer),
        .O(\timer[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \timer[4]_i_4 
       (.I0(motor_control),
        .I1(timer),
        .O(\timer[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \timer[4]_i_5 
       (.I0(motor_control),
        .I1(timer),
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
  LUT2 #(
    .INIT(4'h1)) 
    \timer[8]_i_2 
       (.I0(motor_control),
        .I1(timer),
        .O(\timer[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \timer[8]_i_3 
       (.I0(motor_control),
        .I1(timer),
        .O(\timer[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \timer[8]_i_4 
       (.I0(motor_control),
        .I1(timer),
        .O(\timer[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \timer[8]_i_5 
       (.I0(motor_control),
        .I1(timer),
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
    motor_control,
    ip2bus_otputs,
    restart,
    clk,
    clk_1_mhz,
    ip2bus_mstrd_d,
    reset);
  output pwm;
  output [29:0]ip2bus_mst_addr;
  output [1:0]ip2bus_inputs;
  input motor_control;
  input [1:0]ip2bus_otputs;
  input restart;
  input clk;
  input clk_1_mhz;
  input [31:0]ip2bus_mstrd_d;
  input reset;

  wire ack_byte_slice;
  wire [7:0]byte_data;
  wire byte_slice_n_1;
  wire byte_slice_n_10;
  wire byte_slice_n_11;
  wire clk;
  wire clk_1_mhz;
  wire [31:0]data_cap;
  wire data_valid_read_word;
  wire [1:0]ip2bus_inputs;
  wire [29:0]ip2bus_mst_addr;
  wire [31:0]ip2bus_mstrd_d;
  wire [1:0]ip2bus_otputs;
  wire load_timer;
  wire motor_control;
  wire [22:0]p_0_in;
  wire p_0_in_0;
  wire pwm;
  wire reset;
  wire restart;
  wire samp_assem_n_0;
  wire samp_assem_n_29;
  wire samp_assem_n_4;
  wire [2:0]state;

  design_1_tape_interface_0_0_byteslicer byte_slice
       (.D(samp_assem_n_29),
        .\FSM_onehot_state_reg[1]_0 ({byte_slice_n_10,byte_slice_n_11}),
        .Q(byte_data),
        .clk_1_mhz(clk_1_mhz),
        .\data_reg_reg[0]_0 (samp_assem_n_0),
        .\data_reg_reg[31]_0 (byte_slice_n_1),
        .\data_reg_reg[31]_1 (samp_assem_n_4),
        .\data_reg_reg[7]_0 (data_cap),
        .data_valid_read_word(data_valid_read_word),
        .in0(ack_byte_slice),
        .out(p_0_in_0),
        .restart(restart),
        .state(state));
  design_1_tape_interface_0_0_read_word r_word
       (.Q(data_cap),
        .clk(clk),
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
        .\FSM_sequential_state_reg[0]_0 (samp_assem_n_0),
        .\FSM_sequential_state_reg[0]_1 (samp_assem_n_29),
        .\FSM_sequential_state_reg[2]_0 ({byte_slice_n_10,byte_slice_n_11}),
        .\FSM_sequential_state_reg[2]_1 (byte_slice_n_1),
        .Q(byte_data),
        .clk_1_mhz(clk_1_mhz),
        .data_valid_1_reg(samp_assem_n_4),
        .out(p_0_in_0),
        .pwm(pwm),
        .restart(restart),
        .state(state));
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
