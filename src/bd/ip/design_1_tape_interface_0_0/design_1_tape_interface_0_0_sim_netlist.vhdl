-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
-- Date        : Sun Jun 14 10:35:13 2020
-- Host        : johan-Latitude-E5550 running 64-bit Ubuntu 16.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/johan/v20/c64fpga/src/bd/ip/design_1_tape_interface_0_0/design_1_tape_interface_0_0_sim_netlist.vhdl
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
    \out\ : out STD_LOGIC;
    \data_reg_reg[31]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \FSM_onehot_state_reg[1]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    in0 : out STD_LOGIC;
    data_valid_read_word : in STD_LOGIC;
    clk_1_mhz : in STD_LOGIC;
    \data_reg_reg[7]_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    state : in STD_LOGIC_VECTOR ( 2 downto 0 );
    restart : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    \data_reg_reg[31]_1\ : in STD_LOGIC;
    \data_reg_reg[0]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_tape_interface_0_0_byteslicer : entity is "byteslicer";
end design_1_tape_interface_0_0_byteslicer;

architecture STRUCTURE of design_1_tape_interface_0_0_byteslicer is
  signal \FSM_onehot_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_2_n_0\ : STD_LOGIC;
  signal \^fsm_onehot_state_reg[1]_0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \FSM_onehot_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[4]\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_3_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 7 downto 0 );
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
  signal p_1_in_0 : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "STATE_LOADED:10000,STATE_SHIFT_1:01000,STATE_SHIFT_2:00100,STATE_SHIFT_3:00001,STATE_INIT:00010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "STATE_LOADED:10000,STATE_SHIFT_1:01000,STATE_SHIFT_2:00100,STATE_SHIFT_3:00001,STATE_INIT:00010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "STATE_LOADED:10000,STATE_SHIFT_1:01000,STATE_SHIFT_2:00100,STATE_SHIFT_3:00001,STATE_INIT:00010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "STATE_LOADED:10000,STATE_SHIFT_1:01000,STATE_SHIFT_2:00100,STATE_SHIFT_3:00001,STATE_INIT:00010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[4]\ : label is "STATE_LOADED:10000,STATE_SHIFT_1:01000,STATE_SHIFT_2:00100,STATE_SHIFT_3:00001,STATE_INIT:00010";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of data_valid_0_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of data_valid_0_reg : label is "yes";
  attribute ASYNC_REG_boolean of data_valid_1_reg : label is std.standard.true;
  attribute KEEP of data_valid_1_reg : label is "yes";
begin
  \FSM_onehot_state_reg[1]_0\(1 downto 0) <= \^fsm_onehot_state_reg[1]_0\(1 downto 0);
  Q(7 downto 0) <= \^q\(7 downto 0);
  \out\ <= data_valid_1;
\FSM_onehot_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAEABFEAAA2A802"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[1]_0\(0),
      I1 => state(0),
      I2 => state(1),
      I3 => state(2),
      I4 => \^fsm_onehot_state_reg[1]_0\(1),
      I5 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \FSM_onehot_state[0]_i_1_n_0\
    );
\FSM_onehot_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAEABFEAAA2A802"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => state(0),
      I2 => state(1),
      I3 => state(2),
      I4 => \^fsm_onehot_state_reg[1]_0\(1),
      I5 => p_1_in_0,
      O => \FSM_onehot_state[2]_i_1_n_0\
    );
\FSM_onehot_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAEABFEAAA2A802"
    )
        port map (
      I0 => p_1_in_0,
      I1 => state(0),
      I2 => state(1),
      I3 => state(2),
      I4 => \^fsm_onehot_state_reg[1]_0\(1),
      I5 => \FSM_onehot_state_reg_n_0_[4]\,
      O => \FSM_onehot_state[3]_i_1_n_0\
    );
\FSM_onehot_state[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => p_1_in_0,
      I1 => \^fsm_onehot_state_reg[1]_0\(1),
      I2 => \^fsm_onehot_state_reg[1]_0\(0),
      I3 => \FSM_onehot_state_reg_n_0_[4]\,
      I4 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \FSM_onehot_state[4]_i_1_n_0\
    );
\FSM_onehot_state[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFC03AAAA0000"
    )
        port map (
      I0 => data_valid_1,
      I1 => state(0),
      I2 => state(1),
      I3 => state(2),
      I4 => \^fsm_onehot_state_reg[1]_0\(1),
      I5 => \FSM_onehot_state_reg_n_0_[4]\,
      O => \FSM_onehot_state[4]_i_2_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_1_mhz,
      CE => \FSM_onehot_state[4]_i_1_n_0\,
      D => \FSM_onehot_state[0]_i_1_n_0\,
      Q => \^fsm_onehot_state_reg[1]_0\(0),
      R => restart
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_1_mhz,
      CE => \FSM_onehot_state[4]_i_1_n_0\,
      D => D(0),
      Q => \^fsm_onehot_state_reg[1]_0\(1),
      S => restart
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_1_mhz,
      CE => \FSM_onehot_state[4]_i_1_n_0\,
      D => \FSM_onehot_state[2]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[2]\,
      R => restart
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_1_mhz,
      CE => \FSM_onehot_state[4]_i_1_n_0\,
      D => \FSM_onehot_state[3]_i_1_n_0\,
      Q => p_1_in_0,
      R => restart
    );
\FSM_onehot_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_1_mhz,
      CE => \FSM_onehot_state[4]_i_1_n_0\,
      D => \FSM_onehot_state[4]_i_2_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[4]\,
      R => restart
    );
\FSM_sequential_state[2]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFFFE"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_3_n_0\,
      I1 => \^q\(7),
      I2 => \^q\(6),
      I3 => \^q\(4),
      I4 => \^q\(5),
      I5 => \^fsm_onehot_state_reg[1]_0\(1),
      O => \data_reg_reg[31]_0\
    );
\FSM_sequential_state[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      I2 => \^q\(0),
      I3 => \^q\(1),
      O => \FSM_sequential_state[2]_i_3_n_0\
    );
ack_inferred_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[1]_0\(1),
      I1 => data_valid_1,
      O => in0
    );
\data_reg[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \data_reg_reg[7]_0\(18),
      I1 => \^fsm_onehot_state_reg[1]_0\(1),
      I2 => data_valid_1,
      I3 => \data_reg_reg_n_0_[2]\,
      O => p_1_in(10)
    );
\data_reg[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \data_reg_reg[7]_0\(19),
      I1 => \^fsm_onehot_state_reg[1]_0\(1),
      I2 => data_valid_1,
      I3 => \data_reg_reg_n_0_[3]\,
      O => p_1_in(11)
    );
\data_reg[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \data_reg_reg[7]_0\(20),
      I1 => \^fsm_onehot_state_reg[1]_0\(1),
      I2 => data_valid_1,
      I3 => \data_reg_reg_n_0_[4]\,
      O => p_1_in(12)
    );
\data_reg[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \data_reg_reg[7]_0\(21),
      I1 => \^fsm_onehot_state_reg[1]_0\(1),
      I2 => data_valid_1,
      I3 => \data_reg_reg_n_0_[5]\,
      O => p_1_in(13)
    );
\data_reg[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \data_reg_reg[7]_0\(22),
      I1 => \^fsm_onehot_state_reg[1]_0\(1),
      I2 => data_valid_1,
      I3 => \data_reg_reg_n_0_[6]\,
      O => p_1_in(14)
    );
\data_reg[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \data_reg_reg[7]_0\(23),
      I1 => \^fsm_onehot_state_reg[1]_0\(1),
      I2 => data_valid_1,
      I3 => \data_reg_reg_n_0_[7]\,
      O => p_1_in(15)
    );
\data_reg[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \data_reg_reg[7]_0\(8),
      I1 => \^fsm_onehot_state_reg[1]_0\(1),
      I2 => data_valid_1,
      I3 => \data_reg_reg_n_0_[8]\,
      O => p_1_in(16)
    );
\data_reg[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \data_reg_reg[7]_0\(9),
      I1 => \^fsm_onehot_state_reg[1]_0\(1),
      I2 => data_valid_1,
      I3 => \data_reg_reg_n_0_[9]\,
      O => p_1_in(17)
    );
\data_reg[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \data_reg_reg[7]_0\(10),
      I1 => \^fsm_onehot_state_reg[1]_0\(1),
      I2 => data_valid_1,
      I3 => \data_reg_reg_n_0_[10]\,
      O => p_1_in(18)
    );
\data_reg[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \data_reg_reg[7]_0\(11),
      I1 => \^fsm_onehot_state_reg[1]_0\(1),
      I2 => data_valid_1,
      I3 => \data_reg_reg_n_0_[11]\,
      O => p_1_in(19)
    );
\data_reg[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \data_reg_reg[7]_0\(12),
      I1 => \^fsm_onehot_state_reg[1]_0\(1),
      I2 => data_valid_1,
      I3 => \data_reg_reg_n_0_[12]\,
      O => p_1_in(20)
    );
\data_reg[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \data_reg_reg[7]_0\(13),
      I1 => \^fsm_onehot_state_reg[1]_0\(1),
      I2 => data_valid_1,
      I3 => \data_reg_reg_n_0_[13]\,
      O => p_1_in(21)
    );
\data_reg[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \data_reg_reg[7]_0\(14),
      I1 => \^fsm_onehot_state_reg[1]_0\(1),
      I2 => data_valid_1,
      I3 => \data_reg_reg_n_0_[14]\,
      O => p_1_in(22)
    );
\data_reg[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \data_reg_reg[7]_0\(15),
      I1 => \^fsm_onehot_state_reg[1]_0\(1),
      I2 => data_valid_1,
      I3 => \data_reg_reg_n_0_[15]\,
      O => p_1_in(23)
    );
\data_reg[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \data_reg_reg[7]_0\(0),
      I1 => \^fsm_onehot_state_reg[1]_0\(1),
      I2 => data_valid_1,
      I3 => \data_reg_reg_n_0_[16]\,
      O => p_1_in(24)
    );
\data_reg[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \data_reg_reg[7]_0\(1),
      I1 => \^fsm_onehot_state_reg[1]_0\(1),
      I2 => data_valid_1,
      I3 => \data_reg_reg_n_0_[17]\,
      O => p_1_in(25)
    );
\data_reg[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \data_reg_reg[7]_0\(2),
      I1 => \^fsm_onehot_state_reg[1]_0\(1),
      I2 => data_valid_1,
      I3 => \data_reg_reg_n_0_[18]\,
      O => p_1_in(26)
    );
\data_reg[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \data_reg_reg[7]_0\(3),
      I1 => \^fsm_onehot_state_reg[1]_0\(1),
      I2 => data_valid_1,
      I3 => \data_reg_reg_n_0_[19]\,
      O => p_1_in(27)
    );
\data_reg[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \data_reg_reg[7]_0\(4),
      I1 => \^fsm_onehot_state_reg[1]_0\(1),
      I2 => data_valid_1,
      I3 => \data_reg_reg_n_0_[20]\,
      O => p_1_in(28)
    );
\data_reg[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \data_reg_reg[7]_0\(5),
      I1 => \^fsm_onehot_state_reg[1]_0\(1),
      I2 => data_valid_1,
      I3 => \data_reg_reg_n_0_[21]\,
      O => p_1_in(29)
    );
\data_reg[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \data_reg_reg[7]_0\(6),
      I1 => \^fsm_onehot_state_reg[1]_0\(1),
      I2 => data_valid_1,
      I3 => \data_reg_reg_n_0_[22]\,
      O => p_1_in(30)
    );
\data_reg[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \data_reg_reg[7]_0\(7),
      I1 => \^fsm_onehot_state_reg[1]_0\(1),
      I2 => data_valid_1,
      I3 => \data_reg_reg_n_0_[23]\,
      O => p_1_in(31)
    );
\data_reg[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \data_reg_reg[7]_0\(16),
      I1 => \^fsm_onehot_state_reg[1]_0\(1),
      I2 => data_valid_1,
      I3 => \data_reg_reg_n_0_[0]\,
      O => p_1_in(8)
    );
\data_reg[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \data_reg_reg[7]_0\(17),
      I1 => \^fsm_onehot_state_reg[1]_0\(1),
      I2 => data_valid_1,
      I3 => \data_reg_reg_n_0_[1]\,
      O => p_1_in(9)
    );
\data_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_1_mhz,
      CE => \data_reg_reg[31]_1\,
      D => \data_reg_reg[7]_0\(24),
      Q => \data_reg_reg_n_0_[0]\,
      R => \data_reg_reg[0]_0\
    );
\data_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk_1_mhz,
      CE => \data_reg_reg[31]_1\,
      D => p_1_in(10),
      Q => \data_reg_reg_n_0_[10]\,
      R => '0'
    );
\data_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk_1_mhz,
      CE => \data_reg_reg[31]_1\,
      D => p_1_in(11),
      Q => \data_reg_reg_n_0_[11]\,
      R => '0'
    );
\data_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk_1_mhz,
      CE => \data_reg_reg[31]_1\,
      D => p_1_in(12),
      Q => \data_reg_reg_n_0_[12]\,
      R => '0'
    );
\data_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk_1_mhz,
      CE => \data_reg_reg[31]_1\,
      D => p_1_in(13),
      Q => \data_reg_reg_n_0_[13]\,
      R => '0'
    );
\data_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk_1_mhz,
      CE => \data_reg_reg[31]_1\,
      D => p_1_in(14),
      Q => \data_reg_reg_n_0_[14]\,
      R => '0'
    );
\data_reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk_1_mhz,
      CE => \data_reg_reg[31]_1\,
      D => p_1_in(15),
      Q => \data_reg_reg_n_0_[15]\,
      R => '0'
    );
\data_reg_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk_1_mhz,
      CE => \data_reg_reg[31]_1\,
      D => p_1_in(16),
      Q => \data_reg_reg_n_0_[16]\,
      R => '0'
    );
\data_reg_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk_1_mhz,
      CE => \data_reg_reg[31]_1\,
      D => p_1_in(17),
      Q => \data_reg_reg_n_0_[17]\,
      R => '0'
    );
\data_reg_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk_1_mhz,
      CE => \data_reg_reg[31]_1\,
      D => p_1_in(18),
      Q => \data_reg_reg_n_0_[18]\,
      R => '0'
    );
\data_reg_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk_1_mhz,
      CE => \data_reg_reg[31]_1\,
      D => p_1_in(19),
      Q => \data_reg_reg_n_0_[19]\,
      R => '0'
    );
\data_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_1_mhz,
      CE => \data_reg_reg[31]_1\,
      D => \data_reg_reg[7]_0\(25),
      Q => \data_reg_reg_n_0_[1]\,
      R => \data_reg_reg[0]_0\
    );
\data_reg_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk_1_mhz,
      CE => \data_reg_reg[31]_1\,
      D => p_1_in(20),
      Q => \data_reg_reg_n_0_[20]\,
      R => '0'
    );
\data_reg_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk_1_mhz,
      CE => \data_reg_reg[31]_1\,
      D => p_1_in(21),
      Q => \data_reg_reg_n_0_[21]\,
      R => '0'
    );
\data_reg_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk_1_mhz,
      CE => \data_reg_reg[31]_1\,
      D => p_1_in(22),
      Q => \data_reg_reg_n_0_[22]\,
      R => '0'
    );
\data_reg_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk_1_mhz,
      CE => \data_reg_reg[31]_1\,
      D => p_1_in(23),
      Q => \data_reg_reg_n_0_[23]\,
      R => '0'
    );
\data_reg_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk_1_mhz,
      CE => \data_reg_reg[31]_1\,
      D => p_1_in(24),
      Q => \^q\(0),
      R => '0'
    );
\data_reg_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk_1_mhz,
      CE => \data_reg_reg[31]_1\,
      D => p_1_in(25),
      Q => \^q\(1),
      R => '0'
    );
\data_reg_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk_1_mhz,
      CE => \data_reg_reg[31]_1\,
      D => p_1_in(26),
      Q => \^q\(2),
      R => '0'
    );
\data_reg_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk_1_mhz,
      CE => \data_reg_reg[31]_1\,
      D => p_1_in(27),
      Q => \^q\(3),
      R => '0'
    );
\data_reg_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk_1_mhz,
      CE => \data_reg_reg[31]_1\,
      D => p_1_in(28),
      Q => \^q\(4),
      R => '0'
    );
\data_reg_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk_1_mhz,
      CE => \data_reg_reg[31]_1\,
      D => p_1_in(29),
      Q => \^q\(5),
      R => '0'
    );
\data_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_1_mhz,
      CE => \data_reg_reg[31]_1\,
      D => \data_reg_reg[7]_0\(26),
      Q => \data_reg_reg_n_0_[2]\,
      R => \data_reg_reg[0]_0\
    );
\data_reg_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk_1_mhz,
      CE => \data_reg_reg[31]_1\,
      D => p_1_in(30),
      Q => \^q\(6),
      R => '0'
    );
\data_reg_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk_1_mhz,
      CE => \data_reg_reg[31]_1\,
      D => p_1_in(31),
      Q => \^q\(7),
      R => '0'
    );
\data_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_1_mhz,
      CE => \data_reg_reg[31]_1\,
      D => \data_reg_reg[7]_0\(27),
      Q => \data_reg_reg_n_0_[3]\,
      R => \data_reg_reg[0]_0\
    );
\data_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_1_mhz,
      CE => \data_reg_reg[31]_1\,
      D => \data_reg_reg[7]_0\(28),
      Q => \data_reg_reg_n_0_[4]\,
      R => \data_reg_reg[0]_0\
    );
\data_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_1_mhz,
      CE => \data_reg_reg[31]_1\,
      D => \data_reg_reg[7]_0\(29),
      Q => \data_reg_reg_n_0_[5]\,
      R => \data_reg_reg[0]_0\
    );
\data_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_1_mhz,
      CE => \data_reg_reg[31]_1\,
      D => \data_reg_reg[7]_0\(30),
      Q => \data_reg_reg_n_0_[6]\,
      R => \data_reg_reg[0]_0\
    );
\data_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_1_mhz,
      CE => \data_reg_reg[31]_1\,
      D => \data_reg_reg[7]_0\(31),
      Q => \data_reg_reg_n_0_[7]\,
      R => \data_reg_reg[0]_0\
    );
\data_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk_1_mhz,
      CE => \data_reg_reg[31]_1\,
      D => p_1_in(8),
      Q => \data_reg_reg_n_0_[8]\,
      R => '0'
    );
\data_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk_1_mhz,
      CE => \data_reg_reg[31]_1\,
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
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_tape_interface_0_0_read_word is
  port (
    data_valid_read_word : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ip2bus_mst_addr : out STD_LOGIC_VECTOR ( 29 downto 0 );
    ip2bus_inputs : out STD_LOGIC_VECTOR ( 1 downto 0 );
    in0 : in STD_LOGIC;
    clk : in STD_LOGIC;
    ip2bus_otputs : in STD_LOGIC_VECTOR ( 1 downto 0 );
    restart : in STD_LOGIC;
    reset : in STD_LOGIC;
    ip2bus_mstrd_d : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_tape_interface_0_0_read_word : entity is "read_word";
end design_1_tape_interface_0_0_read_word;

architecture STRUCTURE of design_1_tape_interface_0_0_read_word is
  signal \FSM_sequential_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \axi_data_inc[2]_i_1_n_0\ : STD_LOGIC;
  signal axi_data_loaded20_in : STD_LOGIC;
  signal axi_data_loaded_i_1_n_0 : STD_LOGIC;
  signal \axi_start_address[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_start_address[31]_i_2_n_0\ : STD_LOGIC;
  signal \axi_start_address[5]_i_2_n_0\ : STD_LOGIC;
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
  signal \in\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \^ip2bus_mst_addr\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal state : STD_LOGIC_VECTOR ( 2 downto 0 );
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
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_1\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "IDLE:000,INIT_CMD:001,START:010,ACT:011,TRANSMITTING:100,";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "IDLE:000,INIT_CMD:001,START:010,ACT:011,TRANSMITTING:100,";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[2]\ : label is "IDLE:000,INIT_CMD:001,START:010,ACT:011,TRANSMITTING:100,";
  attribute SOFT_HLUTNM of axi_data_loaded_i_2 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \ip2bus_inputs[2]_INST_0\ : label is "soft_lutpair1";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of sync_ack_0_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of sync_ack_0_reg : label is "yes";
  attribute ASYNC_REG_boolean of sync_ack_1_reg : label is std.standard.true;
  attribute KEEP of sync_ack_1_reg : label is "yes";
  attribute ASYNC_REG_boolean of sync_ack_2_reg : label is std.standard.true;
  attribute KEEP of sync_ack_2_reg : label is "yes";
begin
  data_valid_read_word <= \^data_valid_read_word\;
  ip2bus_mst_addr(29 downto 0) <= \^ip2bus_mst_addr\(29 downto 0);
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"550A5508550A550A"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_2_n_0\,
      I1 => state(1),
      I2 => state(2),
      I3 => state(0),
      I4 => \^data_valid_read_word\,
      I5 => state2,
      O => \FSM_sequential_state[0]_i_1_n_0\
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"464C"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_2_n_0\,
      I1 => state(1),
      I2 => state(2),
      I3 => state(0),
      O => \FSM_sequential_state[1]_i_1_n_0\
    );
\FSM_sequential_state[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5850"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_2_n_0\,
      I1 => state(1),
      I2 => state(2),
      I3 => state(0),
      O => \FSM_sequential_state[2]_i_1_n_0\
    );
\FSM_sequential_state[2]_i_2\: unisim.vcomponents.LUT6
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
      O => \FSM_sequential_state[2]_i_2_n_0\
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
      I0 => \in\(2),
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
      Q => \in\(2),
      R => '0'
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
axi_data_loaded_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"24"
    )
        port map (
      I0 => state(0),
      I1 => state(2),
      I2 => state(1),
      O => axi_data_loaded20_in
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
\axi_start_address[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \in\(2),
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
      O => \axi_start_address[31]_i_2_n_0\
    );
\axi_start_address[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \in\(2),
      I1 => \^ip2bus_mst_addr\(0),
      O => \axi_start_address[5]_i_2_n_0\
    );
\axi_start_address_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \axi_start_address[31]_i_2_n_0\,
      D => \axi_start_address_reg[13]_i_1_n_7\,
      Q => \^ip2bus_mst_addr\(8),
      R => state2
    );
\axi_start_address_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \axi_start_address[31]_i_2_n_0\,
      D => \axi_start_address_reg[13]_i_1_n_6\,
      Q => \^ip2bus_mst_addr\(9),
      R => state2
    );
\axi_start_address_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \axi_start_address[31]_i_2_n_0\,
      D => \axi_start_address_reg[13]_i_1_n_5\,
      Q => \^ip2bus_mst_addr\(10),
      R => state2
    );
\axi_start_address_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \axi_start_address[31]_i_2_n_0\,
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
      S(3 downto 0) => \^ip2bus_mst_addr\(11 downto 8)
    );
\axi_start_address_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \axi_start_address[31]_i_2_n_0\,
      D => \axi_start_address_reg[17]_i_1_n_7\,
      Q => \^ip2bus_mst_addr\(12),
      R => state2
    );
\axi_start_address_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \axi_start_address[31]_i_2_n_0\,
      D => \axi_start_address_reg[17]_i_1_n_6\,
      Q => \^ip2bus_mst_addr\(13),
      R => state2
    );
\axi_start_address_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \axi_start_address[31]_i_2_n_0\,
      D => \axi_start_address_reg[17]_i_1_n_5\,
      Q => \^ip2bus_mst_addr\(14),
      R => state2
    );
\axi_start_address_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \axi_start_address[31]_i_2_n_0\,
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
      S(3 downto 0) => \^ip2bus_mst_addr\(15 downto 12)
    );
\axi_start_address_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \axi_start_address[31]_i_2_n_0\,
      D => \axi_start_address_reg[21]_i_1_n_7\,
      Q => \^ip2bus_mst_addr\(16),
      R => state2
    );
\axi_start_address_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \axi_start_address[31]_i_2_n_0\,
      D => \axi_start_address_reg[21]_i_1_n_6\,
      Q => \^ip2bus_mst_addr\(17),
      R => state2
    );
\axi_start_address_reg[20]\: unisim.vcomponents.FDSE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \axi_start_address[31]_i_2_n_0\,
      D => \axi_start_address_reg[21]_i_1_n_5\,
      Q => \^ip2bus_mst_addr\(18),
      S => state2
    );
\axi_start_address_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \axi_start_address[31]_i_2_n_0\,
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
      S(3 downto 0) => \^ip2bus_mst_addr\(19 downto 16)
    );
\axi_start_address_reg[22]\: unisim.vcomponents.FDSE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \axi_start_address[31]_i_2_n_0\,
      D => \axi_start_address_reg[25]_i_1_n_7\,
      Q => \^ip2bus_mst_addr\(20),
      S => state2
    );
\axi_start_address_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \axi_start_address[31]_i_2_n_0\,
      D => \axi_start_address_reg[25]_i_1_n_6\,
      Q => \^ip2bus_mst_addr\(21),
      R => state2
    );
\axi_start_address_reg[24]\: unisim.vcomponents.FDSE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \axi_start_address[31]_i_2_n_0\,
      D => \axi_start_address_reg[25]_i_1_n_5\,
      Q => \^ip2bus_mst_addr\(22),
      S => state2
    );
\axi_start_address_reg[25]\: unisim.vcomponents.FDSE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \axi_start_address[31]_i_2_n_0\,
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
      S(3 downto 0) => \^ip2bus_mst_addr\(23 downto 20)
    );
\axi_start_address_reg[26]\: unisim.vcomponents.FDSE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \axi_start_address[31]_i_2_n_0\,
      D => \axi_start_address_reg[29]_i_1_n_7\,
      Q => \^ip2bus_mst_addr\(24),
      S => state2
    );
\axi_start_address_reg[27]\: unisim.vcomponents.FDSE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \axi_start_address[31]_i_2_n_0\,
      D => \axi_start_address_reg[29]_i_1_n_6\,
      Q => \^ip2bus_mst_addr\(25),
      S => state2
    );
\axi_start_address_reg[28]\: unisim.vcomponents.FDSE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \axi_start_address[31]_i_2_n_0\,
      D => \axi_start_address_reg[29]_i_1_n_5\,
      Q => \^ip2bus_mst_addr\(26),
      S => state2
    );
\axi_start_address_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \axi_start_address[31]_i_2_n_0\,
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
      S(3 downto 0) => \^ip2bus_mst_addr\(27 downto 24)
    );
\axi_start_address_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \axi_start_address[31]_i_2_n_0\,
      D => \axi_start_address[2]_i_1_n_0\,
      Q => \^ip2bus_mst_addr\(0),
      R => state2
    );
\axi_start_address_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \axi_start_address[31]_i_2_n_0\,
      D => \axi_start_address_reg[31]_i_3_n_7\,
      Q => \^ip2bus_mst_addr\(28),
      R => state2
    );
\axi_start_address_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \axi_start_address[31]_i_2_n_0\,
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
      S(1 downto 0) => \^ip2bus_mst_addr\(29 downto 28)
    );
\axi_start_address_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \axi_start_address[31]_i_2_n_0\,
      D => \axi_start_address_reg[5]_i_1_n_6\,
      Q => \^ip2bus_mst_addr\(1),
      R => state2
    );
\axi_start_address_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \axi_start_address[31]_i_2_n_0\,
      D => \axi_start_address_reg[5]_i_1_n_5\,
      Q => \^ip2bus_mst_addr\(2),
      R => state2
    );
\axi_start_address_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \axi_start_address[31]_i_2_n_0\,
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
      DI(0) => \in\(2),
      O(3) => \axi_start_address_reg[5]_i_1_n_4\,
      O(2) => \axi_start_address_reg[5]_i_1_n_5\,
      O(1) => \axi_start_address_reg[5]_i_1_n_6\,
      O(0) => \NLW_axi_start_address_reg[5]_i_1_O_UNCONNECTED\(0),
      S(3 downto 1) => \^ip2bus_mst_addr\(3 downto 1),
      S(0) => \axi_start_address[5]_i_2_n_0\
    );
\axi_start_address_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \axi_start_address[31]_i_2_n_0\,
      D => \axi_start_address_reg[9]_i_1_n_7\,
      Q => \^ip2bus_mst_addr\(4),
      R => state2
    );
\axi_start_address_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \axi_start_address[31]_i_2_n_0\,
      D => \axi_start_address_reg[9]_i_1_n_6\,
      Q => \^ip2bus_mst_addr\(5),
      R => state2
    );
\axi_start_address_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \axi_start_address[31]_i_2_n_0\,
      D => \axi_start_address_reg[9]_i_1_n_5\,
      Q => \^ip2bus_mst_addr\(6),
      R => state2
    );
\axi_start_address_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \axi_start_address[31]_i_2_n_0\,
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
      S(3 downto 0) => \^ip2bus_mst_addr\(7 downto 4)
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
\ip2bus_inputs[2]_INST_0\: unisim.vcomponents.LUT4
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
    \FSM_sequential_state_reg[0]_0\ : out STD_LOGIC;
    state : out STD_LOGIC_VECTOR ( 2 downto 0 );
    data_valid_1_reg : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 22 downto 0 );
    \FSM_sequential_state_reg[0]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    pwm : in STD_LOGIC;
    clk_1_mhz : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    \FSM_sequential_state_reg[2]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    restart : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \FSM_sequential_state_reg[2]_1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_tape_interface_0_0_sample_assembler : entity is "sample_assembler";
end design_1_tape_interface_0_0_sample_assembler;

architecture STRUCTURE of design_1_tape_interface_0_0_sample_assembler is
  signal \^d\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \FSM_sequential_state[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_1__0_n_0\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal pwm_0 : STD_LOGIC;
  signal pwm_1 : STD_LOGIC;
  signal \^state\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \timer_val[10]_i_1_n_0\ : STD_LOGIC;
  signal \timer_val[10]_i_2_n_0\ : STD_LOGIC;
  signal \timer_val[23]_i_1_n_0\ : STD_LOGIC;
  signal \timer_val[3]_i_1_n_0\ : STD_LOGIC;
  signal \timer_val[4]_i_1_n_0\ : STD_LOGIC;
  signal \timer_val[5]_i_1_n_0\ : STD_LOGIC;
  signal \timer_val[6]_i_1_n_0\ : STD_LOGIC;
  signal \timer_val[7]_i_1_n_0\ : STD_LOGIC;
  signal \timer_val[8]_i_1_n_0\ : STD_LOGIC;
  signal \timer_val[9]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[0]_i_2\ : label is "soft_lutpair2";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "STATE_LOADED_2:011,STATE_LOADED_3:010,STATE_LOADED_1:100,STATE_LOADED:000,STATE_START:001";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "STATE_LOADED_2:011,STATE_LOADED_3:010,STATE_LOADED_1:100,STATE_LOADED:000,STATE_START:001";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[2]\ : label is "STATE_LOADED_2:011,STATE_LOADED_3:010,STATE_LOADED_1:100,STATE_LOADED:000,STATE_START:001";
  attribute SOFT_HLUTNM of \data_reg[31]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \data_reg[7]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \load[22]_i_1\ : label is "soft_lutpair2";
begin
  D(22 downto 0) <= \^d\(22 downto 0);
  state(2 downto 0) <= \^state\(2 downto 0);
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0200FFFF1E001E00"
    )
        port map (
      I0 => \^state\(0),
      I1 => \^state\(1),
      I2 => \^state\(2),
      I3 => \FSM_sequential_state_reg[2]_0\(0),
      I4 => \out\,
      I5 => \FSM_sequential_state_reg[2]_0\(1),
      O => \FSM_sequential_state_reg[0]_1\(0)
    );
\FSM_sequential_state[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFC15FC04"
    )
        port map (
      I0 => \^state\(1),
      I1 => \^state\(2),
      I2 => \FSM_sequential_state_reg[2]_0\(1),
      I3 => \^state\(0),
      I4 => p_1_in,
      I5 => restart,
      O => \FSM_sequential_state[0]_i_1__0_n_0\
    );
\FSM_sequential_state[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pwm_1,
      I1 => pwm_0,
      O => p_1_in
    );
\FSM_sequential_state[1]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FE10"
    )
        port map (
      I0 => \^state\(0),
      I1 => \FSM_sequential_state_reg[2]_0\(1),
      I2 => \^state\(2),
      I3 => \^state\(1),
      I4 => restart,
      O => \FSM_sequential_state[1]_i_1__0_n_0\
    );
\FSM_sequential_state[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF00EE02"
    )
        port map (
      I0 => \^state\(0),
      I1 => \FSM_sequential_state_reg[2]_0\(1),
      I2 => \FSM_sequential_state_reg[2]_1\,
      I3 => \^state\(2),
      I4 => \^state\(1),
      I5 => restart,
      O => \FSM_sequential_state[2]_i_1__0_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_1_mhz,
      CE => '1',
      D => \FSM_sequential_state[0]_i_1__0_n_0\,
      Q => \^state\(0),
      R => '0'
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_1_mhz,
      CE => '1',
      D => \FSM_sequential_state[1]_i_1__0_n_0\,
      Q => \^state\(1),
      R => '0'
    );
\FSM_sequential_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_1_mhz,
      CE => '1',
      D => \FSM_sequential_state[2]_i_1__0_n_0\,
      Q => \^state\(2),
      R => '0'
    );
\data_reg[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8B8F8BB8"
    )
        port map (
      I0 => \out\,
      I1 => \FSM_sequential_state_reg[2]_0\(1),
      I2 => \^state\(2),
      I3 => \^state\(1),
      I4 => \^state\(0),
      O => data_valid_1_reg
    );
\data_reg[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00021E1E"
    )
        port map (
      I0 => \^state\(0),
      I1 => \^state\(1),
      I2 => \^state\(2),
      I3 => \out\,
      I4 => \FSM_sequential_state_reg[2]_0\(1),
      O => \FSM_sequential_state_reg[0]_0\
    );
\load[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => \^state\(2),
      I1 => \^state\(0),
      I2 => \^state\(1),
      I3 => pwm_0,
      I4 => pwm_1,
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
\timer_val[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"030A0330"
    )
        port map (
      I0 => \FSM_sequential_state_reg[2]_1\,
      I1 => \FSM_sequential_state_reg[2]_0\(1),
      I2 => \^state\(2),
      I3 => \^state\(1),
      I4 => \^state\(0),
      O => \timer_val[10]_i_1_n_0\
    );
\timer_val[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => Q(7),
      I1 => \FSM_sequential_state_reg[2]_1\,
      I2 => \^state\(2),
      I3 => \^state\(1),
      I4 => \^state\(0),
      I5 => \^d\(17),
      O => \timer_val[10]_i_2_n_0\
    );
\timer_val[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \^state\(0),
      I1 => \^state\(1),
      I2 => \^state\(2),
      I3 => \FSM_sequential_state_reg[2]_1\,
      O => \timer_val[23]_i_1_n_0\
    );
\timer_val[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => Q(0),
      I1 => \FSM_sequential_state_reg[2]_1\,
      I2 => \^state\(2),
      I3 => \^state\(1),
      I4 => \^state\(0),
      I5 => \^d\(10),
      O => \timer_val[3]_i_1_n_0\
    );
\timer_val[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => Q(1),
      I1 => \FSM_sequential_state_reg[2]_1\,
      I2 => \^state\(2),
      I3 => \^state\(1),
      I4 => \^state\(0),
      I5 => \^d\(11),
      O => \timer_val[4]_i_1_n_0\
    );
\timer_val[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => Q(2),
      I1 => \FSM_sequential_state_reg[2]_1\,
      I2 => \^state\(2),
      I3 => \^state\(1),
      I4 => \^state\(0),
      I5 => \^d\(12),
      O => \timer_val[5]_i_1_n_0\
    );
\timer_val[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => Q(3),
      I1 => \FSM_sequential_state_reg[2]_1\,
      I2 => \^state\(2),
      I3 => \^state\(1),
      I4 => \^state\(0),
      I5 => \^d\(13),
      O => \timer_val[6]_i_1_n_0\
    );
\timer_val[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => Q(4),
      I1 => \FSM_sequential_state_reg[2]_1\,
      I2 => \^state\(2),
      I3 => \^state\(1),
      I4 => \^state\(0),
      I5 => \^d\(14),
      O => \timer_val[7]_i_1_n_0\
    );
\timer_val[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => Q(5),
      I1 => \FSM_sequential_state_reg[2]_1\,
      I2 => \^state\(2),
      I3 => \^state\(1),
      I4 => \^state\(0),
      I5 => \^d\(15),
      O => \timer_val[8]_i_1_n_0\
    );
\timer_val[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => Q(6),
      I1 => \FSM_sequential_state_reg[2]_1\,
      I2 => \^state\(2),
      I3 => \^state\(1),
      I4 => \^state\(0),
      I5 => \^d\(16),
      O => \timer_val[9]_i_1_n_0\
    );
\timer_val_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk_1_mhz,
      CE => \timer_val[10]_i_1_n_0\,
      D => \timer_val[10]_i_2_n_0\,
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
      D => Q(0),
      Q => \^d\(15),
      R => \timer_val[23]_i_1_n_0\
    );
\timer_val_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk_1_mhz,
      CE => \timer_val[10]_i_1_n_0\,
      D => Q(1),
      Q => \^d\(16),
      R => \timer_val[23]_i_1_n_0\
    );
\timer_val_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk_1_mhz,
      CE => \timer_val[10]_i_1_n_0\,
      D => Q(2),
      Q => \^d\(17),
      R => \timer_val[23]_i_1_n_0\
    );
\timer_val_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk_1_mhz,
      CE => \timer_val[10]_i_1_n_0\,
      D => Q(3),
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
      D => Q(4),
      Q => \^d\(19),
      R => \timer_val[23]_i_1_n_0\
    );
\timer_val_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk_1_mhz,
      CE => \timer_val[10]_i_1_n_0\,
      D => Q(5),
      Q => \^d\(20),
      R => \timer_val[23]_i_1_n_0\
    );
\timer_val_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk_1_mhz,
      CE => \timer_val[10]_i_1_n_0\,
      D => Q(6),
      Q => \^d\(21),
      R => \timer_val[23]_i_1_n_0\
    );
\timer_val_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk_1_mhz,
      CE => \timer_val[10]_i_1_n_0\,
      D => Q(7),
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
      D => \timer_val[3]_i_1_n_0\,
      Q => \^d\(2),
      R => '0'
    );
\timer_val_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_1_mhz,
      CE => \timer_val[10]_i_1_n_0\,
      D => \timer_val[4]_i_1_n_0\,
      Q => \^d\(3),
      R => '0'
    );
\timer_val_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_1_mhz,
      CE => \timer_val[10]_i_1_n_0\,
      D => \timer_val[5]_i_1_n_0\,
      Q => \^d\(4),
      R => '0'
    );
\timer_val_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_1_mhz,
      CE => \timer_val[10]_i_1_n_0\,
      D => \timer_val[6]_i_1_n_0\,
      Q => \^d\(5),
      R => '0'
    );
\timer_val_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_1_mhz,
      CE => \timer_val[10]_i_1_n_0\,
      D => \timer_val[7]_i_1_n_0\,
      Q => \^d\(6),
      R => '0'
    );
\timer_val_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk_1_mhz,
      CE => \timer_val[10]_i_1_n_0\,
      D => \timer_val[8]_i_1_n_0\,
      Q => \^d\(7),
      R => '0'
    );
\timer_val_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk_1_mhz,
      CE => \timer_val[10]_i_1_n_0\,
      D => \timer_val[9]_i_1_n_0\,
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
    motor_control : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 22 downto 0 )
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
      INIT => X"0000000000000004"
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
      I0 => timer_reg(2),
      I1 => timer_reg(1),
      I2 => timer_reg(4),
      I3 => timer_reg(3),
      O => polarity_i_3_n_0
    );
polarity_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => timer_reg(6),
      I1 => timer_reg(5),
      I2 => timer_reg(8),
      I3 => timer_reg(7),
      O => polarity_i_4_n_0
    );
polarity_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => timer_reg(12),
      I1 => timer_reg(11),
      I2 => timer_reg(10),
      I3 => timer_reg(9),
      O => polarity_i_5_n_0
    );
polarity_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => timer_reg(14),
      I1 => timer_reg(13),
      I2 => timer_reg(16),
      I3 => timer_reg(15),
      O => polarity_i_6_n_0
    );
polarity_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => timer_reg(23),
      I1 => timer_reg(0),
      I2 => timer_reg(22),
      I3 => timer_reg(21),
      O => polarity_i_7_n_0
    );
polarity_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => timer_reg(20),
      I1 => timer_reg(19),
      I2 => timer_reg(18),
      I3 => timer_reg(17),
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
      INIT => X"B"
    )
        port map (
      I0 => timer,
      I1 => motor_control,
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
\timer[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => motor_control,
      I1 => timer,
      O => \timer[0]_i_3_n_0\
    );
\timer[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => motor_control,
      I1 => timer,
      O => \timer[0]_i_4_n_0\
    );
\timer[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => motor_control,
      I1 => timer,
      O => \timer[0]_i_5_n_0\
    );
\timer[0]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => motor_control,
      I1 => timer,
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
\timer[12]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => motor_control,
      I1 => timer,
      O => \timer[12]_i_2_n_0\
    );
\timer[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => motor_control,
      I1 => timer,
      O => \timer[12]_i_3_n_0\
    );
\timer[12]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => motor_control,
      I1 => timer,
      O => \timer[12]_i_4_n_0\
    );
\timer[12]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => motor_control,
      I1 => timer,
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
\timer[16]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => motor_control,
      I1 => timer,
      O => \timer[16]_i_2_n_0\
    );
\timer[16]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => motor_control,
      I1 => timer,
      O => \timer[16]_i_3_n_0\
    );
\timer[16]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => motor_control,
      I1 => timer,
      O => \timer[16]_i_4_n_0\
    );
\timer[16]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => motor_control,
      I1 => timer,
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
\timer[20]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => motor_control,
      I1 => timer,
      O => \timer[20]_i_2_n_0\
    );
\timer[20]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => motor_control,
      I1 => timer,
      O => \timer[20]_i_3_n_0\
    );
\timer[20]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => motor_control,
      I1 => timer,
      O => \timer[20]_i_4_n_0\
    );
\timer[20]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => timer,
      I1 => motor_control,
      I2 => timer_reg(23),
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
\timer[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => motor_control,
      I1 => timer,
      O => \timer[4]_i_2_n_0\
    );
\timer[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => motor_control,
      I1 => timer,
      O => \timer[4]_i_3_n_0\
    );
\timer[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => motor_control,
      I1 => timer,
      O => \timer[4]_i_4_n_0\
    );
\timer[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => motor_control,
      I1 => timer,
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
\timer[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => motor_control,
      I1 => timer,
      O => \timer[8]_i_2_n_0\
    );
\timer[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => motor_control,
      I1 => timer,
      O => \timer[8]_i_3_n_0\
    );
\timer[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => motor_control,
      I1 => timer,
      O => \timer[8]_i_4_n_0\
    );
\timer[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => motor_control,
      I1 => timer,
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
    motor_control : in STD_LOGIC;
    ip2bus_otputs : in STD_LOGIC_VECTOR ( 1 downto 0 );
    restart : in STD_LOGIC;
    clk : in STD_LOGIC;
    clk_1_mhz : in STD_LOGIC;
    ip2bus_mstrd_d : in STD_LOGIC_VECTOR ( 31 downto 0 );
    reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_tape_interface_0_0_top : entity is "top";
end design_1_tape_interface_0_0_top;

architecture STRUCTURE of design_1_tape_interface_0_0_top is
  signal ack_byte_slice : STD_LOGIC;
  signal byte_data : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal byte_slice_n_1 : STD_LOGIC;
  signal byte_slice_n_10 : STD_LOGIC;
  signal byte_slice_n_11 : STD_LOGIC;
  signal data_cap : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal data_valid_read_word : STD_LOGIC;
  signal load_timer : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal p_0_in_0 : STD_LOGIC;
  signal \^pwm\ : STD_LOGIC;
  signal samp_assem_n_0 : STD_LOGIC;
  signal samp_assem_n_29 : STD_LOGIC;
  signal samp_assem_n_4 : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 2 downto 0 );
begin
  pwm <= \^pwm\;
byte_slice: entity work.design_1_tape_interface_0_0_byteslicer
     port map (
      D(0) => samp_assem_n_29,
      \FSM_onehot_state_reg[1]_0\(1) => byte_slice_n_10,
      \FSM_onehot_state_reg[1]_0\(0) => byte_slice_n_11,
      Q(7 downto 0) => byte_data(7 downto 0),
      clk_1_mhz => clk_1_mhz,
      \data_reg_reg[0]_0\ => samp_assem_n_0,
      \data_reg_reg[31]_0\ => byte_slice_n_1,
      \data_reg_reg[31]_1\ => samp_assem_n_4,
      \data_reg_reg[7]_0\(31 downto 0) => data_cap(31 downto 0),
      data_valid_read_word => data_valid_read_word,
      in0 => ack_byte_slice,
      \out\ => p_0_in_0,
      restart => restart,
      state(2 downto 0) => state(2 downto 0)
    );
r_word: entity work.design_1_tape_interface_0_0_read_word
     port map (
      Q(31 downto 0) => data_cap(31 downto 0),
      clk => clk,
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
      \FSM_sequential_state_reg[0]_0\ => samp_assem_n_0,
      \FSM_sequential_state_reg[0]_1\(0) => samp_assem_n_29,
      \FSM_sequential_state_reg[2]_0\(1) => byte_slice_n_10,
      \FSM_sequential_state_reg[2]_0\(0) => byte_slice_n_11,
      \FSM_sequential_state_reg[2]_1\ => byte_slice_n_1,
      Q(7 downto 0) => byte_data(7 downto 0),
      clk_1_mhz => clk_1_mhz,
      data_valid_1_reg => samp_assem_n_4,
      \out\ => p_0_in_0,
      pwm => \^pwm\,
      restart => restart,
      state(2 downto 0) => state(2 downto 0)
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
  attribute X_CORE_INFO of design_1_tape_interface_0_0 : entity is "top,Vivado 2019.1";
end design_1_tape_interface_0_0;

architecture STRUCTURE of design_1_tape_interface_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^ip2bus_inputs\ : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal \^ip2bus_mst_addr\ : STD_LOGIC_VECTOR ( 31 downto 2 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_2_FCLK_CLK0";
  attribute X_INTERFACE_INFO of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute X_INTERFACE_PARAMETER of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_HIGH";
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
inst: entity work.design_1_tape_interface_0_0_top
     port map (
      clk => clk,
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
