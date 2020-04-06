-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.1 (lin64) Build 1846317 Fri Apr 14 18:54:47 MDT 2017
-- Date        : Sun Apr  5 18:34:32 2020
-- Host        : johan-Latitude-E5550 running 64-bit Ubuntu 16.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/johan/v/c64fpga/src/bd/ip/design_1_tape_interface_0_0/design_1_tape_interface_0_0_sim_netlist.vhdl
-- Design      : design_1_tape_interface_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_tape_interface_0_0_byteslicer is
  port (
    state : out STD_LOGIC_VECTOR ( 2 downto 0 );
    in0 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \timer_val_reg[23]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \timer_val_reg[3]\ : out STD_LOGIC;
    data_valid_byte : out STD_LOGIC;
    data_valid_read_word : in STD_LOGIC;
    clk_1_mhz : in STD_LOGIC;
    ack_sample_assem : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 31 downto 0 );
    state_0 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \timer_val_reg[18]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    restart : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_tape_interface_0_0_byteslicer : entity is "byteslicer";
end design_1_tape_interface_0_0_byteslicer;

architecture STRUCTURE of design_1_tape_interface_0_0_byteslicer is
  signal \data_reg[31]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \data_reg_reg_n_0_[10]\ : STD_LOGIC;
  signal \data_reg_reg_n_0_[11]\ : STD_LOGIC;
  signal \data_reg_reg_n_0_[12]\ : STD_LOGIC;
  signal \data_reg_reg_n_0_[13]\ : STD_LOGIC;
  signal \data_reg_reg_n_0_[14]\ : STD_LOGIC;
  signal \data_reg_reg_n_0_[15]\ : STD_LOGIC;
  signal \data_reg_reg_n_0_[16]\ : STD_LOGIC;
  signal \data_reg_reg_n_0_[17]\ : STD_LOGIC;
  signal \data_reg_reg_n_0_[18]\ : STD_LOGIC;
  signal \data_reg_reg_n_0_[19]\ : STD_LOGIC;
  signal \data_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \data_reg_reg_n_0_[20]\ : STD_LOGIC;
  signal \data_reg_reg_n_0_[21]\ : STD_LOGIC;
  signal \data_reg_reg_n_0_[22]\ : STD_LOGIC;
  signal \data_reg_reg_n_0_[23]\ : STD_LOGIC;
  signal \data_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \data_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \data_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \data_reg_reg_n_0_[5]\ : STD_LOGIC;
  signal \data_reg_reg_n_0_[6]\ : STD_LOGIC;
  signal \data_reg_reg_n_0_[7]\ : STD_LOGIC;
  signal \data_reg_reg_n_0_[8]\ : STD_LOGIC;
  signal \data_reg_reg_n_0_[9]\ : STD_LOGIC;
  signal data_valid_0 : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of data_valid_0 : signal is "true";
  signal data_valid_1 : STD_LOGIC;
  attribute async_reg of data_valid_1 : signal is "true";
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \^state\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \state[0]_i_1_n_0\ : STD_LOGIC;
  signal \state[1]_i_1_n_0\ : STD_LOGIC;
  signal \state[2]_i_1_n_0\ : STD_LOGIC;
  signal \timer_val[10]_i_5_n_0\ : STD_LOGIC;
  signal \timer_val[10]_i_6_n_0\ : STD_LOGIC;
  signal \^timer_val_reg[23]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^timer_val_reg[3]\ : STD_LOGIC;
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of data_valid_0_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of data_valid_0_reg : label is "yes";
  attribute ASYNC_REG_boolean of data_valid_1_reg : label is std.standard.true;
  attribute KEEP of data_valid_1_reg : label is "yes";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \timer_val[10]_i_4\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \timer_val[10]_i_5\ : label is "soft_lutpair0";
begin
  state(2 downto 0) <= \^state\(2 downto 0);
  \timer_val_reg[23]\(7 downto 0) <= \^timer_val_reg[23]\(7 downto 0);
  \timer_val_reg[3]\ <= \^timer_val_reg[3]\;
ack_inferred_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => data_valid_1,
      I1 => \^state\(1),
      I2 => \^state\(0),
      I3 => \^state\(2),
      O => in0
    );
\data_reg[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000008"
    )
        port map (
      I0 => Q(18),
      I1 => data_valid_1,
      I2 => \^state\(1),
      I3 => \^state\(0),
      I4 => \^state\(2),
      I5 => \data_reg_reg_n_0_[2]\,
      O => p_1_in(10)
    );
\data_reg[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000008"
    )
        port map (
      I0 => Q(19),
      I1 => data_valid_1,
      I2 => \^state\(1),
      I3 => \^state\(0),
      I4 => \^state\(2),
      I5 => \data_reg_reg_n_0_[3]\,
      O => p_1_in(11)
    );
\data_reg[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000008"
    )
        port map (
      I0 => Q(20),
      I1 => data_valid_1,
      I2 => \^state\(1),
      I3 => \^state\(0),
      I4 => \^state\(2),
      I5 => \data_reg_reg_n_0_[4]\,
      O => p_1_in(12)
    );
\data_reg[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000008"
    )
        port map (
      I0 => Q(21),
      I1 => data_valid_1,
      I2 => \^state\(1),
      I3 => \^state\(0),
      I4 => \^state\(2),
      I5 => \data_reg_reg_n_0_[5]\,
      O => p_1_in(13)
    );
\data_reg[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000008"
    )
        port map (
      I0 => Q(22),
      I1 => data_valid_1,
      I2 => \^state\(1),
      I3 => \^state\(0),
      I4 => \^state\(2),
      I5 => \data_reg_reg_n_0_[6]\,
      O => p_1_in(14)
    );
\data_reg[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000008"
    )
        port map (
      I0 => Q(23),
      I1 => data_valid_1,
      I2 => \^state\(1),
      I3 => \^state\(0),
      I4 => \^state\(2),
      I5 => \data_reg_reg_n_0_[7]\,
      O => p_1_in(15)
    );
\data_reg[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000008"
    )
        port map (
      I0 => Q(8),
      I1 => data_valid_1,
      I2 => \^state\(1),
      I3 => \^state\(0),
      I4 => \^state\(2),
      I5 => \data_reg_reg_n_0_[8]\,
      O => p_1_in(16)
    );
\data_reg[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000008"
    )
        port map (
      I0 => Q(9),
      I1 => data_valid_1,
      I2 => \^state\(1),
      I3 => \^state\(0),
      I4 => \^state\(2),
      I5 => \data_reg_reg_n_0_[9]\,
      O => p_1_in(17)
    );
\data_reg[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000008"
    )
        port map (
      I0 => Q(10),
      I1 => data_valid_1,
      I2 => \^state\(1),
      I3 => \^state\(0),
      I4 => \^state\(2),
      I5 => \data_reg_reg_n_0_[10]\,
      O => p_1_in(18)
    );
\data_reg[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000008"
    )
        port map (
      I0 => Q(11),
      I1 => data_valid_1,
      I2 => \^state\(1),
      I3 => \^state\(0),
      I4 => \^state\(2),
      I5 => \data_reg_reg_n_0_[11]\,
      O => p_1_in(19)
    );
\data_reg[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000008"
    )
        port map (
      I0 => Q(12),
      I1 => data_valid_1,
      I2 => \^state\(1),
      I3 => \^state\(0),
      I4 => \^state\(2),
      I5 => \data_reg_reg_n_0_[12]\,
      O => p_1_in(20)
    );
\data_reg[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000008"
    )
        port map (
      I0 => Q(13),
      I1 => data_valid_1,
      I2 => \^state\(1),
      I3 => \^state\(0),
      I4 => \^state\(2),
      I5 => \data_reg_reg_n_0_[13]\,
      O => p_1_in(21)
    );
\data_reg[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000008"
    )
        port map (
      I0 => Q(14),
      I1 => data_valid_1,
      I2 => \^state\(1),
      I3 => \^state\(0),
      I4 => \^state\(2),
      I5 => \data_reg_reg_n_0_[14]\,
      O => p_1_in(22)
    );
\data_reg[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000008"
    )
        port map (
      I0 => Q(15),
      I1 => data_valid_1,
      I2 => \^state\(1),
      I3 => \^state\(0),
      I4 => \^state\(2),
      I5 => \data_reg_reg_n_0_[15]\,
      O => p_1_in(23)
    );
\data_reg[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000008"
    )
        port map (
      I0 => Q(0),
      I1 => data_valid_1,
      I2 => \^state\(1),
      I3 => \^state\(0),
      I4 => \^state\(2),
      I5 => \data_reg_reg_n_0_[16]\,
      O => p_1_in(24)
    );
\data_reg[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000008"
    )
        port map (
      I0 => Q(1),
      I1 => data_valid_1,
      I2 => \^state\(1),
      I3 => \^state\(0),
      I4 => \^state\(2),
      I5 => \data_reg_reg_n_0_[17]\,
      O => p_1_in(25)
    );
\data_reg[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000008"
    )
        port map (
      I0 => Q(2),
      I1 => data_valid_1,
      I2 => \^state\(1),
      I3 => \^state\(0),
      I4 => \^state\(2),
      I5 => \data_reg_reg_n_0_[18]\,
      O => p_1_in(26)
    );
\data_reg[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000008"
    )
        port map (
      I0 => Q(3),
      I1 => data_valid_1,
      I2 => \^state\(1),
      I3 => \^state\(0),
      I4 => \^state\(2),
      I5 => \data_reg_reg_n_0_[19]\,
      O => p_1_in(27)
    );
\data_reg[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000008"
    )
        port map (
      I0 => Q(4),
      I1 => data_valid_1,
      I2 => \^state\(1),
      I3 => \^state\(0),
      I4 => \^state\(2),
      I5 => \data_reg_reg_n_0_[20]\,
      O => p_1_in(28)
    );
\data_reg[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000008"
    )
        port map (
      I0 => Q(5),
      I1 => data_valid_1,
      I2 => \^state\(1),
      I3 => \^state\(0),
      I4 => \^state\(2),
      I5 => \data_reg_reg_n_0_[21]\,
      O => p_1_in(29)
    );
\data_reg[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000008"
    )
        port map (
      I0 => Q(6),
      I1 => data_valid_1,
      I2 => \^state\(1),
      I3 => \^state\(0),
      I4 => \^state\(2),
      I5 => \data_reg_reg_n_0_[22]\,
      O => p_1_in(30)
    );
\data_reg[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0100"
    )
        port map (
      I0 => \^state\(2),
      I1 => \^state\(0),
      I2 => \^state\(1),
      I3 => data_valid_1,
      I4 => ack_sample_assem,
      O => \data_reg[31]_i_1_n_0\
    );
\data_reg[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000008"
    )
        port map (
      I0 => Q(7),
      I1 => data_valid_1,
      I2 => \^state\(1),
      I3 => \^state\(0),
      I4 => \^state\(2),
      I5 => \data_reg_reg_n_0_[23]\,
      O => p_1_in(31)
    );
\data_reg[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF0000"
    )
        port map (
      I0 => \^state\(2),
      I1 => \^state\(0),
      I2 => \^state\(1),
      I3 => data_valid_1,
      I4 => ack_sample_assem,
      O => \data_reg[7]_i_1_n_0\
    );
\data_reg[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000008"
    )
        port map (
      I0 => Q(16),
      I1 => data_valid_1,
      I2 => \^state\(1),
      I3 => \^state\(0),
      I4 => \^state\(2),
      I5 => \data_reg_reg_n_0_[0]\,
      O => p_1_in(8)
    );
\data_reg[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000008"
    )
        port map (
      I0 => Q(17),
      I1 => data_valid_1,
      I2 => \^state\(1),
      I3 => \^state\(0),
      I4 => \^state\(2),
      I5 => \data_reg_reg_n_0_[1]\,
      O => p_1_in(9)
    );
\data_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_1_mhz,
      CE => \data_reg[31]_i_1_n_0\,
      D => Q(24),
      Q => \data_reg_reg_n_0_[0]\,
      R => \data_reg[7]_i_1_n_0\
    );
\data_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk_1_mhz,
      CE => \data_reg[31]_i_1_n_0\,
      D => p_1_in(10),
      Q => \data_reg_reg_n_0_[10]\,
      R => '0'
    );
\data_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk_1_mhz,
      CE => \data_reg[31]_i_1_n_0\,
      D => p_1_in(11),
      Q => \data_reg_reg_n_0_[11]\,
      R => '0'
    );
\data_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk_1_mhz,
      CE => \data_reg[31]_i_1_n_0\,
      D => p_1_in(12),
      Q => \data_reg_reg_n_0_[12]\,
      R => '0'
    );
\data_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk_1_mhz,
      CE => \data_reg[31]_i_1_n_0\,
      D => p_1_in(13),
      Q => \data_reg_reg_n_0_[13]\,
      R => '0'
    );
\data_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk_1_mhz,
      CE => \data_reg[31]_i_1_n_0\,
      D => p_1_in(14),
      Q => \data_reg_reg_n_0_[14]\,
      R => '0'
    );
\data_reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk_1_mhz,
      CE => \data_reg[31]_i_1_n_0\,
      D => p_1_in(15),
      Q => \data_reg_reg_n_0_[15]\,
      R => '0'
    );
\data_reg_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk_1_mhz,
      CE => \data_reg[31]_i_1_n_0\,
      D => p_1_in(16),
      Q => \data_reg_reg_n_0_[16]\,
      R => '0'
    );
\data_reg_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk_1_mhz,
      CE => \data_reg[31]_i_1_n_0\,
      D => p_1_in(17),
      Q => \data_reg_reg_n_0_[17]\,
      R => '0'
    );
\data_reg_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk_1_mhz,
      CE => \data_reg[31]_i_1_n_0\,
      D => p_1_in(18),
      Q => \data_reg_reg_n_0_[18]\,
      R => '0'
    );
\data_reg_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk_1_mhz,
      CE => \data_reg[31]_i_1_n_0\,
      D => p_1_in(19),
      Q => \data_reg_reg_n_0_[19]\,
      R => '0'
    );
\data_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_1_mhz,
      CE => \data_reg[31]_i_1_n_0\,
      D => Q(25),
      Q => \data_reg_reg_n_0_[1]\,
      R => \data_reg[7]_i_1_n_0\
    );
\data_reg_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk_1_mhz,
      CE => \data_reg[31]_i_1_n_0\,
      D => p_1_in(20),
      Q => \data_reg_reg_n_0_[20]\,
      R => '0'
    );
\data_reg_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk_1_mhz,
      CE => \data_reg[31]_i_1_n_0\,
      D => p_1_in(21),
      Q => \data_reg_reg_n_0_[21]\,
      R => '0'
    );
\data_reg_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk_1_mhz,
      CE => \data_reg[31]_i_1_n_0\,
      D => p_1_in(22),
      Q => \data_reg_reg_n_0_[22]\,
      R => '0'
    );
\data_reg_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk_1_mhz,
      CE => \data_reg[31]_i_1_n_0\,
      D => p_1_in(23),
      Q => \data_reg_reg_n_0_[23]\,
      R => '0'
    );
\data_reg_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk_1_mhz,
      CE => \data_reg[31]_i_1_n_0\,
      D => p_1_in(24),
      Q => \^timer_val_reg[23]\(0),
      R => '0'
    );
\data_reg_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk_1_mhz,
      CE => \data_reg[31]_i_1_n_0\,
      D => p_1_in(25),
      Q => \^timer_val_reg[23]\(1),
      R => '0'
    );
\data_reg_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk_1_mhz,
      CE => \data_reg[31]_i_1_n_0\,
      D => p_1_in(26),
      Q => \^timer_val_reg[23]\(2),
      R => '0'
    );
\data_reg_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk_1_mhz,
      CE => \data_reg[31]_i_1_n_0\,
      D => p_1_in(27),
      Q => \^timer_val_reg[23]\(3),
      R => '0'
    );
\data_reg_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk_1_mhz,
      CE => \data_reg[31]_i_1_n_0\,
      D => p_1_in(28),
      Q => \^timer_val_reg[23]\(4),
      R => '0'
    );
\data_reg_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk_1_mhz,
      CE => \data_reg[31]_i_1_n_0\,
      D => p_1_in(29),
      Q => \^timer_val_reg[23]\(5),
      R => '0'
    );
\data_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_1_mhz,
      CE => \data_reg[31]_i_1_n_0\,
      D => Q(26),
      Q => \data_reg_reg_n_0_[2]\,
      R => \data_reg[7]_i_1_n_0\
    );
\data_reg_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk_1_mhz,
      CE => \data_reg[31]_i_1_n_0\,
      D => p_1_in(30),
      Q => \^timer_val_reg[23]\(6),
      R => '0'
    );
\data_reg_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk_1_mhz,
      CE => \data_reg[31]_i_1_n_0\,
      D => p_1_in(31),
      Q => \^timer_val_reg[23]\(7),
      R => '0'
    );
\data_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_1_mhz,
      CE => \data_reg[31]_i_1_n_0\,
      D => Q(27),
      Q => \data_reg_reg_n_0_[3]\,
      R => \data_reg[7]_i_1_n_0\
    );
\data_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_1_mhz,
      CE => \data_reg[31]_i_1_n_0\,
      D => Q(28),
      Q => \data_reg_reg_n_0_[4]\,
      R => \data_reg[7]_i_1_n_0\
    );
\data_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_1_mhz,
      CE => \data_reg[31]_i_1_n_0\,
      D => Q(29),
      Q => \data_reg_reg_n_0_[5]\,
      R => \data_reg[7]_i_1_n_0\
    );
\data_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_1_mhz,
      CE => \data_reg[31]_i_1_n_0\,
      D => Q(30),
      Q => \data_reg_reg_n_0_[6]\,
      R => \data_reg[7]_i_1_n_0\
    );
\data_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_1_mhz,
      CE => \data_reg[31]_i_1_n_0\,
      D => Q(31),
      Q => \data_reg_reg_n_0_[7]\,
      R => \data_reg[7]_i_1_n_0\
    );
\data_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk_1_mhz,
      CE => \data_reg[31]_i_1_n_0\,
      D => p_1_in(8),
      Q => \data_reg_reg_n_0_[8]\,
      R => '0'
    );
\data_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk_1_mhz,
      CE => \data_reg[31]_i_1_n_0\,
      D => p_1_in(9),
      Q => \data_reg_reg_n_0_[9]\,
      R => '0'
    );
data_valid_0_reg: unisim.vcomponents.FDRE
     port map (
      C => clk_1_mhz,
      CE => '1',
      D => data_valid_read_word,
      Q => data_valid_0,
      R => '0'
    );
data_valid_1_reg: unisim.vcomponents.FDRE
     port map (
      C => clk_1_mhz,
      CE => '1',
      D => data_valid_0,
      Q => data_valid_1,
      R => '0'
    );
\state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF0033CA"
    )
        port map (
      I0 => data_valid_1,
      I1 => ack_sample_assem,
      I2 => \^state\(1),
      I3 => \^state\(0),
      I4 => \^state\(2),
      O => \state[0]_i_1_n_0\
    );
\state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF00AC53FF00"
    )
        port map (
      I0 => state_0(2),
      I1 => state_0(0),
      I2 => state_0(1),
      I3 => \^state\(1),
      I4 => \^state\(0),
      I5 => \^state\(2),
      O => \state[1]_i_1_n_0\
    );
\state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFAC53000000"
    )
        port map (
      I0 => state_0(2),
      I1 => state_0(0),
      I2 => state_0(1),
      I3 => \^state\(1),
      I4 => \^state\(0),
      I5 => \^state\(2),
      O => \state[2]_i_1_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_1_mhz,
      CE => '1',
      D => \state[0]_i_1_n_0\,
      Q => \^state\(0),
      R => restart
    );
\state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_1_mhz,
      CE => '1',
      D => \state[1]_i_1_n_0\,
      Q => \^state\(1),
      R => restart
    );
\state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_1_mhz,
      CE => '1',
      D => \state[2]_i_1_n_0\,
      Q => \^state\(2),
      R => restart
    );
\timer_val[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => \^timer_val_reg[23]\(7),
      I1 => state_0(2),
      I2 => state_0(0),
      I3 => \^timer_val_reg[3]\,
      I4 => \timer_val[10]_i_5_n_0\,
      I5 => \timer_val_reg[18]\(7),
      O => D(7)
    );
\timer_val[10]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \^timer_val_reg[23]\(3),
      I1 => \^timer_val_reg[23]\(2),
      I2 => \^timer_val_reg[23]\(1),
      I3 => \^timer_val_reg[23]\(0),
      I4 => \timer_val[10]_i_6_n_0\,
      O => \^timer_val_reg[3]\
    );
\timer_val[10]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \^state\(2),
      I1 => \^state\(0),
      I2 => \^state\(1),
      O => data_valid_byte
    );
\timer_val[10]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAAB"
    )
        port map (
      I0 => state_0(1),
      I1 => \^state\(1),
      I2 => \^state\(0),
      I3 => \^state\(2),
      O => \timer_val[10]_i_5_n_0\
    );
\timer_val[10]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^timer_val_reg[23]\(4),
      I1 => \^timer_val_reg[23]\(5),
      I2 => \^timer_val_reg[23]\(7),
      I3 => \^timer_val_reg[23]\(6),
      O => \timer_val[10]_i_6_n_0\
    );
\timer_val[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => \^timer_val_reg[23]\(0),
      I1 => state_0(2),
      I2 => state_0(0),
      I3 => \^timer_val_reg[3]\,
      I4 => \timer_val[10]_i_5_n_0\,
      I5 => \timer_val_reg[18]\(0),
      O => D(0)
    );
\timer_val[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => \^timer_val_reg[23]\(1),
      I1 => state_0(2),
      I2 => state_0(0),
      I3 => \^timer_val_reg[3]\,
      I4 => \timer_val[10]_i_5_n_0\,
      I5 => \timer_val_reg[18]\(1),
      O => D(1)
    );
\timer_val[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => \^timer_val_reg[23]\(2),
      I1 => state_0(2),
      I2 => state_0(0),
      I3 => \^timer_val_reg[3]\,
      I4 => \timer_val[10]_i_5_n_0\,
      I5 => \timer_val_reg[18]\(2),
      O => D(2)
    );
\timer_val[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => \^timer_val_reg[23]\(3),
      I1 => state_0(2),
      I2 => state_0(0),
      I3 => \^timer_val_reg[3]\,
      I4 => \timer_val[10]_i_5_n_0\,
      I5 => \timer_val_reg[18]\(3),
      O => D(3)
    );
\timer_val[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => \^timer_val_reg[23]\(4),
      I1 => state_0(2),
      I2 => state_0(0),
      I3 => \^timer_val_reg[3]\,
      I4 => \timer_val[10]_i_5_n_0\,
      I5 => \timer_val_reg[18]\(4),
      O => D(4)
    );
\timer_val[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => \^timer_val_reg[23]\(5),
      I1 => state_0(2),
      I2 => state_0(0),
      I3 => \^timer_val_reg[3]\,
      I4 => \timer_val[10]_i_5_n_0\,
      I5 => \timer_val_reg[18]\(5),
      O => D(5)
    );
\timer_val[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => \^timer_val_reg[23]\(6),
      I1 => state_0(2),
      I2 => state_0(0),
      I3 => \^timer_val_reg[3]\,
      I4 => \timer_val[10]_i_5_n_0\,
      I5 => \timer_val_reg[18]\(6),
      O => D(6)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_tape_interface_0_0_read_word is
  port (
    ip2bus_mst_addr : out STD_LOGIC_VECTOR ( 29 downto 0 );
    data_valid_read_word : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ip2bus_inputs : out STD_LOGIC_VECTOR ( 1 downto 0 );
    in0 : in STD_LOGIC;
    clk : in STD_LOGIC;
    clk_0 : in STD_LOGIC;
    reset : in STD_LOGIC;
    restart : in STD_LOGIC;
    ip2bus_otputs : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ip2bus_mstrd_d : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_tape_interface_0_0_read_word : entity is "read_word";
end design_1_tape_interface_0_0_read_word;

architecture STRUCTURE of design_1_tape_interface_0_0_read_word is
  signal \/i__n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_1_n_0\ : STD_LOGIC;
  signal axi_data_inc : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \axi_data_inc[2]_i_1_n_0\ : STD_LOGIC;
  signal axi_data_loaded20_in : STD_LOGIC;
  signal axi_data_loaded_i_1_n_0 : STD_LOGIC;
  signal axi_start_address : STD_LOGIC;
  signal \axi_start_address[13]_i_2_n_0\ : STD_LOGIC;
  signal \axi_start_address[13]_i_3_n_0\ : STD_LOGIC;
  signal \axi_start_address[13]_i_4_n_0\ : STD_LOGIC;
  signal \axi_start_address[13]_i_5_n_0\ : STD_LOGIC;
  signal \axi_start_address[17]_i_2_n_0\ : STD_LOGIC;
  signal \axi_start_address[17]_i_3_n_0\ : STD_LOGIC;
  signal \axi_start_address[17]_i_4_n_0\ : STD_LOGIC;
  signal \axi_start_address[17]_i_5_n_0\ : STD_LOGIC;
  signal \axi_start_address[21]_i_2_n_0\ : STD_LOGIC;
  signal \axi_start_address[21]_i_3_n_0\ : STD_LOGIC;
  signal \axi_start_address[21]_i_4_n_0\ : STD_LOGIC;
  signal \axi_start_address[21]_i_5_n_0\ : STD_LOGIC;
  signal \axi_start_address[25]_i_2_n_0\ : STD_LOGIC;
  signal \axi_start_address[25]_i_3_n_0\ : STD_LOGIC;
  signal \axi_start_address[25]_i_4_n_0\ : STD_LOGIC;
  signal \axi_start_address[25]_i_5_n_0\ : STD_LOGIC;
  signal \axi_start_address[29]_i_2_n_0\ : STD_LOGIC;
  signal \axi_start_address[29]_i_3_n_0\ : STD_LOGIC;
  signal \axi_start_address[29]_i_4_n_0\ : STD_LOGIC;
  signal \axi_start_address[29]_i_5_n_0\ : STD_LOGIC;
  signal \axi_start_address[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_start_address[31]_i_5_n_0\ : STD_LOGIC;
  signal \axi_start_address[31]_i_6_n_0\ : STD_LOGIC;
  signal \axi_start_address[5]_i_2_n_0\ : STD_LOGIC;
  signal \axi_start_address[5]_i_3_n_0\ : STD_LOGIC;
  signal \axi_start_address[5]_i_4_n_0\ : STD_LOGIC;
  signal \axi_start_address[5]_i_5_n_0\ : STD_LOGIC;
  signal \axi_start_address[9]_i_2_n_0\ : STD_LOGIC;
  signal \axi_start_address[9]_i_3_n_0\ : STD_LOGIC;
  signal \axi_start_address[9]_i_4_n_0\ : STD_LOGIC;
  signal \axi_start_address[9]_i_5_n_0\ : STD_LOGIC;
  signal \axi_start_address_reg[13]_i_1_n_0\ : STD_LOGIC;
  signal \axi_start_address_reg[13]_i_1_n_1\ : STD_LOGIC;
  signal \axi_start_address_reg[13]_i_1_n_2\ : STD_LOGIC;
  signal \axi_start_address_reg[13]_i_1_n_3\ : STD_LOGIC;
  signal \axi_start_address_reg[13]_i_1_n_4\ : STD_LOGIC;
  signal \axi_start_address_reg[13]_i_1_n_5\ : STD_LOGIC;
  signal \axi_start_address_reg[13]_i_1_n_6\ : STD_LOGIC;
  signal \axi_start_address_reg[13]_i_1_n_7\ : STD_LOGIC;
  signal \axi_start_address_reg[17]_i_1_n_0\ : STD_LOGIC;
  signal \axi_start_address_reg[17]_i_1_n_1\ : STD_LOGIC;
  signal \axi_start_address_reg[17]_i_1_n_2\ : STD_LOGIC;
  signal \axi_start_address_reg[17]_i_1_n_3\ : STD_LOGIC;
  signal \axi_start_address_reg[17]_i_1_n_4\ : STD_LOGIC;
  signal \axi_start_address_reg[17]_i_1_n_5\ : STD_LOGIC;
  signal \axi_start_address_reg[17]_i_1_n_6\ : STD_LOGIC;
  signal \axi_start_address_reg[17]_i_1_n_7\ : STD_LOGIC;
  signal \axi_start_address_reg[21]_i_1_n_0\ : STD_LOGIC;
  signal \axi_start_address_reg[21]_i_1_n_1\ : STD_LOGIC;
  signal \axi_start_address_reg[21]_i_1_n_2\ : STD_LOGIC;
  signal \axi_start_address_reg[21]_i_1_n_3\ : STD_LOGIC;
  signal \axi_start_address_reg[21]_i_1_n_4\ : STD_LOGIC;
  signal \axi_start_address_reg[21]_i_1_n_5\ : STD_LOGIC;
  signal \axi_start_address_reg[21]_i_1_n_6\ : STD_LOGIC;
  signal \axi_start_address_reg[21]_i_1_n_7\ : STD_LOGIC;
  signal \axi_start_address_reg[25]_i_1_n_0\ : STD_LOGIC;
  signal \axi_start_address_reg[25]_i_1_n_1\ : STD_LOGIC;
  signal \axi_start_address_reg[25]_i_1_n_2\ : STD_LOGIC;
  signal \axi_start_address_reg[25]_i_1_n_3\ : STD_LOGIC;
  signal \axi_start_address_reg[25]_i_1_n_4\ : STD_LOGIC;
  signal \axi_start_address_reg[25]_i_1_n_5\ : STD_LOGIC;
  signal \axi_start_address_reg[25]_i_1_n_6\ : STD_LOGIC;
  signal \axi_start_address_reg[25]_i_1_n_7\ : STD_LOGIC;
  signal \axi_start_address_reg[29]_i_1_n_0\ : STD_LOGIC;
  signal \axi_start_address_reg[29]_i_1_n_1\ : STD_LOGIC;
  signal \axi_start_address_reg[29]_i_1_n_2\ : STD_LOGIC;
  signal \axi_start_address_reg[29]_i_1_n_3\ : STD_LOGIC;
  signal \axi_start_address_reg[29]_i_1_n_4\ : STD_LOGIC;
  signal \axi_start_address_reg[29]_i_1_n_5\ : STD_LOGIC;
  signal \axi_start_address_reg[29]_i_1_n_6\ : STD_LOGIC;
  signal \axi_start_address_reg[29]_i_1_n_7\ : STD_LOGIC;
  signal \axi_start_address_reg[31]_i_3_n_3\ : STD_LOGIC;
  signal \axi_start_address_reg[31]_i_3_n_6\ : STD_LOGIC;
  signal \axi_start_address_reg[31]_i_3_n_7\ : STD_LOGIC;
  signal \axi_start_address_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \axi_start_address_reg[5]_i_1_n_1\ : STD_LOGIC;
  signal \axi_start_address_reg[5]_i_1_n_2\ : STD_LOGIC;
  signal \axi_start_address_reg[5]_i_1_n_3\ : STD_LOGIC;
  signal \axi_start_address_reg[5]_i_1_n_4\ : STD_LOGIC;
  signal \axi_start_address_reg[5]_i_1_n_5\ : STD_LOGIC;
  signal \axi_start_address_reg[5]_i_1_n_6\ : STD_LOGIC;
  signal \axi_start_address_reg[9]_i_1_n_0\ : STD_LOGIC;
  signal \axi_start_address_reg[9]_i_1_n_1\ : STD_LOGIC;
  signal \axi_start_address_reg[9]_i_1_n_2\ : STD_LOGIC;
  signal \axi_start_address_reg[9]_i_1_n_3\ : STD_LOGIC;
  signal \axi_start_address_reg[9]_i_1_n_4\ : STD_LOGIC;
  signal \axi_start_address_reg[9]_i_1_n_5\ : STD_LOGIC;
  signal \axi_start_address_reg[9]_i_1_n_6\ : STD_LOGIC;
  signal \axi_start_address_reg[9]_i_1_n_7\ : STD_LOGIC;
  signal \data_cap[31]_i_1_n_0\ : STD_LOGIC;
  signal \^data_valid_read_word\ : STD_LOGIC;
  signal \^ip2bus_mst_addr\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal state : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of state : signal is "yes";
  signal state0 : STD_LOGIC;
  signal state2 : STD_LOGIC;
  signal sync_ack_0 : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of sync_ack_0 : signal is "true";
  signal sync_ack_1 : STD_LOGIC;
  attribute async_reg of sync_ack_1 : signal is "true";
  signal sync_ack_2 : STD_LOGIC;
  attribute async_reg of sync_ack_2 : signal is "true";
  signal \NLW_axi_start_address_reg[31]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_axi_start_address_reg[31]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_axi_start_address_reg[5]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_state_reg[0]\ : label is "yes";
  attribute KEEP of \FSM_sequential_state_reg[1]\ : label is "yes";
  attribute KEEP of \FSM_sequential_state_reg[2]\ : label is "yes";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of sync_ack_0_reg : label is std.standard.true;
  attribute KEEP of sync_ack_0_reg : label is "yes";
  attribute ASYNC_REG_boolean of sync_ack_1_reg : label is std.standard.true;
  attribute KEEP of sync_ack_1_reg : label is "yes";
  attribute ASYNC_REG_boolean of sync_ack_2_reg : label is std.standard.true;
  attribute KEEP of sync_ack_2_reg : label is "yes";
begin
  data_valid_read_word <= \^data_valid_read_word\;
  ip2bus_mst_addr(29 downto 0) <= \^ip2bus_mst_addr\(29 downto 0);
\/i_\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"03033D0D33333D0D"
    )
        port map (
      I0 => \^data_valid_read_word\,
      I1 => state(2),
      I2 => state(1),
      I3 => ip2bus_otputs(0),
      I4 => state(0),
      I5 => ip2bus_otputs(1),
      O => \/i__n_0\
    );
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000222E"
    )
        port map (
      I0 => state(0),
      I1 => \/i__n_0\,
      I2 => state(2),
      I3 => state(0),
      I4 => state0,
      O => \FSM_sequential_state[0]_i_1_n_0\
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000222E2E22"
    )
        port map (
      I0 => state(1),
      I1 => \/i__n_0\,
      I2 => state(2),
      I3 => state(0),
      I4 => state(1),
      I5 => state0,
      O => \FSM_sequential_state[1]_i_1_n_0\
    );
\FSM_sequential_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000002222E222"
    )
        port map (
      I0 => state(2),
      I1 => \/i__n_0\,
      I2 => state(1),
      I3 => state(0),
      I4 => state(2),
      I5 => state0,
      O => \FSM_sequential_state[2]_i_1_n_0\
    );
\FSM_sequential_state[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000100010000"
    )
        port map (
      I0 => state(1),
      I1 => state(2),
      I2 => state(0),
      I3 => \^data_valid_read_word\,
      I4 => reset,
      I5 => restart,
      O => state0
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_state[0]_i_1_n_0\,
      Q => state(0),
      R => '0'
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_state[1]_i_1_n_0\,
      Q => state(1),
      R => '0'
    );
\FSM_sequential_state_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_state[2]_i_1_n_0\,
      Q => state(2),
      R => '0'
    );
\axi_data_inc[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000AAAE"
    )
        port map (
      I0 => axi_data_inc(2),
      I1 => state(0),
      I2 => state(2),
      I3 => state(1),
      I4 => restart,
      I5 => reset,
      O => \axi_data_inc[2]_i_1_n_0\
    );
\axi_data_inc_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \axi_data_inc[2]_i_1_n_0\,
      Q => axi_data_inc(2),
      R => '0'
    );
axi_data_loaded2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"24"
    )
        port map (
      I0 => state(0),
      I1 => state(2),
      I2 => state(1),
      O => axi_data_loaded20_in
    );
axi_data_loaded_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BABA00BA"
    )
        port map (
      I0 => \^data_valid_read_word\,
      I1 => ip2bus_otputs(1),
      I2 => axi_data_loaded20_in,
      I3 => sync_ack_1,
      I4 => sync_ack_2,
      I5 => state2,
      O => axi_data_loaded_i_1_n_0
    );
axi_data_loaded_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => axi_data_loaded_i_1_n_0,
      Q => \^data_valid_read_word\,
      R => '0'
    );
\axi_start_address[13]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^ip2bus_mst_addr\(11),
      O => \axi_start_address[13]_i_2_n_0\
    );
\axi_start_address[13]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^ip2bus_mst_addr\(10),
      O => \axi_start_address[13]_i_3_n_0\
    );
\axi_start_address[13]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^ip2bus_mst_addr\(9),
      O => \axi_start_address[13]_i_4_n_0\
    );
\axi_start_address[13]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^ip2bus_mst_addr\(8),
      O => \axi_start_address[13]_i_5_n_0\
    );
\axi_start_address[17]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^ip2bus_mst_addr\(15),
      O => \axi_start_address[17]_i_2_n_0\
    );
\axi_start_address[17]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^ip2bus_mst_addr\(14),
      O => \axi_start_address[17]_i_3_n_0\
    );
\axi_start_address[17]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^ip2bus_mst_addr\(13),
      O => \axi_start_address[17]_i_4_n_0\
    );
\axi_start_address[17]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^ip2bus_mst_addr\(12),
      O => \axi_start_address[17]_i_5_n_0\
    );
\axi_start_address[21]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^ip2bus_mst_addr\(19),
      O => \axi_start_address[21]_i_2_n_0\
    );
\axi_start_address[21]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^ip2bus_mst_addr\(18),
      O => \axi_start_address[21]_i_3_n_0\
    );
\axi_start_address[21]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^ip2bus_mst_addr\(17),
      O => \axi_start_address[21]_i_4_n_0\
    );
\axi_start_address[21]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^ip2bus_mst_addr\(16),
      O => \axi_start_address[21]_i_5_n_0\
    );
\axi_start_address[25]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^ip2bus_mst_addr\(23),
      O => \axi_start_address[25]_i_2_n_0\
    );
\axi_start_address[25]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^ip2bus_mst_addr\(22),
      O => \axi_start_address[25]_i_3_n_0\
    );
\axi_start_address[25]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^ip2bus_mst_addr\(21),
      O => \axi_start_address[25]_i_4_n_0\
    );
\axi_start_address[25]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^ip2bus_mst_addr\(20),
      O => \axi_start_address[25]_i_5_n_0\
    );
\axi_start_address[29]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^ip2bus_mst_addr\(27),
      O => \axi_start_address[29]_i_2_n_0\
    );
\axi_start_address[29]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^ip2bus_mst_addr\(26),
      O => \axi_start_address[29]_i_3_n_0\
    );
\axi_start_address[29]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^ip2bus_mst_addr\(25),
      O => \axi_start_address[29]_i_4_n_0\
    );
\axi_start_address[29]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^ip2bus_mst_addr\(24),
      O => \axi_start_address[29]_i_5_n_0\
    );
\axi_start_address[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => axi_data_inc(2),
      I1 => \^ip2bus_mst_addr\(0),
      O => \axi_start_address[2]_i_1_n_0\
    );
\axi_start_address[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => reset,
      I1 => restart,
      O => state2
    );
\axi_start_address[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => state(0),
      I1 => state(2),
      I2 => state(1),
      O => axi_start_address
    );
\axi_start_address[31]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^ip2bus_mst_addr\(29),
      O => \axi_start_address[31]_i_5_n_0\
    );
\axi_start_address[31]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^ip2bus_mst_addr\(28),
      O => \axi_start_address[31]_i_6_n_0\
    );
\axi_start_address[5]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^ip2bus_mst_addr\(3),
      O => \axi_start_address[5]_i_2_n_0\
    );
\axi_start_address[5]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^ip2bus_mst_addr\(2),
      O => \axi_start_address[5]_i_3_n_0\
    );
\axi_start_address[5]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^ip2bus_mst_addr\(1),
      O => \axi_start_address[5]_i_4_n_0\
    );
\axi_start_address[5]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => axi_data_inc(2),
      I1 => \^ip2bus_mst_addr\(0),
      O => \axi_start_address[5]_i_5_n_0\
    );
\axi_start_address[9]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^ip2bus_mst_addr\(7),
      O => \axi_start_address[9]_i_2_n_0\
    );
\axi_start_address[9]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^ip2bus_mst_addr\(6),
      O => \axi_start_address[9]_i_3_n_0\
    );
\axi_start_address[9]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^ip2bus_mst_addr\(5),
      O => \axi_start_address[9]_i_4_n_0\
    );
\axi_start_address[9]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^ip2bus_mst_addr\(4),
      O => \axi_start_address[9]_i_5_n_0\
    );
\axi_start_address_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk_0,
      CE => axi_start_address,
      D => \axi_start_address_reg[13]_i_1_n_7\,
      Q => \^ip2bus_mst_addr\(8),
      R => state2
    );
\axi_start_address_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk_0,
      CE => axi_start_address,
      D => \axi_start_address_reg[13]_i_1_n_6\,
      Q => \^ip2bus_mst_addr\(9),
      R => state2
    );
\axi_start_address_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk_0,
      CE => axi_start_address,
      D => \axi_start_address_reg[13]_i_1_n_5\,
      Q => \^ip2bus_mst_addr\(10),
      R => state2
    );
\axi_start_address_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk_0,
      CE => axi_start_address,
      D => \axi_start_address_reg[13]_i_1_n_4\,
      Q => \^ip2bus_mst_addr\(11),
      R => state2
    );
\axi_start_address_reg[13]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \axi_start_address_reg[9]_i_1_n_0\,
      CO(3) => \axi_start_address_reg[13]_i_1_n_0\,
      CO(2) => \axi_start_address_reg[13]_i_1_n_1\,
      CO(1) => \axi_start_address_reg[13]_i_1_n_2\,
      CO(0) => \axi_start_address_reg[13]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \axi_start_address_reg[13]_i_1_n_4\,
      O(2) => \axi_start_address_reg[13]_i_1_n_5\,
      O(1) => \axi_start_address_reg[13]_i_1_n_6\,
      O(0) => \axi_start_address_reg[13]_i_1_n_7\,
      S(3) => \axi_start_address[13]_i_2_n_0\,
      S(2) => \axi_start_address[13]_i_3_n_0\,
      S(1) => \axi_start_address[13]_i_4_n_0\,
      S(0) => \axi_start_address[13]_i_5_n_0\
    );
\axi_start_address_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk_0,
      CE => axi_start_address,
      D => \axi_start_address_reg[17]_i_1_n_7\,
      Q => \^ip2bus_mst_addr\(12),
      R => state2
    );
\axi_start_address_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk_0,
      CE => axi_start_address,
      D => \axi_start_address_reg[17]_i_1_n_6\,
      Q => \^ip2bus_mst_addr\(13),
      R => state2
    );
\axi_start_address_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk_0,
      CE => axi_start_address,
      D => \axi_start_address_reg[17]_i_1_n_5\,
      Q => \^ip2bus_mst_addr\(14),
      R => state2
    );
\axi_start_address_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk_0,
      CE => axi_start_address,
      D => \axi_start_address_reg[17]_i_1_n_4\,
      Q => \^ip2bus_mst_addr\(15),
      R => state2
    );
\axi_start_address_reg[17]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \axi_start_address_reg[13]_i_1_n_0\,
      CO(3) => \axi_start_address_reg[17]_i_1_n_0\,
      CO(2) => \axi_start_address_reg[17]_i_1_n_1\,
      CO(1) => \axi_start_address_reg[17]_i_1_n_2\,
      CO(0) => \axi_start_address_reg[17]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \axi_start_address_reg[17]_i_1_n_4\,
      O(2) => \axi_start_address_reg[17]_i_1_n_5\,
      O(1) => \axi_start_address_reg[17]_i_1_n_6\,
      O(0) => \axi_start_address_reg[17]_i_1_n_7\,
      S(3) => \axi_start_address[17]_i_2_n_0\,
      S(2) => \axi_start_address[17]_i_3_n_0\,
      S(1) => \axi_start_address[17]_i_4_n_0\,
      S(0) => \axi_start_address[17]_i_5_n_0\
    );
\axi_start_address_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk_0,
      CE => axi_start_address,
      D => \axi_start_address_reg[21]_i_1_n_7\,
      Q => \^ip2bus_mst_addr\(16),
      R => state2
    );
\axi_start_address_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk_0,
      CE => axi_start_address,
      D => \axi_start_address_reg[21]_i_1_n_6\,
      Q => \^ip2bus_mst_addr\(17),
      R => state2
    );
\axi_start_address_reg[20]\: unisim.vcomponents.FDSE
     port map (
      C => clk_0,
      CE => axi_start_address,
      D => \axi_start_address_reg[21]_i_1_n_5\,
      Q => \^ip2bus_mst_addr\(18),
      S => state2
    );
\axi_start_address_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk_0,
      CE => axi_start_address,
      D => \axi_start_address_reg[21]_i_1_n_4\,
      Q => \^ip2bus_mst_addr\(19),
      R => state2
    );
\axi_start_address_reg[21]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \axi_start_address_reg[17]_i_1_n_0\,
      CO(3) => \axi_start_address_reg[21]_i_1_n_0\,
      CO(2) => \axi_start_address_reg[21]_i_1_n_1\,
      CO(1) => \axi_start_address_reg[21]_i_1_n_2\,
      CO(0) => \axi_start_address_reg[21]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \axi_start_address_reg[21]_i_1_n_4\,
      O(2) => \axi_start_address_reg[21]_i_1_n_5\,
      O(1) => \axi_start_address_reg[21]_i_1_n_6\,
      O(0) => \axi_start_address_reg[21]_i_1_n_7\,
      S(3) => \axi_start_address[21]_i_2_n_0\,
      S(2) => \axi_start_address[21]_i_3_n_0\,
      S(1) => \axi_start_address[21]_i_4_n_0\,
      S(0) => \axi_start_address[21]_i_5_n_0\
    );
\axi_start_address_reg[22]\: unisim.vcomponents.FDSE
     port map (
      C => clk_0,
      CE => axi_start_address,
      D => \axi_start_address_reg[25]_i_1_n_7\,
      Q => \^ip2bus_mst_addr\(20),
      S => state2
    );
\axi_start_address_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk_0,
      CE => axi_start_address,
      D => \axi_start_address_reg[25]_i_1_n_6\,
      Q => \^ip2bus_mst_addr\(21),
      R => state2
    );
\axi_start_address_reg[24]\: unisim.vcomponents.FDSE
     port map (
      C => clk_0,
      CE => axi_start_address,
      D => \axi_start_address_reg[25]_i_1_n_5\,
      Q => \^ip2bus_mst_addr\(22),
      S => state2
    );
\axi_start_address_reg[25]\: unisim.vcomponents.FDSE
     port map (
      C => clk_0,
      CE => axi_start_address,
      D => \axi_start_address_reg[25]_i_1_n_4\,
      Q => \^ip2bus_mst_addr\(23),
      S => state2
    );
\axi_start_address_reg[25]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \axi_start_address_reg[21]_i_1_n_0\,
      CO(3) => \axi_start_address_reg[25]_i_1_n_0\,
      CO(2) => \axi_start_address_reg[25]_i_1_n_1\,
      CO(1) => \axi_start_address_reg[25]_i_1_n_2\,
      CO(0) => \axi_start_address_reg[25]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \axi_start_address_reg[25]_i_1_n_4\,
      O(2) => \axi_start_address_reg[25]_i_1_n_5\,
      O(1) => \axi_start_address_reg[25]_i_1_n_6\,
      O(0) => \axi_start_address_reg[25]_i_1_n_7\,
      S(3) => \axi_start_address[25]_i_2_n_0\,
      S(2) => \axi_start_address[25]_i_3_n_0\,
      S(1) => \axi_start_address[25]_i_4_n_0\,
      S(0) => \axi_start_address[25]_i_5_n_0\
    );
\axi_start_address_reg[26]\: unisim.vcomponents.FDSE
     port map (
      C => clk_0,
      CE => axi_start_address,
      D => \axi_start_address_reg[29]_i_1_n_7\,
      Q => \^ip2bus_mst_addr\(24),
      S => state2
    );
\axi_start_address_reg[27]\: unisim.vcomponents.FDSE
     port map (
      C => clk_0,
      CE => axi_start_address,
      D => \axi_start_address_reg[29]_i_1_n_6\,
      Q => \^ip2bus_mst_addr\(25),
      S => state2
    );
\axi_start_address_reg[28]\: unisim.vcomponents.FDSE
     port map (
      C => clk_0,
      CE => axi_start_address,
      D => \axi_start_address_reg[29]_i_1_n_5\,
      Q => \^ip2bus_mst_addr\(26),
      S => state2
    );
\axi_start_address_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk_0,
      CE => axi_start_address,
      D => \axi_start_address_reg[29]_i_1_n_4\,
      Q => \^ip2bus_mst_addr\(27),
      R => state2
    );
\axi_start_address_reg[29]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \axi_start_address_reg[25]_i_1_n_0\,
      CO(3) => \axi_start_address_reg[29]_i_1_n_0\,
      CO(2) => \axi_start_address_reg[29]_i_1_n_1\,
      CO(1) => \axi_start_address_reg[29]_i_1_n_2\,
      CO(0) => \axi_start_address_reg[29]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \axi_start_address_reg[29]_i_1_n_4\,
      O(2) => \axi_start_address_reg[29]_i_1_n_5\,
      O(1) => \axi_start_address_reg[29]_i_1_n_6\,
      O(0) => \axi_start_address_reg[29]_i_1_n_7\,
      S(3) => \axi_start_address[29]_i_2_n_0\,
      S(2) => \axi_start_address[29]_i_3_n_0\,
      S(1) => \axi_start_address[29]_i_4_n_0\,
      S(0) => \axi_start_address[29]_i_5_n_0\
    );
\axi_start_address_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_0,
      CE => axi_start_address,
      D => \axi_start_address[2]_i_1_n_0\,
      Q => \^ip2bus_mst_addr\(0),
      R => state2
    );
\axi_start_address_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk_0,
      CE => axi_start_address,
      D => \axi_start_address_reg[31]_i_3_n_7\,
      Q => \^ip2bus_mst_addr\(28),
      R => state2
    );
\axi_start_address_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk_0,
      CE => axi_start_address,
      D => \axi_start_address_reg[31]_i_3_n_6\,
      Q => \^ip2bus_mst_addr\(29),
      R => state2
    );
\axi_start_address_reg[31]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \axi_start_address_reg[29]_i_1_n_0\,
      CO(3 downto 1) => \NLW_axi_start_address_reg[31]_i_3_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \axi_start_address_reg[31]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_axi_start_address_reg[31]_i_3_O_UNCONNECTED\(3 downto 2),
      O(1) => \axi_start_address_reg[31]_i_3_n_6\,
      O(0) => \axi_start_address_reg[31]_i_3_n_7\,
      S(3 downto 2) => B"00",
      S(1) => \axi_start_address[31]_i_5_n_0\,
      S(0) => \axi_start_address[31]_i_6_n_0\
    );
\axi_start_address_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_0,
      CE => axi_start_address,
      D => \axi_start_address_reg[5]_i_1_n_6\,
      Q => \^ip2bus_mst_addr\(1),
      R => state2
    );
\axi_start_address_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_0,
      CE => axi_start_address,
      D => \axi_start_address_reg[5]_i_1_n_5\,
      Q => \^ip2bus_mst_addr\(2),
      R => state2
    );
\axi_start_address_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_0,
      CE => axi_start_address,
      D => \axi_start_address_reg[5]_i_1_n_4\,
      Q => \^ip2bus_mst_addr\(3),
      R => state2
    );
\axi_start_address_reg[5]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \axi_start_address_reg[5]_i_1_n_0\,
      CO(2) => \axi_start_address_reg[5]_i_1_n_1\,
      CO(1) => \axi_start_address_reg[5]_i_1_n_2\,
      CO(0) => \axi_start_address_reg[5]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => axi_data_inc(2),
      O(3) => \axi_start_address_reg[5]_i_1_n_4\,
      O(2) => \axi_start_address_reg[5]_i_1_n_5\,
      O(1) => \axi_start_address_reg[5]_i_1_n_6\,
      O(0) => \NLW_axi_start_address_reg[5]_i_1_O_UNCONNECTED\(0),
      S(3) => \axi_start_address[5]_i_2_n_0\,
      S(2) => \axi_start_address[5]_i_3_n_0\,
      S(1) => \axi_start_address[5]_i_4_n_0\,
      S(0) => \axi_start_address[5]_i_5_n_0\
    );
\axi_start_address_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_0,
      CE => axi_start_address,
      D => \axi_start_address_reg[9]_i_1_n_7\,
      Q => \^ip2bus_mst_addr\(4),
      R => state2
    );
\axi_start_address_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_0,
      CE => axi_start_address,
      D => \axi_start_address_reg[9]_i_1_n_6\,
      Q => \^ip2bus_mst_addr\(5),
      R => state2
    );
\axi_start_address_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk_0,
      CE => axi_start_address,
      D => \axi_start_address_reg[9]_i_1_n_5\,
      Q => \^ip2bus_mst_addr\(6),
      R => state2
    );
\axi_start_address_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk_0,
      CE => axi_start_address,
      D => \axi_start_address_reg[9]_i_1_n_4\,
      Q => \^ip2bus_mst_addr\(7),
      R => state2
    );
\axi_start_address_reg[9]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \axi_start_address_reg[5]_i_1_n_0\,
      CO(3) => \axi_start_address_reg[9]_i_1_n_0\,
      CO(2) => \axi_start_address_reg[9]_i_1_n_1\,
      CO(1) => \axi_start_address_reg[9]_i_1_n_2\,
      CO(0) => \axi_start_address_reg[9]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \axi_start_address_reg[9]_i_1_n_4\,
      O(2) => \axi_start_address_reg[9]_i_1_n_5\,
      O(1) => \axi_start_address_reg[9]_i_1_n_6\,
      O(0) => \axi_start_address_reg[9]_i_1_n_7\,
      S(3) => \axi_start_address[9]_i_2_n_0\,
      S(2) => \axi_start_address[9]_i_3_n_0\,
      S(1) => \axi_start_address[9]_i_4_n_0\,
      S(0) => \axi_start_address[9]_i_5_n_0\
    );
\data_cap[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ip2bus_otputs(1),
      I1 => \^data_valid_read_word\,
      O => \data_cap[31]_i_1_n_0\
    );
\data_cap_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_cap[31]_i_1_n_0\,
      D => ip2bus_mstrd_d(0),
      Q => Q(0),
      R => '0'
    );
\data_cap_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_cap[31]_i_1_n_0\,
      D => ip2bus_mstrd_d(10),
      Q => Q(10),
      R => '0'
    );
\data_cap_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_cap[31]_i_1_n_0\,
      D => ip2bus_mstrd_d(11),
      Q => Q(11),
      R => '0'
    );
\data_cap_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_cap[31]_i_1_n_0\,
      D => ip2bus_mstrd_d(12),
      Q => Q(12),
      R => '0'
    );
\data_cap_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_cap[31]_i_1_n_0\,
      D => ip2bus_mstrd_d(13),
      Q => Q(13),
      R => '0'
    );
\data_cap_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_cap[31]_i_1_n_0\,
      D => ip2bus_mstrd_d(14),
      Q => Q(14),
      R => '0'
    );
\data_cap_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_cap[31]_i_1_n_0\,
      D => ip2bus_mstrd_d(15),
      Q => Q(15),
      R => '0'
    );
\data_cap_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_cap[31]_i_1_n_0\,
      D => ip2bus_mstrd_d(16),
      Q => Q(16),
      R => '0'
    );
\data_cap_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_cap[31]_i_1_n_0\,
      D => ip2bus_mstrd_d(17),
      Q => Q(17),
      R => '0'
    );
\data_cap_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_cap[31]_i_1_n_0\,
      D => ip2bus_mstrd_d(18),
      Q => Q(18),
      R => '0'
    );
\data_cap_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_cap[31]_i_1_n_0\,
      D => ip2bus_mstrd_d(19),
      Q => Q(19),
      R => '0'
    );
\data_cap_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_cap[31]_i_1_n_0\,
      D => ip2bus_mstrd_d(1),
      Q => Q(1),
      R => '0'
    );
\data_cap_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_cap[31]_i_1_n_0\,
      D => ip2bus_mstrd_d(20),
      Q => Q(20),
      R => '0'
    );
\data_cap_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_cap[31]_i_1_n_0\,
      D => ip2bus_mstrd_d(21),
      Q => Q(21),
      R => '0'
    );
\data_cap_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_cap[31]_i_1_n_0\,
      D => ip2bus_mstrd_d(22),
      Q => Q(22),
      R => '0'
    );
\data_cap_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_cap[31]_i_1_n_0\,
      D => ip2bus_mstrd_d(23),
      Q => Q(23),
      R => '0'
    );
\data_cap_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_cap[31]_i_1_n_0\,
      D => ip2bus_mstrd_d(24),
      Q => Q(24),
      R => '0'
    );
\data_cap_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_cap[31]_i_1_n_0\,
      D => ip2bus_mstrd_d(25),
      Q => Q(25),
      R => '0'
    );
\data_cap_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_cap[31]_i_1_n_0\,
      D => ip2bus_mstrd_d(26),
      Q => Q(26),
      R => '0'
    );
\data_cap_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_cap[31]_i_1_n_0\,
      D => ip2bus_mstrd_d(27),
      Q => Q(27),
      R => '0'
    );
\data_cap_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_cap[31]_i_1_n_0\,
      D => ip2bus_mstrd_d(28),
      Q => Q(28),
      R => '0'
    );
\data_cap_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_cap[31]_i_1_n_0\,
      D => ip2bus_mstrd_d(29),
      Q => Q(29),
      R => '0'
    );
\data_cap_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_cap[31]_i_1_n_0\,
      D => ip2bus_mstrd_d(2),
      Q => Q(2),
      R => '0'
    );
\data_cap_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_cap[31]_i_1_n_0\,
      D => ip2bus_mstrd_d(30),
      Q => Q(30),
      R => '0'
    );
\data_cap_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_cap[31]_i_1_n_0\,
      D => ip2bus_mstrd_d(31),
      Q => Q(31),
      R => '0'
    );
\data_cap_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_cap[31]_i_1_n_0\,
      D => ip2bus_mstrd_d(3),
      Q => Q(3),
      R => '0'
    );
\data_cap_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_cap[31]_i_1_n_0\,
      D => ip2bus_mstrd_d(4),
      Q => Q(4),
      R => '0'
    );
\data_cap_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_cap[31]_i_1_n_0\,
      D => ip2bus_mstrd_d(5),
      Q => Q(5),
      R => '0'
    );
\data_cap_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_cap[31]_i_1_n_0\,
      D => ip2bus_mstrd_d(6),
      Q => Q(6),
      R => '0'
    );
\data_cap_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_cap[31]_i_1_n_0\,
      D => ip2bus_mstrd_d(7),
      Q => Q(7),
      R => '0'
    );
\data_cap_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_cap[31]_i_1_n_0\,
      D => ip2bus_mstrd_d(8),
      Q => Q(8),
      R => '0'
    );
\data_cap_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_cap[31]_i_1_n_0\,
      D => ip2bus_mstrd_d(9),
      Q => Q(9),
      R => '0'
    );
\ip2bus_inputs[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => state(1),
      I1 => state(2),
      I2 => state(0),
      O => ip2bus_inputs(0)
    );
master_read_dst_rdy: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ECFB"
    )
        port map (
      I0 => \^data_valid_read_word\,
      I1 => state(2),
      I2 => state(0),
      I3 => state(1),
      O => ip2bus_inputs(1)
    );
sync_ack_0_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => in0,
      Q => sync_ack_0,
      R => '0'
    );
sync_ack_1_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => sync_ack_0,
      Q => sync_ack_1,
      R => '0'
    );
sync_ack_2_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => sync_ack_1,
      Q => sync_ack_2,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_tape_interface_0_0_sample_assembler is
  port (
    ack_sample_assem : out STD_LOGIC;
    state : out STD_LOGIC_VECTOR ( 2 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 22 downto 0 );
    pwm : in STD_LOGIC;
    clk_1_mhz : in STD_LOGIC;
    state_0 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \data_reg_reg[27]\ : in STD_LOGIC;
    data_valid_byte : in STD_LOGIC;
    \data_reg_reg[31]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \data_reg_reg[31]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    restart : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_tape_interface_0_0_sample_assembler : entity is "sample_assembler";
end design_1_tape_interface_0_0_sample_assembler;

architecture STRUCTURE of design_1_tape_interface_0_0_sample_assembler is
  signal \^d\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal pwm_0 : STD_LOGIC;
  signal pwm_1 : STD_LOGIC;
  signal \^state\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \state[0]_i_1_n_0\ : STD_LOGIC;
  signal \state[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \state[1]_i_1_n_0\ : STD_LOGIC;
  signal \state[2]_i_1_n_0\ : STD_LOGIC;
  signal \timer_val[10]_i_1_n_0\ : STD_LOGIC;
  signal \timer_val[23]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \load[22]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \state[0]_i_2__0\ : label is "soft_lutpair1";
begin
  D(22 downto 0) <= \^d\(22 downto 0);
  state(2 downto 0) <= \^state\(2 downto 0);
\load[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000200"
    )
        port map (
      I0 => \^state\(0),
      I1 => \^state\(1),
      I2 => \^state\(2),
      I3 => pwm_1,
      I4 => pwm_0,
      O => E(0)
    );
pwm_0_reg: unisim.vcomponents.FDRE
     port map (
      C => clk_1_mhz,
      CE => '1',
      D => pwm,
      Q => pwm_0,
      R => '0'
    );
pwm_1_reg: unisim.vcomponents.FDRE
     port map (
      C => clk_1_mhz,
      CE => '1',
      D => pwm_0,
      Q => pwm_1,
      R => '0'
    );
\state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F00FFCFAFF00FC00"
    )
        port map (
      I0 => \data_reg_reg[27]\,
      I1 => \state[0]_i_2__0_n_0\,
      I2 => \^state\(2),
      I3 => \^state\(0),
      I4 => \^state\(1),
      I5 => data_valid_byte,
      O => \state[0]_i_1_n_0\
    );
\state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5353535353535301"
    )
        port map (
      I0 => \^state\(2),
      I1 => \^state\(0),
      I2 => \^state\(1),
      I3 => state_0(1),
      I4 => state_0(0),
      I5 => state_0(2),
      O => ack_sample_assem
    );
\state[0]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => pwm_0,
      I1 => pwm_1,
      O => \state[0]_i_2__0_n_0\
    );
\state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CF01FF00"
    )
        port map (
      I0 => \data_reg_reg[27]\,
      I1 => \^state\(2),
      I2 => \^state\(0),
      I3 => \^state\(1),
      I4 => data_valid_byte,
      O => \state[1]_i_1_n_0\
    );
\state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E8E8E8E8E8E8E8AA"
    )
        port map (
      I0 => \^state\(2),
      I1 => \^state\(0),
      I2 => \^state\(1),
      I3 => state_0(1),
      I4 => state_0(0),
      I5 => state_0(2),
      O => \state[2]_i_1_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_1_mhz,
      CE => '1',
      D => \state[0]_i_1_n_0\,
      Q => \^state\(0),
      R => restart
    );
\state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_1_mhz,
      CE => '1',
      D => \state[1]_i_1_n_0\,
      Q => \^state\(1),
      R => restart
    );
\state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_1_mhz,
      CE => '1',
      D => \state[2]_i_1_n_0\,
      Q => \^state\(2),
      R => restart
    );
\timer_val[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00C030E0"
    )
        port map (
      I0 => \data_reg_reg[27]\,
      I1 => \^state\(1),
      I2 => data_valid_byte,
      I3 => \^state\(2),
      I4 => \^state\(0),
      O => \timer_val[10]_i_1_n_0\
    );
\timer_val[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => \^state\(0),
      I1 => \^state\(2),
      I2 => data_valid_byte,
      I3 => \^state\(1),
      I4 => \data_reg_reg[27]\,
      O => \timer_val[23]_i_1_n_0\
    );
\timer_val_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk_1_mhz,
      CE => \timer_val[10]_i_1_n_0\,
      D => \data_reg_reg[31]\(7),
      Q => \^d\(9),
      R => '0'
    );
\timer_val_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk_1_mhz,
      CE => \timer_val[10]_i_1_n_0\,
      D => \^d\(18),
      Q => \^d\(10),
      R => \timer_val[23]_i_1_n_0\
    );
\timer_val_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk_1_mhz,
      CE => \timer_val[10]_i_1_n_0\,
      D => \^d\(19),
      Q => \^d\(11),
      R => \timer_val[23]_i_1_n_0\
    );
\timer_val_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk_1_mhz,
      CE => \timer_val[10]_i_1_n_0\,
      D => \^d\(20),
      Q => \^d\(12),
      R => \timer_val[23]_i_1_n_0\
    );
\timer_val_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk_1_mhz,
      CE => \timer_val[10]_i_1_n_0\,
      D => \^d\(21),
      Q => \^d\(13),
      R => \timer_val[23]_i_1_n_0\
    );
\timer_val_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk_1_mhz,
      CE => \timer_val[10]_i_1_n_0\,
      D => \^d\(22),
      Q => \^d\(14),
      R => \timer_val[23]_i_1_n_0\
    );
\timer_val_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk_1_mhz,
      CE => \timer_val[10]_i_1_n_0\,
      D => \data_reg_reg[31]_0\(0),
      Q => \^d\(15),
      R => \timer_val[23]_i_1_n_0\
    );
\timer_val_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk_1_mhz,
      CE => \timer_val[10]_i_1_n_0\,
      D => \data_reg_reg[31]_0\(1),
      Q => \^d\(16),
      R => \timer_val[23]_i_1_n_0\
    );
\timer_val_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk_1_mhz,
      CE => \timer_val[10]_i_1_n_0\,
      D => \data_reg_reg[31]_0\(2),
      Q => \^d\(17),
      R => \timer_val[23]_i_1_n_0\
    );
\timer_val_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk_1_mhz,
      CE => \timer_val[10]_i_1_n_0\,
      D => \data_reg_reg[31]_0\(3),
      Q => \^d\(18),
      R => \timer_val[23]_i_1_n_0\
    );
\timer_val_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_1_mhz,
      CE => \timer_val[10]_i_1_n_0\,
      D => \^d\(8),
      Q => \^d\(0),
      R => \timer_val[23]_i_1_n_0\
    );
\timer_val_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk_1_mhz,
      CE => \timer_val[10]_i_1_n_0\,
      D => \data_reg_reg[31]_0\(4),
      Q => \^d\(19),
      R => \timer_val[23]_i_1_n_0\
    );
\timer_val_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk_1_mhz,
      CE => \timer_val[10]_i_1_n_0\,
      D => \data_reg_reg[31]_0\(5),
      Q => \^d\(20),
      R => \timer_val[23]_i_1_n_0\
    );
\timer_val_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk_1_mhz,
      CE => \timer_val[10]_i_1_n_0\,
      D => \data_reg_reg[31]_0\(6),
      Q => \^d\(21),
      R => \timer_val[23]_i_1_n_0\
    );
\timer_val_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk_1_mhz,
      CE => \timer_val[10]_i_1_n_0\,
      D => \data_reg_reg[31]_0\(7),
      Q => \^d\(22),
      R => \timer_val[23]_i_1_n_0\
    );
\timer_val_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_1_mhz,
      CE => \timer_val[10]_i_1_n_0\,
      D => \^d\(9),
      Q => \^d\(1),
      R => \timer_val[23]_i_1_n_0\
    );
\timer_val_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_1_mhz,
      CE => \timer_val[10]_i_1_n_0\,
      D => \data_reg_reg[31]\(0),
      Q => \^d\(2),
      R => '0'
    );
\timer_val_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_1_mhz,
      CE => \timer_val[10]_i_1_n_0\,
      D => \data_reg_reg[31]\(1),
      Q => \^d\(3),
      R => '0'
    );
\timer_val_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_1_mhz,
      CE => \timer_val[10]_i_1_n_0\,
      D => \data_reg_reg[31]\(2),
      Q => \^d\(4),
      R => '0'
    );
\timer_val_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_1_mhz,
      CE => \timer_val[10]_i_1_n_0\,
      D => \data_reg_reg[31]\(3),
      Q => \^d\(5),
      R => '0'
    );
\timer_val_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_1_mhz,
      CE => \timer_val[10]_i_1_n_0\,
      D => \data_reg_reg[31]\(4),
      Q => \^d\(6),
      R => '0'
    );
\timer_val_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk_1_mhz,
      CE => \timer_val[10]_i_1_n_0\,
      D => \data_reg_reg[31]\(5),
      Q => \^d\(7),
      R => '0'
    );
\timer_val_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk_1_mhz,
      CE => \timer_val[10]_i_1_n_0\,
      D => \data_reg_reg[31]\(6),
      Q => \^d\(8),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_tape_interface_0_0_tape_pwm is
  port (
    pwm : out STD_LOGIC;
    clk_1_mhz : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 22 downto 0 );
    motor_control : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_tape_interface_0_0_tape_pwm : entity is "tape_pwm";
end design_1_tape_interface_0_0_tape_pwm;

architecture STRUCTURE of design_1_tape_interface_0_0_tape_pwm is
  signal \load_reg_n_0_[0]\ : STD_LOGIC;
  signal \load_reg_n_0_[10]\ : STD_LOGIC;
  signal \load_reg_n_0_[11]\ : STD_LOGIC;
  signal \load_reg_n_0_[12]\ : STD_LOGIC;
  signal \load_reg_n_0_[13]\ : STD_LOGIC;
  signal \load_reg_n_0_[14]\ : STD_LOGIC;
  signal \load_reg_n_0_[15]\ : STD_LOGIC;
  signal \load_reg_n_0_[16]\ : STD_LOGIC;
  signal \load_reg_n_0_[17]\ : STD_LOGIC;
  signal \load_reg_n_0_[18]\ : STD_LOGIC;
  signal \load_reg_n_0_[19]\ : STD_LOGIC;
  signal \load_reg_n_0_[1]\ : STD_LOGIC;
  signal \load_reg_n_0_[20]\ : STD_LOGIC;
  signal \load_reg_n_0_[21]\ : STD_LOGIC;
  signal \load_reg_n_0_[22]\ : STD_LOGIC;
  signal \load_reg_n_0_[2]\ : STD_LOGIC;
  signal \load_reg_n_0_[3]\ : STD_LOGIC;
  signal \load_reg_n_0_[4]\ : STD_LOGIC;
  signal \load_reg_n_0_[5]\ : STD_LOGIC;
  signal \load_reg_n_0_[6]\ : STD_LOGIC;
  signal \load_reg_n_0_[7]\ : STD_LOGIC;
  signal \load_reg_n_0_[8]\ : STD_LOGIC;
  signal \load_reg_n_0_[9]\ : STD_LOGIC;
  signal polarity_i_1_n_0 : STD_LOGIC;
  signal polarity_i_3_n_0 : STD_LOGIC;
  signal polarity_i_4_n_0 : STD_LOGIC;
  signal polarity_i_5_n_0 : STD_LOGIC;
  signal polarity_i_6_n_0 : STD_LOGIC;
  signal polarity_i_7_n_0 : STD_LOGIC;
  signal polarity_i_8_n_0 : STD_LOGIC;
  signal \^pwm\ : STD_LOGIC;
  signal timer : STD_LOGIC;
  signal \timer[0]_i_10_n_0\ : STD_LOGIC;
  signal \timer[0]_i_1_n_0\ : STD_LOGIC;
  signal \timer[0]_i_3_n_0\ : STD_LOGIC;
  signal \timer[0]_i_4_n_0\ : STD_LOGIC;
  signal \timer[0]_i_5_n_0\ : STD_LOGIC;
  signal \timer[0]_i_6_n_0\ : STD_LOGIC;
  signal \timer[0]_i_7_n_0\ : STD_LOGIC;
  signal \timer[0]_i_8_n_0\ : STD_LOGIC;
  signal \timer[0]_i_9_n_0\ : STD_LOGIC;
  signal \timer[12]_i_2_n_0\ : STD_LOGIC;
  signal \timer[12]_i_3_n_0\ : STD_LOGIC;
  signal \timer[12]_i_4_n_0\ : STD_LOGIC;
  signal \timer[12]_i_5_n_0\ : STD_LOGIC;
  signal \timer[12]_i_6_n_0\ : STD_LOGIC;
  signal \timer[12]_i_7_n_0\ : STD_LOGIC;
  signal \timer[12]_i_8_n_0\ : STD_LOGIC;
  signal \timer[12]_i_9_n_0\ : STD_LOGIC;
  signal \timer[16]_i_2_n_0\ : STD_LOGIC;
  signal \timer[16]_i_3_n_0\ : STD_LOGIC;
  signal \timer[16]_i_4_n_0\ : STD_LOGIC;
  signal \timer[16]_i_5_n_0\ : STD_LOGIC;
  signal \timer[16]_i_6_n_0\ : STD_LOGIC;
  signal \timer[16]_i_7_n_0\ : STD_LOGIC;
  signal \timer[16]_i_8_n_0\ : STD_LOGIC;
  signal \timer[16]_i_9_n_0\ : STD_LOGIC;
  signal \timer[20]_i_2_n_0\ : STD_LOGIC;
  signal \timer[20]_i_3_n_0\ : STD_LOGIC;
  signal \timer[20]_i_4_n_0\ : STD_LOGIC;
  signal \timer[20]_i_5_n_0\ : STD_LOGIC;
  signal \timer[20]_i_6_n_0\ : STD_LOGIC;
  signal \timer[20]_i_7_n_0\ : STD_LOGIC;
  signal \timer[20]_i_8_n_0\ : STD_LOGIC;
  signal \timer[4]_i_2_n_0\ : STD_LOGIC;
  signal \timer[4]_i_3_n_0\ : STD_LOGIC;
  signal \timer[4]_i_4_n_0\ : STD_LOGIC;
  signal \timer[4]_i_5_n_0\ : STD_LOGIC;
  signal \timer[4]_i_6_n_0\ : STD_LOGIC;
  signal \timer[4]_i_7_n_0\ : STD_LOGIC;
  signal \timer[4]_i_8_n_0\ : STD_LOGIC;
  signal \timer[4]_i_9_n_0\ : STD_LOGIC;
  signal \timer[8]_i_2_n_0\ : STD_LOGIC;
  signal \timer[8]_i_3_n_0\ : STD_LOGIC;
  signal \timer[8]_i_4_n_0\ : STD_LOGIC;
  signal \timer[8]_i_5_n_0\ : STD_LOGIC;
  signal \timer[8]_i_6_n_0\ : STD_LOGIC;
  signal \timer[8]_i_7_n_0\ : STD_LOGIC;
  signal \timer[8]_i_8_n_0\ : STD_LOGIC;
  signal \timer[8]_i_9_n_0\ : STD_LOGIC;
  signal timer_reg : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \timer_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \timer_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \timer_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \timer_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \timer_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \timer_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \timer_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \timer_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \timer_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \timer_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \timer_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \timer_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \timer_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \timer_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \timer_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \timer_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \timer_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \timer_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \timer_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \timer_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \timer_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \timer_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \timer_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \timer_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \timer_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \timer_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \timer_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \timer_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \timer_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \timer_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \timer_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \timer_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \timer_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \timer_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \timer_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \timer_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \timer_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \timer_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \timer_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \timer_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \timer_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \timer_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \timer_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \timer_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \timer_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \timer_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \timer_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \NLW_timer_reg[20]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
begin
  pwm <= \^pwm\;
\load_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_1_mhz,
      CE => E(0),
      D => D(0),
      Q => \load_reg_n_0_[0]\,
      R => '0'
    );
\load_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_1_mhz,
      CE => E(0),
      D => D(10),
      Q => \load_reg_n_0_[10]\,
      R => '0'
    );
\load_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_1_mhz,
      CE => E(0),
      D => D(11),
      Q => \load_reg_n_0_[11]\,
      R => '0'
    );
\load_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_1_mhz,
      CE => E(0),
      D => D(12),
      Q => \load_reg_n_0_[12]\,
      R => '0'
    );
\load_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_1_mhz,
      CE => E(0),
      D => D(13),
      Q => \load_reg_n_0_[13]\,
      R => '0'
    );
\load_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_1_mhz,
      CE => E(0),
      D => D(14),
      Q => \load_reg_n_0_[14]\,
      R => '0'
    );
\load_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_1_mhz,
      CE => E(0),
      D => D(15),
      Q => \load_reg_n_0_[15]\,
      R => '0'
    );
\load_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_1_mhz,
      CE => E(0),
      D => D(16),
      Q => \load_reg_n_0_[16]\,
      R => '0'
    );
\load_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_1_mhz,
      CE => E(0),
      D => D(17),
      Q => \load_reg_n_0_[17]\,
      R => '0'
    );
\load_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_1_mhz,
      CE => E(0),
      D => D(18),
      Q => \load_reg_n_0_[18]\,
      R => '0'
    );
\load_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_1_mhz,
      CE => E(0),
      D => D(19),
      Q => \load_reg_n_0_[19]\,
      R => '0'
    );
\load_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_1_mhz,
      CE => E(0),
      D => D(1),
      Q => \load_reg_n_0_[1]\,
      R => '0'
    );
\load_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_1_mhz,
      CE => E(0),
      D => D(20),
      Q => \load_reg_n_0_[20]\,
      R => '0'
    );
\load_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_1_mhz,
      CE => E(0),
      D => D(21),
      Q => \load_reg_n_0_[21]\,
      R => '0'
    );
\load_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_1_mhz,
      CE => E(0),
      D => D(22),
      Q => \load_reg_n_0_[22]\,
      R => '0'
    );
\load_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_1_mhz,
      CE => E(0),
      D => D(2),
      Q => \load_reg_n_0_[2]\,
      R => '0'
    );
\load_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_1_mhz,
      CE => E(0),
      D => D(3),
      Q => \load_reg_n_0_[3]\,
      R => '0'
    );
\load_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_1_mhz,
      CE => E(0),
      D => D(4),
      Q => \load_reg_n_0_[4]\,
      R => '0'
    );
\load_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_1_mhz,
      CE => E(0),
      D => D(5),
      Q => \load_reg_n_0_[5]\,
      R => '0'
    );
\load_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_1_mhz,
      CE => E(0),
      D => D(6),
      Q => \load_reg_n_0_[6]\,
      R => '0'
    );
\load_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_1_mhz,
      CE => E(0),
      D => D(7),
      Q => \load_reg_n_0_[7]\,
      R => '0'
    );
\load_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_1_mhz,
      CE => E(0),
      D => D(8),
      Q => \load_reg_n_0_[8]\,
      R => '0'
    );
\load_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_1_mhz,
      CE => E(0),
      D => D(9),
      Q => \load_reg_n_0_[9]\,
      R => '0'
    );
polarity_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => timer,
      I1 => \^pwm\,
      O => polarity_i_1_n_0
    );
polarity_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => polarity_i_3_n_0,
      I1 => polarity_i_4_n_0,
      I2 => polarity_i_5_n_0,
      I3 => polarity_i_6_n_0,
      I4 => polarity_i_7_n_0,
      I5 => polarity_i_8_n_0,
      O => timer
    );
polarity_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => timer_reg(18),
      I1 => timer_reg(19),
      I2 => timer_reg(16),
      I3 => timer_reg(17),
      O => polarity_i_3_n_0
    );
polarity_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => timer_reg(23),
      I1 => timer_reg(22),
      I2 => timer_reg(20),
      I3 => timer_reg(21),
      O => polarity_i_4_n_0
    );
polarity_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => timer_reg(6),
      I1 => timer_reg(7),
      I2 => timer_reg(4),
      I3 => timer_reg(5),
      O => polarity_i_5_n_0
    );
polarity_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => timer_reg(2),
      I1 => timer_reg(3),
      I2 => timer_reg(0),
      I3 => timer_reg(1),
      O => polarity_i_6_n_0
    );
polarity_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => timer_reg(14),
      I1 => timer_reg(15),
      I2 => timer_reg(12),
      I3 => timer_reg(13),
      O => polarity_i_7_n_0
    );
polarity_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => timer_reg(10),
      I1 => timer_reg(11),
      I2 => timer_reg(8),
      I3 => timer_reg(9),
      O => polarity_i_8_n_0
    );
polarity_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_1_mhz,
      CE => '1',
      D => polarity_i_1_n_0,
      Q => \^pwm\,
      R => '0'
    );
\timer[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"D"
    )
        port map (
      I0 => motor_control,
      I1 => timer,
      O => \timer[0]_i_1_n_0\
    );
\timer[0]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA3"
    )
        port map (
      I0 => \load_reg_n_0_[0]\,
      I1 => timer_reg(0),
      I2 => timer,
      I3 => motor_control,
      O => \timer[0]_i_10_n_0\
    );
\timer[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => timer_reg(3),
      I1 => motor_control,
      I2 => timer,
      I3 => \load_reg_n_0_[3]\,
      O => \timer[0]_i_3_n_0\
    );
\timer[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => timer_reg(2),
      I1 => motor_control,
      I2 => timer,
      I3 => \load_reg_n_0_[2]\,
      O => \timer[0]_i_4_n_0\
    );
\timer[0]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => timer_reg(1),
      I1 => motor_control,
      I2 => timer,
      I3 => \load_reg_n_0_[1]\,
      O => \timer[0]_i_5_n_0\
    );
\timer[0]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => timer_reg(0),
      I1 => motor_control,
      I2 => timer,
      I3 => \load_reg_n_0_[0]\,
      O => \timer[0]_i_6_n_0\
    );
\timer[0]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA3"
    )
        port map (
      I0 => \load_reg_n_0_[3]\,
      I1 => timer_reg(3),
      I2 => timer,
      I3 => motor_control,
      O => \timer[0]_i_7_n_0\
    );
\timer[0]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA3"
    )
        port map (
      I0 => \load_reg_n_0_[2]\,
      I1 => timer_reg(2),
      I2 => timer,
      I3 => motor_control,
      O => \timer[0]_i_8_n_0\
    );
\timer[0]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA3"
    )
        port map (
      I0 => \load_reg_n_0_[1]\,
      I1 => timer_reg(1),
      I2 => timer,
      I3 => motor_control,
      O => \timer[0]_i_9_n_0\
    );
\timer[12]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => timer_reg(15),
      I1 => motor_control,
      I2 => timer,
      I3 => \load_reg_n_0_[15]\,
      O => \timer[12]_i_2_n_0\
    );
\timer[12]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => timer_reg(14),
      I1 => motor_control,
      I2 => timer,
      I3 => \load_reg_n_0_[14]\,
      O => \timer[12]_i_3_n_0\
    );
\timer[12]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => timer_reg(13),
      I1 => motor_control,
      I2 => timer,
      I3 => \load_reg_n_0_[13]\,
      O => \timer[12]_i_4_n_0\
    );
\timer[12]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => timer_reg(12),
      I1 => motor_control,
      I2 => timer,
      I3 => \load_reg_n_0_[12]\,
      O => \timer[12]_i_5_n_0\
    );
\timer[12]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA3"
    )
        port map (
      I0 => \load_reg_n_0_[15]\,
      I1 => timer_reg(15),
      I2 => timer,
      I3 => motor_control,
      O => \timer[12]_i_6_n_0\
    );
\timer[12]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA3"
    )
        port map (
      I0 => \load_reg_n_0_[14]\,
      I1 => timer_reg(14),
      I2 => timer,
      I3 => motor_control,
      O => \timer[12]_i_7_n_0\
    );
\timer[12]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA3"
    )
        port map (
      I0 => \load_reg_n_0_[13]\,
      I1 => timer_reg(13),
      I2 => timer,
      I3 => motor_control,
      O => \timer[12]_i_8_n_0\
    );
\timer[12]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA3"
    )
        port map (
      I0 => \load_reg_n_0_[12]\,
      I1 => timer_reg(12),
      I2 => timer,
      I3 => motor_control,
      O => \timer[12]_i_9_n_0\
    );
\timer[16]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => timer_reg(19),
      I1 => motor_control,
      I2 => timer,
      I3 => \load_reg_n_0_[19]\,
      O => \timer[16]_i_2_n_0\
    );
\timer[16]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => timer_reg(18),
      I1 => motor_control,
      I2 => timer,
      I3 => \load_reg_n_0_[18]\,
      O => \timer[16]_i_3_n_0\
    );
\timer[16]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => timer_reg(17),
      I1 => motor_control,
      I2 => timer,
      I3 => \load_reg_n_0_[17]\,
      O => \timer[16]_i_4_n_0\
    );
\timer[16]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => timer_reg(16),
      I1 => motor_control,
      I2 => timer,
      I3 => \load_reg_n_0_[16]\,
      O => \timer[16]_i_5_n_0\
    );
\timer[16]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA3"
    )
        port map (
      I0 => \load_reg_n_0_[19]\,
      I1 => timer_reg(19),
      I2 => timer,
      I3 => motor_control,
      O => \timer[16]_i_6_n_0\
    );
\timer[16]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA3"
    )
        port map (
      I0 => \load_reg_n_0_[18]\,
      I1 => timer_reg(18),
      I2 => timer,
      I3 => motor_control,
      O => \timer[16]_i_7_n_0\
    );
\timer[16]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA3"
    )
        port map (
      I0 => \load_reg_n_0_[17]\,
      I1 => timer_reg(17),
      I2 => timer,
      I3 => motor_control,
      O => \timer[16]_i_8_n_0\
    );
\timer[16]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA3"
    )
        port map (
      I0 => \load_reg_n_0_[16]\,
      I1 => timer_reg(16),
      I2 => timer,
      I3 => motor_control,
      O => \timer[16]_i_9_n_0\
    );
\timer[20]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => timer_reg(22),
      I1 => motor_control,
      I2 => timer,
      I3 => \load_reg_n_0_[22]\,
      O => \timer[20]_i_2_n_0\
    );
\timer[20]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => timer_reg(21),
      I1 => motor_control,
      I2 => timer,
      I3 => \load_reg_n_0_[21]\,
      O => \timer[20]_i_3_n_0\
    );
\timer[20]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => timer_reg(20),
      I1 => motor_control,
      I2 => timer,
      I3 => \load_reg_n_0_[20]\,
      O => \timer[20]_i_4_n_0\
    );
\timer[20]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => timer_reg(23),
      I1 => timer,
      I2 => motor_control,
      O => \timer[20]_i_5_n_0\
    );
\timer[20]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA3"
    )
        port map (
      I0 => \load_reg_n_0_[22]\,
      I1 => timer_reg(22),
      I2 => timer,
      I3 => motor_control,
      O => \timer[20]_i_6_n_0\
    );
\timer[20]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA3"
    )
        port map (
      I0 => \load_reg_n_0_[21]\,
      I1 => timer_reg(21),
      I2 => timer,
      I3 => motor_control,
      O => \timer[20]_i_7_n_0\
    );
\timer[20]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA3"
    )
        port map (
      I0 => \load_reg_n_0_[20]\,
      I1 => timer_reg(20),
      I2 => timer,
      I3 => motor_control,
      O => \timer[20]_i_8_n_0\
    );
\timer[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => timer_reg(7),
      I1 => motor_control,
      I2 => timer,
      I3 => \load_reg_n_0_[7]\,
      O => \timer[4]_i_2_n_0\
    );
\timer[4]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => timer_reg(6),
      I1 => motor_control,
      I2 => timer,
      I3 => \load_reg_n_0_[6]\,
      O => \timer[4]_i_3_n_0\
    );
\timer[4]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => timer_reg(5),
      I1 => motor_control,
      I2 => timer,
      I3 => \load_reg_n_0_[5]\,
      O => \timer[4]_i_4_n_0\
    );
\timer[4]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => timer_reg(4),
      I1 => motor_control,
      I2 => timer,
      I3 => \load_reg_n_0_[4]\,
      O => \timer[4]_i_5_n_0\
    );
\timer[4]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA3"
    )
        port map (
      I0 => \load_reg_n_0_[7]\,
      I1 => timer_reg(7),
      I2 => timer,
      I3 => motor_control,
      O => \timer[4]_i_6_n_0\
    );
\timer[4]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA3"
    )
        port map (
      I0 => \load_reg_n_0_[6]\,
      I1 => timer_reg(6),
      I2 => timer,
      I3 => motor_control,
      O => \timer[4]_i_7_n_0\
    );
\timer[4]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA3"
    )
        port map (
      I0 => \load_reg_n_0_[5]\,
      I1 => timer_reg(5),
      I2 => timer,
      I3 => motor_control,
      O => \timer[4]_i_8_n_0\
    );
\timer[4]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA3"
    )
        port map (
      I0 => \load_reg_n_0_[4]\,
      I1 => timer_reg(4),
      I2 => timer,
      I3 => motor_control,
      O => \timer[4]_i_9_n_0\
    );
\timer[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => timer_reg(11),
      I1 => motor_control,
      I2 => timer,
      I3 => \load_reg_n_0_[11]\,
      O => \timer[8]_i_2_n_0\
    );
\timer[8]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => timer_reg(10),
      I1 => motor_control,
      I2 => timer,
      I3 => \load_reg_n_0_[10]\,
      O => \timer[8]_i_3_n_0\
    );
\timer[8]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => timer_reg(9),
      I1 => motor_control,
      I2 => timer,
      I3 => \load_reg_n_0_[9]\,
      O => \timer[8]_i_4_n_0\
    );
\timer[8]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => timer_reg(8),
      I1 => motor_control,
      I2 => timer,
      I3 => \load_reg_n_0_[8]\,
      O => \timer[8]_i_5_n_0\
    );
\timer[8]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA3"
    )
        port map (
      I0 => \load_reg_n_0_[11]\,
      I1 => timer_reg(11),
      I2 => timer,
      I3 => motor_control,
      O => \timer[8]_i_6_n_0\
    );
\timer[8]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA3"
    )
        port map (
      I0 => \load_reg_n_0_[10]\,
      I1 => timer_reg(10),
      I2 => timer,
      I3 => motor_control,
      O => \timer[8]_i_7_n_0\
    );
\timer[8]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA3"
    )
        port map (
      I0 => \load_reg_n_0_[9]\,
      I1 => timer_reg(9),
      I2 => timer,
      I3 => motor_control,
      O => \timer[8]_i_8_n_0\
    );
\timer[8]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA3"
    )
        port map (
      I0 => \load_reg_n_0_[8]\,
      I1 => timer_reg(8),
      I2 => timer,
      I3 => motor_control,
      O => \timer[8]_i_9_n_0\
    );
\timer_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_1_mhz,
      CE => \timer[0]_i_1_n_0\,
      D => \timer_reg[0]_i_2_n_7\,
      Q => timer_reg(0),
      R => '0'
    );
\timer_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \timer_reg[0]_i_2_n_0\,
      CO(2) => \timer_reg[0]_i_2_n_1\,
      CO(1) => \timer_reg[0]_i_2_n_2\,
      CO(0) => \timer_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \timer[0]_i_3_n_0\,
      DI(2) => \timer[0]_i_4_n_0\,
      DI(1) => \timer[0]_i_5_n_0\,
      DI(0) => \timer[0]_i_6_n_0\,
      O(3) => \timer_reg[0]_i_2_n_4\,
      O(2) => \timer_reg[0]_i_2_n_5\,
      O(1) => \timer_reg[0]_i_2_n_6\,
      O(0) => \timer_reg[0]_i_2_n_7\,
      S(3) => \timer[0]_i_7_n_0\,
      S(2) => \timer[0]_i_8_n_0\,
      S(1) => \timer[0]_i_9_n_0\,
      S(0) => \timer[0]_i_10_n_0\
    );
\timer_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_1_mhz,
      CE => \timer[0]_i_1_n_0\,
      D => \timer_reg[8]_i_1_n_5\,
      Q => timer_reg(10),
      R => '0'
    );
\timer_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_1_mhz,
      CE => \timer[0]_i_1_n_0\,
      D => \timer_reg[8]_i_1_n_4\,
      Q => timer_reg(11),
      R => '0'
    );
\timer_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_1_mhz,
      CE => \timer[0]_i_1_n_0\,
      D => \timer_reg[12]_i_1_n_7\,
      Q => timer_reg(12),
      R => '0'
    );
\timer_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \timer_reg[8]_i_1_n_0\,
      CO(3) => \timer_reg[12]_i_1_n_0\,
      CO(2) => \timer_reg[12]_i_1_n_1\,
      CO(1) => \timer_reg[12]_i_1_n_2\,
      CO(0) => \timer_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \timer[12]_i_2_n_0\,
      DI(2) => \timer[12]_i_3_n_0\,
      DI(1) => \timer[12]_i_4_n_0\,
      DI(0) => \timer[12]_i_5_n_0\,
      O(3) => \timer_reg[12]_i_1_n_4\,
      O(2) => \timer_reg[12]_i_1_n_5\,
      O(1) => \timer_reg[12]_i_1_n_6\,
      O(0) => \timer_reg[12]_i_1_n_7\,
      S(3) => \timer[12]_i_6_n_0\,
      S(2) => \timer[12]_i_7_n_0\,
      S(1) => \timer[12]_i_8_n_0\,
      S(0) => \timer[12]_i_9_n_0\
    );
\timer_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_1_mhz,
      CE => \timer[0]_i_1_n_0\,
      D => \timer_reg[12]_i_1_n_6\,
      Q => timer_reg(13),
      R => '0'
    );
\timer_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_1_mhz,
      CE => \timer[0]_i_1_n_0\,
      D => \timer_reg[12]_i_1_n_5\,
      Q => timer_reg(14),
      R => '0'
    );
\timer_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_1_mhz,
      CE => \timer[0]_i_1_n_0\,
      D => \timer_reg[12]_i_1_n_4\,
      Q => timer_reg(15),
      R => '0'
    );
\timer_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_1_mhz,
      CE => \timer[0]_i_1_n_0\,
      D => \timer_reg[16]_i_1_n_7\,
      Q => timer_reg(16),
      R => '0'
    );
\timer_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \timer_reg[12]_i_1_n_0\,
      CO(3) => \timer_reg[16]_i_1_n_0\,
      CO(2) => \timer_reg[16]_i_1_n_1\,
      CO(1) => \timer_reg[16]_i_1_n_2\,
      CO(0) => \timer_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \timer[16]_i_2_n_0\,
      DI(2) => \timer[16]_i_3_n_0\,
      DI(1) => \timer[16]_i_4_n_0\,
      DI(0) => \timer[16]_i_5_n_0\,
      O(3) => \timer_reg[16]_i_1_n_4\,
      O(2) => \timer_reg[16]_i_1_n_5\,
      O(1) => \timer_reg[16]_i_1_n_6\,
      O(0) => \timer_reg[16]_i_1_n_7\,
      S(3) => \timer[16]_i_6_n_0\,
      S(2) => \timer[16]_i_7_n_0\,
      S(1) => \timer[16]_i_8_n_0\,
      S(0) => \timer[16]_i_9_n_0\
    );
\timer_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_1_mhz,
      CE => \timer[0]_i_1_n_0\,
      D => \timer_reg[16]_i_1_n_6\,
      Q => timer_reg(17),
      R => '0'
    );
\timer_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_1_mhz,
      CE => \timer[0]_i_1_n_0\,
      D => \timer_reg[16]_i_1_n_5\,
      Q => timer_reg(18),
      R => '0'
    );
\timer_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_1_mhz,
      CE => \timer[0]_i_1_n_0\,
      D => \timer_reg[16]_i_1_n_4\,
      Q => timer_reg(19),
      R => '0'
    );
\timer_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_1_mhz,
      CE => \timer[0]_i_1_n_0\,
      D => \timer_reg[0]_i_2_n_6\,
      Q => timer_reg(1),
      R => '0'
    );
\timer_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_1_mhz,
      CE => \timer[0]_i_1_n_0\,
      D => \timer_reg[20]_i_1_n_7\,
      Q => timer_reg(20),
      R => '0'
    );
\timer_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \timer_reg[16]_i_1_n_0\,
      CO(3) => \NLW_timer_reg[20]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \timer_reg[20]_i_1_n_1\,
      CO(1) => \timer_reg[20]_i_1_n_2\,
      CO(0) => \timer_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \timer[20]_i_2_n_0\,
      DI(1) => \timer[20]_i_3_n_0\,
      DI(0) => \timer[20]_i_4_n_0\,
      O(3) => \timer_reg[20]_i_1_n_4\,
      O(2) => \timer_reg[20]_i_1_n_5\,
      O(1) => \timer_reg[20]_i_1_n_6\,
      O(0) => \timer_reg[20]_i_1_n_7\,
      S(3) => \timer[20]_i_5_n_0\,
      S(2) => \timer[20]_i_6_n_0\,
      S(1) => \timer[20]_i_7_n_0\,
      S(0) => \timer[20]_i_8_n_0\
    );
\timer_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_1_mhz,
      CE => \timer[0]_i_1_n_0\,
      D => \timer_reg[20]_i_1_n_6\,
      Q => timer_reg(21),
      R => '0'
    );
\timer_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_1_mhz,
      CE => \timer[0]_i_1_n_0\,
      D => \timer_reg[20]_i_1_n_5\,
      Q => timer_reg(22),
      R => '0'
    );
\timer_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_1_mhz,
      CE => \timer[0]_i_1_n_0\,
      D => \timer_reg[20]_i_1_n_4\,
      Q => timer_reg(23),
      R => '0'
    );
\timer_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_1_mhz,
      CE => \timer[0]_i_1_n_0\,
      D => \timer_reg[0]_i_2_n_5\,
      Q => timer_reg(2),
      R => '0'
    );
\timer_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_1_mhz,
      CE => \timer[0]_i_1_n_0\,
      D => \timer_reg[0]_i_2_n_4\,
      Q => timer_reg(3),
      R => '0'
    );
\timer_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_1_mhz,
      CE => \timer[0]_i_1_n_0\,
      D => \timer_reg[4]_i_1_n_7\,
      Q => timer_reg(4),
      R => '0'
    );
\timer_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \timer_reg[0]_i_2_n_0\,
      CO(3) => \timer_reg[4]_i_1_n_0\,
      CO(2) => \timer_reg[4]_i_1_n_1\,
      CO(1) => \timer_reg[4]_i_1_n_2\,
      CO(0) => \timer_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \timer[4]_i_2_n_0\,
      DI(2) => \timer[4]_i_3_n_0\,
      DI(1) => \timer[4]_i_4_n_0\,
      DI(0) => \timer[4]_i_5_n_0\,
      O(3) => \timer_reg[4]_i_1_n_4\,
      O(2) => \timer_reg[4]_i_1_n_5\,
      O(1) => \timer_reg[4]_i_1_n_6\,
      O(0) => \timer_reg[4]_i_1_n_7\,
      S(3) => \timer[4]_i_6_n_0\,
      S(2) => \timer[4]_i_7_n_0\,
      S(1) => \timer[4]_i_8_n_0\,
      S(0) => \timer[4]_i_9_n_0\
    );
\timer_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_1_mhz,
      CE => \timer[0]_i_1_n_0\,
      D => \timer_reg[4]_i_1_n_6\,
      Q => timer_reg(5),
      R => '0'
    );
\timer_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_1_mhz,
      CE => \timer[0]_i_1_n_0\,
      D => \timer_reg[4]_i_1_n_5\,
      Q => timer_reg(6),
      R => '0'
    );
\timer_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_1_mhz,
      CE => \timer[0]_i_1_n_0\,
      D => \timer_reg[4]_i_1_n_4\,
      Q => timer_reg(7),
      R => '0'
    );
\timer_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_1_mhz,
      CE => \timer[0]_i_1_n_0\,
      D => \timer_reg[8]_i_1_n_7\,
      Q => timer_reg(8),
      R => '0'
    );
\timer_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \timer_reg[4]_i_1_n_0\,
      CO(3) => \timer_reg[8]_i_1_n_0\,
      CO(2) => \timer_reg[8]_i_1_n_1\,
      CO(1) => \timer_reg[8]_i_1_n_2\,
      CO(0) => \timer_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \timer[8]_i_2_n_0\,
      DI(2) => \timer[8]_i_3_n_0\,
      DI(1) => \timer[8]_i_4_n_0\,
      DI(0) => \timer[8]_i_5_n_0\,
      O(3) => \timer_reg[8]_i_1_n_4\,
      O(2) => \timer_reg[8]_i_1_n_5\,
      O(1) => \timer_reg[8]_i_1_n_6\,
      O(0) => \timer_reg[8]_i_1_n_7\,
      S(3) => \timer[8]_i_6_n_0\,
      S(2) => \timer[8]_i_7_n_0\,
      S(1) => \timer[8]_i_8_n_0\,
      S(0) => \timer[8]_i_9_n_0\
    );
\timer_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_1_mhz,
      CE => \timer[0]_i_1_n_0\,
      D => \timer_reg[8]_i_1_n_6\,
      Q => timer_reg(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_tape_interface_0_0_top is
  port (
    pwm : out STD_LOGIC;
    ip2bus_mst_addr : out STD_LOGIC_VECTOR ( 29 downto 0 );
    ip2bus_inputs : out STD_LOGIC_VECTOR ( 1 downto 0 );
    clk : in STD_LOGIC;
    clk_1_mhz : in STD_LOGIC;
    clk_0 : in STD_LOGIC;
    reset : in STD_LOGIC;
    restart : in STD_LOGIC;
    ip2bus_otputs : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ip2bus_mstrd_d : in STD_LOGIC_VECTOR ( 31 downto 0 );
    motor_control : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_tape_interface_0_0_top : entity is "top";
end design_1_tape_interface_0_0_top;

architecture STRUCTURE of design_1_tape_interface_0_0_top is
  signal ack_byte_slice : STD_LOGIC;
  signal ack_sample_assem : STD_LOGIC;
  signal byte_data : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal byte_slice_n_10 : STD_LOGIC;
  signal byte_slice_n_11 : STD_LOGIC;
  signal byte_slice_n_20 : STD_LOGIC;
  signal byte_slice_n_4 : STD_LOGIC;
  signal byte_slice_n_5 : STD_LOGIC;
  signal byte_slice_n_6 : STD_LOGIC;
  signal byte_slice_n_7 : STD_LOGIC;
  signal byte_slice_n_8 : STD_LOGIC;
  signal byte_slice_n_9 : STD_LOGIC;
  signal data_cap : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal data_valid_byte : STD_LOGIC;
  signal data_valid_read_word : STD_LOGIC;
  signal load_timer : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \^pwm\ : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal state_0 : STD_LOGIC_VECTOR ( 2 downto 0 );
begin
  pwm <= \^pwm\;
byte_slice: entity work.design_1_tape_interface_0_0_byteslicer
     port map (
      D(7) => byte_slice_n_4,
      D(6) => byte_slice_n_5,
      D(5) => byte_slice_n_6,
      D(4) => byte_slice_n_7,
      D(3) => byte_slice_n_8,
      D(2) => byte_slice_n_9,
      D(1) => byte_slice_n_10,
      D(0) => byte_slice_n_11,
      Q(31 downto 0) => data_cap(31 downto 0),
      ack_sample_assem => ack_sample_assem,
      clk_1_mhz => clk_1_mhz,
      data_valid_byte => data_valid_byte,
      data_valid_read_word => data_valid_read_word,
      in0 => ack_byte_slice,
      restart => restart,
      state(2 downto 0) => state(2 downto 0),
      state_0(2 downto 0) => state_0(2 downto 0),
      \timer_val_reg[18]\(7 downto 0) => p_0_in(17 downto 10),
      \timer_val_reg[23]\(7 downto 0) => byte_data(7 downto 0),
      \timer_val_reg[3]\ => byte_slice_n_20
    );
r_word: entity work.design_1_tape_interface_0_0_read_word
     port map (
      Q(31 downto 0) => data_cap(31 downto 0),
      clk => clk,
      clk_0 => clk_0,
      data_valid_read_word => data_valid_read_word,
      in0 => ack_byte_slice,
      ip2bus_inputs(1 downto 0) => ip2bus_inputs(1 downto 0),
      ip2bus_mst_addr(29 downto 0) => ip2bus_mst_addr(29 downto 0),
      ip2bus_mstrd_d(31 downto 0) => ip2bus_mstrd_d(31 downto 0),
      ip2bus_otputs(1 downto 0) => ip2bus_otputs(1 downto 0),
      reset => reset,
      restart => restart
    );
samp_assem: entity work.design_1_tape_interface_0_0_sample_assembler
     port map (
      D(22 downto 0) => p_0_in(22 downto 0),
      E(0) => load_timer,
      ack_sample_assem => ack_sample_assem,
      clk_1_mhz => clk_1_mhz,
      \data_reg_reg[27]\ => byte_slice_n_20,
      \data_reg_reg[31]\(7) => byte_slice_n_4,
      \data_reg_reg[31]\(6) => byte_slice_n_5,
      \data_reg_reg[31]\(5) => byte_slice_n_6,
      \data_reg_reg[31]\(4) => byte_slice_n_7,
      \data_reg_reg[31]\(3) => byte_slice_n_8,
      \data_reg_reg[31]\(2) => byte_slice_n_9,
      \data_reg_reg[31]\(1) => byte_slice_n_10,
      \data_reg_reg[31]\(0) => byte_slice_n_11,
      \data_reg_reg[31]_0\(7 downto 0) => byte_data(7 downto 0),
      data_valid_byte => data_valid_byte,
      pwm => \^pwm\,
      restart => restart,
      state(2 downto 0) => state_0(2 downto 0),
      state_0(2 downto 0) => state(2 downto 0)
    );
t_pwm: entity work.design_1_tape_interface_0_0_tape_pwm
     port map (
      D(22 downto 0) => p_0_in(22 downto 0),
      E(0) => load_timer,
      clk_1_mhz => clk_1_mhz,
      motor_control => motor_control,
      pwm => \^pwm\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_tape_interface_0_0 is
  port (
    clk : in STD_LOGIC;
    clk_1_mhz : in STD_LOGIC;
    restart : in STD_LOGIC;
    reset : in STD_LOGIC;
    ip2bus_mst_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ip2bus_mst_length : out STD_LOGIC_VECTOR ( 11 downto 0 );
    ip2bus_mstrd_d : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ip2bus_inputs : out STD_LOGIC_VECTOR ( 4 downto 0 );
    ip2bus_otputs : in STD_LOGIC_VECTOR ( 5 downto 0 );
    motor_control : in STD_LOGIC;
    pwm : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_tape_interface_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_tape_interface_0_0 : entity is "design_1_tape_interface_0_0,top,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_tape_interface_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_tape_interface_0_0 : entity is "top,Vivado 2017.1";
end design_1_tape_interface_0_0;

architecture STRUCTURE of design_1_tape_interface_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \axi_start_address_reg[31]_i_4_n_0\ : STD_LOGIC;
  signal \^ip2bus_inputs\ : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal \^ip2bus_mst_addr\ : STD_LOGIC_VECTOR ( 31 downto 2 );
begin
  ip2bus_inputs(4) <= \<const0>\;
  ip2bus_inputs(3) <= \<const0>\;
  ip2bus_inputs(2 downto 1) <= \^ip2bus_inputs\(2 downto 1);
  ip2bus_inputs(0) <= \^ip2bus_inputs\(1);
  ip2bus_mst_addr(31 downto 2) <= \^ip2bus_mst_addr\(31 downto 2);
  ip2bus_mst_addr(1) <= \<const0>\;
  ip2bus_mst_addr(0) <= \<const0>\;
  ip2bus_mst_length(11) <= \<const0>\;
  ip2bus_mst_length(10) <= \<const0>\;
  ip2bus_mst_length(9) <= \<const0>\;
  ip2bus_mst_length(8) <= \<const0>\;
  ip2bus_mst_length(7) <= \<const0>\;
  ip2bus_mst_length(6) <= \<const0>\;
  ip2bus_mst_length(5) <= \<const0>\;
  ip2bus_mst_length(4) <= \<const0>\;
  ip2bus_mst_length(3) <= \<const0>\;
  ip2bus_mst_length(2) <= \<const1>\;
  ip2bus_mst_length(1) <= \<const0>\;
  ip2bus_mst_length(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
\axi_start_address_reg[31]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => clk,
      O => \axi_start_address_reg[31]_i_4_n_0\
    );
inst: entity work.design_1_tape_interface_0_0_top
     port map (
      clk => clk,
      clk_0 => \axi_start_address_reg[31]_i_4_n_0\,
      clk_1_mhz => clk_1_mhz,
      ip2bus_inputs(1 downto 0) => \^ip2bus_inputs\(2 downto 1),
      ip2bus_mst_addr(29 downto 0) => \^ip2bus_mst_addr\(31 downto 2),
      ip2bus_mstrd_d(31 downto 0) => ip2bus_mstrd_d(31 downto 0),
      ip2bus_otputs(1) => ip2bus_otputs(3),
      ip2bus_otputs(0) => ip2bus_otputs(0),
      motor_control => motor_control,
      pwm => pwm,
      reset => reset,
      restart => restart
    );
end STRUCTURE;
