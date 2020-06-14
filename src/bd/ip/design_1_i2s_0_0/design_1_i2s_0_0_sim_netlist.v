// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Sun Jun 14 10:31:55 2020
// Host        : johan-Latitude-E5550 running 64-bit Ubuntu 16.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/johan/v20/c64fpga/src/bd/ip/design_1_i2s_0_0/design_1_i2s_0_0_sim_netlist.v
// Design      : design_1_i2s_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_i2s_0_0,i2s,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "i2s,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module design_1_i2s_0_0
   (clk,
    clk_1_mhz,
    clk_100_mhz,
    audio_in,
    clk_reset,
    clk_1_5_mhz,
    channel_enable,
    out_data,
    mute_en);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET clk_reset, FREQ_HZ 85400000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, INSERT_VIP 0" *) input clk;
  input clk_1_mhz;
  input clk_100_mhz;
  input [15:0]audio_in;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 clk_reset RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output clk_reset;
  output clk_1_5_mhz;
  output channel_enable;
  output out_data;
  output mute_en;

  wire \<const1> ;
  wire [15:0]audio_in;
  wire channel_enable;
  wire clk;
  wire clk_100_mhz;
  wire clk_1_5_mhz;
  wire clk_1_mhz;
  wire clk_reset;
  wire out_data;

  assign mute_en = \<const1> ;
  VCC VCC
       (.P(\<const1> ));
  design_1_i2s_0_0_i2s inst
       (.audio_in(audio_in),
        .bclk_int_reg_0(clk_1_5_mhz),
        .channel_enable(channel_enable),
        .clk(clk),
        .clk_100_mhz(clk_100_mhz),
        .clk_1_mhz(clk_1_mhz),
        .clk_reset(clk_reset),
        .out_data(out_data));
endmodule

(* ORIG_REF_NAME = "i2s" *) 
module design_1_i2s_0_0_i2s
   (bclk_int_reg_0,
    channel_enable,
    out_data,
    clk_reset,
    clk,
    clk_1_mhz,
    audio_in,
    clk_100_mhz);
  output bclk_int_reg_0;
  output channel_enable;
  output out_data;
  output clk_reset;
  input clk;
  input clk_1_mhz;
  input [15:0]audio_in;
  input clk_100_mhz;

  wire [15:0]audio_in;
  wire bclk_int_i_1_n_0;
  wire bclk_int_reg_0;
  wire channel_enable;
  wire [3:0]channel_enable_counter_reg;
  wire clk;
  wire clk_100_mhz;
  wire clk_1_mhz;
  wire [1:0]clk_div_counter;
  wire \clk_div_counter[0]_i_1_n_0 ;
  wire \clk_div_counter[1]_i_10_n_0 ;
  wire \clk_div_counter[1]_i_11_n_0 ;
  wire \clk_div_counter[1]_i_12_n_0 ;
  wire \clk_div_counter[1]_i_13_n_0 ;
  wire \clk_div_counter[1]_i_14_n_0 ;
  wire \clk_div_counter[1]_i_1_n_0 ;
  wire \clk_div_counter[1]_i_2_n_0 ;
  wire \clk_div_counter[1]_i_3_n_0 ;
  wire \clk_div_counter[1]_i_4_n_0 ;
  wire \clk_div_counter[1]_i_5_n_0 ;
  wire \clk_div_counter[1]_i_6_n_0 ;
  wire \clk_div_counter[1]_i_7_n_0 ;
  wire \clk_div_counter[1]_i_8_n_0 ;
  wire \clk_div_counter[1]_i_9_n_0 ;
  wire clk_reset;
  wire clk_reset_INST_0_i_1_n_0;
  wire clk_reset_INST_0_i_2_n_0;
  wire clk_reset_INST_0_i_3_n_0;
  wire clk_reset_INST_0_i_4_n_0;
  wire clk_reset_INST_0_i_5_n_0;
  wire clk_reset_INST_0_i_6_n_0;
  wire clk_reset_INST_0_i_7_n_0;
  wire clk_reset_INST_0_i_8_n_0;
  wire clk_reset_INST_0_i_9_n_0;
  wire \clk_reset_counter[0]_i_3_n_0 ;
  wire \clk_reset_counter[0]_i_4_n_0 ;
  wire \clk_reset_counter[0]_i_5_n_0 ;
  wire \clk_reset_counter[0]_i_6_n_0 ;
  wire \clk_reset_counter[0]_i_7_n_0 ;
  wire \clk_reset_counter[0]_i_8_n_0 ;
  wire \clk_reset_counter[0]_i_9_n_0 ;
  wire \clk_reset_counter[12]_i_2_n_0 ;
  wire \clk_reset_counter[12]_i_3_n_0 ;
  wire \clk_reset_counter[12]_i_4_n_0 ;
  wire \clk_reset_counter[12]_i_5_n_0 ;
  wire \clk_reset_counter[16]_i_2_n_0 ;
  wire \clk_reset_counter[16]_i_3_n_0 ;
  wire \clk_reset_counter[16]_i_4_n_0 ;
  wire \clk_reset_counter[16]_i_5_n_0 ;
  wire \clk_reset_counter[20]_i_2_n_0 ;
  wire \clk_reset_counter[20]_i_3_n_0 ;
  wire \clk_reset_counter[20]_i_4_n_0 ;
  wire \clk_reset_counter[20]_i_5_n_0 ;
  wire \clk_reset_counter[24]_i_2_n_0 ;
  wire \clk_reset_counter[24]_i_3_n_0 ;
  wire \clk_reset_counter[24]_i_4_n_0 ;
  wire \clk_reset_counter[24]_i_5_n_0 ;
  wire \clk_reset_counter[28]_i_2_n_0 ;
  wire \clk_reset_counter[28]_i_3_n_0 ;
  wire \clk_reset_counter[28]_i_4_n_0 ;
  wire \clk_reset_counter[28]_i_5_n_0 ;
  wire \clk_reset_counter[4]_i_2_n_0 ;
  wire \clk_reset_counter[4]_i_3_n_0 ;
  wire \clk_reset_counter[4]_i_4_n_0 ;
  wire \clk_reset_counter[4]_i_5_n_0 ;
  wire \clk_reset_counter[8]_i_2_n_0 ;
  wire \clk_reset_counter[8]_i_3_n_0 ;
  wire \clk_reset_counter[8]_i_4_n_0 ;
  wire \clk_reset_counter[8]_i_5_n_0 ;
  wire [31:0]clk_reset_counter_reg;
  wire \clk_reset_counter_reg[0]_i_2_n_0 ;
  wire \clk_reset_counter_reg[0]_i_2_n_1 ;
  wire \clk_reset_counter_reg[0]_i_2_n_2 ;
  wire \clk_reset_counter_reg[0]_i_2_n_3 ;
  wire \clk_reset_counter_reg[0]_i_2_n_4 ;
  wire \clk_reset_counter_reg[0]_i_2_n_5 ;
  wire \clk_reset_counter_reg[0]_i_2_n_6 ;
  wire \clk_reset_counter_reg[0]_i_2_n_7 ;
  wire \clk_reset_counter_reg[12]_i_1_n_0 ;
  wire \clk_reset_counter_reg[12]_i_1_n_1 ;
  wire \clk_reset_counter_reg[12]_i_1_n_2 ;
  wire \clk_reset_counter_reg[12]_i_1_n_3 ;
  wire \clk_reset_counter_reg[12]_i_1_n_4 ;
  wire \clk_reset_counter_reg[12]_i_1_n_5 ;
  wire \clk_reset_counter_reg[12]_i_1_n_6 ;
  wire \clk_reset_counter_reg[12]_i_1_n_7 ;
  wire \clk_reset_counter_reg[16]_i_1_n_0 ;
  wire \clk_reset_counter_reg[16]_i_1_n_1 ;
  wire \clk_reset_counter_reg[16]_i_1_n_2 ;
  wire \clk_reset_counter_reg[16]_i_1_n_3 ;
  wire \clk_reset_counter_reg[16]_i_1_n_4 ;
  wire \clk_reset_counter_reg[16]_i_1_n_5 ;
  wire \clk_reset_counter_reg[16]_i_1_n_6 ;
  wire \clk_reset_counter_reg[16]_i_1_n_7 ;
  wire \clk_reset_counter_reg[20]_i_1_n_0 ;
  wire \clk_reset_counter_reg[20]_i_1_n_1 ;
  wire \clk_reset_counter_reg[20]_i_1_n_2 ;
  wire \clk_reset_counter_reg[20]_i_1_n_3 ;
  wire \clk_reset_counter_reg[20]_i_1_n_4 ;
  wire \clk_reset_counter_reg[20]_i_1_n_5 ;
  wire \clk_reset_counter_reg[20]_i_1_n_6 ;
  wire \clk_reset_counter_reg[20]_i_1_n_7 ;
  wire \clk_reset_counter_reg[24]_i_1_n_0 ;
  wire \clk_reset_counter_reg[24]_i_1_n_1 ;
  wire \clk_reset_counter_reg[24]_i_1_n_2 ;
  wire \clk_reset_counter_reg[24]_i_1_n_3 ;
  wire \clk_reset_counter_reg[24]_i_1_n_4 ;
  wire \clk_reset_counter_reg[24]_i_1_n_5 ;
  wire \clk_reset_counter_reg[24]_i_1_n_6 ;
  wire \clk_reset_counter_reg[24]_i_1_n_7 ;
  wire \clk_reset_counter_reg[28]_i_1_n_1 ;
  wire \clk_reset_counter_reg[28]_i_1_n_2 ;
  wire \clk_reset_counter_reg[28]_i_1_n_3 ;
  wire \clk_reset_counter_reg[28]_i_1_n_4 ;
  wire \clk_reset_counter_reg[28]_i_1_n_5 ;
  wire \clk_reset_counter_reg[28]_i_1_n_6 ;
  wire \clk_reset_counter_reg[28]_i_1_n_7 ;
  wire \clk_reset_counter_reg[4]_i_1_n_0 ;
  wire \clk_reset_counter_reg[4]_i_1_n_1 ;
  wire \clk_reset_counter_reg[4]_i_1_n_2 ;
  wire \clk_reset_counter_reg[4]_i_1_n_3 ;
  wire \clk_reset_counter_reg[4]_i_1_n_4 ;
  wire \clk_reset_counter_reg[4]_i_1_n_5 ;
  wire \clk_reset_counter_reg[4]_i_1_n_6 ;
  wire \clk_reset_counter_reg[4]_i_1_n_7 ;
  wire \clk_reset_counter_reg[8]_i_1_n_0 ;
  wire \clk_reset_counter_reg[8]_i_1_n_1 ;
  wire \clk_reset_counter_reg[8]_i_1_n_2 ;
  wire \clk_reset_counter_reg[8]_i_1_n_3 ;
  wire \clk_reset_counter_reg[8]_i_1_n_4 ;
  wire \clk_reset_counter_reg[8]_i_1_n_5 ;
  wire \clk_reset_counter_reg[8]_i_1_n_6 ;
  wire \clk_reset_counter_reg[8]_i_1_n_7 ;
  wire \data_out_enable[0]_i_1_n_0 ;
  wire \data_out_enable[0]_i_3_n_0 ;
  wire \data_out_enable[0]_i_4_n_0 ;
  wire \data_out_enable[0]_i_5_n_0 ;
  wire \data_out_enable[0]_i_6_n_0 ;
  wire \data_out_enable[0]_i_7_n_0 ;
  wire \data_out_enable[0]_i_8_n_0 ;
  wire [30:0]data_out_enable_reg;
  wire \data_out_enable_reg[0]_i_2_n_0 ;
  wire \data_out_enable_reg[0]_i_2_n_1 ;
  wire \data_out_enable_reg[0]_i_2_n_2 ;
  wire \data_out_enable_reg[0]_i_2_n_3 ;
  wire \data_out_enable_reg[0]_i_2_n_4 ;
  wire \data_out_enable_reg[0]_i_2_n_5 ;
  wire \data_out_enable_reg[0]_i_2_n_6 ;
  wire \data_out_enable_reg[0]_i_2_n_7 ;
  wire \data_out_enable_reg[12]_i_1_n_0 ;
  wire \data_out_enable_reg[12]_i_1_n_1 ;
  wire \data_out_enable_reg[12]_i_1_n_2 ;
  wire \data_out_enable_reg[12]_i_1_n_3 ;
  wire \data_out_enable_reg[12]_i_1_n_4 ;
  wire \data_out_enable_reg[12]_i_1_n_5 ;
  wire \data_out_enable_reg[12]_i_1_n_6 ;
  wire \data_out_enable_reg[12]_i_1_n_7 ;
  wire \data_out_enable_reg[16]_i_1_n_0 ;
  wire \data_out_enable_reg[16]_i_1_n_1 ;
  wire \data_out_enable_reg[16]_i_1_n_2 ;
  wire \data_out_enable_reg[16]_i_1_n_3 ;
  wire \data_out_enable_reg[16]_i_1_n_4 ;
  wire \data_out_enable_reg[16]_i_1_n_5 ;
  wire \data_out_enable_reg[16]_i_1_n_6 ;
  wire \data_out_enable_reg[16]_i_1_n_7 ;
  wire \data_out_enable_reg[20]_i_1_n_0 ;
  wire \data_out_enable_reg[20]_i_1_n_1 ;
  wire \data_out_enable_reg[20]_i_1_n_2 ;
  wire \data_out_enable_reg[20]_i_1_n_3 ;
  wire \data_out_enable_reg[20]_i_1_n_4 ;
  wire \data_out_enable_reg[20]_i_1_n_5 ;
  wire \data_out_enable_reg[20]_i_1_n_6 ;
  wire \data_out_enable_reg[20]_i_1_n_7 ;
  wire \data_out_enable_reg[24]_i_1_n_0 ;
  wire \data_out_enable_reg[24]_i_1_n_1 ;
  wire \data_out_enable_reg[24]_i_1_n_2 ;
  wire \data_out_enable_reg[24]_i_1_n_3 ;
  wire \data_out_enable_reg[24]_i_1_n_4 ;
  wire \data_out_enable_reg[24]_i_1_n_5 ;
  wire \data_out_enable_reg[24]_i_1_n_6 ;
  wire \data_out_enable_reg[24]_i_1_n_7 ;
  wire \data_out_enable_reg[28]_i_1_n_2 ;
  wire \data_out_enable_reg[28]_i_1_n_3 ;
  wire \data_out_enable_reg[28]_i_1_n_5 ;
  wire \data_out_enable_reg[28]_i_1_n_6 ;
  wire \data_out_enable_reg[28]_i_1_n_7 ;
  wire \data_out_enable_reg[4]_i_1_n_0 ;
  wire \data_out_enable_reg[4]_i_1_n_1 ;
  wire \data_out_enable_reg[4]_i_1_n_2 ;
  wire \data_out_enable_reg[4]_i_1_n_3 ;
  wire \data_out_enable_reg[4]_i_1_n_4 ;
  wire \data_out_enable_reg[4]_i_1_n_5 ;
  wire \data_out_enable_reg[4]_i_1_n_6 ;
  wire \data_out_enable_reg[4]_i_1_n_7 ;
  wire \data_out_enable_reg[8]_i_1_n_0 ;
  wire \data_out_enable_reg[8]_i_1_n_1 ;
  wire \data_out_enable_reg[8]_i_1_n_2 ;
  wire \data_out_enable_reg[8]_i_1_n_3 ;
  wire \data_out_enable_reg[8]_i_1_n_4 ;
  wire \data_out_enable_reg[8]_i_1_n_5 ;
  wire \data_out_enable_reg[8]_i_1_n_6 ;
  wire \data_out_enable_reg[8]_i_1_n_7 ;
  wire [15:0]data_val;
  wire data_val0;
  wire out_data;
  wire [3:0]p_0_in;
  wire prclk_int_i_1_n_0;
  wire sel;
  wire [31:31]shift_reg;
  wire \shift_reg[0]_i_1_n_0 ;
  wire \shift_reg[0]_i_2_n_0 ;
  wire \shift_reg[10]_i_1_n_0 ;
  wire \shift_reg[11]_i_1_n_0 ;
  wire \shift_reg[12]_i_1_n_0 ;
  wire \shift_reg[13]_i_1_n_0 ;
  wire \shift_reg[14]_i_1_n_0 ;
  wire \shift_reg[15]_i_1_n_0 ;
  wire \shift_reg[16]_i_1_n_0 ;
  wire \shift_reg[17]_i_1_n_0 ;
  wire \shift_reg[18]_i_1_n_0 ;
  wire \shift_reg[19]_i_1_n_0 ;
  wire \shift_reg[1]_i_1_n_0 ;
  wire \shift_reg[20]_i_1_n_0 ;
  wire \shift_reg[21]_i_1_n_0 ;
  wire \shift_reg[22]_i_1_n_0 ;
  wire \shift_reg[23]_i_1_n_0 ;
  wire \shift_reg[24]_i_1_n_0 ;
  wire \shift_reg[25]_i_1_n_0 ;
  wire \shift_reg[26]_i_1_n_0 ;
  wire \shift_reg[27]_i_1_n_0 ;
  wire \shift_reg[28]_i_1_n_0 ;
  wire \shift_reg[29]_i_1_n_0 ;
  wire \shift_reg[2]_i_1_n_0 ;
  wire \shift_reg[30]_i_1_n_0 ;
  wire \shift_reg[31]_i_2_n_0 ;
  wire \shift_reg[31]_i_3_n_0 ;
  wire \shift_reg[31]_i_4_n_0 ;
  wire \shift_reg[3]_i_1_n_0 ;
  wire \shift_reg[4]_i_1_n_0 ;
  wire \shift_reg[5]_i_1_n_0 ;
  wire \shift_reg[6]_i_1_n_0 ;
  wire \shift_reg[7]_i_1_n_0 ;
  wire \shift_reg[8]_i_1_n_0 ;
  wire \shift_reg[9]_i_1_n_0 ;
  wire \shift_reg_reg_n_0_[0] ;
  wire \shift_reg_reg_n_0_[10] ;
  wire \shift_reg_reg_n_0_[11] ;
  wire \shift_reg_reg_n_0_[12] ;
  wire \shift_reg_reg_n_0_[13] ;
  wire \shift_reg_reg_n_0_[14] ;
  wire \shift_reg_reg_n_0_[15] ;
  wire \shift_reg_reg_n_0_[16] ;
  wire \shift_reg_reg_n_0_[17] ;
  wire \shift_reg_reg_n_0_[18] ;
  wire \shift_reg_reg_n_0_[19] ;
  wire \shift_reg_reg_n_0_[1] ;
  wire \shift_reg_reg_n_0_[20] ;
  wire \shift_reg_reg_n_0_[21] ;
  wire \shift_reg_reg_n_0_[22] ;
  wire \shift_reg_reg_n_0_[23] ;
  wire \shift_reg_reg_n_0_[24] ;
  wire \shift_reg_reg_n_0_[25] ;
  wire \shift_reg_reg_n_0_[26] ;
  wire \shift_reg_reg_n_0_[27] ;
  wire \shift_reg_reg_n_0_[28] ;
  wire \shift_reg_reg_n_0_[29] ;
  wire \shift_reg_reg_n_0_[2] ;
  wire \shift_reg_reg_n_0_[30] ;
  wire \shift_reg_reg_n_0_[3] ;
  wire \shift_reg_reg_n_0_[4] ;
  wire \shift_reg_reg_n_0_[5] ;
  wire \shift_reg_reg_n_0_[6] ;
  wire \shift_reg_reg_n_0_[7] ;
  wire \shift_reg_reg_n_0_[8] ;
  wire \shift_reg_reg_n_0_[9] ;
  (* async_reg = "true" *) wire sig_48_khz_0;
  (* async_reg = "true" *) wire sig_48_khz_1;
  (* async_reg = "true" *) wire sig_48_khz_2;
  wire [3:3]\NLW_clk_reset_counter_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_data_out_enable_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_data_out_enable_reg[28]_i_1_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h78)) 
    bclk_int_i_1
       (.I0(clk_div_counter[1]),
        .I1(clk_div_counter[0]),
        .I2(bclk_int_reg_0),
        .O(bclk_int_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    bclk_int_reg
       (.C(clk),
        .CE(1'b1),
        .D(bclk_int_i_1_n_0),
        .Q(bclk_int_reg_0),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \channel_enable_counter[0]_i_1 
       (.I0(channel_enable_counter_reg[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \channel_enable_counter[1]_i_1 
       (.I0(channel_enable_counter_reg[0]),
        .I1(channel_enable_counter_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \channel_enable_counter[2]_i_1 
       (.I0(channel_enable_counter_reg[1]),
        .I1(channel_enable_counter_reg[0]),
        .I2(channel_enable_counter_reg[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \channel_enable_counter[3]_i_1 
       (.I0(channel_enable_counter_reg[2]),
        .I1(channel_enable_counter_reg[0]),
        .I2(channel_enable_counter_reg[1]),
        .I3(channel_enable_counter_reg[3]),
        .O(p_0_in[3]));
  FDRE #(
    .INIT(1'b0)) 
    \channel_enable_counter_reg[0] 
       (.C(clk),
        .CE(shift_reg),
        .D(p_0_in[0]),
        .Q(channel_enable_counter_reg[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \channel_enable_counter_reg[1] 
       (.C(clk),
        .CE(shift_reg),
        .D(p_0_in[1]),
        .Q(channel_enable_counter_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \channel_enable_counter_reg[2] 
       (.C(clk),
        .CE(shift_reg),
        .D(p_0_in[2]),
        .Q(channel_enable_counter_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \channel_enable_counter_reg[3] 
       (.C(clk),
        .CE(shift_reg),
        .D(p_0_in[3]),
        .Q(channel_enable_counter_reg[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \clk_div_counter[0]_i_1 
       (.I0(\clk_div_counter[1]_i_2_n_0 ),
        .I1(clk_div_counter[0]),
        .O(\clk_div_counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \clk_div_counter[1]_i_1 
       (.I0(clk_div_counter[0]),
        .I1(\clk_div_counter[1]_i_2_n_0 ),
        .I2(clk_div_counter[1]),
        .O(\clk_div_counter[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \clk_div_counter[1]_i_10 
       (.I0(data_out_enable_reg[14]),
        .I1(data_out_enable_reg[15]),
        .O(\clk_div_counter[1]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \clk_div_counter[1]_i_11 
       (.I0(data_out_enable_reg[12]),
        .I1(data_out_enable_reg[11]),
        .I2(data_out_enable_reg[10]),
        .O(\clk_div_counter[1]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \clk_div_counter[1]_i_12 
       (.I0(data_out_enable_reg[9]),
        .I1(data_out_enable_reg[8]),
        .I2(data_out_enable_reg[7]),
        .O(\clk_div_counter[1]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \clk_div_counter[1]_i_13 
       (.I0(data_out_enable_reg[5]),
        .I1(data_out_enable_reg[6]),
        .O(\clk_div_counter[1]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \clk_div_counter[1]_i_14 
       (.I0(data_out_enable_reg[0]),
        .I1(data_out_enable_reg[3]),
        .I2(data_out_enable_reg[4]),
        .I3(data_out_enable_reg[2]),
        .I4(data_out_enable_reg[1]),
        .O(\clk_div_counter[1]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFEFEFEFE)) 
    \clk_div_counter[1]_i_2 
       (.I0(\clk_div_counter[1]_i_3_n_0 ),
        .I1(\clk_div_counter[1]_i_4_n_0 ),
        .I2(\clk_div_counter[1]_i_5_n_0 ),
        .I3(\clk_div_counter[1]_i_6_n_0 ),
        .I4(data_out_enable_reg[16]),
        .I5(\clk_div_counter[1]_i_7_n_0 ),
        .O(\clk_div_counter[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFCFCFEFEFCFC)) 
    \clk_div_counter[1]_i_3 
       (.I0(data_out_enable_reg[21]),
        .I1(\data_out_enable[0]_i_5_n_0 ),
        .I2(data_out_enable_reg[30]),
        .I3(data_out_enable_reg[18]),
        .I4(\clk_div_counter[1]_i_8_n_0 ),
        .I5(data_out_enable_reg[20]),
        .O(\clk_div_counter[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \clk_div_counter[1]_i_4 
       (.I0(data_out_enable_reg[19]),
        .I1(\clk_div_counter[1]_i_9_n_0 ),
        .O(\clk_div_counter[1]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \clk_div_counter[1]_i_5 
       (.I0(data_out_enable_reg[26]),
        .I1(data_out_enable_reg[27]),
        .I2(data_out_enable_reg[25]),
        .I3(data_out_enable_reg[24]),
        .O(\clk_div_counter[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A888A888A888)) 
    \clk_div_counter[1]_i_6 
       (.I0(\clk_div_counter[1]_i_10_n_0 ),
        .I1(data_out_enable_reg[13]),
        .I2(\clk_div_counter[1]_i_11_n_0 ),
        .I3(\clk_div_counter[1]_i_12_n_0 ),
        .I4(\clk_div_counter[1]_i_13_n_0 ),
        .I5(\clk_div_counter[1]_i_14_n_0 ),
        .O(\clk_div_counter[1]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \clk_div_counter[1]_i_7 
       (.I0(\clk_div_counter[1]_i_9_n_0 ),
        .I1(data_out_enable_reg[17]),
        .O(\clk_div_counter[1]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \clk_div_counter[1]_i_8 
       (.I0(data_out_enable_reg[26]),
        .I1(data_out_enable_reg[27]),
        .I2(data_out_enable_reg[25]),
        .I3(data_out_enable_reg[23]),
        .I4(data_out_enable_reg[22]),
        .O(\clk_div_counter[1]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \clk_div_counter[1]_i_9 
       (.I0(data_out_enable_reg[22]),
        .I1(data_out_enable_reg[23]),
        .I2(data_out_enable_reg[25]),
        .I3(data_out_enable_reg[27]),
        .I4(data_out_enable_reg[26]),
        .I5(data_out_enable_reg[20]),
        .O(\clk_div_counter[1]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_counter_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\clk_div_counter[0]_i_1_n_0 ),
        .Q(clk_div_counter[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_counter_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\clk_div_counter[1]_i_1_n_0 ),
        .Q(clk_div_counter[1]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hECEEEEEEECEEECEE)) 
    clk_reset_INST_0
       (.I0(clk_reset_counter_reg[21]),
        .I1(clk_reset_INST_0_i_1_n_0),
        .I2(clk_reset_counter_reg[20]),
        .I3(clk_reset_INST_0_i_2_n_0),
        .I4(clk_reset_INST_0_i_3_n_0),
        .I5(clk_reset_INST_0_i_4_n_0),
        .O(clk_reset));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    clk_reset_INST_0_i_1
       (.I0(clk_reset_counter_reg[24]),
        .I1(clk_reset_counter_reg[23]),
        .I2(clk_reset_counter_reg[22]),
        .I3(clk_reset_INST_0_i_5_n_0),
        .I4(clk_reset_INST_0_i_6_n_0),
        .O(clk_reset_INST_0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    clk_reset_INST_0_i_2
       (.I0(clk_reset_counter_reg[18]),
        .I1(clk_reset_counter_reg[19]),
        .I2(clk_reset_counter_reg[17]),
        .O(clk_reset_INST_0_i_2_n_0));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    clk_reset_INST_0_i_3
       (.I0(clk_reset_counter_reg[18]),
        .I1(clk_reset_counter_reg[19]),
        .I2(clk_reset_counter_reg[15]),
        .I3(clk_reset_counter_reg[16]),
        .I4(clk_reset_counter_reg[14]),
        .O(clk_reset_INST_0_i_3_n_0));
  LUT6 #(
    .INIT(64'hEEAAAAAAFEAAAAAA)) 
    clk_reset_INST_0_i_4
       (.I0(clk_reset_INST_0_i_7_n_0),
        .I1(clk_reset_counter_reg[8]),
        .I2(clk_reset_counter_reg[7]),
        .I3(clk_reset_counter_reg[9]),
        .I4(clk_reset_counter_reg[10]),
        .I5(clk_reset_INST_0_i_8_n_0),
        .O(clk_reset_INST_0_i_4_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    clk_reset_INST_0_i_5
       (.I0(clk_reset_counter_reg[31]),
        .I1(clk_reset_counter_reg[29]),
        .I2(clk_reset_counter_reg[30]),
        .O(clk_reset_INST_0_i_5_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    clk_reset_INST_0_i_6
       (.I0(clk_reset_counter_reg[27]),
        .I1(clk_reset_counter_reg[28]),
        .I2(clk_reset_counter_reg[25]),
        .I3(clk_reset_counter_reg[26]),
        .O(clk_reset_INST_0_i_6_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    clk_reset_INST_0_i_7
       (.I0(clk_reset_counter_reg[11]),
        .I1(clk_reset_counter_reg[12]),
        .I2(clk_reset_counter_reg[13]),
        .O(clk_reset_INST_0_i_7_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    clk_reset_INST_0_i_8
       (.I0(clk_reset_INST_0_i_9_n_0),
        .I1(clk_reset_counter_reg[6]),
        .O(clk_reset_INST_0_i_8_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    clk_reset_INST_0_i_9
       (.I0(clk_reset_counter_reg[2]),
        .I1(clk_reset_counter_reg[3]),
        .I2(clk_reset_counter_reg[4]),
        .I3(clk_reset_counter_reg[1]),
        .I4(clk_reset_counter_reg[5]),
        .I5(clk_reset_counter_reg[0]),
        .O(clk_reset_INST_0_i_9_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF4544)) 
    \clk_reset_counter[0]_i_1 
       (.I0(\clk_reset_counter[0]_i_3_n_0 ),
        .I1(clk_reset_counter_reg[15]),
        .I2(\clk_reset_counter[0]_i_4_n_0 ),
        .I3(clk_reset_counter_reg[14]),
        .I4(\clk_reset_counter[0]_i_5_n_0 ),
        .I5(clk_reset_counter_reg[21]),
        .O(sel));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \clk_reset_counter[0]_i_3 
       (.I0(clk_reset_counter_reg[17]),
        .I1(clk_reset_counter_reg[19]),
        .I2(clk_reset_counter_reg[18]),
        .I3(clk_reset_counter_reg[16]),
        .O(\clk_reset_counter[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000555D)) 
    \clk_reset_counter[0]_i_4 
       (.I0(clk_reset_counter_reg[9]),
        .I1(clk_reset_INST_0_i_8_n_0),
        .I2(clk_reset_counter_reg[8]),
        .I3(clk_reset_counter_reg[7]),
        .I4(clk_reset_INST_0_i_7_n_0),
        .I5(clk_reset_counter_reg[10]),
        .O(\clk_reset_counter[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \clk_reset_counter[0]_i_5 
       (.I0(clk_reset_counter_reg[20]),
        .I1(clk_reset_INST_0_i_1_n_0),
        .O(\clk_reset_counter[0]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \clk_reset_counter[0]_i_6 
       (.I0(clk_reset_counter_reg[3]),
        .O(\clk_reset_counter[0]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \clk_reset_counter[0]_i_7 
       (.I0(clk_reset_counter_reg[2]),
        .O(\clk_reset_counter[0]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \clk_reset_counter[0]_i_8 
       (.I0(clk_reset_counter_reg[1]),
        .O(\clk_reset_counter[0]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \clk_reset_counter[0]_i_9 
       (.I0(clk_reset_counter_reg[0]),
        .O(\clk_reset_counter[0]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \clk_reset_counter[12]_i_2 
       (.I0(clk_reset_counter_reg[15]),
        .O(\clk_reset_counter[12]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \clk_reset_counter[12]_i_3 
       (.I0(clk_reset_counter_reg[14]),
        .O(\clk_reset_counter[12]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \clk_reset_counter[12]_i_4 
       (.I0(clk_reset_counter_reg[13]),
        .O(\clk_reset_counter[12]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \clk_reset_counter[12]_i_5 
       (.I0(clk_reset_counter_reg[12]),
        .O(\clk_reset_counter[12]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \clk_reset_counter[16]_i_2 
       (.I0(clk_reset_counter_reg[19]),
        .O(\clk_reset_counter[16]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \clk_reset_counter[16]_i_3 
       (.I0(clk_reset_counter_reg[18]),
        .O(\clk_reset_counter[16]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \clk_reset_counter[16]_i_4 
       (.I0(clk_reset_counter_reg[17]),
        .O(\clk_reset_counter[16]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \clk_reset_counter[16]_i_5 
       (.I0(clk_reset_counter_reg[16]),
        .O(\clk_reset_counter[16]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \clk_reset_counter[20]_i_2 
       (.I0(clk_reset_counter_reg[23]),
        .O(\clk_reset_counter[20]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \clk_reset_counter[20]_i_3 
       (.I0(clk_reset_counter_reg[22]),
        .O(\clk_reset_counter[20]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \clk_reset_counter[20]_i_4 
       (.I0(clk_reset_counter_reg[21]),
        .O(\clk_reset_counter[20]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \clk_reset_counter[20]_i_5 
       (.I0(clk_reset_counter_reg[20]),
        .O(\clk_reset_counter[20]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \clk_reset_counter[24]_i_2 
       (.I0(clk_reset_counter_reg[27]),
        .O(\clk_reset_counter[24]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \clk_reset_counter[24]_i_3 
       (.I0(clk_reset_counter_reg[26]),
        .O(\clk_reset_counter[24]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \clk_reset_counter[24]_i_4 
       (.I0(clk_reset_counter_reg[25]),
        .O(\clk_reset_counter[24]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \clk_reset_counter[24]_i_5 
       (.I0(clk_reset_counter_reg[24]),
        .O(\clk_reset_counter[24]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \clk_reset_counter[28]_i_2 
       (.I0(clk_reset_counter_reg[31]),
        .O(\clk_reset_counter[28]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \clk_reset_counter[28]_i_3 
       (.I0(clk_reset_counter_reg[30]),
        .O(\clk_reset_counter[28]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \clk_reset_counter[28]_i_4 
       (.I0(clk_reset_counter_reg[29]),
        .O(\clk_reset_counter[28]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \clk_reset_counter[28]_i_5 
       (.I0(clk_reset_counter_reg[28]),
        .O(\clk_reset_counter[28]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \clk_reset_counter[4]_i_2 
       (.I0(clk_reset_counter_reg[7]),
        .O(\clk_reset_counter[4]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \clk_reset_counter[4]_i_3 
       (.I0(clk_reset_counter_reg[6]),
        .O(\clk_reset_counter[4]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \clk_reset_counter[4]_i_4 
       (.I0(clk_reset_counter_reg[5]),
        .O(\clk_reset_counter[4]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \clk_reset_counter[4]_i_5 
       (.I0(clk_reset_counter_reg[4]),
        .O(\clk_reset_counter[4]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \clk_reset_counter[8]_i_2 
       (.I0(clk_reset_counter_reg[11]),
        .O(\clk_reset_counter[8]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \clk_reset_counter[8]_i_3 
       (.I0(clk_reset_counter_reg[10]),
        .O(\clk_reset_counter[8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \clk_reset_counter[8]_i_4 
       (.I0(clk_reset_counter_reg[9]),
        .O(\clk_reset_counter[8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \clk_reset_counter[8]_i_5 
       (.I0(clk_reset_counter_reg[8]),
        .O(\clk_reset_counter[8]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_reset_counter_reg[0] 
       (.C(clk_100_mhz),
        .CE(sel),
        .D(\clk_reset_counter_reg[0]_i_2_n_7 ),
        .Q(clk_reset_counter_reg[0]),
        .R(1'b0));
  CARRY4 \clk_reset_counter_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\clk_reset_counter_reg[0]_i_2_n_0 ,\clk_reset_counter_reg[0]_i_2_n_1 ,\clk_reset_counter_reg[0]_i_2_n_2 ,\clk_reset_counter_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\clk_reset_counter_reg[0]_i_2_n_4 ,\clk_reset_counter_reg[0]_i_2_n_5 ,\clk_reset_counter_reg[0]_i_2_n_6 ,\clk_reset_counter_reg[0]_i_2_n_7 }),
        .S({\clk_reset_counter[0]_i_6_n_0 ,\clk_reset_counter[0]_i_7_n_0 ,\clk_reset_counter[0]_i_8_n_0 ,\clk_reset_counter[0]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \clk_reset_counter_reg[10] 
       (.C(clk_100_mhz),
        .CE(sel),
        .D(\clk_reset_counter_reg[8]_i_1_n_5 ),
        .Q(clk_reset_counter_reg[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_reset_counter_reg[11] 
       (.C(clk_100_mhz),
        .CE(sel),
        .D(\clk_reset_counter_reg[8]_i_1_n_4 ),
        .Q(clk_reset_counter_reg[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_reset_counter_reg[12] 
       (.C(clk_100_mhz),
        .CE(sel),
        .D(\clk_reset_counter_reg[12]_i_1_n_7 ),
        .Q(clk_reset_counter_reg[12]),
        .R(1'b0));
  CARRY4 \clk_reset_counter_reg[12]_i_1 
       (.CI(\clk_reset_counter_reg[8]_i_1_n_0 ),
        .CO({\clk_reset_counter_reg[12]_i_1_n_0 ,\clk_reset_counter_reg[12]_i_1_n_1 ,\clk_reset_counter_reg[12]_i_1_n_2 ,\clk_reset_counter_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\clk_reset_counter_reg[12]_i_1_n_4 ,\clk_reset_counter_reg[12]_i_1_n_5 ,\clk_reset_counter_reg[12]_i_1_n_6 ,\clk_reset_counter_reg[12]_i_1_n_7 }),
        .S({\clk_reset_counter[12]_i_2_n_0 ,\clk_reset_counter[12]_i_3_n_0 ,\clk_reset_counter[12]_i_4_n_0 ,\clk_reset_counter[12]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b1)) 
    \clk_reset_counter_reg[13] 
       (.C(clk_100_mhz),
        .CE(sel),
        .D(\clk_reset_counter_reg[12]_i_1_n_6 ),
        .Q(clk_reset_counter_reg[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \clk_reset_counter_reg[14] 
       (.C(clk_100_mhz),
        .CE(sel),
        .D(\clk_reset_counter_reg[12]_i_1_n_5 ),
        .Q(clk_reset_counter_reg[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \clk_reset_counter_reg[15] 
       (.C(clk_100_mhz),
        .CE(sel),
        .D(\clk_reset_counter_reg[12]_i_1_n_4 ),
        .Q(clk_reset_counter_reg[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \clk_reset_counter_reg[16] 
       (.C(clk_100_mhz),
        .CE(sel),
        .D(\clk_reset_counter_reg[16]_i_1_n_7 ),
        .Q(clk_reset_counter_reg[16]),
        .R(1'b0));
  CARRY4 \clk_reset_counter_reg[16]_i_1 
       (.CI(\clk_reset_counter_reg[12]_i_1_n_0 ),
        .CO({\clk_reset_counter_reg[16]_i_1_n_0 ,\clk_reset_counter_reg[16]_i_1_n_1 ,\clk_reset_counter_reg[16]_i_1_n_2 ,\clk_reset_counter_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\clk_reset_counter_reg[16]_i_1_n_4 ,\clk_reset_counter_reg[16]_i_1_n_5 ,\clk_reset_counter_reg[16]_i_1_n_6 ,\clk_reset_counter_reg[16]_i_1_n_7 }),
        .S({\clk_reset_counter[16]_i_2_n_0 ,\clk_reset_counter[16]_i_3_n_0 ,\clk_reset_counter[16]_i_4_n_0 ,\clk_reset_counter[16]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \clk_reset_counter_reg[17] 
       (.C(clk_100_mhz),
        .CE(sel),
        .D(\clk_reset_counter_reg[16]_i_1_n_6 ),
        .Q(clk_reset_counter_reg[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \clk_reset_counter_reg[18] 
       (.C(clk_100_mhz),
        .CE(sel),
        .D(\clk_reset_counter_reg[16]_i_1_n_5 ),
        .Q(clk_reset_counter_reg[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_reset_counter_reg[19] 
       (.C(clk_100_mhz),
        .CE(sel),
        .D(\clk_reset_counter_reg[16]_i_1_n_4 ),
        .Q(clk_reset_counter_reg[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_reset_counter_reg[1] 
       (.C(clk_100_mhz),
        .CE(sel),
        .D(\clk_reset_counter_reg[0]_i_2_n_6 ),
        .Q(clk_reset_counter_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \clk_reset_counter_reg[20] 
       (.C(clk_100_mhz),
        .CE(sel),
        .D(\clk_reset_counter_reg[20]_i_1_n_7 ),
        .Q(clk_reset_counter_reg[20]),
        .R(1'b0));
  CARRY4 \clk_reset_counter_reg[20]_i_1 
       (.CI(\clk_reset_counter_reg[16]_i_1_n_0 ),
        .CO({\clk_reset_counter_reg[20]_i_1_n_0 ,\clk_reset_counter_reg[20]_i_1_n_1 ,\clk_reset_counter_reg[20]_i_1_n_2 ,\clk_reset_counter_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\clk_reset_counter_reg[20]_i_1_n_4 ,\clk_reset_counter_reg[20]_i_1_n_5 ,\clk_reset_counter_reg[20]_i_1_n_6 ,\clk_reset_counter_reg[20]_i_1_n_7 }),
        .S({\clk_reset_counter[20]_i_2_n_0 ,\clk_reset_counter[20]_i_3_n_0 ,\clk_reset_counter[20]_i_4_n_0 ,\clk_reset_counter[20]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b1)) 
    \clk_reset_counter_reg[21] 
       (.C(clk_100_mhz),
        .CE(sel),
        .D(\clk_reset_counter_reg[20]_i_1_n_6 ),
        .Q(clk_reset_counter_reg[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \clk_reset_counter_reg[22] 
       (.C(clk_100_mhz),
        .CE(sel),
        .D(\clk_reset_counter_reg[20]_i_1_n_5 ),
        .Q(clk_reset_counter_reg[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \clk_reset_counter_reg[23] 
       (.C(clk_100_mhz),
        .CE(sel),
        .D(\clk_reset_counter_reg[20]_i_1_n_4 ),
        .Q(clk_reset_counter_reg[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \clk_reset_counter_reg[24] 
       (.C(clk_100_mhz),
        .CE(sel),
        .D(\clk_reset_counter_reg[24]_i_1_n_7 ),
        .Q(clk_reset_counter_reg[24]),
        .R(1'b0));
  CARRY4 \clk_reset_counter_reg[24]_i_1 
       (.CI(\clk_reset_counter_reg[20]_i_1_n_0 ),
        .CO({\clk_reset_counter_reg[24]_i_1_n_0 ,\clk_reset_counter_reg[24]_i_1_n_1 ,\clk_reset_counter_reg[24]_i_1_n_2 ,\clk_reset_counter_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\clk_reset_counter_reg[24]_i_1_n_4 ,\clk_reset_counter_reg[24]_i_1_n_5 ,\clk_reset_counter_reg[24]_i_1_n_6 ,\clk_reset_counter_reg[24]_i_1_n_7 }),
        .S({\clk_reset_counter[24]_i_2_n_0 ,\clk_reset_counter[24]_i_3_n_0 ,\clk_reset_counter[24]_i_4_n_0 ,\clk_reset_counter[24]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \clk_reset_counter_reg[25] 
       (.C(clk_100_mhz),
        .CE(sel),
        .D(\clk_reset_counter_reg[24]_i_1_n_6 ),
        .Q(clk_reset_counter_reg[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \clk_reset_counter_reg[26] 
       (.C(clk_100_mhz),
        .CE(sel),
        .D(\clk_reset_counter_reg[24]_i_1_n_5 ),
        .Q(clk_reset_counter_reg[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_reset_counter_reg[27] 
       (.C(clk_100_mhz),
        .CE(sel),
        .D(\clk_reset_counter_reg[24]_i_1_n_4 ),
        .Q(clk_reset_counter_reg[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_reset_counter_reg[28] 
       (.C(clk_100_mhz),
        .CE(sel),
        .D(\clk_reset_counter_reg[28]_i_1_n_7 ),
        .Q(clk_reset_counter_reg[28]),
        .R(1'b0));
  CARRY4 \clk_reset_counter_reg[28]_i_1 
       (.CI(\clk_reset_counter_reg[24]_i_1_n_0 ),
        .CO({\NLW_clk_reset_counter_reg[28]_i_1_CO_UNCONNECTED [3],\clk_reset_counter_reg[28]_i_1_n_1 ,\clk_reset_counter_reg[28]_i_1_n_2 ,\clk_reset_counter_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b1,1'b1,1'b1}),
        .O({\clk_reset_counter_reg[28]_i_1_n_4 ,\clk_reset_counter_reg[28]_i_1_n_5 ,\clk_reset_counter_reg[28]_i_1_n_6 ,\clk_reset_counter_reg[28]_i_1_n_7 }),
        .S({\clk_reset_counter[28]_i_2_n_0 ,\clk_reset_counter[28]_i_3_n_0 ,\clk_reset_counter[28]_i_4_n_0 ,\clk_reset_counter[28]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \clk_reset_counter_reg[29] 
       (.C(clk_100_mhz),
        .CE(sel),
        .D(\clk_reset_counter_reg[28]_i_1_n_6 ),
        .Q(clk_reset_counter_reg[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_reset_counter_reg[2] 
       (.C(clk_100_mhz),
        .CE(sel),
        .D(\clk_reset_counter_reg[0]_i_2_n_5 ),
        .Q(clk_reset_counter_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_reset_counter_reg[30] 
       (.C(clk_100_mhz),
        .CE(sel),
        .D(\clk_reset_counter_reg[28]_i_1_n_5 ),
        .Q(clk_reset_counter_reg[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_reset_counter_reg[31] 
       (.C(clk_100_mhz),
        .CE(sel),
        .D(\clk_reset_counter_reg[28]_i_1_n_4 ),
        .Q(clk_reset_counter_reg[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_reset_counter_reg[3] 
       (.C(clk_100_mhz),
        .CE(sel),
        .D(\clk_reset_counter_reg[0]_i_2_n_4 ),
        .Q(clk_reset_counter_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_reset_counter_reg[4] 
       (.C(clk_100_mhz),
        .CE(sel),
        .D(\clk_reset_counter_reg[4]_i_1_n_7 ),
        .Q(clk_reset_counter_reg[4]),
        .R(1'b0));
  CARRY4 \clk_reset_counter_reg[4]_i_1 
       (.CI(\clk_reset_counter_reg[0]_i_2_n_0 ),
        .CO({\clk_reset_counter_reg[4]_i_1_n_0 ,\clk_reset_counter_reg[4]_i_1_n_1 ,\clk_reset_counter_reg[4]_i_1_n_2 ,\clk_reset_counter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\clk_reset_counter_reg[4]_i_1_n_4 ,\clk_reset_counter_reg[4]_i_1_n_5 ,\clk_reset_counter_reg[4]_i_1_n_6 ,\clk_reset_counter_reg[4]_i_1_n_7 }),
        .S({\clk_reset_counter[4]_i_2_n_0 ,\clk_reset_counter[4]_i_3_n_0 ,\clk_reset_counter[4]_i_4_n_0 ,\clk_reset_counter[4]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \clk_reset_counter_reg[5] 
       (.C(clk_100_mhz),
        .CE(sel),
        .D(\clk_reset_counter_reg[4]_i_1_n_6 ),
        .Q(clk_reset_counter_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_reset_counter_reg[6] 
       (.C(clk_100_mhz),
        .CE(sel),
        .D(\clk_reset_counter_reg[4]_i_1_n_5 ),
        .Q(clk_reset_counter_reg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_reset_counter_reg[7] 
       (.C(clk_100_mhz),
        .CE(sel),
        .D(\clk_reset_counter_reg[4]_i_1_n_4 ),
        .Q(clk_reset_counter_reg[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \clk_reset_counter_reg[8] 
       (.C(clk_100_mhz),
        .CE(sel),
        .D(\clk_reset_counter_reg[8]_i_1_n_7 ),
        .Q(clk_reset_counter_reg[8]),
        .R(1'b0));
  CARRY4 \clk_reset_counter_reg[8]_i_1 
       (.CI(\clk_reset_counter_reg[4]_i_1_n_0 ),
        .CO({\clk_reset_counter_reg[8]_i_1_n_0 ,\clk_reset_counter_reg[8]_i_1_n_1 ,\clk_reset_counter_reg[8]_i_1_n_2 ,\clk_reset_counter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\clk_reset_counter_reg[8]_i_1_n_4 ,\clk_reset_counter_reg[8]_i_1_n_5 ,\clk_reset_counter_reg[8]_i_1_n_6 ,\clk_reset_counter_reg[8]_i_1_n_7 }),
        .S({\clk_reset_counter[8]_i_2_n_0 ,\clk_reset_counter[8]_i_3_n_0 ,\clk_reset_counter[8]_i_4_n_0 ,\clk_reset_counter[8]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \clk_reset_counter_reg[9] 
       (.C(clk_100_mhz),
        .CE(sel),
        .D(\clk_reset_counter_reg[8]_i_1_n_6 ),
        .Q(clk_reset_counter_reg[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h55555555DDDDDDFD)) 
    \data_out_enable[0]_i_1 
       (.I0(data_out_enable_reg[30]),
        .I1(\data_out_enable[0]_i_3_n_0 ),
        .I2(\data_out_enable[0]_i_4_n_0 ),
        .I3(data_out_enable_reg[25]),
        .I4(data_out_enable_reg[24]),
        .I5(\data_out_enable[0]_i_5_n_0 ),
        .O(\data_out_enable[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \data_out_enable[0]_i_3 
       (.I0(data_out_enable_reg[26]),
        .I1(data_out_enable_reg[27]),
        .O(\data_out_enable[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0002FFFFFFFFFFFF)) 
    \data_out_enable[0]_i_4 
       (.I0(\data_out_enable[0]_i_7_n_0 ),
        .I1(data_out_enable_reg[21]),
        .I2(data_out_enable_reg[20]),
        .I3(data_out_enable_reg[19]),
        .I4(data_out_enable_reg[23]),
        .I5(data_out_enable_reg[22]),
        .O(\data_out_enable[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \data_out_enable[0]_i_5 
       (.I0(data_out_enable_reg[28]),
        .I1(data_out_enable_reg[29]),
        .O(\data_out_enable[0]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_out_enable[0]_i_6 
       (.I0(data_out_enable_reg[0]),
        .O(\data_out_enable[0]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h1055FFFF)) 
    \data_out_enable[0]_i_7 
       (.I0(data_out_enable_reg[17]),
        .I1(data_out_enable_reg[15]),
        .I2(\data_out_enable[0]_i_8_n_0 ),
        .I3(data_out_enable_reg[16]),
        .I4(data_out_enable_reg[18]),
        .O(\data_out_enable[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00015555FFFFFFFF)) 
    \data_out_enable[0]_i_8 
       (.I0(data_out_enable_reg[13]),
        .I1(data_out_enable_reg[9]),
        .I2(data_out_enable_reg[10]),
        .I3(data_out_enable_reg[11]),
        .I4(data_out_enable_reg[12]),
        .I5(data_out_enable_reg[14]),
        .O(\data_out_enable[0]_i_8_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_enable_reg[0] 
       (.C(clk),
        .CE(\data_out_enable[0]_i_1_n_0 ),
        .D(\data_out_enable_reg[0]_i_2_n_7 ),
        .Q(data_out_enable_reg[0]),
        .R(1'b0));
  CARRY4 \data_out_enable_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\data_out_enable_reg[0]_i_2_n_0 ,\data_out_enable_reg[0]_i_2_n_1 ,\data_out_enable_reg[0]_i_2_n_2 ,\data_out_enable_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\data_out_enable_reg[0]_i_2_n_4 ,\data_out_enable_reg[0]_i_2_n_5 ,\data_out_enable_reg[0]_i_2_n_6 ,\data_out_enable_reg[0]_i_2_n_7 }),
        .S({data_out_enable_reg[3:1],\data_out_enable[0]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_enable_reg[10] 
       (.C(clk),
        .CE(\data_out_enable[0]_i_1_n_0 ),
        .D(\data_out_enable_reg[8]_i_1_n_5 ),
        .Q(data_out_enable_reg[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_enable_reg[11] 
       (.C(clk),
        .CE(\data_out_enable[0]_i_1_n_0 ),
        .D(\data_out_enable_reg[8]_i_1_n_4 ),
        .Q(data_out_enable_reg[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_enable_reg[12] 
       (.C(clk),
        .CE(\data_out_enable[0]_i_1_n_0 ),
        .D(\data_out_enable_reg[12]_i_1_n_7 ),
        .Q(data_out_enable_reg[12]),
        .R(1'b0));
  CARRY4 \data_out_enable_reg[12]_i_1 
       (.CI(\data_out_enable_reg[8]_i_1_n_0 ),
        .CO({\data_out_enable_reg[12]_i_1_n_0 ,\data_out_enable_reg[12]_i_1_n_1 ,\data_out_enable_reg[12]_i_1_n_2 ,\data_out_enable_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\data_out_enable_reg[12]_i_1_n_4 ,\data_out_enable_reg[12]_i_1_n_5 ,\data_out_enable_reg[12]_i_1_n_6 ,\data_out_enable_reg[12]_i_1_n_7 }),
        .S(data_out_enable_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_enable_reg[13] 
       (.C(clk),
        .CE(\data_out_enable[0]_i_1_n_0 ),
        .D(\data_out_enable_reg[12]_i_1_n_6 ),
        .Q(data_out_enable_reg[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_enable_reg[14] 
       (.C(clk),
        .CE(\data_out_enable[0]_i_1_n_0 ),
        .D(\data_out_enable_reg[12]_i_1_n_5 ),
        .Q(data_out_enable_reg[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_enable_reg[15] 
       (.C(clk),
        .CE(\data_out_enable[0]_i_1_n_0 ),
        .D(\data_out_enable_reg[12]_i_1_n_4 ),
        .Q(data_out_enable_reg[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_enable_reg[16] 
       (.C(clk),
        .CE(\data_out_enable[0]_i_1_n_0 ),
        .D(\data_out_enable_reg[16]_i_1_n_7 ),
        .Q(data_out_enable_reg[16]),
        .R(1'b0));
  CARRY4 \data_out_enable_reg[16]_i_1 
       (.CI(\data_out_enable_reg[12]_i_1_n_0 ),
        .CO({\data_out_enable_reg[16]_i_1_n_0 ,\data_out_enable_reg[16]_i_1_n_1 ,\data_out_enable_reg[16]_i_1_n_2 ,\data_out_enable_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\data_out_enable_reg[16]_i_1_n_4 ,\data_out_enable_reg[16]_i_1_n_5 ,\data_out_enable_reg[16]_i_1_n_6 ,\data_out_enable_reg[16]_i_1_n_7 }),
        .S(data_out_enable_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_enable_reg[17] 
       (.C(clk),
        .CE(\data_out_enable[0]_i_1_n_0 ),
        .D(\data_out_enable_reg[16]_i_1_n_6 ),
        .Q(data_out_enable_reg[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_enable_reg[18] 
       (.C(clk),
        .CE(\data_out_enable[0]_i_1_n_0 ),
        .D(\data_out_enable_reg[16]_i_1_n_5 ),
        .Q(data_out_enable_reg[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_enable_reg[19] 
       (.C(clk),
        .CE(\data_out_enable[0]_i_1_n_0 ),
        .D(\data_out_enable_reg[16]_i_1_n_4 ),
        .Q(data_out_enable_reg[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_enable_reg[1] 
       (.C(clk),
        .CE(\data_out_enable[0]_i_1_n_0 ),
        .D(\data_out_enable_reg[0]_i_2_n_6 ),
        .Q(data_out_enable_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_enable_reg[20] 
       (.C(clk),
        .CE(\data_out_enable[0]_i_1_n_0 ),
        .D(\data_out_enable_reg[20]_i_1_n_7 ),
        .Q(data_out_enable_reg[20]),
        .R(1'b0));
  CARRY4 \data_out_enable_reg[20]_i_1 
       (.CI(\data_out_enable_reg[16]_i_1_n_0 ),
        .CO({\data_out_enable_reg[20]_i_1_n_0 ,\data_out_enable_reg[20]_i_1_n_1 ,\data_out_enable_reg[20]_i_1_n_2 ,\data_out_enable_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\data_out_enable_reg[20]_i_1_n_4 ,\data_out_enable_reg[20]_i_1_n_5 ,\data_out_enable_reg[20]_i_1_n_6 ,\data_out_enable_reg[20]_i_1_n_7 }),
        .S(data_out_enable_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_enable_reg[21] 
       (.C(clk),
        .CE(\data_out_enable[0]_i_1_n_0 ),
        .D(\data_out_enable_reg[20]_i_1_n_6 ),
        .Q(data_out_enable_reg[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_enable_reg[22] 
       (.C(clk),
        .CE(\data_out_enable[0]_i_1_n_0 ),
        .D(\data_out_enable_reg[20]_i_1_n_5 ),
        .Q(data_out_enable_reg[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_enable_reg[23] 
       (.C(clk),
        .CE(\data_out_enable[0]_i_1_n_0 ),
        .D(\data_out_enable_reg[20]_i_1_n_4 ),
        .Q(data_out_enable_reg[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_enable_reg[24] 
       (.C(clk),
        .CE(\data_out_enable[0]_i_1_n_0 ),
        .D(\data_out_enable_reg[24]_i_1_n_7 ),
        .Q(data_out_enable_reg[24]),
        .R(1'b0));
  CARRY4 \data_out_enable_reg[24]_i_1 
       (.CI(\data_out_enable_reg[20]_i_1_n_0 ),
        .CO({\data_out_enable_reg[24]_i_1_n_0 ,\data_out_enable_reg[24]_i_1_n_1 ,\data_out_enable_reg[24]_i_1_n_2 ,\data_out_enable_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\data_out_enable_reg[24]_i_1_n_4 ,\data_out_enable_reg[24]_i_1_n_5 ,\data_out_enable_reg[24]_i_1_n_6 ,\data_out_enable_reg[24]_i_1_n_7 }),
        .S(data_out_enable_reg[27:24]));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_enable_reg[25] 
       (.C(clk),
        .CE(\data_out_enable[0]_i_1_n_0 ),
        .D(\data_out_enable_reg[24]_i_1_n_6 ),
        .Q(data_out_enable_reg[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_enable_reg[26] 
       (.C(clk),
        .CE(\data_out_enable[0]_i_1_n_0 ),
        .D(\data_out_enable_reg[24]_i_1_n_5 ),
        .Q(data_out_enable_reg[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_enable_reg[27] 
       (.C(clk),
        .CE(\data_out_enable[0]_i_1_n_0 ),
        .D(\data_out_enable_reg[24]_i_1_n_4 ),
        .Q(data_out_enable_reg[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_enable_reg[28] 
       (.C(clk),
        .CE(\data_out_enable[0]_i_1_n_0 ),
        .D(\data_out_enable_reg[28]_i_1_n_7 ),
        .Q(data_out_enable_reg[28]),
        .R(1'b0));
  CARRY4 \data_out_enable_reg[28]_i_1 
       (.CI(\data_out_enable_reg[24]_i_1_n_0 ),
        .CO({\NLW_data_out_enable_reg[28]_i_1_CO_UNCONNECTED [3:2],\data_out_enable_reg[28]_i_1_n_2 ,\data_out_enable_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_data_out_enable_reg[28]_i_1_O_UNCONNECTED [3],\data_out_enable_reg[28]_i_1_n_5 ,\data_out_enable_reg[28]_i_1_n_6 ,\data_out_enable_reg[28]_i_1_n_7 }),
        .S({1'b0,data_out_enable_reg[30:28]}));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_enable_reg[29] 
       (.C(clk),
        .CE(\data_out_enable[0]_i_1_n_0 ),
        .D(\data_out_enable_reg[28]_i_1_n_6 ),
        .Q(data_out_enable_reg[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_enable_reg[2] 
       (.C(clk),
        .CE(\data_out_enable[0]_i_1_n_0 ),
        .D(\data_out_enable_reg[0]_i_2_n_5 ),
        .Q(data_out_enable_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_enable_reg[30] 
       (.C(clk),
        .CE(\data_out_enable[0]_i_1_n_0 ),
        .D(\data_out_enable_reg[28]_i_1_n_5 ),
        .Q(data_out_enable_reg[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_enable_reg[3] 
       (.C(clk),
        .CE(\data_out_enable[0]_i_1_n_0 ),
        .D(\data_out_enable_reg[0]_i_2_n_4 ),
        .Q(data_out_enable_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_enable_reg[4] 
       (.C(clk),
        .CE(\data_out_enable[0]_i_1_n_0 ),
        .D(\data_out_enable_reg[4]_i_1_n_7 ),
        .Q(data_out_enable_reg[4]),
        .R(1'b0));
  CARRY4 \data_out_enable_reg[4]_i_1 
       (.CI(\data_out_enable_reg[0]_i_2_n_0 ),
        .CO({\data_out_enable_reg[4]_i_1_n_0 ,\data_out_enable_reg[4]_i_1_n_1 ,\data_out_enable_reg[4]_i_1_n_2 ,\data_out_enable_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\data_out_enable_reg[4]_i_1_n_4 ,\data_out_enable_reg[4]_i_1_n_5 ,\data_out_enable_reg[4]_i_1_n_6 ,\data_out_enable_reg[4]_i_1_n_7 }),
        .S(data_out_enable_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_enable_reg[5] 
       (.C(clk),
        .CE(\data_out_enable[0]_i_1_n_0 ),
        .D(\data_out_enable_reg[4]_i_1_n_6 ),
        .Q(data_out_enable_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_enable_reg[6] 
       (.C(clk),
        .CE(\data_out_enable[0]_i_1_n_0 ),
        .D(\data_out_enable_reg[4]_i_1_n_5 ),
        .Q(data_out_enable_reg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_enable_reg[7] 
       (.C(clk),
        .CE(\data_out_enable[0]_i_1_n_0 ),
        .D(\data_out_enable_reg[4]_i_1_n_4 ),
        .Q(data_out_enable_reg[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_enable_reg[8] 
       (.C(clk),
        .CE(\data_out_enable[0]_i_1_n_0 ),
        .D(\data_out_enable_reg[8]_i_1_n_7 ),
        .Q(data_out_enable_reg[8]),
        .R(1'b0));
  CARRY4 \data_out_enable_reg[8]_i_1 
       (.CI(\data_out_enable_reg[4]_i_1_n_0 ),
        .CO({\data_out_enable_reg[8]_i_1_n_0 ,\data_out_enable_reg[8]_i_1_n_1 ,\data_out_enable_reg[8]_i_1_n_2 ,\data_out_enable_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\data_out_enable_reg[8]_i_1_n_4 ,\data_out_enable_reg[8]_i_1_n_5 ,\data_out_enable_reg[8]_i_1_n_6 ,\data_out_enable_reg[8]_i_1_n_7 }),
        .S(data_out_enable_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_enable_reg[9] 
       (.C(clk),
        .CE(\data_out_enable[0]_i_1_n_0 ),
        .D(\data_out_enable_reg[8]_i_1_n_6 ),
        .Q(data_out_enable_reg[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \data_val[15]_i_1 
       (.I0(sig_48_khz_2),
        .I1(sig_48_khz_1),
        .O(data_val0));
  FDRE #(
    .INIT(1'b0)) 
    \data_val_reg[0] 
       (.C(clk_1_mhz),
        .CE(data_val0),
        .D(audio_in[0]),
        .Q(data_val[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_val_reg[10] 
       (.C(clk_1_mhz),
        .CE(data_val0),
        .D(audio_in[10]),
        .Q(data_val[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_val_reg[11] 
       (.C(clk_1_mhz),
        .CE(data_val0),
        .D(audio_in[11]),
        .Q(data_val[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_val_reg[12] 
       (.C(clk_1_mhz),
        .CE(data_val0),
        .D(audio_in[12]),
        .Q(data_val[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_val_reg[13] 
       (.C(clk_1_mhz),
        .CE(data_val0),
        .D(audio_in[13]),
        .Q(data_val[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_val_reg[14] 
       (.C(clk_1_mhz),
        .CE(data_val0),
        .D(audio_in[14]),
        .Q(data_val[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_val_reg[15] 
       (.C(clk_1_mhz),
        .CE(data_val0),
        .D(audio_in[15]),
        .Q(data_val[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_val_reg[1] 
       (.C(clk_1_mhz),
        .CE(data_val0),
        .D(audio_in[1]),
        .Q(data_val[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_val_reg[2] 
       (.C(clk_1_mhz),
        .CE(data_val0),
        .D(audio_in[2]),
        .Q(data_val[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_val_reg[3] 
       (.C(clk_1_mhz),
        .CE(data_val0),
        .D(audio_in[3]),
        .Q(data_val[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_val_reg[4] 
       (.C(clk_1_mhz),
        .CE(data_val0),
        .D(audio_in[4]),
        .Q(data_val[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_val_reg[5] 
       (.C(clk_1_mhz),
        .CE(data_val0),
        .D(audio_in[5]),
        .Q(data_val[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_val_reg[6] 
       (.C(clk_1_mhz),
        .CE(data_val0),
        .D(audio_in[6]),
        .Q(data_val[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_val_reg[7] 
       (.C(clk_1_mhz),
        .CE(data_val0),
        .D(audio_in[7]),
        .Q(data_val[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_val_reg[8] 
       (.C(clk_1_mhz),
        .CE(data_val0),
        .D(audio_in[8]),
        .Q(data_val[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_val_reg[9] 
       (.C(clk_1_mhz),
        .CE(data_val0),
        .D(audio_in[9]),
        .Q(data_val[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h9)) 
    prclk_int_i_1
       (.I0(\shift_reg[31]_i_3_n_0 ),
        .I1(channel_enable),
        .O(prclk_int_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    prclk_int_reg
       (.C(clk),
        .CE(1'b1),
        .D(prclk_int_i_1_n_0),
        .Q(channel_enable),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h5CCCCCCC0CCCCCCC)) 
    \shift_reg[0]_i_1 
       (.I0(\shift_reg[0]_i_2_n_0 ),
        .I1(\shift_reg_reg_n_0_[0] ),
        .I2(bclk_int_reg_0),
        .I3(clk_div_counter[0]),
        .I4(clk_div_counter[1]),
        .I5(data_val[0]),
        .O(\shift_reg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \shift_reg[0]_i_2 
       (.I0(channel_enable_counter_reg[2]),
        .I1(channel_enable_counter_reg[0]),
        .I2(channel_enable_counter_reg[1]),
        .I3(channel_enable_counter_reg[3]),
        .O(\shift_reg[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_reg[10]_i_1 
       (.I0(\shift_reg_reg_n_0_[9] ),
        .I1(\shift_reg[31]_i_3_n_0 ),
        .I2(data_val[10]),
        .O(\shift_reg[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_reg[11]_i_1 
       (.I0(\shift_reg_reg_n_0_[10] ),
        .I1(\shift_reg[31]_i_3_n_0 ),
        .I2(data_val[11]),
        .O(\shift_reg[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_reg[12]_i_1 
       (.I0(\shift_reg_reg_n_0_[11] ),
        .I1(\shift_reg[31]_i_3_n_0 ),
        .I2(data_val[12]),
        .O(\shift_reg[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_reg[13]_i_1 
       (.I0(\shift_reg_reg_n_0_[12] ),
        .I1(\shift_reg[31]_i_3_n_0 ),
        .I2(data_val[13]),
        .O(\shift_reg[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_reg[14]_i_1 
       (.I0(\shift_reg_reg_n_0_[13] ),
        .I1(\shift_reg[31]_i_3_n_0 ),
        .I2(data_val[14]),
        .O(\shift_reg[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_reg[15]_i_1 
       (.I0(\shift_reg_reg_n_0_[14] ),
        .I1(\shift_reg[31]_i_3_n_0 ),
        .I2(data_val[15]),
        .O(\shift_reg[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_reg[16]_i_1 
       (.I0(\shift_reg_reg_n_0_[15] ),
        .I1(\shift_reg[31]_i_3_n_0 ),
        .I2(data_val[0]),
        .O(\shift_reg[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_reg[17]_i_1 
       (.I0(\shift_reg_reg_n_0_[16] ),
        .I1(\shift_reg[31]_i_3_n_0 ),
        .I2(data_val[1]),
        .O(\shift_reg[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_reg[18]_i_1 
       (.I0(\shift_reg_reg_n_0_[17] ),
        .I1(\shift_reg[31]_i_3_n_0 ),
        .I2(data_val[2]),
        .O(\shift_reg[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_reg[19]_i_1 
       (.I0(\shift_reg_reg_n_0_[18] ),
        .I1(\shift_reg[31]_i_3_n_0 ),
        .I2(data_val[3]),
        .O(\shift_reg[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_reg[1]_i_1 
       (.I0(\shift_reg_reg_n_0_[0] ),
        .I1(\shift_reg[31]_i_3_n_0 ),
        .I2(data_val[1]),
        .O(\shift_reg[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_reg[20]_i_1 
       (.I0(\shift_reg_reg_n_0_[19] ),
        .I1(\shift_reg[31]_i_3_n_0 ),
        .I2(data_val[4]),
        .O(\shift_reg[20]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_reg[21]_i_1 
       (.I0(\shift_reg_reg_n_0_[20] ),
        .I1(\shift_reg[31]_i_3_n_0 ),
        .I2(data_val[5]),
        .O(\shift_reg[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_reg[22]_i_1 
       (.I0(\shift_reg_reg_n_0_[21] ),
        .I1(\shift_reg[31]_i_3_n_0 ),
        .I2(data_val[6]),
        .O(\shift_reg[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_reg[23]_i_1 
       (.I0(\shift_reg_reg_n_0_[22] ),
        .I1(\shift_reg[31]_i_3_n_0 ),
        .I2(data_val[7]),
        .O(\shift_reg[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_reg[24]_i_1 
       (.I0(\shift_reg_reg_n_0_[23] ),
        .I1(\shift_reg[31]_i_3_n_0 ),
        .I2(data_val[8]),
        .O(\shift_reg[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_reg[25]_i_1 
       (.I0(\shift_reg_reg_n_0_[24] ),
        .I1(\shift_reg[31]_i_3_n_0 ),
        .I2(data_val[9]),
        .O(\shift_reg[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_reg[26]_i_1 
       (.I0(\shift_reg_reg_n_0_[25] ),
        .I1(\shift_reg[31]_i_3_n_0 ),
        .I2(data_val[10]),
        .O(\shift_reg[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_reg[27]_i_1 
       (.I0(\shift_reg_reg_n_0_[26] ),
        .I1(\shift_reg[31]_i_3_n_0 ),
        .I2(data_val[11]),
        .O(\shift_reg[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_reg[28]_i_1 
       (.I0(\shift_reg_reg_n_0_[27] ),
        .I1(\shift_reg[31]_i_3_n_0 ),
        .I2(data_val[12]),
        .O(\shift_reg[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_reg[29]_i_1 
       (.I0(\shift_reg_reg_n_0_[28] ),
        .I1(\shift_reg[31]_i_3_n_0 ),
        .I2(data_val[13]),
        .O(\shift_reg[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_reg[2]_i_1 
       (.I0(\shift_reg_reg_n_0_[1] ),
        .I1(\shift_reg[31]_i_3_n_0 ),
        .I2(data_val[2]),
        .O(\shift_reg[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_reg[30]_i_1 
       (.I0(\shift_reg_reg_n_0_[29] ),
        .I1(\shift_reg[31]_i_3_n_0 ),
        .I2(data_val[14]),
        .O(\shift_reg[30]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \shift_reg[31]_i_1 
       (.I0(bclk_int_reg_0),
        .I1(clk_div_counter[0]),
        .I2(clk_div_counter[1]),
        .O(shift_reg));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_reg[31]_i_2 
       (.I0(\shift_reg_reg_n_0_[30] ),
        .I1(\shift_reg[31]_i_3_n_0 ),
        .I2(data_val[15]),
        .O(\shift_reg[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \shift_reg[31]_i_3 
       (.I0(channel_enable_counter_reg[3]),
        .I1(channel_enable_counter_reg[1]),
        .I2(channel_enable_counter_reg[0]),
        .I3(channel_enable_counter_reg[2]),
        .I4(\shift_reg[31]_i_4_n_0 ),
        .O(\shift_reg[31]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \shift_reg[31]_i_4 
       (.I0(clk_div_counter[1]),
        .I1(clk_div_counter[0]),
        .I2(bclk_int_reg_0),
        .O(\shift_reg[31]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_reg[3]_i_1 
       (.I0(\shift_reg_reg_n_0_[2] ),
        .I1(\shift_reg[31]_i_3_n_0 ),
        .I2(data_val[3]),
        .O(\shift_reg[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_reg[4]_i_1 
       (.I0(\shift_reg_reg_n_0_[3] ),
        .I1(\shift_reg[31]_i_3_n_0 ),
        .I2(data_val[4]),
        .O(\shift_reg[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_reg[5]_i_1 
       (.I0(\shift_reg_reg_n_0_[4] ),
        .I1(\shift_reg[31]_i_3_n_0 ),
        .I2(data_val[5]),
        .O(\shift_reg[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_reg[6]_i_1 
       (.I0(\shift_reg_reg_n_0_[5] ),
        .I1(\shift_reg[31]_i_3_n_0 ),
        .I2(data_val[6]),
        .O(\shift_reg[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_reg[7]_i_1 
       (.I0(\shift_reg_reg_n_0_[6] ),
        .I1(\shift_reg[31]_i_3_n_0 ),
        .I2(data_val[7]),
        .O(\shift_reg[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_reg[8]_i_1 
       (.I0(\shift_reg_reg_n_0_[7] ),
        .I1(\shift_reg[31]_i_3_n_0 ),
        .I2(data_val[8]),
        .O(\shift_reg[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_reg[9]_i_1 
       (.I0(\shift_reg_reg_n_0_[8] ),
        .I1(\shift_reg[31]_i_3_n_0 ),
        .I2(data_val[9]),
        .O(\shift_reg[9]_i_1_n_0 ));
  FDRE \shift_reg_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\shift_reg[0]_i_1_n_0 ),
        .Q(\shift_reg_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \shift_reg_reg[10] 
       (.C(clk),
        .CE(shift_reg),
        .D(\shift_reg[10]_i_1_n_0 ),
        .Q(\shift_reg_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \shift_reg_reg[11] 
       (.C(clk),
        .CE(shift_reg),
        .D(\shift_reg[11]_i_1_n_0 ),
        .Q(\shift_reg_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \shift_reg_reg[12] 
       (.C(clk),
        .CE(shift_reg),
        .D(\shift_reg[12]_i_1_n_0 ),
        .Q(\shift_reg_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \shift_reg_reg[13] 
       (.C(clk),
        .CE(shift_reg),
        .D(\shift_reg[13]_i_1_n_0 ),
        .Q(\shift_reg_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \shift_reg_reg[14] 
       (.C(clk),
        .CE(shift_reg),
        .D(\shift_reg[14]_i_1_n_0 ),
        .Q(\shift_reg_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \shift_reg_reg[15] 
       (.C(clk),
        .CE(shift_reg),
        .D(\shift_reg[15]_i_1_n_0 ),
        .Q(\shift_reg_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \shift_reg_reg[16] 
       (.C(clk),
        .CE(shift_reg),
        .D(\shift_reg[16]_i_1_n_0 ),
        .Q(\shift_reg_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \shift_reg_reg[17] 
       (.C(clk),
        .CE(shift_reg),
        .D(\shift_reg[17]_i_1_n_0 ),
        .Q(\shift_reg_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \shift_reg_reg[18] 
       (.C(clk),
        .CE(shift_reg),
        .D(\shift_reg[18]_i_1_n_0 ),
        .Q(\shift_reg_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \shift_reg_reg[19] 
       (.C(clk),
        .CE(shift_reg),
        .D(\shift_reg[19]_i_1_n_0 ),
        .Q(\shift_reg_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \shift_reg_reg[1] 
       (.C(clk),
        .CE(shift_reg),
        .D(\shift_reg[1]_i_1_n_0 ),
        .Q(\shift_reg_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \shift_reg_reg[20] 
       (.C(clk),
        .CE(shift_reg),
        .D(\shift_reg[20]_i_1_n_0 ),
        .Q(\shift_reg_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \shift_reg_reg[21] 
       (.C(clk),
        .CE(shift_reg),
        .D(\shift_reg[21]_i_1_n_0 ),
        .Q(\shift_reg_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \shift_reg_reg[22] 
       (.C(clk),
        .CE(shift_reg),
        .D(\shift_reg[22]_i_1_n_0 ),
        .Q(\shift_reg_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \shift_reg_reg[23] 
       (.C(clk),
        .CE(shift_reg),
        .D(\shift_reg[23]_i_1_n_0 ),
        .Q(\shift_reg_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \shift_reg_reg[24] 
       (.C(clk),
        .CE(shift_reg),
        .D(\shift_reg[24]_i_1_n_0 ),
        .Q(\shift_reg_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \shift_reg_reg[25] 
       (.C(clk),
        .CE(shift_reg),
        .D(\shift_reg[25]_i_1_n_0 ),
        .Q(\shift_reg_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \shift_reg_reg[26] 
       (.C(clk),
        .CE(shift_reg),
        .D(\shift_reg[26]_i_1_n_0 ),
        .Q(\shift_reg_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \shift_reg_reg[27] 
       (.C(clk),
        .CE(shift_reg),
        .D(\shift_reg[27]_i_1_n_0 ),
        .Q(\shift_reg_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \shift_reg_reg[28] 
       (.C(clk),
        .CE(shift_reg),
        .D(\shift_reg[28]_i_1_n_0 ),
        .Q(\shift_reg_reg_n_0_[28] ),
        .R(1'b0));
  FDRE \shift_reg_reg[29] 
       (.C(clk),
        .CE(shift_reg),
        .D(\shift_reg[29]_i_1_n_0 ),
        .Q(\shift_reg_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \shift_reg_reg[2] 
       (.C(clk),
        .CE(shift_reg),
        .D(\shift_reg[2]_i_1_n_0 ),
        .Q(\shift_reg_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \shift_reg_reg[30] 
       (.C(clk),
        .CE(shift_reg),
        .D(\shift_reg[30]_i_1_n_0 ),
        .Q(\shift_reg_reg_n_0_[30] ),
        .R(1'b0));
  FDRE \shift_reg_reg[31] 
       (.C(clk),
        .CE(shift_reg),
        .D(\shift_reg[31]_i_2_n_0 ),
        .Q(out_data),
        .R(1'b0));
  FDRE \shift_reg_reg[3] 
       (.C(clk),
        .CE(shift_reg),
        .D(\shift_reg[3]_i_1_n_0 ),
        .Q(\shift_reg_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \shift_reg_reg[4] 
       (.C(clk),
        .CE(shift_reg),
        .D(\shift_reg[4]_i_1_n_0 ),
        .Q(\shift_reg_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \shift_reg_reg[5] 
       (.C(clk),
        .CE(shift_reg),
        .D(\shift_reg[5]_i_1_n_0 ),
        .Q(\shift_reg_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \shift_reg_reg[6] 
       (.C(clk),
        .CE(shift_reg),
        .D(\shift_reg[6]_i_1_n_0 ),
        .Q(\shift_reg_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \shift_reg_reg[7] 
       (.C(clk),
        .CE(shift_reg),
        .D(\shift_reg[7]_i_1_n_0 ),
        .Q(\shift_reg_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \shift_reg_reg[8] 
       (.C(clk),
        .CE(shift_reg),
        .D(\shift_reg[8]_i_1_n_0 ),
        .Q(\shift_reg_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \shift_reg_reg[9] 
       (.C(clk),
        .CE(shift_reg),
        .D(\shift_reg[9]_i_1_n_0 ),
        .Q(\shift_reg_reg_n_0_[9] ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE sig_48_khz_0_reg
       (.C(clk_1_mhz),
        .CE(1'b1),
        .D(channel_enable),
        .Q(sig_48_khz_0),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE sig_48_khz_1_reg
       (.C(clk_1_mhz),
        .CE(1'b1),
        .D(sig_48_khz_0),
        .Q(sig_48_khz_1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE sig_48_khz_2_reg
       (.C(clk_1_mhz),
        .CE(1'b1),
        .D(sig_48_khz_1),
        .Q(sig_48_khz_2),
        .R(1'b0));
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
