-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
-- Date        : Sun Jun 14 10:31:55 2020
-- Host        : johan-Latitude-E5550 running 64-bit Ubuntu 16.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/johan/v20/c64fpga/src/bd/ip/design_1_i2s_0_0/design_1_i2s_0_0_sim_netlist.vhdl
-- Design      : design_1_i2s_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_i2s_0_0_i2s is
  port (
    bclk_int_reg_0 : out STD_LOGIC;
    channel_enable : out STD_LOGIC;
    out_data : out STD_LOGIC;
    clk_reset : out STD_LOGIC;
    clk : in STD_LOGIC;
    clk_1_mhz : in STD_LOGIC;
    audio_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    clk_100_mhz : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_i2s_0_0_i2s : entity is "i2s";
end design_1_i2s_0_0_i2s;

architecture STRUCTURE of design_1_i2s_0_0_i2s is
  signal bclk_int_i_1_n_0 : STD_LOGIC;
  signal \^bclk_int_reg_0\ : STD_LOGIC;
  signal \^channel_enable\ : STD_LOGIC;
  signal channel_enable_counter_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal clk_div_counter : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \clk_div_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \clk_div_counter[1]_i_10_n_0\ : STD_LOGIC;
  signal \clk_div_counter[1]_i_11_n_0\ : STD_LOGIC;
  signal \clk_div_counter[1]_i_12_n_0\ : STD_LOGIC;
  signal \clk_div_counter[1]_i_13_n_0\ : STD_LOGIC;
  signal \clk_div_counter[1]_i_14_n_0\ : STD_LOGIC;
  signal \clk_div_counter[1]_i_1_n_0\ : STD_LOGIC;
  signal \clk_div_counter[1]_i_2_n_0\ : STD_LOGIC;
  signal \clk_div_counter[1]_i_3_n_0\ : STD_LOGIC;
  signal \clk_div_counter[1]_i_4_n_0\ : STD_LOGIC;
  signal \clk_div_counter[1]_i_5_n_0\ : STD_LOGIC;
  signal \clk_div_counter[1]_i_6_n_0\ : STD_LOGIC;
  signal \clk_div_counter[1]_i_7_n_0\ : STD_LOGIC;
  signal \clk_div_counter[1]_i_8_n_0\ : STD_LOGIC;
  signal \clk_div_counter[1]_i_9_n_0\ : STD_LOGIC;
  signal clk_reset_INST_0_i_1_n_0 : STD_LOGIC;
  signal clk_reset_INST_0_i_2_n_0 : STD_LOGIC;
  signal clk_reset_INST_0_i_3_n_0 : STD_LOGIC;
  signal clk_reset_INST_0_i_4_n_0 : STD_LOGIC;
  signal clk_reset_INST_0_i_5_n_0 : STD_LOGIC;
  signal clk_reset_INST_0_i_6_n_0 : STD_LOGIC;
  signal clk_reset_INST_0_i_7_n_0 : STD_LOGIC;
  signal clk_reset_INST_0_i_8_n_0 : STD_LOGIC;
  signal clk_reset_INST_0_i_9_n_0 : STD_LOGIC;
  signal \clk_reset_counter[0]_i_3_n_0\ : STD_LOGIC;
  signal \clk_reset_counter[0]_i_4_n_0\ : STD_LOGIC;
  signal \clk_reset_counter[0]_i_5_n_0\ : STD_LOGIC;
  signal \clk_reset_counter[0]_i_6_n_0\ : STD_LOGIC;
  signal \clk_reset_counter[0]_i_7_n_0\ : STD_LOGIC;
  signal \clk_reset_counter[0]_i_8_n_0\ : STD_LOGIC;
  signal \clk_reset_counter[0]_i_9_n_0\ : STD_LOGIC;
  signal \clk_reset_counter[12]_i_2_n_0\ : STD_LOGIC;
  signal \clk_reset_counter[12]_i_3_n_0\ : STD_LOGIC;
  signal \clk_reset_counter[12]_i_4_n_0\ : STD_LOGIC;
  signal \clk_reset_counter[12]_i_5_n_0\ : STD_LOGIC;
  signal \clk_reset_counter[16]_i_2_n_0\ : STD_LOGIC;
  signal \clk_reset_counter[16]_i_3_n_0\ : STD_LOGIC;
  signal \clk_reset_counter[16]_i_4_n_0\ : STD_LOGIC;
  signal \clk_reset_counter[16]_i_5_n_0\ : STD_LOGIC;
  signal \clk_reset_counter[20]_i_2_n_0\ : STD_LOGIC;
  signal \clk_reset_counter[20]_i_3_n_0\ : STD_LOGIC;
  signal \clk_reset_counter[20]_i_4_n_0\ : STD_LOGIC;
  signal \clk_reset_counter[20]_i_5_n_0\ : STD_LOGIC;
  signal \clk_reset_counter[24]_i_2_n_0\ : STD_LOGIC;
  signal \clk_reset_counter[24]_i_3_n_0\ : STD_LOGIC;
  signal \clk_reset_counter[24]_i_4_n_0\ : STD_LOGIC;
  signal \clk_reset_counter[24]_i_5_n_0\ : STD_LOGIC;
  signal \clk_reset_counter[28]_i_2_n_0\ : STD_LOGIC;
  signal \clk_reset_counter[28]_i_3_n_0\ : STD_LOGIC;
  signal \clk_reset_counter[28]_i_4_n_0\ : STD_LOGIC;
  signal \clk_reset_counter[28]_i_5_n_0\ : STD_LOGIC;
  signal \clk_reset_counter[4]_i_2_n_0\ : STD_LOGIC;
  signal \clk_reset_counter[4]_i_3_n_0\ : STD_LOGIC;
  signal \clk_reset_counter[4]_i_4_n_0\ : STD_LOGIC;
  signal \clk_reset_counter[4]_i_5_n_0\ : STD_LOGIC;
  signal \clk_reset_counter[8]_i_2_n_0\ : STD_LOGIC;
  signal \clk_reset_counter[8]_i_3_n_0\ : STD_LOGIC;
  signal \clk_reset_counter[8]_i_4_n_0\ : STD_LOGIC;
  signal \clk_reset_counter[8]_i_5_n_0\ : STD_LOGIC;
  signal clk_reset_counter_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \clk_reset_counter_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \clk_reset_counter_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \clk_reset_counter_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \clk_reset_counter_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \clk_reset_counter_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \clk_reset_counter_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \clk_reset_counter_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \clk_reset_counter_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \clk_reset_counter_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \clk_reset_counter_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \clk_reset_counter_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \clk_reset_counter_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \clk_reset_counter_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \clk_reset_counter_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \clk_reset_counter_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \clk_reset_counter_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \clk_reset_counter_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \clk_reset_counter_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \clk_reset_counter_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \clk_reset_counter_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \clk_reset_counter_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \clk_reset_counter_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \clk_reset_counter_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \clk_reset_counter_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \clk_reset_counter_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \clk_reset_counter_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \clk_reset_counter_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \clk_reset_counter_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \clk_reset_counter_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \clk_reset_counter_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \clk_reset_counter_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \clk_reset_counter_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \clk_reset_counter_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \clk_reset_counter_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \clk_reset_counter_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \clk_reset_counter_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \clk_reset_counter_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \clk_reset_counter_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \clk_reset_counter_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \clk_reset_counter_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \clk_reset_counter_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \clk_reset_counter_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \clk_reset_counter_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \clk_reset_counter_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \clk_reset_counter_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \clk_reset_counter_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \clk_reset_counter_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \clk_reset_counter_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \clk_reset_counter_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \clk_reset_counter_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \clk_reset_counter_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \clk_reset_counter_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \clk_reset_counter_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \clk_reset_counter_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \clk_reset_counter_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \clk_reset_counter_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \clk_reset_counter_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \clk_reset_counter_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \clk_reset_counter_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \clk_reset_counter_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \clk_reset_counter_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \clk_reset_counter_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \clk_reset_counter_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \data_out_enable[0]_i_1_n_0\ : STD_LOGIC;
  signal \data_out_enable[0]_i_3_n_0\ : STD_LOGIC;
  signal \data_out_enable[0]_i_4_n_0\ : STD_LOGIC;
  signal \data_out_enable[0]_i_5_n_0\ : STD_LOGIC;
  signal \data_out_enable[0]_i_6_n_0\ : STD_LOGIC;
  signal \data_out_enable[0]_i_7_n_0\ : STD_LOGIC;
  signal \data_out_enable[0]_i_8_n_0\ : STD_LOGIC;
  signal data_out_enable_reg : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal \data_out_enable_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \data_out_enable_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \data_out_enable_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \data_out_enable_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \data_out_enable_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \data_out_enable_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \data_out_enable_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \data_out_enable_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \data_out_enable_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \data_out_enable_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \data_out_enable_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \data_out_enable_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \data_out_enable_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \data_out_enable_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \data_out_enable_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \data_out_enable_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \data_out_enable_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \data_out_enable_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \data_out_enable_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \data_out_enable_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \data_out_enable_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \data_out_enable_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \data_out_enable_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \data_out_enable_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \data_out_enable_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \data_out_enable_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \data_out_enable_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \data_out_enable_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \data_out_enable_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \data_out_enable_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \data_out_enable_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \data_out_enable_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \data_out_enable_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \data_out_enable_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \data_out_enable_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \data_out_enable_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \data_out_enable_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \data_out_enable_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \data_out_enable_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \data_out_enable_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \data_out_enable_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \data_out_enable_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \data_out_enable_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \data_out_enable_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \data_out_enable_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \data_out_enable_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \data_out_enable_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \data_out_enable_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \data_out_enable_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \data_out_enable_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \data_out_enable_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \data_out_enable_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \data_out_enable_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \data_out_enable_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \data_out_enable_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \data_out_enable_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \data_out_enable_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \data_out_enable_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \data_out_enable_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \data_out_enable_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \data_out_enable_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal data_val : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal data_val0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal prclk_int_i_1_n_0 : STD_LOGIC;
  signal sel : STD_LOGIC;
  signal shift_reg : STD_LOGIC_VECTOR ( 31 to 31 );
  signal \shift_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \shift_reg[10]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[13]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[14]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[17]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[18]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[19]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[21]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[22]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[25]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[26]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[27]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[28]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[29]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[30]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[31]_i_2_n_0\ : STD_LOGIC;
  signal \shift_reg[31]_i_3_n_0\ : STD_LOGIC;
  signal \shift_reg[31]_i_4_n_0\ : STD_LOGIC;
  signal \shift_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[9]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[10]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[11]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[12]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[13]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[14]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[15]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[16]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[17]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[18]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[19]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[20]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[21]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[22]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[23]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[24]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[25]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[26]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[27]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[28]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[29]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[30]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[5]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[6]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[7]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[8]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[9]\ : STD_LOGIC;
  signal sig_48_khz_0 : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of sig_48_khz_0 : signal is "true";
  signal sig_48_khz_1 : STD_LOGIC;
  attribute async_reg of sig_48_khz_1 : signal is "true";
  signal sig_48_khz_2 : STD_LOGIC;
  attribute async_reg of sig_48_khz_2 : signal is "true";
  signal \NLW_clk_reset_counter_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_data_out_enable_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_data_out_enable_reg[28]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of bclk_int_i_1 : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \channel_enable_counter[1]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \channel_enable_counter[2]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \channel_enable_counter[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \clk_div_counter[0]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \clk_div_counter[1]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \clk_div_counter[1]_i_4\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \clk_div_counter[1]_i_7\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \clk_div_counter[1]_i_8\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of clk_reset_INST_0_i_2 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \clk_reset_counter[0]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \data_out_enable[0]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \shift_reg[0]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \shift_reg[10]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \shift_reg[11]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \shift_reg[12]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \shift_reg[13]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \shift_reg[14]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \shift_reg[15]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \shift_reg[16]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \shift_reg[17]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \shift_reg[18]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \shift_reg[19]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \shift_reg[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \shift_reg[20]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \shift_reg[22]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \shift_reg[23]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \shift_reg[24]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \shift_reg[25]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \shift_reg[26]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \shift_reg[27]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \shift_reg[28]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \shift_reg[29]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \shift_reg[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \shift_reg[30]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \shift_reg[31]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \shift_reg[31]_i_4\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \shift_reg[3]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \shift_reg[4]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \shift_reg[5]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \shift_reg[6]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \shift_reg[7]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \shift_reg[8]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \shift_reg[9]_i_1\ : label is "soft_lutpair13";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of sig_48_khz_0_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of sig_48_khz_0_reg : label is "yes";
  attribute ASYNC_REG_boolean of sig_48_khz_1_reg : label is std.standard.true;
  attribute KEEP of sig_48_khz_1_reg : label is "yes";
  attribute ASYNC_REG_boolean of sig_48_khz_2_reg : label is std.standard.true;
  attribute KEEP of sig_48_khz_2_reg : label is "yes";
begin
  bclk_int_reg_0 <= \^bclk_int_reg_0\;
  channel_enable <= \^channel_enable\;
bclk_int_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => clk_div_counter(1),
      I1 => clk_div_counter(0),
      I2 => \^bclk_int_reg_0\,
      O => bclk_int_i_1_n_0
    );
bclk_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => bclk_int_i_1_n_0,
      Q => \^bclk_int_reg_0\,
      R => '0'
    );
\channel_enable_counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => channel_enable_counter_reg(0),
      O => p_0_in(0)
    );
\channel_enable_counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => channel_enable_counter_reg(0),
      I1 => channel_enable_counter_reg(1),
      O => p_0_in(1)
    );
\channel_enable_counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => channel_enable_counter_reg(1),
      I1 => channel_enable_counter_reg(0),
      I2 => channel_enable_counter_reg(2),
      O => p_0_in(2)
    );
\channel_enable_counter[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => channel_enable_counter_reg(2),
      I1 => channel_enable_counter_reg(0),
      I2 => channel_enable_counter_reg(1),
      I3 => channel_enable_counter_reg(3),
      O => p_0_in(3)
    );
\channel_enable_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => shift_reg(31),
      D => p_0_in(0),
      Q => channel_enable_counter_reg(0),
      R => '0'
    );
\channel_enable_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => shift_reg(31),
      D => p_0_in(1),
      Q => channel_enable_counter_reg(1),
      R => '0'
    );
\channel_enable_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => shift_reg(31),
      D => p_0_in(2),
      Q => channel_enable_counter_reg(2),
      R => '0'
    );
\channel_enable_counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => shift_reg(31),
      D => p_0_in(3),
      Q => channel_enable_counter_reg(3),
      R => '0'
    );
\clk_div_counter[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \clk_div_counter[1]_i_2_n_0\,
      I1 => clk_div_counter(0),
      O => \clk_div_counter[0]_i_1_n_0\
    );
\clk_div_counter[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => clk_div_counter(0),
      I1 => \clk_div_counter[1]_i_2_n_0\,
      I2 => clk_div_counter(1),
      O => \clk_div_counter[1]_i_1_n_0\
    );
\clk_div_counter[1]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data_out_enable_reg(14),
      I1 => data_out_enable_reg(15),
      O => \clk_div_counter[1]_i_10_n_0\
    );
\clk_div_counter[1]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => data_out_enable_reg(12),
      I1 => data_out_enable_reg(11),
      I2 => data_out_enable_reg(10),
      O => \clk_div_counter[1]_i_11_n_0\
    );
\clk_div_counter[1]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => data_out_enable_reg(9),
      I1 => data_out_enable_reg(8),
      I2 => data_out_enable_reg(7),
      O => \clk_div_counter[1]_i_12_n_0\
    );
\clk_div_counter[1]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data_out_enable_reg(5),
      I1 => data_out_enable_reg(6),
      O => \clk_div_counter[1]_i_13_n_0\
    );
\clk_div_counter[1]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => data_out_enable_reg(0),
      I1 => data_out_enable_reg(3),
      I2 => data_out_enable_reg(4),
      I3 => data_out_enable_reg(2),
      I4 => data_out_enable_reg(1),
      O => \clk_div_counter[1]_i_14_n_0\
    );
\clk_div_counter[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFEFEFEFE"
    )
        port map (
      I0 => \clk_div_counter[1]_i_3_n_0\,
      I1 => \clk_div_counter[1]_i_4_n_0\,
      I2 => \clk_div_counter[1]_i_5_n_0\,
      I3 => \clk_div_counter[1]_i_6_n_0\,
      I4 => data_out_enable_reg(16),
      I5 => \clk_div_counter[1]_i_7_n_0\,
      O => \clk_div_counter[1]_i_2_n_0\
    );
\clk_div_counter[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFCFCFEFEFCFC"
    )
        port map (
      I0 => data_out_enable_reg(21),
      I1 => \data_out_enable[0]_i_5_n_0\,
      I2 => data_out_enable_reg(30),
      I3 => data_out_enable_reg(18),
      I4 => \clk_div_counter[1]_i_8_n_0\,
      I5 => data_out_enable_reg(20),
      O => \clk_div_counter[1]_i_3_n_0\
    );
\clk_div_counter[1]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data_out_enable_reg(19),
      I1 => \clk_div_counter[1]_i_9_n_0\,
      O => \clk_div_counter[1]_i_4_n_0\
    );
\clk_div_counter[1]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => data_out_enable_reg(26),
      I1 => data_out_enable_reg(27),
      I2 => data_out_enable_reg(25),
      I3 => data_out_enable_reg(24),
      O => \clk_div_counter[1]_i_5_n_0\
    );
\clk_div_counter[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A8A888A888A888"
    )
        port map (
      I0 => \clk_div_counter[1]_i_10_n_0\,
      I1 => data_out_enable_reg(13),
      I2 => \clk_div_counter[1]_i_11_n_0\,
      I3 => \clk_div_counter[1]_i_12_n_0\,
      I4 => \clk_div_counter[1]_i_13_n_0\,
      I5 => \clk_div_counter[1]_i_14_n_0\,
      O => \clk_div_counter[1]_i_6_n_0\
    );
\clk_div_counter[1]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \clk_div_counter[1]_i_9_n_0\,
      I1 => data_out_enable_reg(17),
      O => \clk_div_counter[1]_i_7_n_0\
    );
\clk_div_counter[1]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => data_out_enable_reg(26),
      I1 => data_out_enable_reg(27),
      I2 => data_out_enable_reg(25),
      I3 => data_out_enable_reg(23),
      I4 => data_out_enable_reg(22),
      O => \clk_div_counter[1]_i_8_n_0\
    );
\clk_div_counter[1]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => data_out_enable_reg(22),
      I1 => data_out_enable_reg(23),
      I2 => data_out_enable_reg(25),
      I3 => data_out_enable_reg(27),
      I4 => data_out_enable_reg(26),
      I5 => data_out_enable_reg(20),
      O => \clk_div_counter[1]_i_9_n_0\
    );
\clk_div_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \clk_div_counter[0]_i_1_n_0\,
      Q => clk_div_counter(0),
      R => '0'
    );
\clk_div_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \clk_div_counter[1]_i_1_n_0\,
      Q => clk_div_counter(1),
      R => '0'
    );
clk_reset_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ECEEEEEEECEEECEE"
    )
        port map (
      I0 => clk_reset_counter_reg(21),
      I1 => clk_reset_INST_0_i_1_n_0,
      I2 => clk_reset_counter_reg(20),
      I3 => clk_reset_INST_0_i_2_n_0,
      I4 => clk_reset_INST_0_i_3_n_0,
      I5 => clk_reset_INST_0_i_4_n_0,
      O => clk_reset
    );
clk_reset_INST_0_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => clk_reset_counter_reg(24),
      I1 => clk_reset_counter_reg(23),
      I2 => clk_reset_counter_reg(22),
      I3 => clk_reset_INST_0_i_5_n_0,
      I4 => clk_reset_INST_0_i_6_n_0,
      O => clk_reset_INST_0_i_1_n_0
    );
clk_reset_INST_0_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => clk_reset_counter_reg(18),
      I1 => clk_reset_counter_reg(19),
      I2 => clk_reset_counter_reg(17),
      O => clk_reset_INST_0_i_2_n_0
    );
clk_reset_INST_0_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => clk_reset_counter_reg(18),
      I1 => clk_reset_counter_reg(19),
      I2 => clk_reset_counter_reg(15),
      I3 => clk_reset_counter_reg(16),
      I4 => clk_reset_counter_reg(14),
      O => clk_reset_INST_0_i_3_n_0
    );
clk_reset_INST_0_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEAAAAAAFEAAAAAA"
    )
        port map (
      I0 => clk_reset_INST_0_i_7_n_0,
      I1 => clk_reset_counter_reg(8),
      I2 => clk_reset_counter_reg(7),
      I3 => clk_reset_counter_reg(9),
      I4 => clk_reset_counter_reg(10),
      I5 => clk_reset_INST_0_i_8_n_0,
      O => clk_reset_INST_0_i_4_n_0
    );
clk_reset_INST_0_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => clk_reset_counter_reg(31),
      I1 => clk_reset_counter_reg(29),
      I2 => clk_reset_counter_reg(30),
      O => clk_reset_INST_0_i_5_n_0
    );
clk_reset_INST_0_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => clk_reset_counter_reg(27),
      I1 => clk_reset_counter_reg(28),
      I2 => clk_reset_counter_reg(25),
      I3 => clk_reset_counter_reg(26),
      O => clk_reset_INST_0_i_6_n_0
    );
clk_reset_INST_0_i_7: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => clk_reset_counter_reg(11),
      I1 => clk_reset_counter_reg(12),
      I2 => clk_reset_counter_reg(13),
      O => clk_reset_INST_0_i_7_n_0
    );
clk_reset_INST_0_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => clk_reset_INST_0_i_9_n_0,
      I1 => clk_reset_counter_reg(6),
      O => clk_reset_INST_0_i_8_n_0
    );
clk_reset_INST_0_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => clk_reset_counter_reg(2),
      I1 => clk_reset_counter_reg(3),
      I2 => clk_reset_counter_reg(4),
      I3 => clk_reset_counter_reg(1),
      I4 => clk_reset_counter_reg(5),
      I5 => clk_reset_counter_reg(0),
      O => clk_reset_INST_0_i_9_n_0
    );
\clk_reset_counter[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF4544"
    )
        port map (
      I0 => \clk_reset_counter[0]_i_3_n_0\,
      I1 => clk_reset_counter_reg(15),
      I2 => \clk_reset_counter[0]_i_4_n_0\,
      I3 => clk_reset_counter_reg(14),
      I4 => \clk_reset_counter[0]_i_5_n_0\,
      I5 => clk_reset_counter_reg(21),
      O => sel
    );
\clk_reset_counter[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => clk_reset_counter_reg(17),
      I1 => clk_reset_counter_reg(19),
      I2 => clk_reset_counter_reg(18),
      I3 => clk_reset_counter_reg(16),
      O => \clk_reset_counter[0]_i_3_n_0\
    );
\clk_reset_counter[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000555D"
    )
        port map (
      I0 => clk_reset_counter_reg(9),
      I1 => clk_reset_INST_0_i_8_n_0,
      I2 => clk_reset_counter_reg(8),
      I3 => clk_reset_counter_reg(7),
      I4 => clk_reset_INST_0_i_7_n_0,
      I5 => clk_reset_counter_reg(10),
      O => \clk_reset_counter[0]_i_4_n_0\
    );
\clk_reset_counter[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => clk_reset_counter_reg(20),
      I1 => clk_reset_INST_0_i_1_n_0,
      O => \clk_reset_counter[0]_i_5_n_0\
    );
\clk_reset_counter[0]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => clk_reset_counter_reg(3),
      O => \clk_reset_counter[0]_i_6_n_0\
    );
\clk_reset_counter[0]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => clk_reset_counter_reg(2),
      O => \clk_reset_counter[0]_i_7_n_0\
    );
\clk_reset_counter[0]_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => clk_reset_counter_reg(1),
      O => \clk_reset_counter[0]_i_8_n_0\
    );
\clk_reset_counter[0]_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => clk_reset_counter_reg(0),
      O => \clk_reset_counter[0]_i_9_n_0\
    );
\clk_reset_counter[12]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => clk_reset_counter_reg(15),
      O => \clk_reset_counter[12]_i_2_n_0\
    );
\clk_reset_counter[12]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => clk_reset_counter_reg(14),
      O => \clk_reset_counter[12]_i_3_n_0\
    );
\clk_reset_counter[12]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => clk_reset_counter_reg(13),
      O => \clk_reset_counter[12]_i_4_n_0\
    );
\clk_reset_counter[12]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => clk_reset_counter_reg(12),
      O => \clk_reset_counter[12]_i_5_n_0\
    );
\clk_reset_counter[16]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => clk_reset_counter_reg(19),
      O => \clk_reset_counter[16]_i_2_n_0\
    );
\clk_reset_counter[16]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => clk_reset_counter_reg(18),
      O => \clk_reset_counter[16]_i_3_n_0\
    );
\clk_reset_counter[16]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => clk_reset_counter_reg(17),
      O => \clk_reset_counter[16]_i_4_n_0\
    );
\clk_reset_counter[16]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => clk_reset_counter_reg(16),
      O => \clk_reset_counter[16]_i_5_n_0\
    );
\clk_reset_counter[20]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => clk_reset_counter_reg(23),
      O => \clk_reset_counter[20]_i_2_n_0\
    );
\clk_reset_counter[20]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => clk_reset_counter_reg(22),
      O => \clk_reset_counter[20]_i_3_n_0\
    );
\clk_reset_counter[20]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => clk_reset_counter_reg(21),
      O => \clk_reset_counter[20]_i_4_n_0\
    );
\clk_reset_counter[20]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => clk_reset_counter_reg(20),
      O => \clk_reset_counter[20]_i_5_n_0\
    );
\clk_reset_counter[24]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => clk_reset_counter_reg(27),
      O => \clk_reset_counter[24]_i_2_n_0\
    );
\clk_reset_counter[24]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => clk_reset_counter_reg(26),
      O => \clk_reset_counter[24]_i_3_n_0\
    );
\clk_reset_counter[24]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => clk_reset_counter_reg(25),
      O => \clk_reset_counter[24]_i_4_n_0\
    );
\clk_reset_counter[24]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => clk_reset_counter_reg(24),
      O => \clk_reset_counter[24]_i_5_n_0\
    );
\clk_reset_counter[28]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => clk_reset_counter_reg(31),
      O => \clk_reset_counter[28]_i_2_n_0\
    );
\clk_reset_counter[28]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => clk_reset_counter_reg(30),
      O => \clk_reset_counter[28]_i_3_n_0\
    );
\clk_reset_counter[28]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => clk_reset_counter_reg(29),
      O => \clk_reset_counter[28]_i_4_n_0\
    );
\clk_reset_counter[28]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => clk_reset_counter_reg(28),
      O => \clk_reset_counter[28]_i_5_n_0\
    );
\clk_reset_counter[4]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => clk_reset_counter_reg(7),
      O => \clk_reset_counter[4]_i_2_n_0\
    );
\clk_reset_counter[4]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => clk_reset_counter_reg(6),
      O => \clk_reset_counter[4]_i_3_n_0\
    );
\clk_reset_counter[4]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => clk_reset_counter_reg(5),
      O => \clk_reset_counter[4]_i_4_n_0\
    );
\clk_reset_counter[4]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => clk_reset_counter_reg(4),
      O => \clk_reset_counter[4]_i_5_n_0\
    );
\clk_reset_counter[8]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => clk_reset_counter_reg(11),
      O => \clk_reset_counter[8]_i_2_n_0\
    );
\clk_reset_counter[8]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => clk_reset_counter_reg(10),
      O => \clk_reset_counter[8]_i_3_n_0\
    );
\clk_reset_counter[8]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => clk_reset_counter_reg(9),
      O => \clk_reset_counter[8]_i_4_n_0\
    );
\clk_reset_counter[8]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => clk_reset_counter_reg(8),
      O => \clk_reset_counter[8]_i_5_n_0\
    );
\clk_reset_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100_mhz,
      CE => sel,
      D => \clk_reset_counter_reg[0]_i_2_n_7\,
      Q => clk_reset_counter_reg(0),
      R => '0'
    );
\clk_reset_counter_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \clk_reset_counter_reg[0]_i_2_n_0\,
      CO(2) => \clk_reset_counter_reg[0]_i_2_n_1\,
      CO(1) => \clk_reset_counter_reg[0]_i_2_n_2\,
      CO(0) => \clk_reset_counter_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3) => \clk_reset_counter_reg[0]_i_2_n_4\,
      O(2) => \clk_reset_counter_reg[0]_i_2_n_5\,
      O(1) => \clk_reset_counter_reg[0]_i_2_n_6\,
      O(0) => \clk_reset_counter_reg[0]_i_2_n_7\,
      S(3) => \clk_reset_counter[0]_i_6_n_0\,
      S(2) => \clk_reset_counter[0]_i_7_n_0\,
      S(1) => \clk_reset_counter[0]_i_8_n_0\,
      S(0) => \clk_reset_counter[0]_i_9_n_0\
    );
\clk_reset_counter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100_mhz,
      CE => sel,
      D => \clk_reset_counter_reg[8]_i_1_n_5\,
      Q => clk_reset_counter_reg(10),
      R => '0'
    );
\clk_reset_counter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100_mhz,
      CE => sel,
      D => \clk_reset_counter_reg[8]_i_1_n_4\,
      Q => clk_reset_counter_reg(11),
      R => '0'
    );
\clk_reset_counter_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100_mhz,
      CE => sel,
      D => \clk_reset_counter_reg[12]_i_1_n_7\,
      Q => clk_reset_counter_reg(12),
      R => '0'
    );
\clk_reset_counter_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clk_reset_counter_reg[8]_i_1_n_0\,
      CO(3) => \clk_reset_counter_reg[12]_i_1_n_0\,
      CO(2) => \clk_reset_counter_reg[12]_i_1_n_1\,
      CO(1) => \clk_reset_counter_reg[12]_i_1_n_2\,
      CO(0) => \clk_reset_counter_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3) => \clk_reset_counter_reg[12]_i_1_n_4\,
      O(2) => \clk_reset_counter_reg[12]_i_1_n_5\,
      O(1) => \clk_reset_counter_reg[12]_i_1_n_6\,
      O(0) => \clk_reset_counter_reg[12]_i_1_n_7\,
      S(3) => \clk_reset_counter[12]_i_2_n_0\,
      S(2) => \clk_reset_counter[12]_i_3_n_0\,
      S(1) => \clk_reset_counter[12]_i_4_n_0\,
      S(0) => \clk_reset_counter[12]_i_5_n_0\
    );
\clk_reset_counter_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_100_mhz,
      CE => sel,
      D => \clk_reset_counter_reg[12]_i_1_n_6\,
      Q => clk_reset_counter_reg(13),
      R => '0'
    );
\clk_reset_counter_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_100_mhz,
      CE => sel,
      D => \clk_reset_counter_reg[12]_i_1_n_5\,
      Q => clk_reset_counter_reg(14),
      R => '0'
    );
\clk_reset_counter_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_100_mhz,
      CE => sel,
      D => \clk_reset_counter_reg[12]_i_1_n_4\,
      Q => clk_reset_counter_reg(15),
      R => '0'
    );
\clk_reset_counter_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_100_mhz,
      CE => sel,
      D => \clk_reset_counter_reg[16]_i_1_n_7\,
      Q => clk_reset_counter_reg(16),
      R => '0'
    );
\clk_reset_counter_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clk_reset_counter_reg[12]_i_1_n_0\,
      CO(3) => \clk_reset_counter_reg[16]_i_1_n_0\,
      CO(2) => \clk_reset_counter_reg[16]_i_1_n_1\,
      CO(1) => \clk_reset_counter_reg[16]_i_1_n_2\,
      CO(0) => \clk_reset_counter_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3) => \clk_reset_counter_reg[16]_i_1_n_4\,
      O(2) => \clk_reset_counter_reg[16]_i_1_n_5\,
      O(1) => \clk_reset_counter_reg[16]_i_1_n_6\,
      O(0) => \clk_reset_counter_reg[16]_i_1_n_7\,
      S(3) => \clk_reset_counter[16]_i_2_n_0\,
      S(2) => \clk_reset_counter[16]_i_3_n_0\,
      S(1) => \clk_reset_counter[16]_i_4_n_0\,
      S(0) => \clk_reset_counter[16]_i_5_n_0\
    );
\clk_reset_counter_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100_mhz,
      CE => sel,
      D => \clk_reset_counter_reg[16]_i_1_n_6\,
      Q => clk_reset_counter_reg(17),
      R => '0'
    );
\clk_reset_counter_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_100_mhz,
      CE => sel,
      D => \clk_reset_counter_reg[16]_i_1_n_5\,
      Q => clk_reset_counter_reg(18),
      R => '0'
    );
\clk_reset_counter_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100_mhz,
      CE => sel,
      D => \clk_reset_counter_reg[16]_i_1_n_4\,
      Q => clk_reset_counter_reg(19),
      R => '0'
    );
\clk_reset_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100_mhz,
      CE => sel,
      D => \clk_reset_counter_reg[0]_i_2_n_6\,
      Q => clk_reset_counter_reg(1),
      R => '0'
    );
\clk_reset_counter_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_100_mhz,
      CE => sel,
      D => \clk_reset_counter_reg[20]_i_1_n_7\,
      Q => clk_reset_counter_reg(20),
      R => '0'
    );
\clk_reset_counter_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clk_reset_counter_reg[16]_i_1_n_0\,
      CO(3) => \clk_reset_counter_reg[20]_i_1_n_0\,
      CO(2) => \clk_reset_counter_reg[20]_i_1_n_1\,
      CO(1) => \clk_reset_counter_reg[20]_i_1_n_2\,
      CO(0) => \clk_reset_counter_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3) => \clk_reset_counter_reg[20]_i_1_n_4\,
      O(2) => \clk_reset_counter_reg[20]_i_1_n_5\,
      O(1) => \clk_reset_counter_reg[20]_i_1_n_6\,
      O(0) => \clk_reset_counter_reg[20]_i_1_n_7\,
      S(3) => \clk_reset_counter[20]_i_2_n_0\,
      S(2) => \clk_reset_counter[20]_i_3_n_0\,
      S(1) => \clk_reset_counter[20]_i_4_n_0\,
      S(0) => \clk_reset_counter[20]_i_5_n_0\
    );
\clk_reset_counter_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_100_mhz,
      CE => sel,
      D => \clk_reset_counter_reg[20]_i_1_n_6\,
      Q => clk_reset_counter_reg(21),
      R => '0'
    );
\clk_reset_counter_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_100_mhz,
      CE => sel,
      D => \clk_reset_counter_reg[20]_i_1_n_5\,
      Q => clk_reset_counter_reg(22),
      R => '0'
    );
\clk_reset_counter_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_100_mhz,
      CE => sel,
      D => \clk_reset_counter_reg[20]_i_1_n_4\,
      Q => clk_reset_counter_reg(23),
      R => '0'
    );
\clk_reset_counter_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_100_mhz,
      CE => sel,
      D => \clk_reset_counter_reg[24]_i_1_n_7\,
      Q => clk_reset_counter_reg(24),
      R => '0'
    );
\clk_reset_counter_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clk_reset_counter_reg[20]_i_1_n_0\,
      CO(3) => \clk_reset_counter_reg[24]_i_1_n_0\,
      CO(2) => \clk_reset_counter_reg[24]_i_1_n_1\,
      CO(1) => \clk_reset_counter_reg[24]_i_1_n_2\,
      CO(0) => \clk_reset_counter_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3) => \clk_reset_counter_reg[24]_i_1_n_4\,
      O(2) => \clk_reset_counter_reg[24]_i_1_n_5\,
      O(1) => \clk_reset_counter_reg[24]_i_1_n_6\,
      O(0) => \clk_reset_counter_reg[24]_i_1_n_7\,
      S(3) => \clk_reset_counter[24]_i_2_n_0\,
      S(2) => \clk_reset_counter[24]_i_3_n_0\,
      S(1) => \clk_reset_counter[24]_i_4_n_0\,
      S(0) => \clk_reset_counter[24]_i_5_n_0\
    );
\clk_reset_counter_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100_mhz,
      CE => sel,
      D => \clk_reset_counter_reg[24]_i_1_n_6\,
      Q => clk_reset_counter_reg(25),
      R => '0'
    );
\clk_reset_counter_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_100_mhz,
      CE => sel,
      D => \clk_reset_counter_reg[24]_i_1_n_5\,
      Q => clk_reset_counter_reg(26),
      R => '0'
    );
\clk_reset_counter_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100_mhz,
      CE => sel,
      D => \clk_reset_counter_reg[24]_i_1_n_4\,
      Q => clk_reset_counter_reg(27),
      R => '0'
    );
\clk_reset_counter_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100_mhz,
      CE => sel,
      D => \clk_reset_counter_reg[28]_i_1_n_7\,
      Q => clk_reset_counter_reg(28),
      R => '0'
    );
\clk_reset_counter_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clk_reset_counter_reg[24]_i_1_n_0\,
      CO(3) => \NLW_clk_reset_counter_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \clk_reset_counter_reg[28]_i_1_n_1\,
      CO(1) => \clk_reset_counter_reg[28]_i_1_n_2\,
      CO(0) => \clk_reset_counter_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0111",
      O(3) => \clk_reset_counter_reg[28]_i_1_n_4\,
      O(2) => \clk_reset_counter_reg[28]_i_1_n_5\,
      O(1) => \clk_reset_counter_reg[28]_i_1_n_6\,
      O(0) => \clk_reset_counter_reg[28]_i_1_n_7\,
      S(3) => \clk_reset_counter[28]_i_2_n_0\,
      S(2) => \clk_reset_counter[28]_i_3_n_0\,
      S(1) => \clk_reset_counter[28]_i_4_n_0\,
      S(0) => \clk_reset_counter[28]_i_5_n_0\
    );
\clk_reset_counter_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100_mhz,
      CE => sel,
      D => \clk_reset_counter_reg[28]_i_1_n_6\,
      Q => clk_reset_counter_reg(29),
      R => '0'
    );
\clk_reset_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100_mhz,
      CE => sel,
      D => \clk_reset_counter_reg[0]_i_2_n_5\,
      Q => clk_reset_counter_reg(2),
      R => '0'
    );
\clk_reset_counter_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100_mhz,
      CE => sel,
      D => \clk_reset_counter_reg[28]_i_1_n_5\,
      Q => clk_reset_counter_reg(30),
      R => '0'
    );
\clk_reset_counter_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100_mhz,
      CE => sel,
      D => \clk_reset_counter_reg[28]_i_1_n_4\,
      Q => clk_reset_counter_reg(31),
      R => '0'
    );
\clk_reset_counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100_mhz,
      CE => sel,
      D => \clk_reset_counter_reg[0]_i_2_n_4\,
      Q => clk_reset_counter_reg(3),
      R => '0'
    );
\clk_reset_counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100_mhz,
      CE => sel,
      D => \clk_reset_counter_reg[4]_i_1_n_7\,
      Q => clk_reset_counter_reg(4),
      R => '0'
    );
\clk_reset_counter_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clk_reset_counter_reg[0]_i_2_n_0\,
      CO(3) => \clk_reset_counter_reg[4]_i_1_n_0\,
      CO(2) => \clk_reset_counter_reg[4]_i_1_n_1\,
      CO(1) => \clk_reset_counter_reg[4]_i_1_n_2\,
      CO(0) => \clk_reset_counter_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3) => \clk_reset_counter_reg[4]_i_1_n_4\,
      O(2) => \clk_reset_counter_reg[4]_i_1_n_5\,
      O(1) => \clk_reset_counter_reg[4]_i_1_n_6\,
      O(0) => \clk_reset_counter_reg[4]_i_1_n_7\,
      S(3) => \clk_reset_counter[4]_i_2_n_0\,
      S(2) => \clk_reset_counter[4]_i_3_n_0\,
      S(1) => \clk_reset_counter[4]_i_4_n_0\,
      S(0) => \clk_reset_counter[4]_i_5_n_0\
    );
\clk_reset_counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100_mhz,
      CE => sel,
      D => \clk_reset_counter_reg[4]_i_1_n_6\,
      Q => clk_reset_counter_reg(5),
      R => '0'
    );
\clk_reset_counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100_mhz,
      CE => sel,
      D => \clk_reset_counter_reg[4]_i_1_n_5\,
      Q => clk_reset_counter_reg(6),
      R => '0'
    );
\clk_reset_counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100_mhz,
      CE => sel,
      D => \clk_reset_counter_reg[4]_i_1_n_4\,
      Q => clk_reset_counter_reg(7),
      R => '0'
    );
\clk_reset_counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_100_mhz,
      CE => sel,
      D => \clk_reset_counter_reg[8]_i_1_n_7\,
      Q => clk_reset_counter_reg(8),
      R => '0'
    );
\clk_reset_counter_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clk_reset_counter_reg[4]_i_1_n_0\,
      CO(3) => \clk_reset_counter_reg[8]_i_1_n_0\,
      CO(2) => \clk_reset_counter_reg[8]_i_1_n_1\,
      CO(1) => \clk_reset_counter_reg[8]_i_1_n_2\,
      CO(0) => \clk_reset_counter_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3) => \clk_reset_counter_reg[8]_i_1_n_4\,
      O(2) => \clk_reset_counter_reg[8]_i_1_n_5\,
      O(1) => \clk_reset_counter_reg[8]_i_1_n_6\,
      O(0) => \clk_reset_counter_reg[8]_i_1_n_7\,
      S(3) => \clk_reset_counter[8]_i_2_n_0\,
      S(2) => \clk_reset_counter[8]_i_3_n_0\,
      S(1) => \clk_reset_counter[8]_i_4_n_0\,
      S(0) => \clk_reset_counter[8]_i_5_n_0\
    );
\clk_reset_counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100_mhz,
      CE => sel,
      D => \clk_reset_counter_reg[8]_i_1_n_6\,
      Q => clk_reset_counter_reg(9),
      R => '0'
    );
\data_out_enable[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555555DDDDDDFD"
    )
        port map (
      I0 => data_out_enable_reg(30),
      I1 => \data_out_enable[0]_i_3_n_0\,
      I2 => \data_out_enable[0]_i_4_n_0\,
      I3 => data_out_enable_reg(25),
      I4 => data_out_enable_reg(24),
      I5 => \data_out_enable[0]_i_5_n_0\,
      O => \data_out_enable[0]_i_1_n_0\
    );
\data_out_enable[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => data_out_enable_reg(26),
      I1 => data_out_enable_reg(27),
      O => \data_out_enable[0]_i_3_n_0\
    );
\data_out_enable[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002FFFFFFFFFFFF"
    )
        port map (
      I0 => \data_out_enable[0]_i_7_n_0\,
      I1 => data_out_enable_reg(21),
      I2 => data_out_enable_reg(20),
      I3 => data_out_enable_reg(19),
      I4 => data_out_enable_reg(23),
      I5 => data_out_enable_reg(22),
      O => \data_out_enable[0]_i_4_n_0\
    );
\data_out_enable[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => data_out_enable_reg(28),
      I1 => data_out_enable_reg(29),
      O => \data_out_enable[0]_i_5_n_0\
    );
\data_out_enable[0]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => data_out_enable_reg(0),
      O => \data_out_enable[0]_i_6_n_0\
    );
\data_out_enable[0]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1055FFFF"
    )
        port map (
      I0 => data_out_enable_reg(17),
      I1 => data_out_enable_reg(15),
      I2 => \data_out_enable[0]_i_8_n_0\,
      I3 => data_out_enable_reg(16),
      I4 => data_out_enable_reg(18),
      O => \data_out_enable[0]_i_7_n_0\
    );
\data_out_enable[0]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00015555FFFFFFFF"
    )
        port map (
      I0 => data_out_enable_reg(13),
      I1 => data_out_enable_reg(9),
      I2 => data_out_enable_reg(10),
      I3 => data_out_enable_reg(11),
      I4 => data_out_enable_reg(12),
      I5 => data_out_enable_reg(14),
      O => \data_out_enable[0]_i_8_n_0\
    );
\data_out_enable_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_enable[0]_i_1_n_0\,
      D => \data_out_enable_reg[0]_i_2_n_7\,
      Q => data_out_enable_reg(0),
      R => '0'
    );
\data_out_enable_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \data_out_enable_reg[0]_i_2_n_0\,
      CO(2) => \data_out_enable_reg[0]_i_2_n_1\,
      CO(1) => \data_out_enable_reg[0]_i_2_n_2\,
      CO(0) => \data_out_enable_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \data_out_enable_reg[0]_i_2_n_4\,
      O(2) => \data_out_enable_reg[0]_i_2_n_5\,
      O(1) => \data_out_enable_reg[0]_i_2_n_6\,
      O(0) => \data_out_enable_reg[0]_i_2_n_7\,
      S(3 downto 1) => data_out_enable_reg(3 downto 1),
      S(0) => \data_out_enable[0]_i_6_n_0\
    );
\data_out_enable_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_enable[0]_i_1_n_0\,
      D => \data_out_enable_reg[8]_i_1_n_5\,
      Q => data_out_enable_reg(10),
      R => '0'
    );
\data_out_enable_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_enable[0]_i_1_n_0\,
      D => \data_out_enable_reg[8]_i_1_n_4\,
      Q => data_out_enable_reg(11),
      R => '0'
    );
\data_out_enable_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_enable[0]_i_1_n_0\,
      D => \data_out_enable_reg[12]_i_1_n_7\,
      Q => data_out_enable_reg(12),
      R => '0'
    );
\data_out_enable_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \data_out_enable_reg[8]_i_1_n_0\,
      CO(3) => \data_out_enable_reg[12]_i_1_n_0\,
      CO(2) => \data_out_enable_reg[12]_i_1_n_1\,
      CO(1) => \data_out_enable_reg[12]_i_1_n_2\,
      CO(0) => \data_out_enable_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \data_out_enable_reg[12]_i_1_n_4\,
      O(2) => \data_out_enable_reg[12]_i_1_n_5\,
      O(1) => \data_out_enable_reg[12]_i_1_n_6\,
      O(0) => \data_out_enable_reg[12]_i_1_n_7\,
      S(3 downto 0) => data_out_enable_reg(15 downto 12)
    );
\data_out_enable_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_enable[0]_i_1_n_0\,
      D => \data_out_enable_reg[12]_i_1_n_6\,
      Q => data_out_enable_reg(13),
      R => '0'
    );
\data_out_enable_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_enable[0]_i_1_n_0\,
      D => \data_out_enable_reg[12]_i_1_n_5\,
      Q => data_out_enable_reg(14),
      R => '0'
    );
\data_out_enable_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_enable[0]_i_1_n_0\,
      D => \data_out_enable_reg[12]_i_1_n_4\,
      Q => data_out_enable_reg(15),
      R => '0'
    );
\data_out_enable_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_enable[0]_i_1_n_0\,
      D => \data_out_enable_reg[16]_i_1_n_7\,
      Q => data_out_enable_reg(16),
      R => '0'
    );
\data_out_enable_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \data_out_enable_reg[12]_i_1_n_0\,
      CO(3) => \data_out_enable_reg[16]_i_1_n_0\,
      CO(2) => \data_out_enable_reg[16]_i_1_n_1\,
      CO(1) => \data_out_enable_reg[16]_i_1_n_2\,
      CO(0) => \data_out_enable_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \data_out_enable_reg[16]_i_1_n_4\,
      O(2) => \data_out_enable_reg[16]_i_1_n_5\,
      O(1) => \data_out_enable_reg[16]_i_1_n_6\,
      O(0) => \data_out_enable_reg[16]_i_1_n_7\,
      S(3 downto 0) => data_out_enable_reg(19 downto 16)
    );
\data_out_enable_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_enable[0]_i_1_n_0\,
      D => \data_out_enable_reg[16]_i_1_n_6\,
      Q => data_out_enable_reg(17),
      R => '0'
    );
\data_out_enable_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_enable[0]_i_1_n_0\,
      D => \data_out_enable_reg[16]_i_1_n_5\,
      Q => data_out_enable_reg(18),
      R => '0'
    );
\data_out_enable_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_enable[0]_i_1_n_0\,
      D => \data_out_enable_reg[16]_i_1_n_4\,
      Q => data_out_enable_reg(19),
      R => '0'
    );
\data_out_enable_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_enable[0]_i_1_n_0\,
      D => \data_out_enable_reg[0]_i_2_n_6\,
      Q => data_out_enable_reg(1),
      R => '0'
    );
\data_out_enable_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_enable[0]_i_1_n_0\,
      D => \data_out_enable_reg[20]_i_1_n_7\,
      Q => data_out_enable_reg(20),
      R => '0'
    );
\data_out_enable_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \data_out_enable_reg[16]_i_1_n_0\,
      CO(3) => \data_out_enable_reg[20]_i_1_n_0\,
      CO(2) => \data_out_enable_reg[20]_i_1_n_1\,
      CO(1) => \data_out_enable_reg[20]_i_1_n_2\,
      CO(0) => \data_out_enable_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \data_out_enable_reg[20]_i_1_n_4\,
      O(2) => \data_out_enable_reg[20]_i_1_n_5\,
      O(1) => \data_out_enable_reg[20]_i_1_n_6\,
      O(0) => \data_out_enable_reg[20]_i_1_n_7\,
      S(3 downto 0) => data_out_enable_reg(23 downto 20)
    );
\data_out_enable_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_enable[0]_i_1_n_0\,
      D => \data_out_enable_reg[20]_i_1_n_6\,
      Q => data_out_enable_reg(21),
      R => '0'
    );
\data_out_enable_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_enable[0]_i_1_n_0\,
      D => \data_out_enable_reg[20]_i_1_n_5\,
      Q => data_out_enable_reg(22),
      R => '0'
    );
\data_out_enable_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_enable[0]_i_1_n_0\,
      D => \data_out_enable_reg[20]_i_1_n_4\,
      Q => data_out_enable_reg(23),
      R => '0'
    );
\data_out_enable_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_enable[0]_i_1_n_0\,
      D => \data_out_enable_reg[24]_i_1_n_7\,
      Q => data_out_enable_reg(24),
      R => '0'
    );
\data_out_enable_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \data_out_enable_reg[20]_i_1_n_0\,
      CO(3) => \data_out_enable_reg[24]_i_1_n_0\,
      CO(2) => \data_out_enable_reg[24]_i_1_n_1\,
      CO(1) => \data_out_enable_reg[24]_i_1_n_2\,
      CO(0) => \data_out_enable_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \data_out_enable_reg[24]_i_1_n_4\,
      O(2) => \data_out_enable_reg[24]_i_1_n_5\,
      O(1) => \data_out_enable_reg[24]_i_1_n_6\,
      O(0) => \data_out_enable_reg[24]_i_1_n_7\,
      S(3 downto 0) => data_out_enable_reg(27 downto 24)
    );
\data_out_enable_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_enable[0]_i_1_n_0\,
      D => \data_out_enable_reg[24]_i_1_n_6\,
      Q => data_out_enable_reg(25),
      R => '0'
    );
\data_out_enable_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_enable[0]_i_1_n_0\,
      D => \data_out_enable_reg[24]_i_1_n_5\,
      Q => data_out_enable_reg(26),
      R => '0'
    );
\data_out_enable_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_enable[0]_i_1_n_0\,
      D => \data_out_enable_reg[24]_i_1_n_4\,
      Q => data_out_enable_reg(27),
      R => '0'
    );
\data_out_enable_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_enable[0]_i_1_n_0\,
      D => \data_out_enable_reg[28]_i_1_n_7\,
      Q => data_out_enable_reg(28),
      R => '0'
    );
\data_out_enable_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \data_out_enable_reg[24]_i_1_n_0\,
      CO(3 downto 2) => \NLW_data_out_enable_reg[28]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \data_out_enable_reg[28]_i_1_n_2\,
      CO(0) => \data_out_enable_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_data_out_enable_reg[28]_i_1_O_UNCONNECTED\(3),
      O(2) => \data_out_enable_reg[28]_i_1_n_5\,
      O(1) => \data_out_enable_reg[28]_i_1_n_6\,
      O(0) => \data_out_enable_reg[28]_i_1_n_7\,
      S(3) => '0',
      S(2 downto 0) => data_out_enable_reg(30 downto 28)
    );
\data_out_enable_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_enable[0]_i_1_n_0\,
      D => \data_out_enable_reg[28]_i_1_n_6\,
      Q => data_out_enable_reg(29),
      R => '0'
    );
\data_out_enable_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_enable[0]_i_1_n_0\,
      D => \data_out_enable_reg[0]_i_2_n_5\,
      Q => data_out_enable_reg(2),
      R => '0'
    );
\data_out_enable_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_enable[0]_i_1_n_0\,
      D => \data_out_enable_reg[28]_i_1_n_5\,
      Q => data_out_enable_reg(30),
      R => '0'
    );
\data_out_enable_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_enable[0]_i_1_n_0\,
      D => \data_out_enable_reg[0]_i_2_n_4\,
      Q => data_out_enable_reg(3),
      R => '0'
    );
\data_out_enable_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_enable[0]_i_1_n_0\,
      D => \data_out_enable_reg[4]_i_1_n_7\,
      Q => data_out_enable_reg(4),
      R => '0'
    );
\data_out_enable_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \data_out_enable_reg[0]_i_2_n_0\,
      CO(3) => \data_out_enable_reg[4]_i_1_n_0\,
      CO(2) => \data_out_enable_reg[4]_i_1_n_1\,
      CO(1) => \data_out_enable_reg[4]_i_1_n_2\,
      CO(0) => \data_out_enable_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \data_out_enable_reg[4]_i_1_n_4\,
      O(2) => \data_out_enable_reg[4]_i_1_n_5\,
      O(1) => \data_out_enable_reg[4]_i_1_n_6\,
      O(0) => \data_out_enable_reg[4]_i_1_n_7\,
      S(3 downto 0) => data_out_enable_reg(7 downto 4)
    );
\data_out_enable_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_enable[0]_i_1_n_0\,
      D => \data_out_enable_reg[4]_i_1_n_6\,
      Q => data_out_enable_reg(5),
      R => '0'
    );
\data_out_enable_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_enable[0]_i_1_n_0\,
      D => \data_out_enable_reg[4]_i_1_n_5\,
      Q => data_out_enable_reg(6),
      R => '0'
    );
\data_out_enable_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_enable[0]_i_1_n_0\,
      D => \data_out_enable_reg[4]_i_1_n_4\,
      Q => data_out_enable_reg(7),
      R => '0'
    );
\data_out_enable_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_enable[0]_i_1_n_0\,
      D => \data_out_enable_reg[8]_i_1_n_7\,
      Q => data_out_enable_reg(8),
      R => '0'
    );
\data_out_enable_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \data_out_enable_reg[4]_i_1_n_0\,
      CO(3) => \data_out_enable_reg[8]_i_1_n_0\,
      CO(2) => \data_out_enable_reg[8]_i_1_n_1\,
      CO(1) => \data_out_enable_reg[8]_i_1_n_2\,
      CO(0) => \data_out_enable_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \data_out_enable_reg[8]_i_1_n_4\,
      O(2) => \data_out_enable_reg[8]_i_1_n_5\,
      O(1) => \data_out_enable_reg[8]_i_1_n_6\,
      O(0) => \data_out_enable_reg[8]_i_1_n_7\,
      S(3 downto 0) => data_out_enable_reg(11 downto 8)
    );
\data_out_enable_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_enable[0]_i_1_n_0\,
      D => \data_out_enable_reg[8]_i_1_n_6\,
      Q => data_out_enable_reg(9),
      R => '0'
    );
\data_val[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sig_48_khz_2,
      I1 => sig_48_khz_1,
      O => data_val0
    );
\data_val_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_1_mhz,
      CE => data_val0,
      D => audio_in(0),
      Q => data_val(0),
      R => '0'
    );
\data_val_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_1_mhz,
      CE => data_val0,
      D => audio_in(10),
      Q => data_val(10),
      R => '0'
    );
\data_val_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_1_mhz,
      CE => data_val0,
      D => audio_in(11),
      Q => data_val(11),
      R => '0'
    );
\data_val_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_1_mhz,
      CE => data_val0,
      D => audio_in(12),
      Q => data_val(12),
      R => '0'
    );
\data_val_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_1_mhz,
      CE => data_val0,
      D => audio_in(13),
      Q => data_val(13),
      R => '0'
    );
\data_val_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_1_mhz,
      CE => data_val0,
      D => audio_in(14),
      Q => data_val(14),
      R => '0'
    );
\data_val_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_1_mhz,
      CE => data_val0,
      D => audio_in(15),
      Q => data_val(15),
      R => '0'
    );
\data_val_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_1_mhz,
      CE => data_val0,
      D => audio_in(1),
      Q => data_val(1),
      R => '0'
    );
\data_val_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_1_mhz,
      CE => data_val0,
      D => audio_in(2),
      Q => data_val(2),
      R => '0'
    );
\data_val_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_1_mhz,
      CE => data_val0,
      D => audio_in(3),
      Q => data_val(3),
      R => '0'
    );
\data_val_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_1_mhz,
      CE => data_val0,
      D => audio_in(4),
      Q => data_val(4),
      R => '0'
    );
\data_val_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_1_mhz,
      CE => data_val0,
      D => audio_in(5),
      Q => data_val(5),
      R => '0'
    );
\data_val_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_1_mhz,
      CE => data_val0,
      D => audio_in(6),
      Q => data_val(6),
      R => '0'
    );
\data_val_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_1_mhz,
      CE => data_val0,
      D => audio_in(7),
      Q => data_val(7),
      R => '0'
    );
\data_val_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_1_mhz,
      CE => data_val0,
      D => audio_in(8),
      Q => data_val(8),
      R => '0'
    );
\data_val_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_1_mhz,
      CE => data_val0,
      D => audio_in(9),
      Q => data_val(9),
      R => '0'
    );
prclk_int_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \shift_reg[31]_i_3_n_0\,
      I1 => \^channel_enable\,
      O => prclk_int_i_1_n_0
    );
prclk_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => prclk_int_i_1_n_0,
      Q => \^channel_enable\,
      R => '0'
    );
\shift_reg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5CCCCCCC0CCCCCCC"
    )
        port map (
      I0 => \shift_reg[0]_i_2_n_0\,
      I1 => \shift_reg_reg_n_0_[0]\,
      I2 => \^bclk_int_reg_0\,
      I3 => clk_div_counter(0),
      I4 => clk_div_counter(1),
      I5 => data_val(0),
      O => \shift_reg[0]_i_1_n_0\
    );
\shift_reg[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => channel_enable_counter_reg(2),
      I1 => channel_enable_counter_reg(0),
      I2 => channel_enable_counter_reg(1),
      I3 => channel_enable_counter_reg(3),
      O => \shift_reg[0]_i_2_n_0\
    );
\shift_reg[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \shift_reg_reg_n_0_[9]\,
      I1 => \shift_reg[31]_i_3_n_0\,
      I2 => data_val(10),
      O => \shift_reg[10]_i_1_n_0\
    );
\shift_reg[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \shift_reg_reg_n_0_[10]\,
      I1 => \shift_reg[31]_i_3_n_0\,
      I2 => data_val(11),
      O => \shift_reg[11]_i_1_n_0\
    );
\shift_reg[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \shift_reg_reg_n_0_[11]\,
      I1 => \shift_reg[31]_i_3_n_0\,
      I2 => data_val(12),
      O => \shift_reg[12]_i_1_n_0\
    );
\shift_reg[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \shift_reg_reg_n_0_[12]\,
      I1 => \shift_reg[31]_i_3_n_0\,
      I2 => data_val(13),
      O => \shift_reg[13]_i_1_n_0\
    );
\shift_reg[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \shift_reg_reg_n_0_[13]\,
      I1 => \shift_reg[31]_i_3_n_0\,
      I2 => data_val(14),
      O => \shift_reg[14]_i_1_n_0\
    );
\shift_reg[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \shift_reg_reg_n_0_[14]\,
      I1 => \shift_reg[31]_i_3_n_0\,
      I2 => data_val(15),
      O => \shift_reg[15]_i_1_n_0\
    );
\shift_reg[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \shift_reg_reg_n_0_[15]\,
      I1 => \shift_reg[31]_i_3_n_0\,
      I2 => data_val(0),
      O => \shift_reg[16]_i_1_n_0\
    );
\shift_reg[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \shift_reg_reg_n_0_[16]\,
      I1 => \shift_reg[31]_i_3_n_0\,
      I2 => data_val(1),
      O => \shift_reg[17]_i_1_n_0\
    );
\shift_reg[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \shift_reg_reg_n_0_[17]\,
      I1 => \shift_reg[31]_i_3_n_0\,
      I2 => data_val(2),
      O => \shift_reg[18]_i_1_n_0\
    );
\shift_reg[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \shift_reg_reg_n_0_[18]\,
      I1 => \shift_reg[31]_i_3_n_0\,
      I2 => data_val(3),
      O => \shift_reg[19]_i_1_n_0\
    );
\shift_reg[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \shift_reg_reg_n_0_[0]\,
      I1 => \shift_reg[31]_i_3_n_0\,
      I2 => data_val(1),
      O => \shift_reg[1]_i_1_n_0\
    );
\shift_reg[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \shift_reg_reg_n_0_[19]\,
      I1 => \shift_reg[31]_i_3_n_0\,
      I2 => data_val(4),
      O => \shift_reg[20]_i_1_n_0\
    );
\shift_reg[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \shift_reg_reg_n_0_[20]\,
      I1 => \shift_reg[31]_i_3_n_0\,
      I2 => data_val(5),
      O => \shift_reg[21]_i_1_n_0\
    );
\shift_reg[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \shift_reg_reg_n_0_[21]\,
      I1 => \shift_reg[31]_i_3_n_0\,
      I2 => data_val(6),
      O => \shift_reg[22]_i_1_n_0\
    );
\shift_reg[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \shift_reg_reg_n_0_[22]\,
      I1 => \shift_reg[31]_i_3_n_0\,
      I2 => data_val(7),
      O => \shift_reg[23]_i_1_n_0\
    );
\shift_reg[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \shift_reg_reg_n_0_[23]\,
      I1 => \shift_reg[31]_i_3_n_0\,
      I2 => data_val(8),
      O => \shift_reg[24]_i_1_n_0\
    );
\shift_reg[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \shift_reg_reg_n_0_[24]\,
      I1 => \shift_reg[31]_i_3_n_0\,
      I2 => data_val(9),
      O => \shift_reg[25]_i_1_n_0\
    );
\shift_reg[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \shift_reg_reg_n_0_[25]\,
      I1 => \shift_reg[31]_i_3_n_0\,
      I2 => data_val(10),
      O => \shift_reg[26]_i_1_n_0\
    );
\shift_reg[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \shift_reg_reg_n_0_[26]\,
      I1 => \shift_reg[31]_i_3_n_0\,
      I2 => data_val(11),
      O => \shift_reg[27]_i_1_n_0\
    );
\shift_reg[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \shift_reg_reg_n_0_[27]\,
      I1 => \shift_reg[31]_i_3_n_0\,
      I2 => data_val(12),
      O => \shift_reg[28]_i_1_n_0\
    );
\shift_reg[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \shift_reg_reg_n_0_[28]\,
      I1 => \shift_reg[31]_i_3_n_0\,
      I2 => data_val(13),
      O => \shift_reg[29]_i_1_n_0\
    );
\shift_reg[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \shift_reg_reg_n_0_[1]\,
      I1 => \shift_reg[31]_i_3_n_0\,
      I2 => data_val(2),
      O => \shift_reg[2]_i_1_n_0\
    );
\shift_reg[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \shift_reg_reg_n_0_[29]\,
      I1 => \shift_reg[31]_i_3_n_0\,
      I2 => data_val(14),
      O => \shift_reg[30]_i_1_n_0\
    );
\shift_reg[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^bclk_int_reg_0\,
      I1 => clk_div_counter(0),
      I2 => clk_div_counter(1),
      O => shift_reg(31)
    );
\shift_reg[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \shift_reg_reg_n_0_[30]\,
      I1 => \shift_reg[31]_i_3_n_0\,
      I2 => data_val(15),
      O => \shift_reg[31]_i_2_n_0\
    );
\shift_reg[31]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
        port map (
      I0 => channel_enable_counter_reg(3),
      I1 => channel_enable_counter_reg(1),
      I2 => channel_enable_counter_reg(0),
      I3 => channel_enable_counter_reg(2),
      I4 => \shift_reg[31]_i_4_n_0\,
      O => \shift_reg[31]_i_3_n_0\
    );
\shift_reg[31]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => clk_div_counter(1),
      I1 => clk_div_counter(0),
      I2 => \^bclk_int_reg_0\,
      O => \shift_reg[31]_i_4_n_0\
    );
\shift_reg[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \shift_reg_reg_n_0_[2]\,
      I1 => \shift_reg[31]_i_3_n_0\,
      I2 => data_val(3),
      O => \shift_reg[3]_i_1_n_0\
    );
\shift_reg[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \shift_reg_reg_n_0_[3]\,
      I1 => \shift_reg[31]_i_3_n_0\,
      I2 => data_val(4),
      O => \shift_reg[4]_i_1_n_0\
    );
\shift_reg[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \shift_reg_reg_n_0_[4]\,
      I1 => \shift_reg[31]_i_3_n_0\,
      I2 => data_val(5),
      O => \shift_reg[5]_i_1_n_0\
    );
\shift_reg[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \shift_reg_reg_n_0_[5]\,
      I1 => \shift_reg[31]_i_3_n_0\,
      I2 => data_val(6),
      O => \shift_reg[6]_i_1_n_0\
    );
\shift_reg[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \shift_reg_reg_n_0_[6]\,
      I1 => \shift_reg[31]_i_3_n_0\,
      I2 => data_val(7),
      O => \shift_reg[7]_i_1_n_0\
    );
\shift_reg[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \shift_reg_reg_n_0_[7]\,
      I1 => \shift_reg[31]_i_3_n_0\,
      I2 => data_val(8),
      O => \shift_reg[8]_i_1_n_0\
    );
\shift_reg[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \shift_reg_reg_n_0_[8]\,
      I1 => \shift_reg[31]_i_3_n_0\,
      I2 => data_val(9),
      O => \shift_reg[9]_i_1_n_0\
    );
\shift_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \shift_reg[0]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[0]\,
      R => '0'
    );
\shift_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => shift_reg(31),
      D => \shift_reg[10]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[10]\,
      R => '0'
    );
\shift_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => shift_reg(31),
      D => \shift_reg[11]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[11]\,
      R => '0'
    );
\shift_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => shift_reg(31),
      D => \shift_reg[12]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[12]\,
      R => '0'
    );
\shift_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => shift_reg(31),
      D => \shift_reg[13]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[13]\,
      R => '0'
    );
\shift_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => shift_reg(31),
      D => \shift_reg[14]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[14]\,
      R => '0'
    );
\shift_reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => shift_reg(31),
      D => \shift_reg[15]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[15]\,
      R => '0'
    );
\shift_reg_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => shift_reg(31),
      D => \shift_reg[16]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[16]\,
      R => '0'
    );
\shift_reg_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => shift_reg(31),
      D => \shift_reg[17]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[17]\,
      R => '0'
    );
\shift_reg_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => shift_reg(31),
      D => \shift_reg[18]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[18]\,
      R => '0'
    );
\shift_reg_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => shift_reg(31),
      D => \shift_reg[19]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[19]\,
      R => '0'
    );
\shift_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => shift_reg(31),
      D => \shift_reg[1]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[1]\,
      R => '0'
    );
\shift_reg_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => shift_reg(31),
      D => \shift_reg[20]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[20]\,
      R => '0'
    );
\shift_reg_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => shift_reg(31),
      D => \shift_reg[21]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[21]\,
      R => '0'
    );
\shift_reg_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => shift_reg(31),
      D => \shift_reg[22]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[22]\,
      R => '0'
    );
\shift_reg_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => shift_reg(31),
      D => \shift_reg[23]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[23]\,
      R => '0'
    );
\shift_reg_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => shift_reg(31),
      D => \shift_reg[24]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[24]\,
      R => '0'
    );
\shift_reg_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => shift_reg(31),
      D => \shift_reg[25]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[25]\,
      R => '0'
    );
\shift_reg_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => shift_reg(31),
      D => \shift_reg[26]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[26]\,
      R => '0'
    );
\shift_reg_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => shift_reg(31),
      D => \shift_reg[27]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[27]\,
      R => '0'
    );
\shift_reg_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => shift_reg(31),
      D => \shift_reg[28]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[28]\,
      R => '0'
    );
\shift_reg_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => shift_reg(31),
      D => \shift_reg[29]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[29]\,
      R => '0'
    );
\shift_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => shift_reg(31),
      D => \shift_reg[2]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[2]\,
      R => '0'
    );
\shift_reg_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => shift_reg(31),
      D => \shift_reg[30]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[30]\,
      R => '0'
    );
\shift_reg_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => shift_reg(31),
      D => \shift_reg[31]_i_2_n_0\,
      Q => out_data,
      R => '0'
    );
\shift_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => shift_reg(31),
      D => \shift_reg[3]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[3]\,
      R => '0'
    );
\shift_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => shift_reg(31),
      D => \shift_reg[4]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[4]\,
      R => '0'
    );
\shift_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => shift_reg(31),
      D => \shift_reg[5]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[5]\,
      R => '0'
    );
\shift_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => shift_reg(31),
      D => \shift_reg[6]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[6]\,
      R => '0'
    );
\shift_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => shift_reg(31),
      D => \shift_reg[7]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[7]\,
      R => '0'
    );
\shift_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => shift_reg(31),
      D => \shift_reg[8]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[8]\,
      R => '0'
    );
\shift_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => shift_reg(31),
      D => \shift_reg[9]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[9]\,
      R => '0'
    );
sig_48_khz_0_reg: unisim.vcomponents.FDRE
     port map (
      C => clk_1_mhz,
      CE => '1',
      D => \^channel_enable\,
      Q => sig_48_khz_0,
      R => '0'
    );
sig_48_khz_1_reg: unisim.vcomponents.FDRE
     port map (
      C => clk_1_mhz,
      CE => '1',
      D => sig_48_khz_0,
      Q => sig_48_khz_1,
      R => '0'
    );
sig_48_khz_2_reg: unisim.vcomponents.FDRE
     port map (
      C => clk_1_mhz,
      CE => '1',
      D => sig_48_khz_1,
      Q => sig_48_khz_2,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_i2s_0_0 is
  port (
    clk : in STD_LOGIC;
    clk_1_mhz : in STD_LOGIC;
    clk_100_mhz : in STD_LOGIC;
    audio_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    clk_reset : out STD_LOGIC;
    clk_1_5_mhz : out STD_LOGIC;
    channel_enable : out STD_LOGIC;
    out_data : out STD_LOGIC;
    mute_en : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_i2s_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_i2s_0_0 : entity is "design_1_i2s_0_0,i2s,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_i2s_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_i2s_0_0 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_i2s_0_0 : entity is "i2s,Vivado 2019.1";
end design_1_i2s_0_0;

architecture STRUCTURE of design_1_i2s_0_0 is
  signal \<const1>\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET clk_reset, FREQ_HZ 85400000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of clk_reset : signal is "xilinx.com:signal:reset:1.0 clk_reset RST";
  attribute X_INTERFACE_PARAMETER of clk_reset : signal is "XIL_INTERFACENAME clk_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  mute_en <= \<const1>\;
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.design_1_i2s_0_0_i2s
     port map (
      audio_in(15 downto 0) => audio_in(15 downto 0),
      bclk_int_reg_0 => clk_1_5_mhz,
      channel_enable => channel_enable,
      clk => clk,
      clk_100_mhz => clk_100_mhz,
      clk_1_mhz => clk_1_mhz,
      clk_reset => clk_reset,
      out_data => out_data
    );
end STRUCTURE;
