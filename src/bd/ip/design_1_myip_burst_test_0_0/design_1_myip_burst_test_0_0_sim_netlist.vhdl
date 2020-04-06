-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.1 (lin64) Build 1846317 Fri Apr 14 18:54:47 MDT 2017
-- Date        : Sun Apr  5 18:32:56 2020
-- Host        : johan-Latitude-E5550 running 64-bit Ubuntu 16.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/johan/v/c64fpga/src/bd/ip/design_1_myip_burst_test_0_0/design_1_myip_burst_test_0_0_sim_netlist.vhdl
-- Design      : design_1_myip_burst_test_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_myip_burst_test_0_0_axi_master_burst_addr_cntl is
  port (
    \out\ : out STD_LOGIC;
    sig_push_addr_reg1_out : out STD_LOGIC;
    m00_axi_arsize : out STD_LOGIC_VECTOR ( 0 to 0 );
    m00_axi_arburst : out STD_LOGIC_VECTOR ( 0 to 0 );
    m00_axi_awvalid : out STD_LOGIC;
    m00_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axi_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m00_axi_aclk : in STD_LOGIC;
    sig_pcc2data_calc_error : in STD_LOGIC;
    sig_pcc2addr_burst : in STD_LOGIC_VECTOR ( 0 to 0 );
    sig_wr_addr_valid_reg0 : in STD_LOGIC;
    sig_rdwr_reset_reg_reg : in STD_LOGIC;
    sig_llink2wr_allow_addr_req : in STD_LOGIC;
    sig_cmd2all_doing_write : in STD_LOGIC;
    sig_pcc2addr_cmd_valid : in STD_LOGIC;
    \GEN_OMIT_STORE_FORWARD.sig_tlast_error_reg_reg\ : in STD_LOGIC;
    m00_axi_awready : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \sig_xfer_len_reg_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_myip_burst_test_0_0_axi_master_burst_addr_cntl : entity is "axi_master_burst_addr_cntl";
end design_1_myip_burst_test_0_0_axi_master_burst_addr_cntl;

architecture STRUCTURE of design_1_myip_burst_test_0_0_axi_master_burst_addr_cntl is
  signal sig_addr2stat_calc_error : STD_LOGIC;
  signal sig_addr2stat_cmd_fifo_empty : STD_LOGIC;
  signal sig_addr_reg_full : STD_LOGIC;
  signal sig_next_addr_reg0 : STD_LOGIC;
  signal sig_posted_to_axi : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of sig_posted_to_axi : signal is "true";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of sig_posted_to_axi : signal is "no";
  signal sig_posted_to_axi_2 : STD_LOGIC;
  attribute RTL_KEEP of sig_posted_to_axi_2 : signal is "true";
  attribute equivalent_register_removal of sig_posted_to_axi_2 : signal is "no";
  signal \^sig_push_addr_reg1_out\ : STD_LOGIC;
  attribute KEEP : string;
  attribute KEEP of sig_posted_to_axi_2_reg : label is "yes";
  attribute equivalent_register_removal of sig_posted_to_axi_2_reg : label is "no";
  attribute KEEP of sig_posted_to_axi_reg : label is "yes";
  attribute equivalent_register_removal of sig_posted_to_axi_reg : label is "no";
begin
  \out\ <= sig_posted_to_axi;
  sig_push_addr_reg1_out <= \^sig_push_addr_reg1_out\;
sig_addr_reg_empty_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \^sig_push_addr_reg1_out\,
      D => '0',
      Q => sig_addr2stat_cmd_fifo_empty,
      S => sig_next_addr_reg0
    );
sig_addr_reg_full_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \^sig_push_addr_reg1_out\,
      D => \^sig_push_addr_reg1_out\,
      Q => sig_addr_reg_full,
      R => sig_next_addr_reg0
    );
sig_calc_error_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \^sig_push_addr_reg1_out\,
      D => sig_pcc2data_calc_error,
      Q => sig_addr2stat_calc_error,
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAAAAAAA"
    )
        port map (
      I0 => sig_rdwr_reset_reg_reg,
      I1 => sig_addr2stat_calc_error,
      I2 => sig_cmd2all_doing_write,
      I3 => m00_axi_awready,
      I4 => sig_addr_reg_full,
      O => sig_next_addr_reg0
    );
\sig_next_addr_reg[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => sig_llink2wr_allow_addr_req,
      I1 => sig_addr2stat_cmd_fifo_empty,
      I2 => sig_cmd2all_doing_write,
      I3 => sig_pcc2addr_cmd_valid,
      I4 => \GEN_OMIT_STORE_FORWARD.sig_tlast_error_reg_reg\,
      O => \^sig_push_addr_reg1_out\
    );
\sig_next_addr_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \^sig_push_addr_reg1_out\,
      D => Q(0),
      Q => m00_axi_araddr(0),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \^sig_push_addr_reg1_out\,
      D => Q(10),
      Q => m00_axi_araddr(10),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \^sig_push_addr_reg1_out\,
      D => Q(11),
      Q => m00_axi_araddr(11),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \^sig_push_addr_reg1_out\,
      D => Q(12),
      Q => m00_axi_araddr(12),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \^sig_push_addr_reg1_out\,
      D => Q(13),
      Q => m00_axi_araddr(13),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \^sig_push_addr_reg1_out\,
      D => Q(14),
      Q => m00_axi_araddr(14),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \^sig_push_addr_reg1_out\,
      D => Q(15),
      Q => m00_axi_araddr(15),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \^sig_push_addr_reg1_out\,
      D => Q(16),
      Q => m00_axi_araddr(16),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \^sig_push_addr_reg1_out\,
      D => Q(17),
      Q => m00_axi_araddr(17),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \^sig_push_addr_reg1_out\,
      D => Q(18),
      Q => m00_axi_araddr(18),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \^sig_push_addr_reg1_out\,
      D => Q(19),
      Q => m00_axi_araddr(19),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \^sig_push_addr_reg1_out\,
      D => Q(1),
      Q => m00_axi_araddr(1),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \^sig_push_addr_reg1_out\,
      D => Q(20),
      Q => m00_axi_araddr(20),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \^sig_push_addr_reg1_out\,
      D => Q(21),
      Q => m00_axi_araddr(21),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \^sig_push_addr_reg1_out\,
      D => Q(22),
      Q => m00_axi_araddr(22),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \^sig_push_addr_reg1_out\,
      D => Q(23),
      Q => m00_axi_araddr(23),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \^sig_push_addr_reg1_out\,
      D => Q(24),
      Q => m00_axi_araddr(24),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \^sig_push_addr_reg1_out\,
      D => Q(25),
      Q => m00_axi_araddr(25),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \^sig_push_addr_reg1_out\,
      D => Q(26),
      Q => m00_axi_araddr(26),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \^sig_push_addr_reg1_out\,
      D => Q(27),
      Q => m00_axi_araddr(27),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \^sig_push_addr_reg1_out\,
      D => Q(28),
      Q => m00_axi_araddr(28),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \^sig_push_addr_reg1_out\,
      D => Q(29),
      Q => m00_axi_araddr(29),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \^sig_push_addr_reg1_out\,
      D => Q(2),
      Q => m00_axi_araddr(2),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \^sig_push_addr_reg1_out\,
      D => Q(30),
      Q => m00_axi_araddr(30),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \^sig_push_addr_reg1_out\,
      D => Q(31),
      Q => m00_axi_araddr(31),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \^sig_push_addr_reg1_out\,
      D => Q(3),
      Q => m00_axi_araddr(3),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \^sig_push_addr_reg1_out\,
      D => Q(4),
      Q => m00_axi_araddr(4),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \^sig_push_addr_reg1_out\,
      D => Q(5),
      Q => m00_axi_araddr(5),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \^sig_push_addr_reg1_out\,
      D => Q(6),
      Q => m00_axi_araddr(6),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \^sig_push_addr_reg1_out\,
      D => Q(7),
      Q => m00_axi_araddr(7),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \^sig_push_addr_reg1_out\,
      D => Q(8),
      Q => m00_axi_araddr(8),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \^sig_push_addr_reg1_out\,
      D => Q(9),
      Q => m00_axi_araddr(9),
      R => sig_next_addr_reg0
    );
\sig_next_burst_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \^sig_push_addr_reg1_out\,
      D => sig_pcc2addr_burst(0),
      Q => m00_axi_arburst(0),
      R => sig_next_addr_reg0
    );
\sig_next_len_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \^sig_push_addr_reg1_out\,
      D => \sig_xfer_len_reg_reg[3]\(0),
      Q => m00_axi_arlen(0),
      R => sig_next_addr_reg0
    );
\sig_next_len_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \^sig_push_addr_reg1_out\,
      D => \sig_xfer_len_reg_reg[3]\(1),
      Q => m00_axi_arlen(1),
      R => sig_next_addr_reg0
    );
\sig_next_len_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \^sig_push_addr_reg1_out\,
      D => \sig_xfer_len_reg_reg[3]\(2),
      Q => m00_axi_arlen(2),
      R => sig_next_addr_reg0
    );
\sig_next_len_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \^sig_push_addr_reg1_out\,
      D => \sig_xfer_len_reg_reg[3]\(3),
      Q => m00_axi_arlen(3),
      R => sig_next_addr_reg0
    );
\sig_next_size_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \^sig_push_addr_reg1_out\,
      D => '1',
      Q => m00_axi_arsize(0),
      R => sig_next_addr_reg0
    );
sig_posted_to_axi_2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => '1',
      D => \^sig_push_addr_reg1_out\,
      Q => sig_posted_to_axi_2,
      R => sig_rdwr_reset_reg_reg
    );
sig_posted_to_axi_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => '1',
      D => \^sig_push_addr_reg1_out\,
      Q => sig_posted_to_axi,
      R => sig_rdwr_reset_reg_reg
    );
sig_wr_addr_valid_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \^sig_push_addr_reg1_out\,
      D => sig_wr_addr_valid_reg0,
      Q => m00_axi_awvalid,
      R => sig_next_addr_reg0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_myip_burst_test_0_0_axi_master_burst_cmd_status is
  port (
    sig_cmd2pcc_cmd_valid : out STD_LOGIC;
    sig_push_cmd_reg : out STD_LOGIC;
    sig_cmd2all_doing_write : out STD_LOGIC;
    ip2bus_otputs : out STD_LOGIC_VECTOR ( 3 downto 0 );
    sig_status_reg_empty : out STD_LOGIC;
    sig_rdwr2llink_int_err : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 11 downto 0 );
    \GEN_ADDR_32.sig_addr_cntr_lsh_reg[1]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 29 downto 0 );
    p_5_out : out STD_LOGIC;
    sig_wr_addr_valid_reg0 : out STD_LOGIC;
    sig_wr_llink_enable : out STD_LOGIC;
    sig_btt_is_zero : out STD_LOGIC;
    \out\ : in STD_LOGIC;
    m00_axi_aclk : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    ip2bus_inputs : in STD_LOGIC_VECTOR ( 1 downto 0 );
    sig_pcc_taking_command : in STD_LOGIC;
    sig_wsc2stat_status : in STD_LOGIC_VECTOR ( 2 downto 0 );
    sig_wsc2stat_status_valid : in STD_LOGIC;
    sig_llink2cmd_wr_busy : in STD_LOGIC;
    sig_stat_error : in STD_LOGIC;
    sig_calc_error_reg0 : in STD_LOGIC;
    sig_btt_cntr0 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    sig_rdwr_reset_reg_reg : in STD_LOGIC;
    sig_pcc2data_calc_error : in STD_LOGIC;
    sig_doing_write_reg : in STD_LOGIC;
    ip2bus_mst_length : in STD_LOGIC_VECTOR ( 11 downto 0 );
    ip2bus_mst_addr : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_myip_burst_test_0_0_axi_master_burst_cmd_status : entity is "axi_master_burst_cmd_status";
end design_1_myip_burst_test_0_0_axi_master_burst_cmd_status;

architecture STRUCTURE of design_1_myip_burst_test_0_0_axi_master_burst_cmd_status is
  signal \^ip2bus_otputs\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal sig_calc_error_reg_i_3_n_0 : STD_LOGIC;
  signal sig_calc_error_reg_i_4_n_0 : STD_LOGIC;
  signal \^sig_cmd2all_doing_write\ : STD_LOGIC;
  signal sig_cmd_cmplt_reg_i_1_n_0 : STD_LOGIC;
  signal sig_cmd_empty_reg : STD_LOGIC;
  signal sig_cmd_empty_reg_i_1_n_0 : STD_LOGIC;
  signal sig_cmd_mst_addr : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal sig_cmd_mst_length : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal sig_cmd_mstwr_req : STD_LOGIC;
  signal sig_cmd_type_req : STD_LOGIC;
  signal sig_cmdack_reg_i_1_n_0 : STD_LOGIC;
  signal sig_doing_write_reg_i_1_n_0 : STD_LOGIC;
  signal sig_error_sh_reg_i_1_n_0 : STD_LOGIC;
  signal sig_init_reg1 : STD_LOGIC;
  signal sig_init_reg2 : STD_LOGIC;
  signal sig_int_error_pulse_reg_i_1_n_0 : STD_LOGIC;
  signal \^sig_push_cmd_reg\ : STD_LOGIC;
  signal sig_push_status1_out : STD_LOGIC;
  signal \^sig_rdwr2llink_int_err\ : STD_LOGIC;
  signal sig_stat_error_reg_i_1_n_0 : STD_LOGIC;
  signal \^sig_status_reg_empty\ : STD_LOGIC;
  signal sig_status_reg_empty_i_1_n_0 : STD_LOGIC;
  signal sig_status_reg_full : STD_LOGIC;
  signal sig_status_reg_full_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \GEN_OMIT_STORE_FORWARD.sig_coelsc_reg_empty_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of sig_error_sh_reg_i_2 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of sig_llink_busy_i_2 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of sig_wr_addr_valid_reg_i_1 : label is "soft_lutpair1";
begin
  ip2bus_otputs(3 downto 0) <= \^ip2bus_otputs\(3 downto 0);
  sig_cmd2all_doing_write <= \^sig_cmd2all_doing_write\;
  sig_push_cmd_reg <= \^sig_push_cmd_reg\;
  sig_rdwr2llink_int_err <= \^sig_rdwr2llink_int_err\;
  sig_status_reg_empty <= \^sig_status_reg_empty\;
\GEN_ADDR_32.sig_addr_cntr_lsh[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => sig_cmd_type_req,
      I1 => sig_cmd_mst_addr(0),
      I2 => sig_calc_error_reg0,
      I3 => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[1]\(0),
      O => \GEN_ADDR_32.sig_addr_cntr_lsh_reg[1]\(0)
    );
\GEN_ADDR_32.sig_addr_cntr_lsh[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => sig_cmd_type_req,
      I1 => sig_cmd_mst_addr(1),
      I2 => sig_calc_error_reg0,
      I3 => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[1]\(1),
      O => \GEN_ADDR_32.sig_addr_cntr_lsh_reg[1]\(1)
    );
\GEN_OMIT_STORE_FORWARD.sig_coelsc_reg_empty_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EAAA"
    )
        port map (
      I0 => sig_rdwr_reset_reg_reg,
      I1 => \^sig_cmd2all_doing_write\,
      I2 => \^sig_status_reg_empty\,
      I3 => sig_wsc2stat_status_valid,
      O => p_5_out
    );
\sig_btt_cntr[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => sig_cmd_type_req,
      I1 => sig_cmd_mst_length(0),
      I2 => sig_calc_error_reg0,
      I3 => sig_btt_cntr0(0),
      O => D(0)
    );
\sig_btt_cntr[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => sig_cmd_type_req,
      I1 => sig_cmd_mst_length(10),
      I2 => sig_calc_error_reg0,
      I3 => sig_btt_cntr0(10),
      O => D(10)
    );
\sig_btt_cntr[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => sig_cmd_type_req,
      I1 => sig_cmd_mst_length(11),
      I2 => sig_calc_error_reg0,
      I3 => sig_btt_cntr0(11),
      O => D(11)
    );
\sig_btt_cntr[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => sig_cmd_type_req,
      I1 => sig_cmd_mst_length(1),
      I2 => sig_calc_error_reg0,
      I3 => sig_btt_cntr0(1),
      O => D(1)
    );
\sig_btt_cntr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => sig_cmd_type_req,
      I1 => sig_cmd_mst_length(2),
      I2 => sig_calc_error_reg0,
      I3 => sig_btt_cntr0(2),
      O => D(2)
    );
\sig_btt_cntr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => sig_cmd_type_req,
      I1 => sig_cmd_mst_length(3),
      I2 => sig_calc_error_reg0,
      I3 => sig_btt_cntr0(3),
      O => D(3)
    );
\sig_btt_cntr[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => sig_cmd_type_req,
      I1 => sig_cmd_mst_length(4),
      I2 => sig_calc_error_reg0,
      I3 => sig_btt_cntr0(4),
      O => D(4)
    );
\sig_btt_cntr[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => sig_cmd_type_req,
      I1 => sig_cmd_mst_length(5),
      I2 => sig_calc_error_reg0,
      I3 => sig_btt_cntr0(5),
      O => D(5)
    );
\sig_btt_cntr[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => sig_cmd_type_req,
      I1 => sig_cmd_mst_length(6),
      I2 => sig_calc_error_reg0,
      I3 => sig_btt_cntr0(6),
      O => D(6)
    );
\sig_btt_cntr[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => sig_cmd_type_req,
      I1 => sig_cmd_mst_length(7),
      I2 => sig_calc_error_reg0,
      I3 => sig_btt_cntr0(7),
      O => D(7)
    );
\sig_btt_cntr[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => sig_cmd_type_req,
      I1 => sig_cmd_mst_length(8),
      I2 => sig_calc_error_reg0,
      I3 => sig_btt_cntr0(8),
      O => D(8)
    );
\sig_btt_cntr[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => sig_cmd_type_req,
      I1 => sig_cmd_mst_length(9),
      I2 => sig_calc_error_reg0,
      I3 => sig_btt_cntr0(9),
      O => D(9)
    );
sig_calc_error_reg_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000001000F000F"
    )
        port map (
      I0 => sig_cmd_mst_length(2),
      I1 => sig_cmd_mst_length(1),
      I2 => sig_calc_error_reg_i_3_n_0,
      I3 => sig_calc_error_reg_i_4_n_0,
      I4 => sig_cmd_mst_length(0),
      I5 => sig_cmd_type_req,
      O => sig_btt_is_zero
    );
sig_calc_error_reg_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0F0E0"
    )
        port map (
      I0 => sig_cmd_mst_length(6),
      I1 => sig_cmd_mst_length(7),
      I2 => sig_cmd_type_req,
      I3 => sig_cmd_mst_length(8),
      I4 => sig_cmd_mst_length(9),
      O => sig_calc_error_reg_i_3_n_0
    );
sig_calc_error_reg_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FFFE0000"
    )
        port map (
      I0 => sig_cmd_mst_length(10),
      I1 => sig_cmd_mst_length(11),
      I2 => sig_cmd_mst_length(5),
      I3 => sig_cmd_mst_length(3),
      I4 => sig_cmd_type_req,
      I5 => sig_cmd_mst_length(4),
      O => sig_calc_error_reg_i_4_n_0
    );
sig_cmd_cmplt_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000070"
    )
        port map (
      I0 => sig_llink2cmd_wr_busy,
      I1 => \^sig_cmd2all_doing_write\,
      I2 => sig_status_reg_full,
      I3 => \out\,
      I4 => \^ip2bus_otputs\(1),
      O => sig_cmd_cmplt_reg_i_1_n_0
    );
sig_cmd_cmplt_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => '1',
      D => sig_cmd_cmplt_reg_i_1_n_0,
      Q => \^ip2bus_otputs\(1),
      R => '0'
    );
sig_cmd_empty_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF22F2"
    )
        port map (
      I0 => sig_cmd_empty_reg,
      I1 => ip2bus_inputs(0),
      I2 => sig_init_reg1,
      I3 => sig_init_reg2,
      I4 => \^ip2bus_otputs\(1),
      O => sig_cmd_empty_reg_i_1_n_0
    );
sig_cmd_empty_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => '1',
      D => sig_cmd_empty_reg_i_1_n_0,
      Q => sig_cmd_empty_reg,
      R => \out\
    );
sig_cmd_full_reg_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ip2bus_inputs(0),
      I1 => sig_cmd_empty_reg,
      O => \^sig_push_cmd_reg\
    );
sig_cmd_full_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \^sig_push_cmd_reg\,
      D => \^sig_push_cmd_reg\,
      Q => sig_cmd2pcc_cmd_valid,
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \^sig_push_cmd_reg\,
      D => ip2bus_mst_addr(0),
      Q => sig_cmd_mst_addr(0),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \^sig_push_cmd_reg\,
      D => ip2bus_mst_addr(10),
      Q => Q(8),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \^sig_push_cmd_reg\,
      D => ip2bus_mst_addr(11),
      Q => Q(9),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \^sig_push_cmd_reg\,
      D => ip2bus_mst_addr(12),
      Q => Q(10),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \^sig_push_cmd_reg\,
      D => ip2bus_mst_addr(13),
      Q => Q(11),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \^sig_push_cmd_reg\,
      D => ip2bus_mst_addr(14),
      Q => Q(12),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \^sig_push_cmd_reg\,
      D => ip2bus_mst_addr(15),
      Q => Q(13),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \^sig_push_cmd_reg\,
      D => ip2bus_mst_addr(16),
      Q => Q(14),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \^sig_push_cmd_reg\,
      D => ip2bus_mst_addr(17),
      Q => Q(15),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \^sig_push_cmd_reg\,
      D => ip2bus_mst_addr(18),
      Q => Q(16),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \^sig_push_cmd_reg\,
      D => ip2bus_mst_addr(19),
      Q => Q(17),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \^sig_push_cmd_reg\,
      D => ip2bus_mst_addr(1),
      Q => sig_cmd_mst_addr(1),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \^sig_push_cmd_reg\,
      D => ip2bus_mst_addr(20),
      Q => Q(18),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \^sig_push_cmd_reg\,
      D => ip2bus_mst_addr(21),
      Q => Q(19),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \^sig_push_cmd_reg\,
      D => ip2bus_mst_addr(22),
      Q => Q(20),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \^sig_push_cmd_reg\,
      D => ip2bus_mst_addr(23),
      Q => Q(21),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \^sig_push_cmd_reg\,
      D => ip2bus_mst_addr(24),
      Q => Q(22),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \^sig_push_cmd_reg\,
      D => ip2bus_mst_addr(25),
      Q => Q(23),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \^sig_push_cmd_reg\,
      D => ip2bus_mst_addr(26),
      Q => Q(24),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \^sig_push_cmd_reg\,
      D => ip2bus_mst_addr(27),
      Q => Q(25),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \^sig_push_cmd_reg\,
      D => ip2bus_mst_addr(28),
      Q => Q(26),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \^sig_push_cmd_reg\,
      D => ip2bus_mst_addr(29),
      Q => Q(27),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \^sig_push_cmd_reg\,
      D => ip2bus_mst_addr(2),
      Q => Q(0),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \^sig_push_cmd_reg\,
      D => ip2bus_mst_addr(30),
      Q => Q(28),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \^sig_push_cmd_reg\,
      D => ip2bus_mst_addr(31),
      Q => Q(29),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \^sig_push_cmd_reg\,
      D => ip2bus_mst_addr(3),
      Q => Q(1),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \^sig_push_cmd_reg\,
      D => ip2bus_mst_addr(4),
      Q => Q(2),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \^sig_push_cmd_reg\,
      D => ip2bus_mst_addr(5),
      Q => Q(3),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \^sig_push_cmd_reg\,
      D => ip2bus_mst_addr(6),
      Q => Q(4),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \^sig_push_cmd_reg\,
      D => ip2bus_mst_addr(7),
      Q => Q(5),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \^sig_push_cmd_reg\,
      D => ip2bus_mst_addr(8),
      Q => Q(6),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \^sig_push_cmd_reg\,
      D => ip2bus_mst_addr(9),
      Q => Q(7),
      R => SR(0)
    );
\sig_cmd_mst_length_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \^sig_push_cmd_reg\,
      D => ip2bus_mst_length(0),
      Q => sig_cmd_mst_length(0),
      R => SR(0)
    );
\sig_cmd_mst_length_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \^sig_push_cmd_reg\,
      D => ip2bus_mst_length(10),
      Q => sig_cmd_mst_length(10),
      R => SR(0)
    );
\sig_cmd_mst_length_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \^sig_push_cmd_reg\,
      D => ip2bus_mst_length(11),
      Q => sig_cmd_mst_length(11),
      R => SR(0)
    );
\sig_cmd_mst_length_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \^sig_push_cmd_reg\,
      D => ip2bus_mst_length(1),
      Q => sig_cmd_mst_length(1),
      R => SR(0)
    );
\sig_cmd_mst_length_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \^sig_push_cmd_reg\,
      D => ip2bus_mst_length(2),
      Q => sig_cmd_mst_length(2),
      R => SR(0)
    );
\sig_cmd_mst_length_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \^sig_push_cmd_reg\,
      D => ip2bus_mst_length(3),
      Q => sig_cmd_mst_length(3),
      R => SR(0)
    );
\sig_cmd_mst_length_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \^sig_push_cmd_reg\,
      D => ip2bus_mst_length(4),
      Q => sig_cmd_mst_length(4),
      R => SR(0)
    );
\sig_cmd_mst_length_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \^sig_push_cmd_reg\,
      D => ip2bus_mst_length(5),
      Q => sig_cmd_mst_length(5),
      R => SR(0)
    );
\sig_cmd_mst_length_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \^sig_push_cmd_reg\,
      D => ip2bus_mst_length(6),
      Q => sig_cmd_mst_length(6),
      R => SR(0)
    );
\sig_cmd_mst_length_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \^sig_push_cmd_reg\,
      D => ip2bus_mst_length(7),
      Q => sig_cmd_mst_length(7),
      R => SR(0)
    );
\sig_cmd_mst_length_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \^sig_push_cmd_reg\,
      D => ip2bus_mst_length(8),
      Q => sig_cmd_mst_length(8),
      R => SR(0)
    );
\sig_cmd_mst_length_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \^sig_push_cmd_reg\,
      D => ip2bus_mst_length(9),
      Q => sig_cmd_mst_length(9),
      R => SR(0)
    );
sig_cmd_mstwr_req_reg: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \^sig_push_cmd_reg\,
      D => ip2bus_inputs(0),
      Q => sig_cmd_mstwr_req,
      R => SR(0)
    );
sig_cmd_type_req_reg: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \^sig_push_cmd_reg\,
      D => ip2bus_inputs(1),
      Q => sig_cmd_type_req,
      R => SR(0)
    );
sig_cmdack_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => sig_cmd_empty_reg,
      I1 => ip2bus_inputs(0),
      I2 => \^ip2bus_otputs\(0),
      I3 => \out\,
      O => sig_cmdack_reg_i_1_n_0
    );
sig_cmdack_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => '1',
      D => sig_cmdack_reg_i_1_n_0,
      Q => \^ip2bus_otputs\(0),
      R => '0'
    );
sig_doing_write_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => \^sig_cmd2all_doing_write\,
      I1 => sig_pcc_taking_command,
      I2 => sig_cmd_mstwr_req,
      I3 => \out\,
      I4 => \^ip2bus_otputs\(1),
      O => sig_doing_write_reg_i_1_n_0
    );
sig_doing_write_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => '1',
      D => sig_doing_write_reg_i_1_n_0,
      Q => \^sig_cmd2all_doing_write\,
      R => '0'
    );
sig_error_sh_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAA80000"
    )
        port map (
      I0 => \^sig_cmd2all_doing_write\,
      I1 => sig_wsc2stat_status(0),
      I2 => sig_wsc2stat_status(1),
      I3 => sig_wsc2stat_status(2),
      I4 => sig_push_status1_out,
      I5 => \^ip2bus_otputs\(3),
      O => sig_error_sh_reg_i_1_n_0
    );
sig_error_sh_reg_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => sig_wsc2stat_status_valid,
      I1 => \^sig_status_reg_empty\,
      I2 => \^sig_cmd2all_doing_write\,
      O => sig_push_status1_out
    );
sig_error_sh_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => '1',
      D => sig_error_sh_reg_i_1_n_0,
      Q => \^ip2bus_otputs\(3),
      R => \out\
    );
sig_init_reg1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => '1',
      D => '1',
      Q => sig_init_reg1,
      R => \out\
    );
sig_init_reg2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => '1',
      D => sig_init_reg1,
      Q => sig_init_reg2,
      R => \out\
    );
sig_int_error_pulse_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000E2000000"
    )
        port map (
      I0 => \^sig_rdwr2llink_int_err\,
      I1 => sig_push_status1_out,
      I2 => sig_wsc2stat_status(0),
      I3 => sig_llink2cmd_wr_busy,
      I4 => \^sig_cmd2all_doing_write\,
      I5 => \out\,
      O => sig_int_error_pulse_reg_i_1_n_0
    );
sig_int_error_pulse_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => '1',
      D => sig_int_error_pulse_reg_i_1_n_0,
      Q => \^sig_rdwr2llink_int_err\,
      R => '0'
    );
sig_llink_busy_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^sig_cmd2all_doing_write\,
      I1 => sig_doing_write_reg,
      O => sig_wr_llink_enable
    );
sig_stat_error_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000CC0A"
    )
        port map (
      I0 => \^ip2bus_otputs\(2),
      I1 => sig_stat_error,
      I2 => \^ip2bus_otputs\(1),
      I3 => sig_push_status1_out,
      I4 => \out\,
      O => sig_stat_error_reg_i_1_n_0
    );
sig_stat_error_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => '1',
      D => sig_stat_error_reg_i_1_n_0,
      Q => \^ip2bus_otputs\(2),
      R => '0'
    );
sig_status_reg_empty_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F2FFF2F2FFFFF2F2"
    )
        port map (
      I0 => sig_init_reg1,
      I1 => sig_init_reg2,
      I2 => \^ip2bus_otputs\(1),
      I3 => \^sig_cmd2all_doing_write\,
      I4 => \^sig_status_reg_empty\,
      I5 => sig_wsc2stat_status_valid,
      O => sig_status_reg_empty_i_1_n_0
    );
sig_status_reg_empty_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => '1',
      D => sig_status_reg_empty_i_1_n_0,
      Q => \^sig_status_reg_empty\,
      R => \out\
    );
sig_status_reg_full_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F2222222"
    )
        port map (
      I0 => sig_status_reg_full,
      I1 => \^ip2bus_otputs\(1),
      I2 => \^sig_cmd2all_doing_write\,
      I3 => \^sig_status_reg_empty\,
      I4 => sig_wsc2stat_status_valid,
      I5 => \out\,
      O => sig_status_reg_full_i_1_n_0
    );
sig_status_reg_full_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => '1',
      D => sig_status_reg_full_i_1_n_0,
      Q => sig_status_reg_full,
      R => '0'
    );
sig_wr_addr_valid_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^sig_cmd2all_doing_write\,
      I1 => sig_pcc2data_calc_error,
      O => sig_wr_addr_valid_reg0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_myip_burst_test_0_0_axi_master_burst_rd_llink is
  port (
    sig_wr_error_reg : out STD_LOGIC;
    \out\ : in STD_LOGIC;
    sig_rdwr2llink_int_err : in STD_LOGIC;
    m00_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_myip_burst_test_0_0_axi_master_burst_rd_llink : entity is "axi_master_burst_rd_llink";
end design_1_myip_burst_test_0_0_axi_master_burst_rd_llink;

architecture STRUCTURE of design_1_myip_burst_test_0_0_axi_master_burst_rd_llink is
begin
sig_rd_error_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => '1',
      D => sig_rdwr2llink_int_err,
      Q => sig_wr_error_reg,
      R => \out\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_myip_burst_test_0_0_axi_master_burst_reset is
  port (
    \out\ : out STD_LOGIC;
    \INFERRED_GEN.cnt_i_reg[0]\ : out STD_LOGIC;
    sig_llink_busy_reg : out STD_LOGIC;
    \sig_xfer_end_strb_reg_reg[3]\ : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    m00_axi_aclk : in STD_LOGIC;
    m00_axi_aresetn : in STD_LOGIC;
    sig_cmd2dre_valid_reg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_myip_burst_test_0_0_axi_master_burst_reset : entity is "axi_master_burst_reset";
end design_1_myip_burst_test_0_0_axi_master_burst_reset;

architecture STRUCTURE of design_1_myip_burst_test_0_0_axi_master_burst_reset is
  signal \sig_axi_por2rst__0\ : STD_LOGIC;
  signal sig_axi_por2rst_out : STD_LOGIC;
  signal sig_axi_por2rst_out_i_2_n_0 : STD_LOGIC;
  signal sig_axi_por_reg1 : STD_LOGIC;
  signal sig_axi_por_reg2 : STD_LOGIC;
  signal sig_axi_por_reg3 : STD_LOGIC;
  signal sig_axi_por_reg4 : STD_LOGIC;
  signal sig_axi_por_reg5 : STD_LOGIC;
  signal sig_axi_por_reg6 : STD_LOGIC;
  signal sig_axi_por_reg7 : STD_LOGIC;
  signal sig_axi_por_reg8 : STD_LOGIC;
  signal sig_cmd_reset_reg : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of sig_cmd_reset_reg : signal is "true";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of sig_cmd_reset_reg : signal is "no";
  signal sig_cmd_reset_reg_i_1_n_0 : STD_LOGIC;
  signal sig_llink_reset_reg : STD_LOGIC;
  attribute RTL_KEEP of sig_llink_reset_reg : signal is "true";
  attribute equivalent_register_removal of sig_llink_reset_reg : signal is "no";
  signal sig_rdwr_reset_reg : STD_LOGIC;
  attribute RTL_KEEP of sig_rdwr_reset_reg : signal is "true";
  attribute equivalent_register_removal of sig_rdwr_reset_reg : signal is "no";
  attribute KEEP : string;
  attribute KEEP of sig_cmd_reset_reg_reg : label is "yes";
  attribute equivalent_register_removal of sig_cmd_reset_reg_reg : label is "no";
  attribute KEEP of sig_llink_reset_reg_reg : label is "yes";
  attribute equivalent_register_removal of sig_llink_reset_reg_reg : label is "no";
  attribute KEEP of sig_rdwr_reset_reg_reg : label is "yes";
  attribute equivalent_register_removal of sig_rdwr_reset_reg_reg : label is "no";
begin
  \INFERRED_GEN.cnt_i_reg[0]\ <= sig_rdwr_reset_reg;
  \out\ <= sig_cmd_reset_reg;
  sig_llink_busy_reg <= sig_llink_reset_reg;
sig_axi_por2rst_out_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
        port map (
      I0 => sig_axi_por_reg4,
      I1 => sig_axi_por_reg5,
      I2 => sig_axi_por_reg3,
      I3 => sig_axi_por_reg2,
      I4 => sig_axi_por2rst_out_i_2_n_0,
      O => \sig_axi_por2rst__0\
    );
sig_axi_por2rst_out_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => sig_axi_por_reg7,
      I1 => sig_axi_por_reg6,
      I2 => sig_axi_por_reg1,
      I3 => sig_axi_por_reg8,
      O => sig_axi_por2rst_out_i_2_n_0
    );
sig_axi_por2rst_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => '1',
      D => \sig_axi_por2rst__0\,
      Q => sig_axi_por2rst_out,
      R => '0'
    );
sig_axi_por_reg1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => '1',
      D => '1',
      Q => sig_axi_por_reg1,
      R => '0'
    );
sig_axi_por_reg2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => '1',
      D => sig_axi_por_reg1,
      Q => sig_axi_por_reg2,
      R => '0'
    );
sig_axi_por_reg3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => '1',
      D => sig_axi_por_reg2,
      Q => sig_axi_por_reg3,
      R => '0'
    );
sig_axi_por_reg4_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => '1',
      D => sig_axi_por_reg3,
      Q => sig_axi_por_reg4,
      R => '0'
    );
sig_axi_por_reg5_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => '1',
      D => sig_axi_por_reg4,
      Q => sig_axi_por_reg5,
      R => '0'
    );
sig_axi_por_reg6_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => '1',
      D => sig_axi_por_reg5,
      Q => sig_axi_por_reg6,
      R => '0'
    );
sig_axi_por_reg7_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => '1',
      D => sig_axi_por_reg6,
      Q => sig_axi_por_reg7,
      R => '0'
    );
sig_axi_por_reg8_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => '1',
      D => sig_axi_por_reg7,
      Q => sig_axi_por_reg8,
      R => '0'
    );
sig_cmd_reset_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => sig_axi_por2rst_out,
      I1 => m00_axi_aresetn,
      O => sig_cmd_reset_reg_i_1_n_0
    );
sig_cmd_reset_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => '1',
      D => sig_cmd_reset_reg_i_1_n_0,
      Q => sig_cmd_reset_reg,
      R => '0'
    );
sig_llink_reset_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => '1',
      D => sig_cmd_reset_reg_i_1_n_0,
      Q => sig_llink_reset_reg,
      R => '0'
    );
sig_rdwr_reset_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => '1',
      D => sig_cmd_reset_reg_i_1_n_0,
      Q => sig_rdwr_reset_reg,
      R => '0'
    );
\sig_xfer_end_strb_reg[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sig_rdwr_reset_reg,
      I1 => sig_cmd2dre_valid_reg,
      O => \sig_xfer_end_strb_reg_reg[3]\
    );
sig_xfer_reg_empty_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sig_rdwr_reset_reg,
      I1 => sig_cmd2dre_valid_reg,
      O => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_myip_burst_test_0_0_axi_master_burst_skid2mm_buf is
  port (
    \out\ : out STD_LOGIC;
    \sig_data_reg_out_reg[31]_0\ : out STD_LOGIC;
    m00_axi_wvalid : out STD_LOGIC;
    sig_last_skid_reg : out STD_LOGIC;
    m00_axi_wlast : out STD_LOGIC;
    m00_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \sig_strb_reg_out_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m00_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m00_axi_aclk : in STD_LOGIC;
    sig_rdwr_reset_reg_reg : in STD_LOGIC;
    sig_wdc2wrskid_wlast : in STD_LOGIC;
    sig_last_skid_mux_out : in STD_LOGIC;
    m00_axi_wready : in STD_LOGIC;
    sig_init_reg : in STD_LOGIC;
    sig_m_valid_out_reg_0 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 31 downto 0 );
    D : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \sig_next_strt_strb_reg_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_myip_burst_test_0_0_axi_master_burst_skid2mm_buf : entity is "axi_master_burst_skid2mm_buf";
end design_1_myip_burst_test_0_0_axi_master_burst_skid2mm_buf;

architecture STRUCTURE of design_1_myip_burst_test_0_0_axi_master_burst_skid2mm_buf is
  signal sig_data_reg_out_en : STD_LOGIC;
  signal sig_data_skid_mux_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal sig_data_skid_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal sig_m_valid_dup : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of sig_m_valid_dup : signal is "true";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of sig_m_valid_dup : signal is "no";
  signal \sig_m_valid_dup_i_1__0_n_0\ : STD_LOGIC;
  signal sig_m_valid_out : STD_LOGIC;
  attribute RTL_KEEP of sig_m_valid_out : signal is "true";
  attribute equivalent_register_removal of sig_m_valid_out : signal is "no";
  signal sig_s_ready_dup : STD_LOGIC;
  attribute RTL_KEEP of sig_s_ready_dup : signal is "true";
  attribute equivalent_register_removal of sig_s_ready_dup : signal is "no";
  signal \sig_s_ready_dup_i_1__0_n_0\ : STD_LOGIC;
  signal sig_s_ready_out : STD_LOGIC;
  attribute RTL_KEEP of sig_s_ready_out : signal is "true";
  attribute equivalent_register_removal of sig_s_ready_out : signal is "no";
  attribute KEEP : string;
  attribute KEEP of sig_m_valid_dup_reg : label is "yes";
  attribute equivalent_register_removal of sig_m_valid_dup_reg : label is "no";
  attribute KEEP of sig_m_valid_out_reg : label is "yes";
  attribute equivalent_register_removal of sig_m_valid_out_reg : label is "no";
  attribute KEEP of sig_s_ready_dup_reg : label is "yes";
  attribute equivalent_register_removal of sig_s_ready_dup_reg : label is "no";
  attribute KEEP of sig_s_ready_out_reg : label is "yes";
  attribute equivalent_register_removal of sig_s_ready_out_reg : label is "no";
begin
  m00_axi_wvalid <= sig_m_valid_out;
  \out\ <= sig_s_ready_dup;
  \sig_data_reg_out_reg[31]_0\ <= sig_s_ready_out;
\sig_data_reg_out[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(0),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(0),
      O => sig_data_skid_mux_out(0)
    );
\sig_data_reg_out[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(10),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(10),
      O => sig_data_skid_mux_out(10)
    );
\sig_data_reg_out[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(11),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(11),
      O => sig_data_skid_mux_out(11)
    );
\sig_data_reg_out[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(12),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(12),
      O => sig_data_skid_mux_out(12)
    );
\sig_data_reg_out[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(13),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(13),
      O => sig_data_skid_mux_out(13)
    );
\sig_data_reg_out[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(14),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(14),
      O => sig_data_skid_mux_out(14)
    );
\sig_data_reg_out[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(15),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(15),
      O => sig_data_skid_mux_out(15)
    );
\sig_data_reg_out[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(16),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(16),
      O => sig_data_skid_mux_out(16)
    );
\sig_data_reg_out[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(17),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(17),
      O => sig_data_skid_mux_out(17)
    );
\sig_data_reg_out[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(18),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(18),
      O => sig_data_skid_mux_out(18)
    );
\sig_data_reg_out[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(19),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(19),
      O => sig_data_skid_mux_out(19)
    );
\sig_data_reg_out[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(1),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(1),
      O => sig_data_skid_mux_out(1)
    );
\sig_data_reg_out[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(20),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(20),
      O => sig_data_skid_mux_out(20)
    );
\sig_data_reg_out[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(21),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(21),
      O => sig_data_skid_mux_out(21)
    );
\sig_data_reg_out[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(22),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(22),
      O => sig_data_skid_mux_out(22)
    );
\sig_data_reg_out[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(23),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(23),
      O => sig_data_skid_mux_out(23)
    );
\sig_data_reg_out[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(24),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(24),
      O => sig_data_skid_mux_out(24)
    );
\sig_data_reg_out[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(25),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(25),
      O => sig_data_skid_mux_out(25)
    );
\sig_data_reg_out[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(26),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(26),
      O => sig_data_skid_mux_out(26)
    );
\sig_data_reg_out[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(27),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(27),
      O => sig_data_skid_mux_out(27)
    );
\sig_data_reg_out[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(28),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(28),
      O => sig_data_skid_mux_out(28)
    );
\sig_data_reg_out[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(29),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(29),
      O => sig_data_skid_mux_out(29)
    );
\sig_data_reg_out[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(2),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(2),
      O => sig_data_skid_mux_out(2)
    );
\sig_data_reg_out[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(30),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(30),
      O => sig_data_skid_mux_out(30)
    );
\sig_data_reg_out[31]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => m00_axi_wready,
      I1 => sig_m_valid_dup,
      O => sig_data_reg_out_en
    );
\sig_data_reg_out[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(31),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(31),
      O => sig_data_skid_mux_out(31)
    );
\sig_data_reg_out[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(3),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(3),
      O => sig_data_skid_mux_out(3)
    );
\sig_data_reg_out[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(4),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(4),
      O => sig_data_skid_mux_out(4)
    );
\sig_data_reg_out[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(5),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(5),
      O => sig_data_skid_mux_out(5)
    );
\sig_data_reg_out[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(6),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(6),
      O => sig_data_skid_mux_out(6)
    );
\sig_data_reg_out[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(7),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(7),
      O => sig_data_skid_mux_out(7)
    );
\sig_data_reg_out[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(8),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(8),
      O => sig_data_skid_mux_out(8)
    );
\sig_data_reg_out[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(9),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(9),
      O => sig_data_skid_mux_out(9)
    );
\sig_data_reg_out_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(0),
      Q => m00_axi_wdata(0),
      R => '0'
    );
\sig_data_reg_out_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(10),
      Q => m00_axi_wdata(10),
      R => '0'
    );
\sig_data_reg_out_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(11),
      Q => m00_axi_wdata(11),
      R => '0'
    );
\sig_data_reg_out_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(12),
      Q => m00_axi_wdata(12),
      R => '0'
    );
\sig_data_reg_out_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(13),
      Q => m00_axi_wdata(13),
      R => '0'
    );
\sig_data_reg_out_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(14),
      Q => m00_axi_wdata(14),
      R => '0'
    );
\sig_data_reg_out_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(15),
      Q => m00_axi_wdata(15),
      R => '0'
    );
\sig_data_reg_out_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(16),
      Q => m00_axi_wdata(16),
      R => '0'
    );
\sig_data_reg_out_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(17),
      Q => m00_axi_wdata(17),
      R => '0'
    );
\sig_data_reg_out_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(18),
      Q => m00_axi_wdata(18),
      R => '0'
    );
\sig_data_reg_out_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(19),
      Q => m00_axi_wdata(19),
      R => '0'
    );
\sig_data_reg_out_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(1),
      Q => m00_axi_wdata(1),
      R => '0'
    );
\sig_data_reg_out_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(20),
      Q => m00_axi_wdata(20),
      R => '0'
    );
\sig_data_reg_out_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(21),
      Q => m00_axi_wdata(21),
      R => '0'
    );
\sig_data_reg_out_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(22),
      Q => m00_axi_wdata(22),
      R => '0'
    );
\sig_data_reg_out_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(23),
      Q => m00_axi_wdata(23),
      R => '0'
    );
\sig_data_reg_out_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(24),
      Q => m00_axi_wdata(24),
      R => '0'
    );
\sig_data_reg_out_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(25),
      Q => m00_axi_wdata(25),
      R => '0'
    );
\sig_data_reg_out_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(26),
      Q => m00_axi_wdata(26),
      R => '0'
    );
\sig_data_reg_out_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(27),
      Q => m00_axi_wdata(27),
      R => '0'
    );
\sig_data_reg_out_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(28),
      Q => m00_axi_wdata(28),
      R => '0'
    );
\sig_data_reg_out_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(29),
      Q => m00_axi_wdata(29),
      R => '0'
    );
\sig_data_reg_out_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(2),
      Q => m00_axi_wdata(2),
      R => '0'
    );
\sig_data_reg_out_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(30),
      Q => m00_axi_wdata(30),
      R => '0'
    );
\sig_data_reg_out_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(31),
      Q => m00_axi_wdata(31),
      R => '0'
    );
\sig_data_reg_out_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(3),
      Q => m00_axi_wdata(3),
      R => '0'
    );
\sig_data_reg_out_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(4),
      Q => m00_axi_wdata(4),
      R => '0'
    );
\sig_data_reg_out_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(5),
      Q => m00_axi_wdata(5),
      R => '0'
    );
\sig_data_reg_out_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(6),
      Q => m00_axi_wdata(6),
      R => '0'
    );
\sig_data_reg_out_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(7),
      Q => m00_axi_wdata(7),
      R => '0'
    );
\sig_data_reg_out_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(8),
      Q => m00_axi_wdata(8),
      R => '0'
    );
\sig_data_reg_out_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(9),
      Q => m00_axi_wdata(9),
      R => '0'
    );
\sig_data_skid_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_s_ready_dup,
      D => Q(0),
      Q => sig_data_skid_reg(0),
      R => '0'
    );
\sig_data_skid_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_s_ready_dup,
      D => Q(10),
      Q => sig_data_skid_reg(10),
      R => '0'
    );
\sig_data_skid_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_s_ready_dup,
      D => Q(11),
      Q => sig_data_skid_reg(11),
      R => '0'
    );
\sig_data_skid_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_s_ready_dup,
      D => Q(12),
      Q => sig_data_skid_reg(12),
      R => '0'
    );
\sig_data_skid_reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_s_ready_dup,
      D => Q(13),
      Q => sig_data_skid_reg(13),
      R => '0'
    );
\sig_data_skid_reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_s_ready_dup,
      D => Q(14),
      Q => sig_data_skid_reg(14),
      R => '0'
    );
\sig_data_skid_reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_s_ready_dup,
      D => Q(15),
      Q => sig_data_skid_reg(15),
      R => '0'
    );
\sig_data_skid_reg_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_s_ready_dup,
      D => Q(16),
      Q => sig_data_skid_reg(16),
      R => '0'
    );
\sig_data_skid_reg_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_s_ready_dup,
      D => Q(17),
      Q => sig_data_skid_reg(17),
      R => '0'
    );
\sig_data_skid_reg_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_s_ready_dup,
      D => Q(18),
      Q => sig_data_skid_reg(18),
      R => '0'
    );
\sig_data_skid_reg_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_s_ready_dup,
      D => Q(19),
      Q => sig_data_skid_reg(19),
      R => '0'
    );
\sig_data_skid_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_s_ready_dup,
      D => Q(1),
      Q => sig_data_skid_reg(1),
      R => '0'
    );
\sig_data_skid_reg_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_s_ready_dup,
      D => Q(20),
      Q => sig_data_skid_reg(20),
      R => '0'
    );
\sig_data_skid_reg_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_s_ready_dup,
      D => Q(21),
      Q => sig_data_skid_reg(21),
      R => '0'
    );
\sig_data_skid_reg_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_s_ready_dup,
      D => Q(22),
      Q => sig_data_skid_reg(22),
      R => '0'
    );
\sig_data_skid_reg_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_s_ready_dup,
      D => Q(23),
      Q => sig_data_skid_reg(23),
      R => '0'
    );
\sig_data_skid_reg_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_s_ready_dup,
      D => Q(24),
      Q => sig_data_skid_reg(24),
      R => '0'
    );
\sig_data_skid_reg_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_s_ready_dup,
      D => Q(25),
      Q => sig_data_skid_reg(25),
      R => '0'
    );
\sig_data_skid_reg_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_s_ready_dup,
      D => Q(26),
      Q => sig_data_skid_reg(26),
      R => '0'
    );
\sig_data_skid_reg_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_s_ready_dup,
      D => Q(27),
      Q => sig_data_skid_reg(27),
      R => '0'
    );
\sig_data_skid_reg_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_s_ready_dup,
      D => Q(28),
      Q => sig_data_skid_reg(28),
      R => '0'
    );
\sig_data_skid_reg_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_s_ready_dup,
      D => Q(29),
      Q => sig_data_skid_reg(29),
      R => '0'
    );
\sig_data_skid_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_s_ready_dup,
      D => Q(2),
      Q => sig_data_skid_reg(2),
      R => '0'
    );
\sig_data_skid_reg_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_s_ready_dup,
      D => Q(30),
      Q => sig_data_skid_reg(30),
      R => '0'
    );
\sig_data_skid_reg_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_s_ready_dup,
      D => Q(31),
      Q => sig_data_skid_reg(31),
      R => '0'
    );
\sig_data_skid_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_s_ready_dup,
      D => Q(3),
      Q => sig_data_skid_reg(3),
      R => '0'
    );
\sig_data_skid_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_s_ready_dup,
      D => Q(4),
      Q => sig_data_skid_reg(4),
      R => '0'
    );
\sig_data_skid_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_s_ready_dup,
      D => Q(5),
      Q => sig_data_skid_reg(5),
      R => '0'
    );
\sig_data_skid_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_s_ready_dup,
      D => Q(6),
      Q => sig_data_skid_reg(6),
      R => '0'
    );
\sig_data_skid_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_s_ready_dup,
      D => Q(7),
      Q => sig_data_skid_reg(7),
      R => '0'
    );
\sig_data_skid_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_s_ready_dup,
      D => Q(8),
      Q => sig_data_skid_reg(8),
      R => '0'
    );
\sig_data_skid_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_s_ready_dup,
      D => Q(9),
      Q => sig_data_skid_reg(9),
      R => '0'
    );
sig_last_reg_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_data_reg_out_en,
      D => sig_last_skid_mux_out,
      Q => m00_axi_wlast,
      R => sig_rdwr_reset_reg_reg
    );
sig_last_skid_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_s_ready_dup,
      D => sig_wdc2wrskid_wlast,
      Q => sig_last_skid_reg,
      R => sig_rdwr_reset_reg_reg
    );
\sig_m_valid_dup_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010101011111111"
    )
        port map (
      I0 => sig_init_reg,
      I1 => sig_rdwr_reset_reg_reg,
      I2 => sig_m_valid_dup,
      I3 => sig_s_ready_dup,
      I4 => m00_axi_wready,
      I5 => sig_m_valid_out_reg_0,
      O => \sig_m_valid_dup_i_1__0_n_0\
    );
sig_m_valid_dup_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => '1',
      D => \sig_m_valid_dup_i_1__0_n_0\,
      Q => sig_m_valid_dup,
      R => '0'
    );
sig_m_valid_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => '1',
      D => \sig_m_valid_dup_i_1__0_n_0\,
      Q => sig_m_valid_out,
      R => '0'
    );
\sig_s_ready_dup_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFEEEFE"
    )
        port map (
      I0 => m00_axi_wready,
      I1 => sig_init_reg,
      I2 => sig_s_ready_dup,
      I3 => sig_m_valid_dup,
      I4 => sig_m_valid_out_reg_0,
      O => \sig_s_ready_dup_i_1__0_n_0\
    );
sig_s_ready_dup_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => '1',
      D => \sig_s_ready_dup_i_1__0_n_0\,
      Q => sig_s_ready_dup,
      R => sig_rdwr_reset_reg_reg
    );
sig_s_ready_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => '1',
      D => \sig_s_ready_dup_i_1__0_n_0\,
      Q => sig_s_ready_out,
      R => sig_rdwr_reset_reg_reg
    );
\sig_strb_reg_out_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_data_reg_out_en,
      D => \sig_next_strt_strb_reg_reg[3]\(0),
      Q => m00_axi_wstrb(0),
      R => sig_rdwr_reset_reg_reg
    );
\sig_strb_reg_out_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_data_reg_out_en,
      D => \sig_next_strt_strb_reg_reg[3]\(1),
      Q => m00_axi_wstrb(1),
      R => sig_rdwr_reset_reg_reg
    );
\sig_strb_reg_out_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_data_reg_out_en,
      D => \sig_next_strt_strb_reg_reg[3]\(2),
      Q => m00_axi_wstrb(2),
      R => sig_rdwr_reset_reg_reg
    );
\sig_strb_reg_out_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_data_reg_out_en,
      D => \sig_next_strt_strb_reg_reg[3]\(3),
      Q => m00_axi_wstrb(3),
      R => sig_rdwr_reset_reg_reg
    );
\sig_strb_skid_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_s_ready_dup,
      D => D(0),
      Q => \sig_strb_reg_out_reg[3]_0\(0),
      R => sig_rdwr_reset_reg_reg
    );
\sig_strb_skid_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_s_ready_dup,
      D => D(1),
      Q => \sig_strb_reg_out_reg[3]_0\(1),
      R => sig_rdwr_reset_reg_reg
    );
\sig_strb_skid_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_s_ready_dup,
      D => D(2),
      Q => \sig_strb_reg_out_reg[3]_0\(2),
      R => sig_rdwr_reset_reg_reg
    );
\sig_strb_skid_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_s_ready_dup,
      D => D(3),
      Q => \sig_strb_reg_out_reg[3]_0\(3),
      R => sig_rdwr_reset_reg_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_myip_burst_test_0_0_axi_master_burst_skid_buf is
  port (
    \out\ : out STD_LOGIC;
    sig_init_reg_reg : in STD_LOGIC;
    m00_axi_aclk : in STD_LOGIC;
    sig_rdwr_reset_reg_reg : in STD_LOGIC;
    sig_init_reg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_myip_burst_test_0_0_axi_master_burst_skid_buf : entity is "axi_master_burst_skid_buf";
end design_1_myip_burst_test_0_0_axi_master_burst_skid_buf;

architecture STRUCTURE of design_1_myip_burst_test_0_0_axi_master_burst_skid_buf is
  signal sig_m_valid_dup : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of sig_m_valid_dup : signal is "true";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of sig_m_valid_dup : signal is "no";
  signal sig_m_valid_out : STD_LOGIC;
  attribute RTL_KEEP of sig_m_valid_out : signal is "true";
  attribute equivalent_register_removal of sig_m_valid_out : signal is "no";
  signal sig_s_ready_dup : STD_LOGIC;
  attribute RTL_KEEP of sig_s_ready_dup : signal is "true";
  attribute equivalent_register_removal of sig_s_ready_dup : signal is "no";
  signal \sig_s_ready_dup_i_1__1_n_0\ : STD_LOGIC;
  signal sig_s_ready_out : STD_LOGIC;
  attribute RTL_KEEP of sig_s_ready_out : signal is "true";
  attribute equivalent_register_removal of sig_s_ready_out : signal is "no";
  attribute KEEP : string;
  attribute KEEP of sig_m_valid_dup_reg : label is "yes";
  attribute equivalent_register_removal of sig_m_valid_dup_reg : label is "no";
  attribute KEEP of sig_m_valid_out_reg : label is "yes";
  attribute equivalent_register_removal of sig_m_valid_out_reg : label is "no";
  attribute KEEP of sig_s_ready_dup_reg : label is "yes";
  attribute equivalent_register_removal of sig_s_ready_dup_reg : label is "no";
  attribute KEEP of sig_s_ready_out_reg : label is "yes";
  attribute equivalent_register_removal of sig_s_ready_out_reg : label is "no";
begin
  \out\ <= sig_m_valid_dup;
sig_m_valid_dup_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => '1',
      D => sig_init_reg_reg,
      Q => sig_m_valid_dup,
      R => '0'
    );
sig_m_valid_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => '1',
      D => sig_init_reg_reg,
      Q => sig_m_valid_out,
      R => '0'
    );
\sig_s_ready_dup_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sig_s_ready_dup,
      I1 => sig_init_reg,
      O => \sig_s_ready_dup_i_1__1_n_0\
    );
sig_s_ready_dup_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => '1',
      D => \sig_s_ready_dup_i_1__1_n_0\,
      Q => sig_s_ready_dup,
      R => sig_rdwr_reset_reg_reg
    );
sig_s_ready_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => '1',
      D => \sig_s_ready_dup_i_1__1_n_0\,
      Q => sig_s_ready_out,
      R => sig_rdwr_reset_reg_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_myip_burst_test_0_0_axi_master_burst_skid_buf_0 is
  port (
    \out\ : out STD_LOGIC;
    sig_llink_busy_reg : out STD_LOGIC;
    sig_last_mmap_dbeat_reg_reg : out STD_LOGIC;
    sig_wrskid2wdc_tlast : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axi_aclk : in STD_LOGIC;
    sig_rdwr_reset_reg_reg : in STD_LOGIC;
    \GEN_OMIT_STORE_FORWARD.sig_tlast_error_reg_reg\ : in STD_LOGIC;
    sig_llink2cmd_wr_busy : in STD_LOGIC;
    ip2bus_inputs : in STD_LOGIC_VECTOR ( 1 downto 0 );
    sig_init_reg : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    sig_llink_busy_reg_0 : in STD_LOGIC;
    ip2bus_mstwr_d : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_myip_burst_test_0_0_axi_master_burst_skid_buf_0 : entity is "axi_master_burst_skid_buf";
end design_1_myip_burst_test_0_0_axi_master_burst_skid_buf_0;

architecture STRUCTURE of design_1_myip_burst_test_0_0_axi_master_burst_skid_buf_0 is
  signal sig_data_skid_mux_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal sig_data_skid_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \sig_last_reg_out_i_1__0_n_0\ : STD_LOGIC;
  signal sig_last_skid_reg : STD_LOGIC;
  signal sig_llink2wr_strm_tlast : STD_LOGIC;
  signal sig_m_valid_dup : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of sig_m_valid_dup : signal is "true";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of sig_m_valid_dup : signal is "no";
  signal sig_m_valid_dup_i_1_n_0 : STD_LOGIC;
  signal sig_m_valid_out : STD_LOGIC;
  attribute RTL_KEEP of sig_m_valid_out : signal is "true";
  attribute equivalent_register_removal of sig_m_valid_out : signal is "no";
  signal sig_s_ready_dup : STD_LOGIC;
  attribute RTL_KEEP of sig_s_ready_dup : signal is "true";
  attribute equivalent_register_removal of sig_s_ready_dup : signal is "no";
  signal sig_s_ready_dup_i_1_n_0 : STD_LOGIC;
  signal sig_s_ready_out : STD_LOGIC;
  attribute RTL_KEEP of sig_s_ready_out : signal is "true";
  attribute equivalent_register_removal of sig_s_ready_out : signal is "no";
  signal \^sig_wrskid2wdc_tlast\ : STD_LOGIC;
  attribute KEEP : string;
  attribute KEEP of sig_m_valid_dup_reg : label is "yes";
  attribute equivalent_register_removal of sig_m_valid_dup_reg : label is "no";
  attribute KEEP of sig_m_valid_out_reg : label is "yes";
  attribute equivalent_register_removal of sig_m_valid_out_reg : label is "no";
  attribute KEEP of sig_s_ready_dup_reg : label is "yes";
  attribute equivalent_register_removal of sig_s_ready_dup_reg : label is "no";
  attribute KEEP of sig_s_ready_out_reg : label is "yes";
  attribute equivalent_register_removal of sig_s_ready_out_reg : label is "no";
begin
  \out\ <= sig_m_valid_dup;
  sig_last_mmap_dbeat_reg_reg <= sig_m_valid_out;
  sig_llink_busy_reg <= sig_s_ready_out;
  sig_wrskid2wdc_tlast <= \^sig_wrskid2wdc_tlast\;
\sig_data_reg_out[0]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ip2bus_mstwr_d(0),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(0),
      O => sig_data_skid_mux_out(0)
    );
\sig_data_reg_out[10]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ip2bus_mstwr_d(10),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(10),
      O => sig_data_skid_mux_out(10)
    );
\sig_data_reg_out[11]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ip2bus_mstwr_d(11),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(11),
      O => sig_data_skid_mux_out(11)
    );
\sig_data_reg_out[12]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ip2bus_mstwr_d(12),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(12),
      O => sig_data_skid_mux_out(12)
    );
\sig_data_reg_out[13]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ip2bus_mstwr_d(13),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(13),
      O => sig_data_skid_mux_out(13)
    );
\sig_data_reg_out[14]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ip2bus_mstwr_d(14),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(14),
      O => sig_data_skid_mux_out(14)
    );
\sig_data_reg_out[15]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ip2bus_mstwr_d(15),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(15),
      O => sig_data_skid_mux_out(15)
    );
\sig_data_reg_out[16]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ip2bus_mstwr_d(16),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(16),
      O => sig_data_skid_mux_out(16)
    );
\sig_data_reg_out[17]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ip2bus_mstwr_d(17),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(17),
      O => sig_data_skid_mux_out(17)
    );
\sig_data_reg_out[18]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ip2bus_mstwr_d(18),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(18),
      O => sig_data_skid_mux_out(18)
    );
\sig_data_reg_out[19]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ip2bus_mstwr_d(19),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(19),
      O => sig_data_skid_mux_out(19)
    );
\sig_data_reg_out[1]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ip2bus_mstwr_d(1),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(1),
      O => sig_data_skid_mux_out(1)
    );
\sig_data_reg_out[20]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ip2bus_mstwr_d(20),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(20),
      O => sig_data_skid_mux_out(20)
    );
\sig_data_reg_out[21]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ip2bus_mstwr_d(21),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(21),
      O => sig_data_skid_mux_out(21)
    );
\sig_data_reg_out[22]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ip2bus_mstwr_d(22),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(22),
      O => sig_data_skid_mux_out(22)
    );
\sig_data_reg_out[23]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ip2bus_mstwr_d(23),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(23),
      O => sig_data_skid_mux_out(23)
    );
\sig_data_reg_out[24]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ip2bus_mstwr_d(24),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(24),
      O => sig_data_skid_mux_out(24)
    );
\sig_data_reg_out[25]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ip2bus_mstwr_d(25),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(25),
      O => sig_data_skid_mux_out(25)
    );
\sig_data_reg_out[26]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ip2bus_mstwr_d(26),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(26),
      O => sig_data_skid_mux_out(26)
    );
\sig_data_reg_out[27]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ip2bus_mstwr_d(27),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(27),
      O => sig_data_skid_mux_out(27)
    );
\sig_data_reg_out[28]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ip2bus_mstwr_d(28),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(28),
      O => sig_data_skid_mux_out(28)
    );
\sig_data_reg_out[29]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ip2bus_mstwr_d(29),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(29),
      O => sig_data_skid_mux_out(29)
    );
\sig_data_reg_out[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ip2bus_mstwr_d(2),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(2),
      O => sig_data_skid_mux_out(2)
    );
\sig_data_reg_out[30]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ip2bus_mstwr_d(30),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(30),
      O => sig_data_skid_mux_out(30)
    );
\sig_data_reg_out[31]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ip2bus_mstwr_d(31),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(31),
      O => sig_data_skid_mux_out(31)
    );
\sig_data_reg_out[3]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ip2bus_mstwr_d(3),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(3),
      O => sig_data_skid_mux_out(3)
    );
\sig_data_reg_out[4]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ip2bus_mstwr_d(4),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(4),
      O => sig_data_skid_mux_out(4)
    );
\sig_data_reg_out[5]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ip2bus_mstwr_d(5),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(5),
      O => sig_data_skid_mux_out(5)
    );
\sig_data_reg_out[6]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ip2bus_mstwr_d(6),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(6),
      O => sig_data_skid_mux_out(6)
    );
\sig_data_reg_out[7]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ip2bus_mstwr_d(7),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(7),
      O => sig_data_skid_mux_out(7)
    );
\sig_data_reg_out[8]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ip2bus_mstwr_d(8),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(8),
      O => sig_data_skid_mux_out(8)
    );
\sig_data_reg_out[9]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ip2bus_mstwr_d(9),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(9),
      O => sig_data_skid_mux_out(9)
    );
\sig_data_reg_out_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(0),
      Q => Q(0),
      R => '0'
    );
\sig_data_reg_out_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(10),
      Q => Q(10),
      R => '0'
    );
\sig_data_reg_out_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(11),
      Q => Q(11),
      R => '0'
    );
\sig_data_reg_out_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(12),
      Q => Q(12),
      R => '0'
    );
\sig_data_reg_out_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(13),
      Q => Q(13),
      R => '0'
    );
\sig_data_reg_out_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(14),
      Q => Q(14),
      R => '0'
    );
\sig_data_reg_out_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(15),
      Q => Q(15),
      R => '0'
    );
\sig_data_reg_out_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(16),
      Q => Q(16),
      R => '0'
    );
\sig_data_reg_out_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(17),
      Q => Q(17),
      R => '0'
    );
\sig_data_reg_out_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(18),
      Q => Q(18),
      R => '0'
    );
\sig_data_reg_out_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(19),
      Q => Q(19),
      R => '0'
    );
\sig_data_reg_out_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(1),
      Q => Q(1),
      R => '0'
    );
\sig_data_reg_out_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(20),
      Q => Q(20),
      R => '0'
    );
\sig_data_reg_out_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(21),
      Q => Q(21),
      R => '0'
    );
\sig_data_reg_out_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(22),
      Q => Q(22),
      R => '0'
    );
\sig_data_reg_out_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(23),
      Q => Q(23),
      R => '0'
    );
\sig_data_reg_out_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(24),
      Q => Q(24),
      R => '0'
    );
\sig_data_reg_out_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(25),
      Q => Q(25),
      R => '0'
    );
\sig_data_reg_out_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(26),
      Q => Q(26),
      R => '0'
    );
\sig_data_reg_out_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(27),
      Q => Q(27),
      R => '0'
    );
\sig_data_reg_out_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(28),
      Q => Q(28),
      R => '0'
    );
\sig_data_reg_out_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(29),
      Q => Q(29),
      R => '0'
    );
\sig_data_reg_out_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(2),
      Q => Q(2),
      R => '0'
    );
\sig_data_reg_out_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(30),
      Q => Q(30),
      R => '0'
    );
\sig_data_reg_out_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(31),
      Q => Q(31),
      R => '0'
    );
\sig_data_reg_out_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(3),
      Q => Q(3),
      R => '0'
    );
\sig_data_reg_out_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(4),
      Q => Q(4),
      R => '0'
    );
\sig_data_reg_out_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(5),
      Q => Q(5),
      R => '0'
    );
\sig_data_reg_out_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(6),
      Q => Q(6),
      R => '0'
    );
\sig_data_reg_out_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(7),
      Q => Q(7),
      R => '0'
    );
\sig_data_reg_out_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(8),
      Q => Q(8),
      R => '0'
    );
\sig_data_reg_out_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(9),
      Q => Q(9),
      R => '0'
    );
\sig_data_skid_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_s_ready_dup,
      D => ip2bus_mstwr_d(0),
      Q => sig_data_skid_reg(0),
      R => '0'
    );
\sig_data_skid_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_s_ready_dup,
      D => ip2bus_mstwr_d(10),
      Q => sig_data_skid_reg(10),
      R => '0'
    );
\sig_data_skid_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_s_ready_dup,
      D => ip2bus_mstwr_d(11),
      Q => sig_data_skid_reg(11),
      R => '0'
    );
\sig_data_skid_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_s_ready_dup,
      D => ip2bus_mstwr_d(12),
      Q => sig_data_skid_reg(12),
      R => '0'
    );
\sig_data_skid_reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_s_ready_dup,
      D => ip2bus_mstwr_d(13),
      Q => sig_data_skid_reg(13),
      R => '0'
    );
\sig_data_skid_reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_s_ready_dup,
      D => ip2bus_mstwr_d(14),
      Q => sig_data_skid_reg(14),
      R => '0'
    );
\sig_data_skid_reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_s_ready_dup,
      D => ip2bus_mstwr_d(15),
      Q => sig_data_skid_reg(15),
      R => '0'
    );
\sig_data_skid_reg_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_s_ready_dup,
      D => ip2bus_mstwr_d(16),
      Q => sig_data_skid_reg(16),
      R => '0'
    );
\sig_data_skid_reg_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_s_ready_dup,
      D => ip2bus_mstwr_d(17),
      Q => sig_data_skid_reg(17),
      R => '0'
    );
\sig_data_skid_reg_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_s_ready_dup,
      D => ip2bus_mstwr_d(18),
      Q => sig_data_skid_reg(18),
      R => '0'
    );
\sig_data_skid_reg_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_s_ready_dup,
      D => ip2bus_mstwr_d(19),
      Q => sig_data_skid_reg(19),
      R => '0'
    );
\sig_data_skid_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_s_ready_dup,
      D => ip2bus_mstwr_d(1),
      Q => sig_data_skid_reg(1),
      R => '0'
    );
\sig_data_skid_reg_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_s_ready_dup,
      D => ip2bus_mstwr_d(20),
      Q => sig_data_skid_reg(20),
      R => '0'
    );
\sig_data_skid_reg_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_s_ready_dup,
      D => ip2bus_mstwr_d(21),
      Q => sig_data_skid_reg(21),
      R => '0'
    );
\sig_data_skid_reg_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_s_ready_dup,
      D => ip2bus_mstwr_d(22),
      Q => sig_data_skid_reg(22),
      R => '0'
    );
\sig_data_skid_reg_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_s_ready_dup,
      D => ip2bus_mstwr_d(23),
      Q => sig_data_skid_reg(23),
      R => '0'
    );
\sig_data_skid_reg_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_s_ready_dup,
      D => ip2bus_mstwr_d(24),
      Q => sig_data_skid_reg(24),
      R => '0'
    );
\sig_data_skid_reg_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_s_ready_dup,
      D => ip2bus_mstwr_d(25),
      Q => sig_data_skid_reg(25),
      R => '0'
    );
\sig_data_skid_reg_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_s_ready_dup,
      D => ip2bus_mstwr_d(26),
      Q => sig_data_skid_reg(26),
      R => '0'
    );
\sig_data_skid_reg_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_s_ready_dup,
      D => ip2bus_mstwr_d(27),
      Q => sig_data_skid_reg(27),
      R => '0'
    );
\sig_data_skid_reg_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_s_ready_dup,
      D => ip2bus_mstwr_d(28),
      Q => sig_data_skid_reg(28),
      R => '0'
    );
\sig_data_skid_reg_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_s_ready_dup,
      D => ip2bus_mstwr_d(29),
      Q => sig_data_skid_reg(29),
      R => '0'
    );
\sig_data_skid_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_s_ready_dup,
      D => ip2bus_mstwr_d(2),
      Q => sig_data_skid_reg(2),
      R => '0'
    );
\sig_data_skid_reg_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_s_ready_dup,
      D => ip2bus_mstwr_d(30),
      Q => sig_data_skid_reg(30),
      R => '0'
    );
\sig_data_skid_reg_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_s_ready_dup,
      D => ip2bus_mstwr_d(31),
      Q => sig_data_skid_reg(31),
      R => '0'
    );
\sig_data_skid_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_s_ready_dup,
      D => ip2bus_mstwr_d(3),
      Q => sig_data_skid_reg(3),
      R => '0'
    );
\sig_data_skid_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_s_ready_dup,
      D => ip2bus_mstwr_d(4),
      Q => sig_data_skid_reg(4),
      R => '0'
    );
\sig_data_skid_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_s_ready_dup,
      D => ip2bus_mstwr_d(5),
      Q => sig_data_skid_reg(5),
      R => '0'
    );
\sig_data_skid_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_s_ready_dup,
      D => ip2bus_mstwr_d(6),
      Q => sig_data_skid_reg(6),
      R => '0'
    );
\sig_data_skid_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_s_ready_dup,
      D => ip2bus_mstwr_d(7),
      Q => sig_data_skid_reg(7),
      R => '0'
    );
\sig_data_skid_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_s_ready_dup,
      D => ip2bus_mstwr_d(8),
      Q => sig_data_skid_reg(8),
      R => '0'
    );
\sig_data_skid_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_s_ready_dup,
      D => ip2bus_mstwr_d(9),
      Q => sig_data_skid_reg(9),
      R => '0'
    );
\sig_last_reg_out_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"74FF7400"
    )
        port map (
      I0 => ip2bus_inputs(0),
      I1 => sig_s_ready_dup,
      I2 => sig_last_skid_reg,
      I3 => E(0),
      I4 => \^sig_wrskid2wdc_tlast\,
      O => \sig_last_reg_out_i_1__0_n_0\
    );
sig_last_reg_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => '1',
      D => \sig_last_reg_out_i_1__0_n_0\,
      Q => \^sig_wrskid2wdc_tlast\,
      R => sig_rdwr_reset_reg_reg
    );
\sig_last_skid_reg_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ip2bus_inputs(0),
      O => sig_llink2wr_strm_tlast
    );
sig_last_skid_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_s_ready_dup,
      D => sig_llink2wr_strm_tlast,
      Q => sig_last_skid_reg,
      R => sig_rdwr_reset_reg_reg
    );
sig_m_valid_dup_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1011101011111111"
    )
        port map (
      I0 => sig_init_reg,
      I1 => sig_rdwr_reset_reg_reg,
      I2 => sig_llink_busy_reg_0,
      I3 => sig_s_ready_dup,
      I4 => sig_m_valid_dup,
      I5 => E(0),
      O => sig_m_valid_dup_i_1_n_0
    );
sig_m_valid_dup_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => '1',
      D => sig_m_valid_dup_i_1_n_0,
      Q => sig_m_valid_dup,
      R => '0'
    );
sig_m_valid_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => '1',
      D => sig_m_valid_dup_i_1_n_0,
      Q => sig_m_valid_out,
      R => '0'
    );
sig_s_ready_dup_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEEAEEEEE"
    )
        port map (
      I0 => \GEN_OMIT_STORE_FORWARD.sig_tlast_error_reg_reg\,
      I1 => sig_s_ready_dup,
      I2 => sig_llink2cmd_wr_busy,
      I3 => ip2bus_inputs(1),
      I4 => sig_m_valid_dup,
      I5 => sig_init_reg,
      O => sig_s_ready_dup_i_1_n_0
    );
sig_s_ready_dup_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => '1',
      D => sig_s_ready_dup_i_1_n_0,
      Q => sig_s_ready_dup,
      R => sig_rdwr_reset_reg_reg
    );
sig_s_ready_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => '1',
      D => sig_s_ready_dup_i_1_n_0,
      Q => sig_s_ready_out,
      R => sig_rdwr_reset_reg_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_myip_burst_test_0_0_axi_master_burst_strb_gen__parameterized0\ is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_myip_burst_test_0_0_axi_master_burst_strb_gen__parameterized0\ : entity is "axi_master_burst_strb_gen";
end \design_1_myip_burst_test_0_0_axi_master_burst_strb_gen__parameterized0\;

architecture STRUCTURE of \design_1_myip_burst_test_0_0_axi_master_burst_strb_gen__parameterized0\ is
begin
sig_end_addr_us: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      O => D(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_myip_burst_test_0_0_axi_master_burst_wr_llink is
  port (
    sig_llink2cmd_wr_busy : out STD_LOGIC;
    sig_llink2wr_allow_addr_req : out STD_LOGIC;
    sig_m_valid_out_reg : out STD_LOGIC;
    ip2bus_otputs : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m00_axi_aclk : in STD_LOGIC;
    sig_llink_reset_reg_reg : in STD_LOGIC;
    ip2bus_inputs : in STD_LOGIC_VECTOR ( 1 downto 0 );
    sig_rdwr2llink_int_err : in STD_LOGIC;
    sig_wr_error_reg : in STD_LOGIC;
    sig_wr_llink_enable : in STD_LOGIC;
    sig_s_ready_out_reg : in STD_LOGIC;
    sig_cmd2all_doing_write : in STD_LOGIC;
    sig_doing_write_reg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_myip_burst_test_0_0_axi_master_burst_wr_llink : entity is "axi_master_burst_wr_llink";
end design_1_myip_burst_test_0_0_axi_master_burst_wr_llink;

architecture STRUCTURE of design_1_myip_burst_test_0_0_axi_master_burst_wr_llink is
  signal sig_allow_wr_requests_i_1_n_0 : STD_LOGIC;
  signal sig_assert_discontinue : STD_LOGIC;
  signal sig_assert_discontinue_i_1_n_0 : STD_LOGIC;
  signal \^sig_llink2cmd_wr_busy\ : STD_LOGIC;
  signal \^sig_llink2wr_allow_addr_req\ : STD_LOGIC;
  signal sig_llink_busy_i_1_n_0 : STD_LOGIC;
  signal sig_wr_dsc_in_prog : STD_LOGIC;
  signal sig_wr_dsc_in_prog_i_1_n_0 : STD_LOGIC;
  signal sig_wr_dsc_in_prog_i_2_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \sig_m_valid_dup_i_2__0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of sig_wr_dsc_in_prog_i_2 : label is "soft_lutpair27";
begin
  sig_llink2cmd_wr_busy <= \^sig_llink2cmd_wr_busy\;
  sig_llink2wr_allow_addr_req <= \^sig_llink2wr_allow_addr_req\;
\ip2bus_otputs[3]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sig_assert_discontinue,
      O => ip2bus_otputs(0)
    );
\ip2bus_otputs[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => sig_s_ready_out_reg,
      I1 => sig_wr_dsc_in_prog,
      I2 => \^sig_llink2cmd_wr_busy\,
      O => ip2bus_otputs(1)
    );
sig_allow_wr_requests_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AEAE00AE"
    )
        port map (
      I0 => \^sig_llink2wr_allow_addr_req\,
      I1 => \^sig_llink2cmd_wr_busy\,
      I2 => ip2bus_inputs(1),
      I3 => sig_cmd2all_doing_write,
      I4 => sig_doing_write_reg,
      I5 => sig_llink_reset_reg_reg,
      O => sig_allow_wr_requests_i_1_n_0
    );
sig_allow_wr_requests_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => '1',
      D => sig_allow_wr_requests_i_1_n_0,
      Q => \^sig_llink2wr_allow_addr_req\,
      R => '0'
    );
sig_assert_discontinue_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF080008"
    )
        port map (
      I0 => sig_rdwr2llink_int_err,
      I1 => \^sig_llink2cmd_wr_busy\,
      I2 => sig_wr_error_reg,
      I3 => sig_assert_discontinue,
      I4 => ip2bus_inputs(1),
      I5 => sig_llink_reset_reg_reg,
      O => sig_assert_discontinue_i_1_n_0
    );
sig_assert_discontinue_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => '1',
      D => sig_assert_discontinue_i_1_n_0,
      Q => sig_assert_discontinue,
      R => '0'
    );
sig_llink_busy_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEAAFEAAFEAAFFAA"
    )
        port map (
      I0 => sig_wr_llink_enable,
      I1 => ip2bus_inputs(0),
      I2 => ip2bus_inputs(1),
      I3 => \^sig_llink2cmd_wr_busy\,
      I4 => sig_wr_dsc_in_prog,
      I5 => sig_s_ready_out_reg,
      O => sig_llink_busy_i_1_n_0
    );
sig_llink_busy_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => '1',
      D => sig_llink_busy_i_1_n_0,
      Q => \^sig_llink2cmd_wr_busy\,
      R => sig_llink_reset_reg_reg
    );
\sig_m_valid_dup_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^sig_llink2cmd_wr_busy\,
      I1 => ip2bus_inputs(1),
      O => sig_m_valid_out_reg
    );
sig_wr_dsc_in_prog_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF080008"
    )
        port map (
      I0 => sig_rdwr2llink_int_err,
      I1 => \^sig_llink2cmd_wr_busy\,
      I2 => sig_wr_error_reg,
      I3 => sig_wr_dsc_in_prog,
      I4 => sig_wr_dsc_in_prog_i_2_n_0,
      I5 => sig_llink_reset_reg_reg,
      O => sig_wr_dsc_in_prog_i_1_n_0
    );
sig_wr_dsc_in_prog_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => ip2bus_inputs(0),
      I1 => ip2bus_inputs(1),
      I2 => \^sig_llink2cmd_wr_busy\,
      O => sig_wr_dsc_in_prog_i_2_n_0
    );
sig_wr_dsc_in_prog_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => '1',
      D => sig_wr_dsc_in_prog_i_1_n_0,
      Q => sig_wr_dsc_in_prog,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_myip_burst_test_0_0_axi_master_burst_wrdata_cntl is
  port (
    sig_wdc2pcc_cmd_ready : out STD_LOGIC;
    sig_next_calc_error_reg : out STD_LOGIC;
    sig_push_to_wsc : out STD_LOGIC;
    \in\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \GEN_OMIT_STORE_FORWARD.sig_tlast_err_stop_reg_0\ : out STD_LOGIC;
    sig_tlast_err_stop : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    sig_s_ready_dup_reg : out STD_LOGIC;
    sig_s_ready_dup_reg_0 : out STD_LOGIC;
    sig_last_skid_mux_out : out STD_LOGIC;
    sig_wdc2wrskid_wlast : out STD_LOGIC;
    \sig_wdc_statcnt_reg[2]\ : out STD_LOGIC;
    \sig_strb_reg_out_reg[3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m00_axi_aclk : in STD_LOGIC;
    sig_pcc2data_calc_error : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    sig_pcc2data_sequential : in STD_LOGIC;
    sig_pcc2data_eof : in STD_LOGIC;
    sig_pcc2data_cmd_cmplt : in STD_LOGIC;
    p_1_in : in STD_LOGIC;
    sig_inhibit_rdy_n : in STD_LOGIC;
    FIFO_Full_reg : in STD_LOGIC;
    sig_wrskid2wdc_tlast : in STD_LOGIC;
    \sig_xfer_len_reg_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    sig_next_calc_error_reg_reg_0 : in STD_LOGIC;
    sig_s_ready_out_reg : in STD_LOGIC;
    sig_m_valid_dup_reg : in STD_LOGIC;
    sig_m_valid_out_reg : in STD_LOGIC;
    sig_posted_to_axi_reg : in STD_LOGIC;
    sig_cmd2all_doing_write : in STD_LOGIC;
    sig_s_ready_dup_reg_1 : in STD_LOGIC;
    sig_last_skid_reg : in STD_LOGIC;
    \sig_strb_skid_reg_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \sig_xfer_end_strb_reg_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \sig_xfer_strt_strb_reg_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_myip_burst_test_0_0_axi_master_burst_wrdata_cntl : entity is "axi_master_burst_wrdata_cntl";
end design_1_myip_burst_test_0_0_axi_master_burst_wrdata_cntl;

architecture STRUCTURE of design_1_myip_burst_test_0_0_axi_master_burst_wrdata_cntl is
  signal \GEN_OMIT_STORE_FORWARD.sig_tlast_err_stop_i_1_n_0\ : STD_LOGIC;
  signal \^gen_omit_store_forward.sig_tlast_err_stop_reg_0\ : STD_LOGIC;
  signal \GEN_OMIT_STORE_FORWARD.sig_tlast_error_reg_i_1_n_0\ : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal sig_addr_posted_cntr : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \sig_addr_posted_cntr[0]_i_1_n_0\ : STD_LOGIC;
  signal \sig_addr_posted_cntr[1]_i_1_n_0\ : STD_LOGIC;
  signal \sig_addr_posted_cntr[2]_i_1_n_0\ : STD_LOGIC;
  signal sig_clr_dqual_reg : STD_LOGIC;
  signal sig_data2wsc_cmd_cmplt0 : STD_LOGIC;
  signal sig_data2wsc_cmd_cmplt_i_2_n_0 : STD_LOGIC;
  signal sig_data2wsc_last_err0 : STD_LOGIC;
  signal \sig_dbeat_cntr[7]_i_1_n_0\ : STD_LOGIC;
  signal \sig_dbeat_cntr_reg__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal sig_dqual_reg_empty : STD_LOGIC;
  signal sig_dqual_reg_full : STD_LOGIC;
  signal sig_dqual_reg_full_i_3_n_0 : STD_LOGIC;
  signal sig_dqual_reg_full_i_5_n_0 : STD_LOGIC;
  signal sig_first_dbeat_i_1_n_0 : STD_LOGIC;
  signal sig_first_dbeat_reg_n_0 : STD_LOGIC;
  signal sig_last_dbeat_i_1_n_0 : STD_LOGIC;
  signal sig_last_dbeat_i_2_n_0 : STD_LOGIC;
  signal sig_last_dbeat_i_4_n_0 : STD_LOGIC;
  signal sig_last_dbeat_reg_n_0 : STD_LOGIC;
  signal sig_last_mmap_dbeat : STD_LOGIC;
  signal sig_last_mmap_dbeat_reg : STD_LOGIC;
  signal sig_last_mmap_dbeat_reg_i_2_n_0 : STD_LOGIC;
  signal sig_last_reg_out_i_2_n_0 : STD_LOGIC;
  signal sig_ld_new_cmd_reg : STD_LOGIC;
  signal sig_ld_new_cmd_reg_i_1_n_0 : STD_LOGIC;
  signal \^sig_next_calc_error_reg\ : STD_LOGIC;
  signal sig_next_cmd_cmplt_reg : STD_LOGIC;
  signal sig_next_eof_reg : STD_LOGIC;
  signal sig_next_last_strb_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal sig_next_sequential_reg : STD_LOGIC;
  signal sig_next_strt_strb_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal sig_push_err2wsc : STD_LOGIC;
  signal sig_push_err2wsc_i_1_n_0 : STD_LOGIC;
  signal \^sig_push_to_wsc\ : STD_LOGIC;
  signal sig_push_to_wsc0 : STD_LOGIC;
  signal sig_push_to_wsc_i_2_n_0 : STD_LOGIC;
  signal \^sig_tlast_err_stop\ : STD_LOGIC;
  signal \^sig_wdc2pcc_cmd_ready\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \sig_dbeat_cntr[0]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \sig_dbeat_cntr[1]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \sig_dbeat_cntr[5]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \sig_dbeat_cntr[6]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of sig_last_dbeat_i_4 : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of sig_last_reg_out_i_2 : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of sig_ld_new_cmd_reg_i_1 : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of sig_push_err2wsc_i_1 : label is "soft_lutpair20";
begin
  \GEN_OMIT_STORE_FORWARD.sig_tlast_err_stop_reg_0\ <= \^gen_omit_store_forward.sig_tlast_err_stop_reg_0\;
  sig_next_calc_error_reg <= \^sig_next_calc_error_reg\;
  sig_push_to_wsc <= \^sig_push_to_wsc\;
  sig_tlast_err_stop <= \^sig_tlast_err_stop\;
  sig_wdc2pcc_cmd_ready <= \^sig_wdc2pcc_cmd_ready\;
\GEN_OMIT_STORE_FORWARD.sig_tlast_err_stop_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF20000000"
    )
        port map (
      I0 => sig_inhibit_rdy_n,
      I1 => FIFO_Full_reg,
      I2 => \^sig_push_to_wsc\,
      I3 => sig_data2wsc_cmd_cmplt_i_2_n_0,
      I4 => \^gen_omit_store_forward.sig_tlast_err_stop_reg_0\,
      I5 => \^sig_tlast_err_stop\,
      O => \GEN_OMIT_STORE_FORWARD.sig_tlast_err_stop_i_1_n_0\
    );
\GEN_OMIT_STORE_FORWARD.sig_tlast_err_stop_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => '1',
      D => \GEN_OMIT_STORE_FORWARD.sig_tlast_err_stop_i_1_n_0\,
      Q => \^sig_tlast_err_stop\,
      R => \out\
    );
\GEN_OMIT_STORE_FORWARD.sig_tlast_error_reg_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFA208"
    )
        port map (
      I0 => sig_dqual_reg_full_i_3_n_0,
      I1 => sig_next_eof_reg,
      I2 => sig_last_reg_out_i_2_n_0,
      I3 => sig_wrskid2wdc_tlast,
      I4 => \^gen_omit_store_forward.sig_tlast_err_stop_reg_0\,
      O => \GEN_OMIT_STORE_FORWARD.sig_tlast_error_reg_i_1_n_0\
    );
\GEN_OMIT_STORE_FORWARD.sig_tlast_error_reg_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => '1',
      D => \GEN_OMIT_STORE_FORWARD.sig_tlast_error_reg_i_1_n_0\,
      Q => \^gen_omit_store_forward.sig_tlast_err_stop_reg_0\,
      R => \out\
    );
\INFERRED_GEN.cnt_i[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBFF"
    )
        port map (
      I0 => \^sig_tlast_err_stop\,
      I1 => \^sig_push_to_wsc\,
      I2 => FIFO_Full_reg,
      I3 => sig_inhibit_rdy_n,
      O => \sig_wdc_statcnt_reg[2]\
    );
\sig_addr_posted_cntr[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0008FFF0EEEF000"
    )
        port map (
      I0 => sig_addr_posted_cntr(1),
      I1 => sig_addr_posted_cntr(2),
      I2 => sig_cmd2all_doing_write,
      I3 => sig_posted_to_axi_reg,
      I4 => sig_last_mmap_dbeat_reg,
      I5 => sig_addr_posted_cntr(0),
      O => \sig_addr_posted_cntr[0]_i_1_n_0\
    );
\sig_addr_posted_cntr[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBF4040D5D52A00"
    )
        port map (
      I0 => sig_last_mmap_dbeat_reg,
      I1 => sig_posted_to_axi_reg,
      I2 => sig_cmd2all_doing_write,
      I3 => sig_addr_posted_cntr(2),
      I4 => sig_addr_posted_cntr(1),
      I5 => sig_addr_posted_cntr(0),
      O => \sig_addr_posted_cntr[1]_i_1_n_0\
    );
\sig_addr_posted_cntr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF40FF00FF00D500"
    )
        port map (
      I0 => sig_last_mmap_dbeat_reg,
      I1 => sig_posted_to_axi_reg,
      I2 => sig_cmd2all_doing_write,
      I3 => sig_addr_posted_cntr(2),
      I4 => sig_addr_posted_cntr(1),
      I5 => sig_addr_posted_cntr(0),
      O => \sig_addr_posted_cntr[2]_i_1_n_0\
    );
\sig_addr_posted_cntr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => '1',
      D => \sig_addr_posted_cntr[0]_i_1_n_0\,
      Q => sig_addr_posted_cntr(0),
      R => \out\
    );
\sig_addr_posted_cntr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => '1',
      D => \sig_addr_posted_cntr[1]_i_1_n_0\,
      Q => sig_addr_posted_cntr(1),
      R => \out\
    );
\sig_addr_posted_cntr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => '1',
      D => \sig_addr_posted_cntr[2]_i_1_n_0\,
      Q => sig_addr_posted_cntr(2),
      R => \out\
    );
sig_data2wsc_calc_err_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_push_to_wsc_i_2_n_0,
      D => \^sig_next_calc_error_reg\,
      Q => \in\(2),
      R => sig_push_to_wsc0
    );
sig_data2wsc_cmd_cmplt_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => sig_next_cmd_cmplt_reg,
      I1 => \^gen_omit_store_forward.sig_tlast_err_stop_reg_0\,
      I2 => sig_data2wsc_cmd_cmplt_i_2_n_0,
      O => sig_data2wsc_cmd_cmplt0
    );
sig_data2wsc_cmd_cmplt_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000070000000FF"
    )
        port map (
      I0 => sig_posted_to_axi_reg,
      I1 => sig_cmd2all_doing_write,
      I2 => sig_last_mmap_dbeat_reg,
      I3 => sig_addr_posted_cntr(2),
      I4 => sig_addr_posted_cntr(1),
      I5 => sig_addr_posted_cntr(0),
      O => sig_data2wsc_cmd_cmplt_i_2_n_0
    );
sig_data2wsc_cmd_cmplt_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_push_to_wsc_i_2_n_0,
      D => sig_data2wsc_cmd_cmplt0,
      Q => \in\(0),
      R => sig_push_to_wsc0
    );
sig_data2wsc_last_err_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEAEAAEA"
    )
        port map (
      I0 => \^gen_omit_store_forward.sig_tlast_err_stop_reg_0\,
      I1 => sig_dqual_reg_full_i_3_n_0,
      I2 => sig_next_eof_reg,
      I3 => sig_last_reg_out_i_2_n_0,
      I4 => sig_wrskid2wdc_tlast,
      O => sig_data2wsc_last_err0
    );
sig_data2wsc_last_err_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_push_to_wsc_i_2_n_0,
      D => sig_data2wsc_last_err0,
      Q => \in\(1),
      R => sig_push_to_wsc0
    );
\sig_data_reg_out[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000200FFFFFFFF"
    )
        port map (
      I0 => sig_dqual_reg_full,
      I1 => \^sig_next_calc_error_reg\,
      I2 => sig_data2wsc_cmd_cmplt_i_2_n_0,
      I3 => sig_s_ready_out_reg,
      I4 => \^gen_omit_store_forward.sig_tlast_err_stop_reg_0\,
      I5 => sig_m_valid_dup_reg,
      O => E(0)
    );
\sig_dbeat_cntr[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => \sig_xfer_len_reg_reg[3]\(0),
      I1 => \^sig_wdc2pcc_cmd_ready\,
      I2 => \sig_dbeat_cntr_reg__0\(0),
      O => \p_0_in__0\(0)
    );
\sig_dbeat_cntr[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B88B"
    )
        port map (
      I0 => \sig_xfer_len_reg_reg[3]\(1),
      I1 => \^sig_wdc2pcc_cmd_ready\,
      I2 => \sig_dbeat_cntr_reg__0\(1),
      I3 => \sig_dbeat_cntr_reg__0\(0),
      O => \p_0_in__0\(1)
    );
\sig_dbeat_cntr[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBB8888B"
    )
        port map (
      I0 => \sig_xfer_len_reg_reg[3]\(2),
      I1 => \^sig_wdc2pcc_cmd_ready\,
      I2 => \sig_dbeat_cntr_reg__0\(1),
      I3 => \sig_dbeat_cntr_reg__0\(0),
      I4 => \sig_dbeat_cntr_reg__0\(2),
      O => \p_0_in__0\(2)
    );
\sig_dbeat_cntr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBB88888888B"
    )
        port map (
      I0 => \sig_xfer_len_reg_reg[3]\(3),
      I1 => \^sig_wdc2pcc_cmd_ready\,
      I2 => \sig_dbeat_cntr_reg__0\(2),
      I3 => \sig_dbeat_cntr_reg__0\(0),
      I4 => \sig_dbeat_cntr_reg__0\(1),
      I5 => \sig_dbeat_cntr_reg__0\(3),
      O => \p_0_in__0\(3)
    );
\sig_dbeat_cntr[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555400000001"
    )
        port map (
      I0 => \^sig_wdc2pcc_cmd_ready\,
      I1 => \sig_dbeat_cntr_reg__0\(0),
      I2 => \sig_dbeat_cntr_reg__0\(1),
      I3 => \sig_dbeat_cntr_reg__0\(3),
      I4 => \sig_dbeat_cntr_reg__0\(2),
      I5 => \sig_dbeat_cntr_reg__0\(4),
      O => \p_0_in__0\(4)
    );
\sig_dbeat_cntr[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5401"
    )
        port map (
      I0 => \^sig_wdc2pcc_cmd_ready\,
      I1 => \sig_dbeat_cntr_reg__0\(4),
      I2 => sig_last_mmap_dbeat_reg_i_2_n_0,
      I3 => \sig_dbeat_cntr_reg__0\(5),
      O => \p_0_in__0\(5)
    );
\sig_dbeat_cntr[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FE01"
    )
        port map (
      I0 => \sig_dbeat_cntr_reg__0\(5),
      I1 => sig_last_mmap_dbeat_reg_i_2_n_0,
      I2 => \sig_dbeat_cntr_reg__0\(4),
      I3 => \sig_dbeat_cntr_reg__0\(6),
      I4 => \^sig_wdc2pcc_cmd_ready\,
      O => \p_0_in__0\(6)
    );
\sig_dbeat_cntr[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \^sig_wdc2pcc_cmd_ready\,
      I1 => sig_last_reg_out_i_2_n_0,
      I2 => sig_dqual_reg_full_i_3_n_0,
      O => \sig_dbeat_cntr[7]_i_1_n_0\
    );
\sig_dbeat_cntr[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555400000001"
    )
        port map (
      I0 => \^sig_wdc2pcc_cmd_ready\,
      I1 => \sig_dbeat_cntr_reg__0\(6),
      I2 => \sig_dbeat_cntr_reg__0\(5),
      I3 => sig_last_mmap_dbeat_reg_i_2_n_0,
      I4 => \sig_dbeat_cntr_reg__0\(4),
      I5 => \sig_dbeat_cntr_reg__0\(7),
      O => \p_0_in__0\(7)
    );
\sig_dbeat_cntr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \sig_dbeat_cntr[7]_i_1_n_0\,
      D => \p_0_in__0\(0),
      Q => \sig_dbeat_cntr_reg__0\(0),
      R => \out\
    );
\sig_dbeat_cntr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \sig_dbeat_cntr[7]_i_1_n_0\,
      D => \p_0_in__0\(1),
      Q => \sig_dbeat_cntr_reg__0\(1),
      R => \out\
    );
\sig_dbeat_cntr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \sig_dbeat_cntr[7]_i_1_n_0\,
      D => \p_0_in__0\(2),
      Q => \sig_dbeat_cntr_reg__0\(2),
      R => \out\
    );
\sig_dbeat_cntr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \sig_dbeat_cntr[7]_i_1_n_0\,
      D => \p_0_in__0\(3),
      Q => \sig_dbeat_cntr_reg__0\(3),
      R => \out\
    );
\sig_dbeat_cntr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \sig_dbeat_cntr[7]_i_1_n_0\,
      D => \p_0_in__0\(4),
      Q => \sig_dbeat_cntr_reg__0\(4),
      R => \out\
    );
\sig_dbeat_cntr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \sig_dbeat_cntr[7]_i_1_n_0\,
      D => \p_0_in__0\(5),
      Q => \sig_dbeat_cntr_reg__0\(5),
      R => \out\
    );
\sig_dbeat_cntr_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \sig_dbeat_cntr[7]_i_1_n_0\,
      D => \p_0_in__0\(6),
      Q => \sig_dbeat_cntr_reg__0\(6),
      R => \out\
    );
\sig_dbeat_cntr_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \sig_dbeat_cntr[7]_i_1_n_0\,
      D => \p_0_in__0\(7),
      Q => \sig_dbeat_cntr_reg__0\(7),
      R => \out\
    );
sig_dqual_reg_empty_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \^sig_wdc2pcc_cmd_ready\,
      D => '0',
      Q => sig_dqual_reg_empty,
      S => sig_clr_dqual_reg
    );
sig_dqual_reg_full_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \^sig_wdc2pcc_cmd_ready\,
      I1 => sig_last_mmap_dbeat,
      I2 => \out\,
      O => sig_clr_dqual_reg
    );
sig_dqual_reg_full_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000FF80"
    )
        port map (
      I0 => sig_dqual_reg_full_i_3_n_0,
      I1 => sig_next_sequential_reg,
      I2 => sig_last_dbeat_reg_n_0,
      I3 => sig_dqual_reg_empty,
      I4 => sig_next_calc_error_reg_reg_0,
      I5 => sig_dqual_reg_full_i_5_n_0,
      O => \^sig_wdc2pcc_cmd_ready\
    );
sig_dqual_reg_full_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008000800080000"
    )
        port map (
      I0 => sig_s_ready_out_reg,
      I1 => sig_dqual_reg_full,
      I2 => \^sig_next_calc_error_reg\,
      I3 => sig_data2wsc_cmd_cmplt_i_2_n_0,
      I4 => \^gen_omit_store_forward.sig_tlast_err_stop_reg_0\,
      I5 => sig_m_valid_out_reg,
      O => sig_dqual_reg_full_i_3_n_0
    );
sig_dqual_reg_full_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => sig_addr_posted_cntr(2),
      I1 => sig_addr_posted_cntr(1),
      I2 => sig_addr_posted_cntr(0),
      O => sig_dqual_reg_full_i_5_n_0
    );
sig_dqual_reg_full_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \^sig_wdc2pcc_cmd_ready\,
      D => \^sig_wdc2pcc_cmd_ready\,
      Q => sig_dqual_reg_full,
      R => sig_clr_dqual_reg
    );
sig_first_dbeat_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000C0CACACA"
    )
        port map (
      I0 => sig_first_dbeat_reg_n_0,
      I1 => p_1_in,
      I2 => \^sig_wdc2pcc_cmd_ready\,
      I3 => sig_last_reg_out_i_2_n_0,
      I4 => sig_dqual_reg_full_i_3_n_0,
      I5 => \out\,
      O => sig_first_dbeat_i_1_n_0
    );
sig_first_dbeat_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => '1',
      D => sig_first_dbeat_i_1_n_0,
      Q => sig_first_dbeat_reg_n_0,
      R => '0'
    );
sig_last_dbeat_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"001D00FF001D0000"
    )
        port map (
      I0 => sig_last_dbeat_i_2_n_0,
      I1 => \^sig_wdc2pcc_cmd_ready\,
      I2 => p_1_in,
      I3 => \out\,
      I4 => \sig_dbeat_cntr[7]_i_1_n_0\,
      I5 => sig_last_dbeat_reg_n_0,
      O => sig_last_dbeat_i_1_n_0
    );
sig_last_dbeat_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFDFF"
    )
        port map (
      I0 => sig_dqual_reg_full_i_3_n_0,
      I1 => \sig_dbeat_cntr_reg__0\(3),
      I2 => \sig_dbeat_cntr_reg__0\(2),
      I3 => \sig_dbeat_cntr_reg__0\(0),
      I4 => \sig_dbeat_cntr_reg__0\(1),
      I5 => sig_last_dbeat_i_4_n_0,
      O => sig_last_dbeat_i_2_n_0
    );
sig_last_dbeat_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \sig_dbeat_cntr_reg__0\(6),
      I1 => \sig_dbeat_cntr_reg__0\(5),
      I2 => \sig_dbeat_cntr_reg__0\(7),
      I3 => \sig_dbeat_cntr_reg__0\(4),
      O => sig_last_dbeat_i_4_n_0
    );
sig_last_dbeat_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => '1',
      D => sig_last_dbeat_i_1_n_0,
      Q => sig_last_dbeat_reg_n_0,
      R => '0'
    );
sig_last_mmap_dbeat_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => sig_dqual_reg_full_i_3_n_0,
      I1 => \sig_dbeat_cntr_reg__0\(6),
      I2 => \sig_dbeat_cntr_reg__0\(5),
      I3 => \sig_dbeat_cntr_reg__0\(7),
      I4 => \sig_dbeat_cntr_reg__0\(4),
      I5 => sig_last_mmap_dbeat_reg_i_2_n_0,
      O => sig_last_mmap_dbeat
    );
sig_last_mmap_dbeat_reg_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \sig_dbeat_cntr_reg__0\(0),
      I1 => \sig_dbeat_cntr_reg__0\(1),
      I2 => \sig_dbeat_cntr_reg__0\(3),
      I3 => \sig_dbeat_cntr_reg__0\(2),
      O => sig_last_mmap_dbeat_reg_i_2_n_0
    );
sig_last_mmap_dbeat_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => '1',
      D => sig_last_mmap_dbeat,
      Q => sig_last_mmap_dbeat_reg,
      R => \out\
    );
sig_last_reg_out_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => sig_dqual_reg_full,
      I1 => sig_last_reg_out_i_2_n_0,
      I2 => sig_s_ready_dup_reg_1,
      I3 => sig_last_skid_reg,
      O => sig_last_skid_mux_out
    );
sig_last_reg_out_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => sig_last_mmap_dbeat_reg_i_2_n_0,
      I1 => \sig_dbeat_cntr_reg__0\(4),
      I2 => \sig_dbeat_cntr_reg__0\(7),
      I3 => \sig_dbeat_cntr_reg__0\(5),
      I4 => \sig_dbeat_cntr_reg__0\(6),
      O => sig_last_reg_out_i_2_n_0
    );
sig_last_skid_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => sig_dqual_reg_full,
      I1 => \sig_dbeat_cntr_reg__0\(6),
      I2 => \sig_dbeat_cntr_reg__0\(5),
      I3 => \sig_dbeat_cntr_reg__0\(7),
      I4 => \sig_dbeat_cntr_reg__0\(4),
      I5 => sig_last_mmap_dbeat_reg_i_2_n_0,
      O => sig_wdc2wrskid_wlast
    );
sig_ld_new_cmd_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \^sig_wdc2pcc_cmd_ready\,
      I1 => sig_ld_new_cmd_reg,
      I2 => \out\,
      O => sig_ld_new_cmd_reg_i_1_n_0
    );
sig_ld_new_cmd_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => '1',
      D => sig_ld_new_cmd_reg_i_1_n_0,
      Q => sig_ld_new_cmd_reg,
      R => '0'
    );
sig_m_valid_dup_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF1FFFF"
    )
        port map (
      I0 => sig_m_valid_out_reg,
      I1 => \^gen_omit_store_forward.sig_tlast_err_stop_reg_0\,
      I2 => sig_data2wsc_cmd_cmplt_i_2_n_0,
      I3 => \^sig_next_calc_error_reg\,
      I4 => sig_dqual_reg_full,
      O => sig_s_ready_dup_reg_0
    );
sig_next_calc_error_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \^sig_wdc2pcc_cmd_ready\,
      D => sig_pcc2data_calc_error,
      Q => \^sig_next_calc_error_reg\,
      R => sig_clr_dqual_reg
    );
sig_next_cmd_cmplt_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \^sig_wdc2pcc_cmd_ready\,
      D => sig_pcc2data_cmd_cmplt,
      Q => sig_next_cmd_cmplt_reg,
      R => sig_clr_dqual_reg
    );
sig_next_eof_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \^sig_wdc2pcc_cmd_ready\,
      D => sig_pcc2data_eof,
      Q => sig_next_eof_reg,
      R => sig_clr_dqual_reg
    );
\sig_next_last_strb_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \^sig_wdc2pcc_cmd_ready\,
      D => \sig_xfer_end_strb_reg_reg[3]\(0),
      Q => sig_next_last_strb_reg(0),
      R => sig_clr_dqual_reg
    );
\sig_next_last_strb_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \^sig_wdc2pcc_cmd_ready\,
      D => \sig_xfer_end_strb_reg_reg[3]\(1),
      Q => sig_next_last_strb_reg(1),
      R => sig_clr_dqual_reg
    );
\sig_next_last_strb_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \^sig_wdc2pcc_cmd_ready\,
      D => \sig_xfer_end_strb_reg_reg[3]\(2),
      Q => sig_next_last_strb_reg(2),
      R => sig_clr_dqual_reg
    );
\sig_next_last_strb_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \^sig_wdc2pcc_cmd_ready\,
      D => \sig_xfer_end_strb_reg_reg[3]\(3),
      Q => sig_next_last_strb_reg(3),
      R => sig_clr_dqual_reg
    );
sig_next_sequential_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \^sig_wdc2pcc_cmd_ready\,
      D => sig_pcc2data_sequential,
      Q => sig_next_sequential_reg,
      R => sig_clr_dqual_reg
    );
\sig_next_strt_strb_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \^sig_wdc2pcc_cmd_ready\,
      D => \sig_xfer_strt_strb_reg_reg[3]\(0),
      Q => sig_next_strt_strb_reg(0),
      R => sig_clr_dqual_reg
    );
\sig_next_strt_strb_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \^sig_wdc2pcc_cmd_ready\,
      D => \sig_xfer_strt_strb_reg_reg[3]\(1),
      Q => sig_next_strt_strb_reg(1),
      R => sig_clr_dqual_reg
    );
\sig_next_strt_strb_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \^sig_wdc2pcc_cmd_ready\,
      D => \sig_xfer_strt_strb_reg_reg[3]\(2),
      Q => sig_next_strt_strb_reg(2),
      R => sig_clr_dqual_reg
    );
\sig_next_strt_strb_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \^sig_wdc2pcc_cmd_ready\,
      D => \sig_xfer_strt_strb_reg_reg[3]\(3),
      Q => sig_next_strt_strb_reg(3),
      R => sig_clr_dqual_reg
    );
sig_push_err2wsc_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => sig_ld_new_cmd_reg,
      I1 => \^sig_next_calc_error_reg\,
      I2 => sig_push_err2wsc,
      I3 => \out\,
      O => sig_push_err2wsc_i_1_n_0
    );
sig_push_err2wsc_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => '1',
      D => sig_push_err2wsc_i_1_n_0,
      Q => sig_push_err2wsc,
      R => '0'
    );
sig_push_to_wsc_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAABAAAAAAAAAA"
    )
        port map (
      I0 => \out\,
      I1 => sig_push_err2wsc,
      I2 => sig_last_mmap_dbeat,
      I3 => sig_inhibit_rdy_n,
      I4 => FIFO_Full_reg,
      I5 => \^sig_push_to_wsc\,
      O => sig_push_to_wsc0
    );
sig_push_to_wsc_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => sig_last_mmap_dbeat,
      I1 => sig_push_err2wsc,
      I2 => \^sig_tlast_err_stop\,
      O => sig_push_to_wsc_i_2_n_0
    );
sig_push_to_wsc_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_push_to_wsc_i_2_n_0,
      D => sig_push_to_wsc_i_2_n_0,
      Q => \^sig_push_to_wsc\,
      R => sig_push_to_wsc0
    );
sig_s_ready_dup_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00040000"
    )
        port map (
      I0 => \^gen_omit_store_forward.sig_tlast_err_stop_reg_0\,
      I1 => sig_s_ready_out_reg,
      I2 => sig_data2wsc_cmd_cmplt_i_2_n_0,
      I3 => \^sig_next_calc_error_reg\,
      I4 => sig_dqual_reg_full,
      O => sig_s_ready_dup_reg
    );
\sig_strb_reg_out[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBFFFFB8BB0000"
    )
        port map (
      I0 => sig_next_strt_strb_reg(0),
      I1 => sig_first_dbeat_reg_n_0,
      I2 => sig_next_last_strb_reg(0),
      I3 => sig_last_dbeat_reg_n_0,
      I4 => sig_s_ready_dup_reg_1,
      I5 => \sig_strb_skid_reg_reg[3]\(0),
      O => \sig_strb_reg_out_reg[3]\(0)
    );
\sig_strb_reg_out[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBFFFFB8BB0000"
    )
        port map (
      I0 => sig_next_strt_strb_reg(1),
      I1 => sig_first_dbeat_reg_n_0,
      I2 => sig_next_last_strb_reg(1),
      I3 => sig_last_dbeat_reg_n_0,
      I4 => sig_s_ready_dup_reg_1,
      I5 => \sig_strb_skid_reg_reg[3]\(1),
      O => \sig_strb_reg_out_reg[3]\(1)
    );
\sig_strb_reg_out[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBFFFFB8BB0000"
    )
        port map (
      I0 => sig_next_strt_strb_reg(2),
      I1 => sig_first_dbeat_reg_n_0,
      I2 => sig_next_last_strb_reg(2),
      I3 => sig_last_dbeat_reg_n_0,
      I4 => sig_s_ready_dup_reg_1,
      I5 => \sig_strb_skid_reg_reg[3]\(2),
      O => \sig_strb_reg_out_reg[3]\(2)
    );
\sig_strb_reg_out[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBFFFFB8BB0000"
    )
        port map (
      I0 => sig_next_strt_strb_reg(3),
      I1 => sig_first_dbeat_reg_n_0,
      I2 => sig_next_last_strb_reg(3),
      I3 => sig_last_dbeat_reg_n_0,
      I4 => sig_s_ready_dup_reg_1,
      I5 => \sig_strb_skid_reg_reg[3]\(3),
      O => \sig_strb_reg_out_reg[3]\(3)
    );
\sig_strb_skid_reg[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B8BB"
    )
        port map (
      I0 => sig_next_strt_strb_reg(0),
      I1 => sig_first_dbeat_reg_n_0,
      I2 => sig_next_last_strb_reg(0),
      I3 => sig_last_dbeat_reg_n_0,
      O => D(0)
    );
\sig_strb_skid_reg[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B8BB"
    )
        port map (
      I0 => sig_next_strt_strb_reg(1),
      I1 => sig_first_dbeat_reg_n_0,
      I2 => sig_next_last_strb_reg(1),
      I3 => sig_last_dbeat_reg_n_0,
      O => D(1)
    );
\sig_strb_skid_reg[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B8BB"
    )
        port map (
      I0 => sig_next_strt_strb_reg(2),
      I1 => sig_first_dbeat_reg_n_0,
      I2 => sig_next_last_strb_reg(2),
      I3 => sig_last_dbeat_reg_n_0,
      O => D(2)
    );
\sig_strb_skid_reg[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B8BB"
    )
        port map (
      I0 => sig_next_strt_strb_reg(3),
      I1 => sig_first_dbeat_reg_n_0,
      I2 => sig_next_last_strb_reg(3),
      I3 => sig_last_dbeat_reg_n_0,
      O => D(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_myip_burst_test_0_0_cntr_incr_decr_addn_f is
  port (
    fifo_full_p1 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    FIFO_Full_reg : out STD_LOGIC;
    \INFERRED_GEN.cnt_i_reg[2]_0\ : in STD_LOGIC;
    sig_inhibit_rdy_n_reg : in STD_LOGIC;
    sig_inhibit_rdy_n : in STD_LOGIC;
    FIFO_Full_reg_0 : in STD_LOGIC;
    m00_axi_bvalid : in STD_LOGIC;
    sig_coelsc_reg_empty : in STD_LOGIC;
    sig_data2wsc_calc_err_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    \INFERRED_GEN.cnt_i_reg[2]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC;
    m00_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_myip_burst_test_0_0_cntr_incr_decr_addn_f : entity is "cntr_incr_decr_addn_f";
end design_1_myip_burst_test_0_0_cntr_incr_decr_addn_f;

architecture STRUCTURE of design_1_myip_burst_test_0_0_cntr_incr_decr_addn_f is
  signal \INFERRED_GEN.cnt_i[1]_i_2__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.cnt_i[2]_i_2__0_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal addr_i_p1 : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \INFERRED_GEN.cnt_i[1]_i_2__0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \INFERRED_GEN.cnt_i[2]_i_1__0\ : label is "soft_lutpair23";
begin
  Q(2 downto 0) <= \^q\(2 downto 0);
\FIFO_Full_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10210200"
    )
        port map (
      I0 => \INFERRED_GEN.cnt_i_reg[2]_0\,
      I1 => \^q\(2),
      I2 => sig_inhibit_rdy_n_reg,
      I3 => \^q\(0),
      I4 => \^q\(1),
      O => fifo_full_p1
    );
\FIFO_Full_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"5D"
    )
        port map (
      I0 => sig_coelsc_reg_empty,
      I1 => \^q\(2),
      I2 => sig_data2wsc_calc_err_reg(0),
      O => FIFO_Full_reg
    );
\INFERRED_GEN.cnt_i[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EE1EEEEE11E11111"
    )
        port map (
      I0 => \INFERRED_GEN.cnt_i_reg[2]_0\,
      I1 => \^q\(2),
      I2 => sig_inhibit_rdy_n,
      I3 => FIFO_Full_reg_0,
      I4 => m00_axi_bvalid,
      I5 => \^q\(0),
      O => addr_i_p1(0)
    );
\INFERRED_GEN.cnt_i[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFFFFF20200000DF"
    )
        port map (
      I0 => m00_axi_bvalid,
      I1 => FIFO_Full_reg_0,
      I2 => sig_inhibit_rdy_n,
      I3 => \^q\(0),
      I4 => \INFERRED_GEN.cnt_i[1]_i_2__0_n_0\,
      I5 => \^q\(1),
      O => addr_i_p1(1)
    );
\INFERRED_GEN.cnt_i[1]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => sig_coelsc_reg_empty,
      I1 => \^q\(2),
      I2 => \INFERRED_GEN.cnt_i_reg[2]_1\(0),
      O => \INFERRED_GEN.cnt_i[1]_i_2__0_n_0\
    );
\INFERRED_GEN.cnt_i[2]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DD22DD42"
    )
        port map (
      I0 => \^q\(1),
      I1 => \INFERRED_GEN.cnt_i[2]_i_2__0_n_0\,
      I2 => sig_coelsc_reg_empty,
      I3 => \^q\(2),
      I4 => \INFERRED_GEN.cnt_i_reg[2]_1\(0),
      O => addr_i_p1(2)
    );
\INFERRED_GEN.cnt_i[2]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDFD54FDFDFDFDFD"
    )
        port map (
      I0 => \^q\(0),
      I1 => \INFERRED_GEN.cnt_i_reg[2]_0\,
      I2 => \^q\(2),
      I3 => sig_inhibit_rdy_n,
      I4 => FIFO_Full_reg_0,
      I5 => m00_axi_bvalid,
      O => \INFERRED_GEN.cnt_i[2]_i_2__0_n_0\
    );
\INFERRED_GEN.cnt_i_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      D => addr_i_p1(0),
      Q => \^q\(0),
      S => \out\
    );
\INFERRED_GEN.cnt_i_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      D => addr_i_p1(1),
      Q => \^q\(1),
      S => \out\
    );
\INFERRED_GEN.cnt_i_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      D => addr_i_p1(2),
      Q => \^q\(2),
      S => \out\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_myip_burst_test_0_0_cntr_incr_decr_addn_f_1 is
  port (
    fifo_full_p1 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \INFERRED_GEN.cnt_i_reg[1]_0\ : out STD_LOGIC;
    \sig_wdc_statcnt_reg[2]\ : out STD_LOGIC;
    \sig_wdc_statcnt_reg[1]\ : out STD_LOGIC;
    \sig_wdc_statcnt_reg[0]\ : out STD_LOGIC;
    \GEN_OMIT_STORE_FORWARD.sig_coelsc_reg_empty_reg\ : in STD_LOGIC;
    \GEN_OMIT_STORE_FORWARD.sig_tlast_err_stop_reg\ : in STD_LOGIC;
    sig_tlast_err_stop : in STD_LOGIC;
    sig_push_to_wsc : in STD_LOGIC;
    FIFO_Full_reg : in STD_LOGIC;
    sig_inhibit_rdy_n_reg : in STD_LOGIC;
    sig_coelsc_reg_empty : in STD_LOGIC;
    \INFERRED_GEN.cnt_i_reg[2]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    sig_wdc_statcnt : in STD_LOGIC_VECTOR ( 2 downto 0 );
    sig_rdwr_reset_reg_reg : in STD_LOGIC;
    m00_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_myip_burst_test_0_0_cntr_incr_decr_addn_f_1 : entity is "cntr_incr_decr_addn_f";
end design_1_myip_burst_test_0_0_cntr_incr_decr_addn_f_1;

architecture STRUCTURE of design_1_myip_burst_test_0_0_cntr_incr_decr_addn_f_1 is
  signal \INFERRED_GEN.cnt_i[2]_i_2_n_0\ : STD_LOGIC;
  signal \^inferred_gen.cnt_i_reg[1]_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal addr_i_p1 : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \sig_wdc_statcnt[1]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \sig_wdc_statcnt[2]_i_1\ : label is "soft_lutpair22";
begin
  \INFERRED_GEN.cnt_i_reg[1]_0\ <= \^inferred_gen.cnt_i_reg[1]_0\;
  Q(2 downto 0) <= \^q\(2 downto 0);
FIFO_Full_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10210200"
    )
        port map (
      I0 => \GEN_OMIT_STORE_FORWARD.sig_coelsc_reg_empty_reg\,
      I1 => \^q\(2),
      I2 => \GEN_OMIT_STORE_FORWARD.sig_tlast_err_stop_reg\,
      I3 => \^q\(0),
      I4 => \^q\(1),
      O => fifo_full_p1
    );
\INFERRED_GEN.cnt_i[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA9AAAAA55655555"
    )
        port map (
      I0 => \^inferred_gen.cnt_i_reg[1]_0\,
      I1 => sig_tlast_err_stop,
      I2 => sig_push_to_wsc,
      I3 => FIFO_Full_reg,
      I4 => sig_inhibit_rdy_n_reg,
      I5 => \^q\(0),
      O => addr_i_p1(0)
    );
\INFERRED_GEN.cnt_i[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BAFF"
    )
        port map (
      I0 => \^q\(2),
      I1 => \out\(0),
      I2 => \INFERRED_GEN.cnt_i_reg[2]_0\(0),
      I3 => sig_coelsc_reg_empty,
      O => \^inferred_gen.cnt_i_reg[1]_0\
    );
\INFERRED_GEN.cnt_i[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DB24"
    )
        port map (
      I0 => \^q\(0),
      I1 => \GEN_OMIT_STORE_FORWARD.sig_tlast_err_stop_reg\,
      I2 => \^inferred_gen.cnt_i_reg[1]_0\,
      I3 => \^q\(1),
      O => addr_i_p1(1)
    );
\INFERRED_GEN.cnt_i[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FFA2005DFF00"
    )
        port map (
      I0 => sig_coelsc_reg_empty,
      I1 => \INFERRED_GEN.cnt_i_reg[2]_0\(0),
      I2 => \out\(0),
      I3 => \^q\(2),
      I4 => \^q\(1),
      I5 => \INFERRED_GEN.cnt_i[2]_i_2_n_0\,
      O => addr_i_p1(2)
    );
\INFERRED_GEN.cnt_i[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFF0000FFFFFBFF"
    )
        port map (
      I0 => sig_tlast_err_stop,
      I1 => sig_push_to_wsc,
      I2 => FIFO_Full_reg,
      I3 => sig_inhibit_rdy_n_reg,
      I4 => \^inferred_gen.cnt_i_reg[1]_0\,
      I5 => \^q\(0),
      O => \INFERRED_GEN.cnt_i[2]_i_2_n_0\
    );
\INFERRED_GEN.cnt_i_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      D => addr_i_p1(0),
      Q => \^q\(0),
      S => sig_rdwr_reset_reg_reg
    );
\INFERRED_GEN.cnt_i_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      D => addr_i_p1(1),
      Q => \^q\(1),
      S => sig_rdwr_reset_reg_reg
    );
\INFERRED_GEN.cnt_i_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      D => addr_i_p1(2),
      Q => \^q\(2),
      S => sig_rdwr_reset_reg_reg
    );
\sig_wdc_statcnt[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA5D54AA"
    )
        port map (
      I0 => \^inferred_gen.cnt_i_reg[1]_0\,
      I1 => sig_wdc_statcnt(1),
      I2 => sig_wdc_statcnt(2),
      I3 => \GEN_OMIT_STORE_FORWARD.sig_tlast_err_stop_reg\,
      I4 => sig_wdc_statcnt(0),
      O => \sig_wdc_statcnt_reg[0]\
    );
\sig_wdc_statcnt[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B5F0F058"
    )
        port map (
      I0 => \GEN_OMIT_STORE_FORWARD.sig_tlast_err_stop_reg\,
      I1 => sig_wdc_statcnt(2),
      I2 => sig_wdc_statcnt(1),
      I3 => sig_wdc_statcnt(0),
      I4 => \^inferred_gen.cnt_i_reg[1]_0\,
      O => \sig_wdc_statcnt_reg[1]\
    );
\sig_wdc_statcnt[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8CCCCCC4"
    )
        port map (
      I0 => \GEN_OMIT_STORE_FORWARD.sig_tlast_err_stop_reg\,
      I1 => sig_wdc_statcnt(2),
      I2 => sig_wdc_statcnt(1),
      I3 => sig_wdc_statcnt(0),
      I4 => \^inferred_gen.cnt_i_reg[1]_0\,
      O => \sig_wdc_statcnt_reg[2]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_myip_burst_test_0_0_dynshreg_f is
  port (
    \GEN_OMIT_STORE_FORWARD.sig_coelsc_decerr_reg_reg\ : out STD_LOGIC;
    \GEN_OMIT_STORE_FORWARD.sig_coelsc_slverr_reg_reg\ : out STD_LOGIC;
    sig_data2wsc_calc_err_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    sig_wsc2stat_status : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m00_axi_bvalid : in STD_LOGIC;
    FIFO_Full_reg : in STD_LOGIC;
    sig_inhibit_rdy_n : in STD_LOGIC;
    m00_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    addr : in STD_LOGIC_VECTOR ( 0 to 1 );
    m00_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_myip_burst_test_0_0_dynshreg_f : entity is "dynshreg_f";
end design_1_myip_burst_test_0_0_dynshreg_f;

architecture STRUCTURE of design_1_myip_burst_test_0_0_dynshreg_f is
  signal sig_wr_fifo : STD_LOGIC;
  signal sig_wresp_sfifo_out : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \GEN_OMIT_STORE_FORWARD.sig_coelsc_decerr_reg_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \GEN_OMIT_STORE_FORWARD.sig_coelsc_slverr_reg_i_1\ : label is "soft_lutpair24";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \INFERRED_GEN.data_reg[2][0]_srl3\ : label is "\inst/myip_burst_test_v1_0_M00_AXI_inst/I_RD_WR_CNTRL_MODULE/I_WR_STATUS_CNTLR/I_WRESP_STATUS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[2] ";
  attribute srl_name : string;
  attribute srl_name of \INFERRED_GEN.data_reg[2][0]_srl3\ : label is "\inst/myip_burst_test_v1_0_M00_AXI_inst/I_RD_WR_CNTRL_MODULE/I_WR_STATUS_CNTLR/I_WRESP_STATUS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[2][0]_srl3 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[2][1]_srl3\ : label is "\inst/myip_burst_test_v1_0_M00_AXI_inst/I_RD_WR_CNTRL_MODULE/I_WR_STATUS_CNTLR/I_WRESP_STATUS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[2] ";
  attribute srl_name of \INFERRED_GEN.data_reg[2][1]_srl3\ : label is "\inst/myip_burst_test_v1_0_M00_AXI_inst/I_RD_WR_CNTRL_MODULE/I_WR_STATUS_CNTLR/I_WRESP_STATUS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[2][1]_srl3 ";
begin
\GEN_OMIT_STORE_FORWARD.sig_coelsc_decerr_reg_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5444"
    )
        port map (
      I0 => sig_data2wsc_calc_err_reg(0),
      I1 => sig_wsc2stat_status(0),
      I2 => sig_wresp_sfifo_out(1),
      I3 => sig_wresp_sfifo_out(0),
      O => \GEN_OMIT_STORE_FORWARD.sig_coelsc_decerr_reg_reg\
    );
\GEN_OMIT_STORE_FORWARD.sig_coelsc_slverr_reg_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4544"
    )
        port map (
      I0 => sig_data2wsc_calc_err_reg(0),
      I1 => sig_wsc2stat_status(1),
      I2 => sig_wresp_sfifo_out(0),
      I3 => sig_wresp_sfifo_out(1),
      O => \GEN_OMIT_STORE_FORWARD.sig_coelsc_slverr_reg_reg\
    );
\INFERRED_GEN.data_reg[2][0]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr(1),
      A1 => addr(0),
      A2 => '0',
      A3 => '0',
      CE => sig_wr_fifo,
      CLK => m00_axi_aclk,
      D => m00_axi_bresp(0),
      Q => sig_wresp_sfifo_out(0)
    );
\INFERRED_GEN.data_reg[2][0]_srl3_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => m00_axi_bvalid,
      I1 => FIFO_Full_reg,
      I2 => sig_inhibit_rdy_n,
      O => sig_wr_fifo
    );
\INFERRED_GEN.data_reg[2][1]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr(1),
      A1 => addr(0),
      A2 => '0',
      A3 => '0',
      CE => sig_wr_fifo,
      CLK => m00_axi_aclk,
      D => m00_axi_bresp(1),
      Q => sig_wresp_sfifo_out(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_myip_burst_test_0_0_dynshreg_f__parameterized0\ is
  port (
    p_0_in : out STD_LOGIC;
    \GEN_OMIT_STORE_FORWARD.sig_coelsc_interr_reg_reg\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    sig_push_coelsc_reg : out STD_LOGIC;
    p_4_out : out STD_LOGIC;
    sig_inhibit_rdy_n_reg : in STD_LOGIC;
    FIFO_Full_reg : in STD_LOGIC;
    sig_push_to_wsc : in STD_LOGIC;
    sig_tlast_err_stop : in STD_LOGIC;
    sig_coelsc_reg_empty : in STD_LOGIC;
    \INFERRED_GEN.cnt_i_reg[2]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    sig_wsc2stat_status : in STD_LOGIC_VECTOR ( 0 to 0 );
    \in\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m00_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_myip_burst_test_0_0_dynshreg_f__parameterized0\ : entity is "dynshreg_f";
end \design_1_myip_burst_test_0_0_dynshreg_f__parameterized0\;

architecture STRUCTURE of \design_1_myip_burst_test_0_0_dynshreg_f__parameterized0\ is
  signal \^gen_omit_store_forward.sig_coelsc_interr_reg_reg\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal sig_dcntl_sfifo_out : STD_LOGIC_VECTOR ( 1 to 1 );
  signal sig_wr_fifo : STD_LOGIC;
  attribute srl_bus_name : string;
  attribute srl_bus_name of \INFERRED_GEN.data_reg[2][0]_srl3\ : label is "\inst/myip_burst_test_v1_0_M00_AXI_inst/I_RD_WR_CNTRL_MODULE/I_WR_STATUS_CNTLR/GEN_OMIT_STORE_FORWARD.I_DATA_CNTL_STATUS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[2] ";
  attribute srl_name : string;
  attribute srl_name of \INFERRED_GEN.data_reg[2][0]_srl3\ : label is "\inst/myip_burst_test_v1_0_M00_AXI_inst/I_RD_WR_CNTRL_MODULE/I_WR_STATUS_CNTLR/GEN_OMIT_STORE_FORWARD.I_DATA_CNTL_STATUS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[2][0]_srl3 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[2][1]_srl3\ : label is "\inst/myip_burst_test_v1_0_M00_AXI_inst/I_RD_WR_CNTRL_MODULE/I_WR_STATUS_CNTLR/GEN_OMIT_STORE_FORWARD.I_DATA_CNTL_STATUS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[2] ";
  attribute srl_name of \INFERRED_GEN.data_reg[2][1]_srl3\ : label is "\inst/myip_burst_test_v1_0_M00_AXI_inst/I_RD_WR_CNTRL_MODULE/I_WR_STATUS_CNTLR/GEN_OMIT_STORE_FORWARD.I_DATA_CNTL_STATUS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[2][1]_srl3 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[2][2]_srl3\ : label is "\inst/myip_burst_test_v1_0_M00_AXI_inst/I_RD_WR_CNTRL_MODULE/I_WR_STATUS_CNTLR/GEN_OMIT_STORE_FORWARD.I_DATA_CNTL_STATUS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[2] ";
  attribute srl_name of \INFERRED_GEN.data_reg[2][2]_srl3\ : label is "\inst/myip_burst_test_v1_0_M00_AXI_inst/I_RD_WR_CNTRL_MODULE/I_WR_STATUS_CNTLR/GEN_OMIT_STORE_FORWARD.I_DATA_CNTL_STATUS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[2][2]_srl3 ";
begin
  \GEN_OMIT_STORE_FORWARD.sig_coelsc_interr_reg_reg\(1 downto 0) <= \^gen_omit_store_forward.sig_coelsc_interr_reg_reg\(1 downto 0);
\GEN_OMIT_STORE_FORWARD.sig_coelsc_interr_reg_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => sig_dcntl_sfifo_out(1),
      I1 => sig_wsc2stat_status(0),
      I2 => \^gen_omit_store_forward.sig_coelsc_interr_reg_reg\(1),
      O => p_4_out
    );
\GEN_OMIT_STORE_FORWARD.sig_coelsc_reg_empty_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00A2"
    )
        port map (
      I0 => sig_coelsc_reg_empty,
      I1 => \INFERRED_GEN.cnt_i_reg[2]\(0),
      I2 => \^gen_omit_store_forward.sig_coelsc_interr_reg_reg\(1),
      I3 => Q(2),
      O => sig_push_coelsc_reg
    );
\GEN_OMIT_STORE_FORWARD.sig_coelsc_reg_empty_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^gen_omit_store_forward.sig_coelsc_interr_reg_reg\(0),
      O => p_0_in
    );
\INFERRED_GEN.data_reg[2][0]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => sig_wr_fifo,
      CLK => m00_axi_aclk,
      D => \in\(0),
      Q => \^gen_omit_store_forward.sig_coelsc_interr_reg_reg\(0)
    );
\INFERRED_GEN.data_reg[2][0]_srl3_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => sig_inhibit_rdy_n_reg,
      I1 => FIFO_Full_reg,
      I2 => sig_push_to_wsc,
      I3 => sig_tlast_err_stop,
      O => sig_wr_fifo
    );
\INFERRED_GEN.data_reg[2][1]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => sig_wr_fifo,
      CLK => m00_axi_aclk,
      D => \in\(1),
      Q => sig_dcntl_sfifo_out(1)
    );
\INFERRED_GEN.data_reg[2][2]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => sig_wr_fifo,
      CLK => m00_axi_aclk,
      D => \in\(2),
      Q => \^gen_omit_store_forward.sig_coelsc_interr_reg_reg\(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_myip_burst_test_0_0_myip_burst_test_v1_0_S00_AXI is
  port (
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    slave_reg_0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    slave_reg_1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 12 downto 0 );
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    pwm : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_myip_burst_test_0_0_myip_burst_test_v1_0_S00_AXI : entity is "myip_burst_test_v1_0_S00_AXI";
end design_1_myip_burst_test_0_0_myip_burst_test_v1_0_S00_AXI;

architecture STRUCTURE of design_1_myip_burst_test_0_0_myip_burst_test_v1_0_S00_AXI is
  signal \^q\ : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal aw_en_i_1_n_0 : STD_LOGIC;
  signal aw_en_reg_n_0 : STD_LOGIC;
  signal axi_araddr : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_arready_i_1_n_0 : STD_LOGIC;
  signal \axi_awaddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 7 );
  signal reg_data_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s00_axi_arready\ : STD_LOGIC;
  signal \^s00_axi_awready\ : STD_LOGIC;
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \^s00_axi_rvalid\ : STD_LOGIC;
  signal \^s00_axi_wready\ : STD_LOGIC;
  signal \^slave_reg_0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^slave_reg_1\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg0[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[1]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[9]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[15]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[16]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[17]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[18]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[19]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[20]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[21]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[22]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[23]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[24]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[25]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[26]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[27]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[28]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[29]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[30]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[31]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[3]\ : STD_LOGIC;
  signal slv_reg3 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg3[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_rden__0\ : STD_LOGIC;
  signal \slv_reg_wren__0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \axi_araddr[2]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of axi_awready_i_1 : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair29";
begin
  Q(12 downto 0) <= \^q\(12 downto 0);
  s00_axi_arready <= \^s00_axi_arready\;
  s00_axi_awready <= \^s00_axi_awready\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  s00_axi_rvalid <= \^s00_axi_rvalid\;
  s00_axi_wready <= \^s00_axi_wready\;
  slave_reg_0(31 downto 0) <= \^slave_reg_0\(31 downto 0);
  slave_reg_1(31 downto 0) <= \^slave_reg_1\(31 downto 0);
aw_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFC4CCC4CCC4CC"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => aw_en_reg_n_0,
      I2 => \^s00_axi_awready\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_bready,
      I5 => \^s00_axi_bvalid\,
      O => aw_en_i_1_n_0
    );
aw_en_reg: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => aw_en_i_1_n_0,
      Q => aw_en_reg_n_0,
      S => \slv_reg0[31]_i_1_n_0\
    );
\axi_araddr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(0),
      I1 => s00_axi_arvalid,
      I2 => \^s00_axi_arready\,
      I3 => axi_araddr(2),
      O => \axi_araddr[2]_i_1_n_0\
    );
\axi_araddr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(1),
      I1 => s00_axi_arvalid,
      I2 => \^s00_axi_arready\,
      I3 => axi_araddr(3),
      O => \axi_araddr[3]_i_1_n_0\
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[2]_i_1_n_0\,
      Q => axi_araddr(2),
      R => \slv_reg0[31]_i_1_n_0\
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[3]_i_1_n_0\,
      Q => axi_araddr(3),
      R => \slv_reg0[31]_i_1_n_0\
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s00_axi_arready\,
      O => axi_arready_i_1_n_0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_arready_i_1_n_0,
      Q => \^s00_axi_arready\,
      R => \slv_reg0[31]_i_1_n_0\
    );
\axi_awaddr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF08000000"
    )
        port map (
      I0 => s00_axi_awaddr(0),
      I1 => s00_axi_awvalid,
      I2 => \^s00_axi_awready\,
      I3 => aw_en_reg_n_0,
      I4 => s00_axi_wvalid,
      I5 => p_0_in(0),
      O => \axi_awaddr[2]_i_1_n_0\
    );
\axi_awaddr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF08000000"
    )
        port map (
      I0 => s00_axi_awaddr(1),
      I1 => s00_axi_awvalid,
      I2 => \^s00_axi_awready\,
      I3 => aw_en_reg_n_0,
      I4 => s00_axi_wvalid,
      I5 => p_0_in(1),
      O => \axi_awaddr[3]_i_1_n_0\
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[2]_i_1_n_0\,
      Q => p_0_in(0),
      R => \slv_reg0[31]_i_1_n_0\
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[3]_i_1_n_0\,
      Q => p_0_in(1),
      R => \slv_reg0[31]_i_1_n_0\
    );
axi_awready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => \^s00_axi_awready\,
      I2 => aw_en_reg_n_0,
      I3 => s00_axi_wvalid,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awready0,
      Q => \^s00_axi_awready\,
      R => \slv_reg0[31]_i_1_n_0\
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF80008000"
    )
        port map (
      I0 => \^s00_axi_wready\,
      I1 => \^s00_axi_awready\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_wvalid,
      I4 => s00_axi_bready,
      I5 => \^s00_axi_bvalid\,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s00_axi_bvalid\,
      R => \slv_reg0[31]_i_1_n_0\
    );
\axi_rdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \^slave_reg_1\(0),
      I1 => \^slave_reg_0\(0),
      I2 => slv_reg3(0),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => pwm,
      O => reg_data_out(0)
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \^slave_reg_1\(10),
      I1 => \^slave_reg_0\(10),
      I2 => slv_reg3(10),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \^q\(8),
      O => reg_data_out(10)
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \^slave_reg_1\(11),
      I1 => \^slave_reg_0\(11),
      I2 => slv_reg3(11),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \^q\(9),
      O => reg_data_out(11)
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \^slave_reg_1\(12),
      I1 => \^slave_reg_0\(12),
      I2 => slv_reg3(12),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \^q\(10),
      O => reg_data_out(12)
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \^slave_reg_1\(13),
      I1 => \^slave_reg_0\(13),
      I2 => slv_reg3(13),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \^q\(11),
      O => reg_data_out(13)
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \^slave_reg_1\(14),
      I1 => \^slave_reg_0\(14),
      I2 => slv_reg3(14),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \^q\(12),
      O => reg_data_out(14)
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \^slave_reg_1\(15),
      I1 => \^slave_reg_0\(15),
      I2 => slv_reg3(15),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg2_reg_n_0_[15]\,
      O => reg_data_out(15)
    );
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \^slave_reg_1\(16),
      I1 => \^slave_reg_0\(16),
      I2 => slv_reg3(16),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg2_reg_n_0_[16]\,
      O => reg_data_out(16)
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \^slave_reg_1\(17),
      I1 => \^slave_reg_0\(17),
      I2 => slv_reg3(17),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg2_reg_n_0_[17]\,
      O => reg_data_out(17)
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \^slave_reg_1\(18),
      I1 => \^slave_reg_0\(18),
      I2 => slv_reg3(18),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg2_reg_n_0_[18]\,
      O => reg_data_out(18)
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \^slave_reg_1\(19),
      I1 => \^slave_reg_0\(19),
      I2 => slv_reg3(19),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg2_reg_n_0_[19]\,
      O => reg_data_out(19)
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \^slave_reg_1\(1),
      I1 => \^slave_reg_0\(1),
      I2 => slv_reg3(1),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \^q\(0),
      O => reg_data_out(1)
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \^slave_reg_1\(20),
      I1 => \^slave_reg_0\(20),
      I2 => slv_reg3(20),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg2_reg_n_0_[20]\,
      O => reg_data_out(20)
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \^slave_reg_1\(21),
      I1 => \^slave_reg_0\(21),
      I2 => slv_reg3(21),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg2_reg_n_0_[21]\,
      O => reg_data_out(21)
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \^slave_reg_1\(22),
      I1 => \^slave_reg_0\(22),
      I2 => slv_reg3(22),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg2_reg_n_0_[22]\,
      O => reg_data_out(22)
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \^slave_reg_1\(23),
      I1 => \^slave_reg_0\(23),
      I2 => slv_reg3(23),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg2_reg_n_0_[23]\,
      O => reg_data_out(23)
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \^slave_reg_1\(24),
      I1 => \^slave_reg_0\(24),
      I2 => slv_reg3(24),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg2_reg_n_0_[24]\,
      O => reg_data_out(24)
    );
\axi_rdata[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \^slave_reg_1\(25),
      I1 => \^slave_reg_0\(25),
      I2 => slv_reg3(25),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg2_reg_n_0_[25]\,
      O => reg_data_out(25)
    );
\axi_rdata[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \^slave_reg_1\(26),
      I1 => \^slave_reg_0\(26),
      I2 => slv_reg3(26),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg2_reg_n_0_[26]\,
      O => reg_data_out(26)
    );
\axi_rdata[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \^slave_reg_1\(27),
      I1 => \^slave_reg_0\(27),
      I2 => slv_reg3(27),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg2_reg_n_0_[27]\,
      O => reg_data_out(27)
    );
\axi_rdata[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \^slave_reg_1\(28),
      I1 => \^slave_reg_0\(28),
      I2 => slv_reg3(28),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg2_reg_n_0_[28]\,
      O => reg_data_out(28)
    );
\axi_rdata[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \^slave_reg_1\(29),
      I1 => \^slave_reg_0\(29),
      I2 => slv_reg3(29),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg2_reg_n_0_[29]\,
      O => reg_data_out(29)
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \^slave_reg_1\(2),
      I1 => \^slave_reg_0\(2),
      I2 => slv_reg3(2),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \^q\(1),
      O => reg_data_out(2)
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \^slave_reg_1\(30),
      I1 => \^slave_reg_0\(30),
      I2 => slv_reg3(30),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg2_reg_n_0_[30]\,
      O => reg_data_out(30)
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \^slave_reg_1\(31),
      I1 => \^slave_reg_0\(31),
      I2 => slv_reg3(31),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg2_reg_n_0_[31]\,
      O => reg_data_out(31)
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \^slave_reg_1\(3),
      I1 => \^slave_reg_0\(3),
      I2 => slv_reg3(3),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg2_reg_n_0_[3]\,
      O => reg_data_out(3)
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \^slave_reg_1\(4),
      I1 => \^slave_reg_0\(4),
      I2 => slv_reg3(4),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \^q\(2),
      O => reg_data_out(4)
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \^slave_reg_1\(5),
      I1 => \^slave_reg_0\(5),
      I2 => slv_reg3(5),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \^q\(3),
      O => reg_data_out(5)
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \^slave_reg_1\(6),
      I1 => \^slave_reg_0\(6),
      I2 => slv_reg3(6),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \^q\(4),
      O => reg_data_out(6)
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \^slave_reg_1\(7),
      I1 => \^slave_reg_0\(7),
      I2 => slv_reg3(7),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \^q\(5),
      O => reg_data_out(7)
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \^slave_reg_1\(8),
      I1 => \^slave_reg_0\(8),
      I2 => slv_reg3(8),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \^q\(6),
      O => reg_data_out(8)
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \^slave_reg_1\(9),
      I1 => \^slave_reg_0\(9),
      I2 => slv_reg3(9),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \^q\(7),
      O => reg_data_out(9)
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(0),
      Q => s00_axi_rdata(0),
      R => \slv_reg0[31]_i_1_n_0\
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(10),
      Q => s00_axi_rdata(10),
      R => \slv_reg0[31]_i_1_n_0\
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(11),
      Q => s00_axi_rdata(11),
      R => \slv_reg0[31]_i_1_n_0\
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(12),
      Q => s00_axi_rdata(12),
      R => \slv_reg0[31]_i_1_n_0\
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(13),
      Q => s00_axi_rdata(13),
      R => \slv_reg0[31]_i_1_n_0\
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(14),
      Q => s00_axi_rdata(14),
      R => \slv_reg0[31]_i_1_n_0\
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(15),
      Q => s00_axi_rdata(15),
      R => \slv_reg0[31]_i_1_n_0\
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(16),
      Q => s00_axi_rdata(16),
      R => \slv_reg0[31]_i_1_n_0\
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(17),
      Q => s00_axi_rdata(17),
      R => \slv_reg0[31]_i_1_n_0\
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(18),
      Q => s00_axi_rdata(18),
      R => \slv_reg0[31]_i_1_n_0\
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(19),
      Q => s00_axi_rdata(19),
      R => \slv_reg0[31]_i_1_n_0\
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(1),
      Q => s00_axi_rdata(1),
      R => \slv_reg0[31]_i_1_n_0\
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(20),
      Q => s00_axi_rdata(20),
      R => \slv_reg0[31]_i_1_n_0\
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(21),
      Q => s00_axi_rdata(21),
      R => \slv_reg0[31]_i_1_n_0\
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(22),
      Q => s00_axi_rdata(22),
      R => \slv_reg0[31]_i_1_n_0\
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(23),
      Q => s00_axi_rdata(23),
      R => \slv_reg0[31]_i_1_n_0\
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(24),
      Q => s00_axi_rdata(24),
      R => \slv_reg0[31]_i_1_n_0\
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(25),
      Q => s00_axi_rdata(25),
      R => \slv_reg0[31]_i_1_n_0\
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(26),
      Q => s00_axi_rdata(26),
      R => \slv_reg0[31]_i_1_n_0\
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(27),
      Q => s00_axi_rdata(27),
      R => \slv_reg0[31]_i_1_n_0\
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(28),
      Q => s00_axi_rdata(28),
      R => \slv_reg0[31]_i_1_n_0\
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(29),
      Q => s00_axi_rdata(29),
      R => \slv_reg0[31]_i_1_n_0\
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(2),
      Q => s00_axi_rdata(2),
      R => \slv_reg0[31]_i_1_n_0\
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(30),
      Q => s00_axi_rdata(30),
      R => \slv_reg0[31]_i_1_n_0\
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(31),
      Q => s00_axi_rdata(31),
      R => \slv_reg0[31]_i_1_n_0\
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(3),
      Q => s00_axi_rdata(3),
      R => \slv_reg0[31]_i_1_n_0\
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(4),
      Q => s00_axi_rdata(4),
      R => \slv_reg0[31]_i_1_n_0\
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(5),
      Q => s00_axi_rdata(5),
      R => \slv_reg0[31]_i_1_n_0\
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(6),
      Q => s00_axi_rdata(6),
      R => \slv_reg0[31]_i_1_n_0\
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(7),
      Q => s00_axi_rdata(7),
      R => \slv_reg0[31]_i_1_n_0\
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(8),
      Q => s00_axi_rdata(8),
      R => \slv_reg0[31]_i_1_n_0\
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(9),
      Q => s00_axi_rdata(9),
      R => \slv_reg0[31]_i_1_n_0\
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08F8"
    )
        port map (
      I0 => \^s00_axi_arready\,
      I1 => s00_axi_arvalid,
      I2 => \^s00_axi_rvalid\,
      I3 => s00_axi_rready,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^s00_axi_rvalid\,
      R => \slv_reg0[31]_i_1_n_0\
    );
axi_wready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^s00_axi_wready\,
      I1 => s00_axi_wvalid,
      I2 => s00_axi_awvalid,
      I3 => aw_en_reg_n_0,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_wready0,
      Q => \^s00_axi_wready\,
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg0[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => s00_axi_wstrb(1),
      O => p_1_in(15)
    );
\slv_reg0[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => s00_axi_wstrb(2),
      O => p_1_in(23)
    );
\slv_reg0[31]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg0[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => s00_axi_wstrb(3),
      O => p_1_in(31)
    );
\slv_reg0[31]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^s00_axi_wready\,
      I1 => \^s00_axi_awready\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_wvalid,
      O => \slv_reg_wren__0\
    );
\slv_reg0[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => s00_axi_wstrb(0),
      O => p_1_in(7)
    );
\slv_reg0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(0),
      Q => \^slave_reg_0\(0),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(10),
      Q => \^slave_reg_0\(10),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(11),
      Q => \^slave_reg_0\(11),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(12),
      Q => \^slave_reg_0\(12),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(13),
      Q => \^slave_reg_0\(13),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(14),
      Q => \^slave_reg_0\(14),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(15),
      Q => \^slave_reg_0\(15),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg0_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(16),
      Q => \^slave_reg_0\(16),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg0_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(17),
      Q => \^slave_reg_0\(17),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg0_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(18),
      Q => \^slave_reg_0\(18),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg0_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(19),
      Q => \^slave_reg_0\(19),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(1),
      Q => \^slave_reg_0\(1),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg0_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(20),
      Q => \^slave_reg_0\(20),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg0_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(21),
      Q => \^slave_reg_0\(21),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg0_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(22),
      Q => \^slave_reg_0\(22),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg0_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(23),
      Q => \^slave_reg_0\(23),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg0_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(24),
      Q => \^slave_reg_0\(24),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg0_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(25),
      Q => \^slave_reg_0\(25),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg0_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(26),
      Q => \^slave_reg_0\(26),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg0_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(27),
      Q => \^slave_reg_0\(27),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg0_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(28),
      Q => \^slave_reg_0\(28),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg0_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(29),
      Q => \^slave_reg_0\(29),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(2),
      Q => \^slave_reg_0\(2),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg0_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(30),
      Q => \^slave_reg_0\(30),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg0_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(31),
      Q => \^slave_reg_0\(31),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(3),
      Q => \^slave_reg_0\(3),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(4),
      Q => \^slave_reg_0\(4),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(5),
      Q => \^slave_reg_0\(5),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(6),
      Q => \^slave_reg_0\(6),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(7),
      Q => \^slave_reg_0\(7),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(8),
      Q => \^slave_reg_0\(8),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(9),
      Q => \^slave_reg_0\(9),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg1[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(1),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => \slv_reg1[15]_i_1_n_0\
    );
\slv_reg1[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(2),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => \slv_reg1[23]_i_1_n_0\
    );
\slv_reg1[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(3),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => \slv_reg1[31]_i_1_n_0\
    );
\slv_reg1[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(0),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => \slv_reg1[7]_i_1_n_0\
    );
\slv_reg1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => \^slave_reg_1\(0),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => \^slave_reg_1\(10),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => \^slave_reg_1\(11),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => \^slave_reg_1\(12),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => \^slave_reg_1\(13),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => \^slave_reg_1\(14),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => \^slave_reg_1\(15),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => \^slave_reg_1\(16),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => \^slave_reg_1\(17),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => \^slave_reg_1\(18),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => \^slave_reg_1\(19),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => \^slave_reg_1\(1),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => \^slave_reg_1\(20),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => \^slave_reg_1\(21),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => \^slave_reg_1\(22),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => \^slave_reg_1\(23),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => \^slave_reg_1\(24),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => \^slave_reg_1\(25),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => \^slave_reg_1\(26),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => \^slave_reg_1\(27),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => \^slave_reg_1\(28),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => \^slave_reg_1\(29),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \^slave_reg_1\(2),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => \^slave_reg_1\(30),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => \^slave_reg_1\(31),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \^slave_reg_1\(3),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => \^slave_reg_1\(4),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \^slave_reg_1\(5),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \^slave_reg_1\(6),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => \^slave_reg_1\(7),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => \^slave_reg_1\(8),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => \^slave_reg_1\(9),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg2[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(0),
      I3 => p_0_in(0),
      O => \slv_reg2[1]_i_1_n_0\
    );
\slv_reg2[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(2),
      I3 => p_0_in(0),
      O => \slv_reg2[23]_i_1_n_0\
    );
\slv_reg2[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(3),
      I3 => p_0_in(0),
      O => \slv_reg2[31]_i_1_n_0\
    );
\slv_reg2[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(1),
      I3 => p_0_in(0),
      O => \slv_reg2[9]_i_1_n_0\
    );
\slv_reg2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[9]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => \^q\(8),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[9]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => \^q\(9),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[9]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => \^q\(10),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[9]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => \^q\(11),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[9]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => \^q\(12),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[9]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => \slv_reg2_reg_n_0_[15]\,
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg2_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => \slv_reg2_reg_n_0_[16]\,
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg2_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => \slv_reg2_reg_n_0_[17]\,
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg2_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => \slv_reg2_reg_n_0_[18]\,
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg2_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => \slv_reg2_reg_n_0_[19]\,
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[1]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => \^q\(0),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg2_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => \slv_reg2_reg_n_0_[20]\,
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg2_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => \slv_reg2_reg_n_0_[21]\,
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg2_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => \slv_reg2_reg_n_0_[22]\,
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg2_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => \slv_reg2_reg_n_0_[23]\,
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg2_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => \slv_reg2_reg_n_0_[24]\,
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg2_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => \slv_reg2_reg_n_0_[25]\,
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg2_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => \slv_reg2_reg_n_0_[26]\,
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg2_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => \slv_reg2_reg_n_0_[27]\,
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg2_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => \slv_reg2_reg_n_0_[28]\,
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg2_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => \slv_reg2_reg_n_0_[29]\,
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[1]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \^q\(1),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg2_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => \slv_reg2_reg_n_0_[30]\,
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg2_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => \slv_reg2_reg_n_0_[31]\,
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[1]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \slv_reg2_reg_n_0_[3]\,
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[1]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => \^q\(2),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[1]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \^q\(3),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[1]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \^q\(4),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[1]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => \^q\(5),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[9]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => \^q\(6),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[9]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => \^q\(7),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg3[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(1),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => \slv_reg3[15]_i_1_n_0\
    );
\slv_reg3[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(2),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => \slv_reg3[23]_i_1_n_0\
    );
\slv_reg3[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(3),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => \slv_reg3[31]_i_1_n_0\
    );
\slv_reg3[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(0),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => \slv_reg3[7]_i_1_n_0\
    );
\slv_reg3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg3(0),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg3_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg3(10),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg3_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg3(11),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg3_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg3(12),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg3_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg3(13),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg3_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg3(14),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg3_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg3(15),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg3_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg3(16),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg3_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg3(17),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg3_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg3(18),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg3_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg3(19),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg3(1),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg3_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg3(20),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg3_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg3(21),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg3_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg3(22),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg3_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg3(23),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg3_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg3(24),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg3_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg3(25),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg3_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg3(26),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg3_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg3(27),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg3_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg3(28),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg3_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg3(29),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg3(2),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg3_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg3(30),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg3_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg3(31),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg3(3),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg3(4),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg3(5),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg3(6),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg3(7),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg3_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg3(8),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg3_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg3(9),
      R => \slv_reg0[31]_i_1_n_0\
    );
slv_reg_rden: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^s00_axi_rvalid\,
      I1 => s00_axi_arvalid,
      I2 => \^s00_axi_arready\,
      O => \slv_reg_rden__0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_myip_burst_test_0_0_axi_master_burst_pcc is
  port (
    sig_pcc2addr_burst : out STD_LOGIC_VECTOR ( 0 to 0 );
    sig_pcc2data_cmd_cmplt : out STD_LOGIC;
    sig_pcc2data_calc_error : out STD_LOGIC;
    sig_pcc2data_eof : out STD_LOGIC;
    sig_pcc2data_sequential : out STD_LOGIC;
    sig_pcc2addr_cmd_valid : out STD_LOGIC;
    sig_pcc2data_cmd_valid : out STD_LOGIC;
    sig_btt_cntr0 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    sig_input_reg_empty_reg_0 : out STD_LOGIC;
    sig_cmd_full_reg_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_ADDR_32.sig_addr_cntr_msh_reg[7]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \GEN_ADDR_32.sig_addr_cntr_msh_reg[11]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \GEN_ADDR_32.sig_addr_cntr_msh_reg[15]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    DI : out STD_LOGIC_VECTOR ( 0 to 0 );
    sig_pcc_taking_command : out STD_LOGIC;
    \sig_xfer_end_strb_reg_reg[0]_0\ : out STD_LOGIC;
    p_1_in : out STD_LOGIC;
    \sig_next_len_reg_reg[3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \GEN_ADDR_32.sig_addr_cntr_lsh_reg[1]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \sig_next_addr_reg_reg[31]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \sig_next_strt_strb_reg_reg[3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \sig_next_last_strb_reg_reg[3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \out\ : in STD_LOGIC;
    m00_axi_aclk : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    O : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \sig_cmd_mst_addr_reg[23]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \sig_cmd_mst_addr_reg[27]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \sig_cmd_mst_addr_reg[31]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 29 downto 0 );
    sig_cmd2pcc_cmd_valid : in STD_LOGIC;
    sig_push_addr_reg1_out : in STD_LOGIC;
    sig_btt_is_zero : in STD_LOGIC;
    sig_wdc2pcc_cmd_ready : in STD_LOGIC;
    sig_cmd_reset_reg_reg : in STD_LOGIC;
    sig_push_cmd_reg : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 1 downto 0 );
    sig_cmd_type_req_reg : in STD_LOGIC_VECTOR ( 11 downto 0 );
    sig_rdwr_reset_reg_reg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_myip_burst_test_0_0_axi_master_burst_pcc : entity is "axi_master_burst_pcc";
end design_1_myip_burst_test_0_0_axi_master_burst_pcc;

architecture STRUCTURE of design_1_myip_burst_test_0_0_axi_master_burst_pcc is
  signal \FSM_sequential_sig_pcc_sm_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_sig_pcc_sm_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_sig_pcc_sm_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_sig_pcc_sm_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_addr_cntr_incr_imreg[0]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_addr_cntr_incr_imreg[0]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_addr_cntr_incr_imreg[1]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_addr_cntr_incr_imreg[2]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_addr_cntr_incr_imreg[2]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_addr_cntr_incr_imreg[3]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_addr_cntr_incr_imreg[3]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_addr_cntr_incr_imreg[4]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_addr_cntr_incr_imreg[4]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_addr_cntr_incr_imreg[5]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_addr_cntr_incr_imreg[5]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_addr_cntr_msh_reg\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \GEN_ADDR_32.sig_adjusted_addr_incr_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_adjusted_addr_incr_reg[5]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_adjusted_addr_incr_reg[5]_i_3_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[5]\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_first_xfer_i_1_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg[11]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg[11]_i_3_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg[11]_i_4_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg[11]_i_5_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg[15]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg[15]_i_3_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg[15]_i_4_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg[15]_i_5_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_3_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_4_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_5_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg[7]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg[7]_i_3_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg[7]_i_4_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg[7]_i_5_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[10]\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[11]\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[12]\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[13]\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[14]\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[2]\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[3]\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[4]\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[5]\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[6]\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[7]\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[8]\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[9]\ : STD_LOGIC;
  signal I_END_STRB_GEN_n_0 : STD_LOGIC;
  signal \I_STRT_STRB_GEN/sig_strb_value17_in\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_1_in2_in : STD_LOGIC;
  signal p_1_in_0 : STD_LOGIC_VECTOR ( 15 downto 2 );
  signal sig_addr_cntr_incr_imreg : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal sig_adjusted_addr_incr : STD_LOGIC_VECTOR ( 5 downto 1 );
  signal sig_btt_cntr : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \sig_btt_cntr0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr0_carry__0_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr0_carry__0_n_1\ : STD_LOGIC;
  signal \sig_btt_cntr0_carry__0_n_2\ : STD_LOGIC;
  signal \sig_btt_cntr0_carry__0_n_3\ : STD_LOGIC;
  signal \sig_btt_cntr0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr0_carry__1_n_1\ : STD_LOGIC;
  signal \sig_btt_cntr0_carry__1_n_2\ : STD_LOGIC;
  signal \sig_btt_cntr0_carry__1_n_3\ : STD_LOGIC;
  signal sig_btt_cntr0_carry_i_1_n_0 : STD_LOGIC;
  signal sig_btt_cntr0_carry_i_2_n_0 : STD_LOGIC;
  signal sig_btt_cntr0_carry_i_3_n_0 : STD_LOGIC;
  signal sig_btt_cntr0_carry_i_4_n_0 : STD_LOGIC;
  signal sig_btt_cntr0_carry_n_0 : STD_LOGIC;
  signal sig_btt_cntr0_carry_n_1 : STD_LOGIC;
  signal sig_btt_cntr0_carry_n_2 : STD_LOGIC;
  signal sig_btt_cntr0_carry_n_3 : STD_LOGIC;
  signal sig_btt_lt_b2mbaa1 : STD_LOGIC;
  signal sig_btt_lt_b2mbaa1_carry_i_1_n_0 : STD_LOGIC;
  signal sig_btt_lt_b2mbaa1_carry_i_2_n_0 : STD_LOGIC;
  signal sig_btt_lt_b2mbaa1_carry_i_3_n_0 : STD_LOGIC;
  signal sig_btt_lt_b2mbaa1_carry_i_4_n_0 : STD_LOGIC;
  signal sig_btt_lt_b2mbaa1_carry_i_5_n_0 : STD_LOGIC;
  signal sig_btt_lt_b2mbaa1_carry_i_6_n_0 : STD_LOGIC;
  signal sig_btt_lt_b2mbaa1_carry_i_7_n_0 : STD_LOGIC;
  signal sig_btt_lt_b2mbaa1_carry_i_8_n_0 : STD_LOGIC;
  signal sig_btt_lt_b2mbaa1_carry_i_9_n_0 : STD_LOGIC;
  signal sig_btt_lt_b2mbaa1_carry_n_1 : STD_LOGIC;
  signal sig_btt_lt_b2mbaa1_carry_n_2 : STD_LOGIC;
  signal sig_btt_lt_b2mbaa1_carry_n_3 : STD_LOGIC;
  signal sig_byte_change_minus1 : STD_LOGIC_VECTOR ( 5 downto 2 );
  signal sig_calc_error_pushed : STD_LOGIC;
  signal sig_calc_error_pushed_i_1_n_0 : STD_LOGIC;
  signal sig_calc_error_reg_i_1_n_0 : STD_LOGIC;
  signal sig_cmd2addr_valid_i_1_n_0 : STD_LOGIC;
  signal sig_cmd2data_valid_i_1_n_0 : STD_LOGIC;
  signal sig_cmd2dre_valid_i_1_n_0 : STD_LOGIC;
  signal sig_cmd2dre_valid_reg_n_0 : STD_LOGIC;
  signal sig_finish_addr_offset_reg : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \sig_finish_addr_offset_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal sig_first_xfer : STD_LOGIC;
  signal sig_input_burst_type_reg : STD_LOGIC;
  signal sig_input_burst_type_reg_i_1_n_0 : STD_LOGIC;
  signal sig_input_eof_reg : STD_LOGIC;
  signal sig_input_eof_reg_i_1_n_0 : STD_LOGIC;
  signal sig_input_reg_empty : STD_LOGIC;
  signal sig_input_reg_empty_i_1_n_0 : STD_LOGIC;
  signal \^sig_input_reg_empty_reg_0\ : STD_LOGIC;
  signal sig_last_xfer_valid1_out : STD_LOGIC;
  signal sig_ld_xfer_reg : STD_LOGIC;
  signal sig_ld_xfer_reg_i_1_n_0 : STD_LOGIC;
  signal sig_mbaa_addr_cntr_slice : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \^sig_next_len_reg_reg[3]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal sig_parent_done : STD_LOGIC;
  signal sig_parent_done_i_1_n_0 : STD_LOGIC;
  signal \^sig_pcc2addr_cmd_valid\ : STD_LOGIC;
  signal sig_pcc2all_calc_err : STD_LOGIC;
  signal \^sig_pcc2data_cmd_valid\ : STD_LOGIC;
  signal sig_pcc_sm_state : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of sig_pcc_sm_state : signal is "yes";
  signal sig_predict_addr_lsh_im3_in : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal sig_push_xfer_reg15_out : STD_LOGIC;
  signal sig_sm_halt_ns : STD_LOGIC;
  signal sig_sm_halt_reg : STD_LOGIC;
  signal sig_sm_ld_calc1_reg : STD_LOGIC;
  signal sig_sm_ld_calc1_reg_ns : STD_LOGIC;
  signal sig_sm_ld_calc2_reg : STD_LOGIC;
  signal sig_sm_ld_calc2_reg_ns : STD_LOGIC;
  signal sig_sm_pop_input_reg : STD_LOGIC;
  signal sig_sm_pop_input_reg_ns : STD_LOGIC;
  signal sig_strbgen_addr_reg : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal sig_strbgen_bytes_reg : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \sig_strbgen_bytes_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \sig_strbgen_bytes_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \sig_strbgen_bytes_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \sig_strbgen_bytes_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \sig_strbgen_bytes_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \sig_strbgen_bytes_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \sig_strbgen_bytes_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal sig_xfer_address : STD_LOGIC_VECTOR ( 14 downto 6 );
  signal sig_xfer_cmd_cmplt_reg0 : STD_LOGIC;
  signal sig_xfer_cmd_cmplt_reg_i_3_n_0 : STD_LOGIC;
  signal sig_xfer_cmd_cmplt_reg_i_4_n_0 : STD_LOGIC;
  signal sig_xfer_cmd_cmplt_reg_i_5_n_0 : STD_LOGIC;
  signal sig_xfer_cmd_cmplt_reg_i_6_n_0 : STD_LOGIC;
  signal sig_xfer_cmd_cmplt_reg_i_7_n_0 : STD_LOGIC;
  signal sig_xfer_cmd_cmplt_reg_i_8_n_0 : STD_LOGIC;
  signal sig_xfer_cmd_cmplt_reg_i_9_n_0 : STD_LOGIC;
  signal sig_xfer_end_strb_imreg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \sig_xfer_end_strb_imreg[1]_i_1_n_0\ : STD_LOGIC;
  signal \sig_xfer_end_strb_imreg[3]_i_1_n_0\ : STD_LOGIC;
  signal \sig_xfer_end_strb_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \sig_xfer_end_strb_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \sig_xfer_end_strb_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \sig_xfer_end_strb_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \sig_xfer_end_strb_reg[3]_i_3_n_0\ : STD_LOGIC;
  signal \^sig_xfer_end_strb_reg_reg[0]_0\ : STD_LOGIC;
  signal sig_xfer_eof_reg0 : STD_LOGIC;
  signal sig_xfer_is_seq_reg_i_1_n_0 : STD_LOGIC;
  signal sig_xfer_len_eq_0 : STD_LOGIC;
  signal sig_xfer_len_eq_0_reg : STD_LOGIC;
  signal sig_xfer_reg_empty : STD_LOGIC;
  signal sig_xfer_strt_strb : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal sig_xfer_strt_strb2use : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal sig_xfer_strt_strb_imreg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \sig_xfer_strt_strb_imreg[0]_i_1_n_0\ : STD_LOGIC;
  signal \NLW_GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[15]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_sig_btt_cntr0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_sig_btt_lt_b2mbaa1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_sig_pcc_sm_state[0]_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \FSM_sequential_sig_pcc_sm_state[1]_i_2\ : label is "soft_lutpair5";
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_sig_pcc_sm_state_reg[0]\ : label is "yes";
  attribute KEEP of \FSM_sequential_sig_pcc_sm_state_reg[1]\ : label is "yes";
  attribute KEEP of \FSM_sequential_sig_pcc_sm_state_reg[2]\ : label is "yes";
  attribute SOFT_HLUTNM of \GEN_ADDR_32.sig_addr_cntr_incr_imreg[0]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \GEN_ADDR_32.sig_addr_cntr_incr_imreg[0]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \GEN_ADDR_32.sig_addr_cntr_incr_imreg[2]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \GEN_ADDR_32.sig_addr_cntr_incr_imreg[4]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \GEN_ADDR_32.sig_adjusted_addr_incr_reg[2]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \GEN_ADDR_32.sig_adjusted_addr_incr_reg[4]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \GEN_ADDR_32.sig_adjusted_addr_incr_reg[5]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \GEN_ADDR_32.sig_adjusted_addr_incr_reg[5]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \GEN_ADDR_32.sig_adjusted_addr_incr_reg[5]_i_3\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of sig_btt_lt_b2mbaa1_carry_i_9 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of sig_calc_error_pushed_i_1 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of sig_calc_error_reg_i_1 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \sig_finish_addr_offset_reg[0]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \sig_strbgen_bytes_reg[0]_i_2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of sig_xfer_cmd_cmplt_reg_i_1 : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of sig_xfer_cmd_cmplt_reg_i_8 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \sig_xfer_end_strb_imreg[1]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \sig_xfer_end_strb_imreg[3]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of sig_xfer_eof_reg_i_1 : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \sig_xfer_len_reg[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \sig_xfer_len_reg[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \sig_xfer_strt_strb_imreg[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \sig_xfer_strt_strb_imreg[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \sig_xfer_strt_strb_imreg[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \sig_xfer_strt_strb_imreg[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \sig_xfer_strt_strb_reg[0]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \sig_xfer_strt_strb_reg[1]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \sig_xfer_strt_strb_reg[2]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \sig_xfer_strt_strb_reg[3]_i_1\ : label is "soft_lutpair8";
begin
  sig_input_reg_empty_reg_0 <= \^sig_input_reg_empty_reg_0\;
  \sig_next_len_reg_reg[3]\(3 downto 0) <= \^sig_next_len_reg_reg[3]\(3 downto 0);
  sig_pcc2addr_cmd_valid <= \^sig_pcc2addr_cmd_valid\;
  sig_pcc2data_cmd_valid <= \^sig_pcc2data_cmd_valid\;
  \sig_xfer_end_strb_reg_reg[0]_0\ <= \^sig_xfer_end_strb_reg_reg[0]_0\;
\FSM_sequential_sig_pcc_sm_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00330033B833B8FF"
    )
        port map (
      I0 => \FSM_sequential_sig_pcc_sm_state[0]_i_2_n_0\,
      I1 => sig_pcc_sm_state(0),
      I2 => sig_push_xfer_reg15_out,
      I3 => sig_pcc_sm_state(2),
      I4 => \^sig_input_reg_empty_reg_0\,
      I5 => sig_pcc_sm_state(1),
      O => \FSM_sequential_sig_pcc_sm_state[0]_i_1_n_0\
    );
\FSM_sequential_sig_pcc_sm_state[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sig_parent_done,
      I1 => sig_calc_error_pushed,
      O => \FSM_sequential_sig_pcc_sm_state[0]_i_2_n_0\
    );
\FSM_sequential_sig_pcc_sm_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5A5A1A5A4A4A0A4A"
    )
        port map (
      I0 => sig_pcc_sm_state(1),
      I1 => sig_pcc_sm_state(2),
      I2 => sig_pcc_sm_state(0),
      I3 => sig_parent_done,
      I4 => sig_calc_error_pushed,
      I5 => \^sig_input_reg_empty_reg_0\,
      O => \FSM_sequential_sig_pcc_sm_state[1]_i_1_n_0\
    );
\FSM_sequential_sig_pcc_sm_state[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => sig_pcc2all_calc_err,
      I1 => sig_cmd2pcc_cmd_valid,
      I2 => sig_input_reg_empty,
      I3 => sig_sm_halt_reg,
      O => \^sig_input_reg_empty_reg_0\
    );
\FSM_sequential_sig_pcc_sm_state[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3C8C"
    )
        port map (
      I0 => sig_calc_error_pushed,
      I1 => sig_pcc_sm_state(2),
      I2 => sig_pcc_sm_state(0),
      I3 => sig_pcc_sm_state(1),
      O => \FSM_sequential_sig_pcc_sm_state[2]_i_1_n_0\
    );
\FSM_sequential_sig_pcc_sm_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      D => \FSM_sequential_sig_pcc_sm_state[0]_i_1_n_0\,
      Q => sig_pcc_sm_state(0),
      R => \out\
    );
\FSM_sequential_sig_pcc_sm_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      D => \FSM_sequential_sig_pcc_sm_state[1]_i_1_n_0\,
      Q => sig_pcc_sm_state(1),
      R => \out\
    );
\FSM_sequential_sig_pcc_sm_state_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      D => \FSM_sequential_sig_pcc_sm_state[2]_i_1_n_0\,
      Q => sig_pcc_sm_state(2),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_incr_imreg[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E2C0"
    )
        port map (
      I0 => sig_mbaa_addr_cntr_slice(0),
      I1 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[0]_i_2_n_0\,
      I2 => sig_btt_cntr(0),
      I3 => sig_first_xfer,
      O => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[0]_i_1_n_0\
    );
\GEN_ADDR_32.sig_addr_cntr_incr_imreg[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sig_btt_lt_b2mbaa1,
      I1 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_2_n_0\,
      O => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[0]_i_2_n_0\
    );
\GEN_ADDR_32.sig_addr_cntr_incr_imreg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08FBFB0808080808"
    )
        port map (
      I0 => sig_btt_cntr(1),
      I1 => sig_btt_lt_b2mbaa1,
      I2 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_2_n_0\,
      I3 => sig_mbaa_addr_cntr_slice(1),
      I4 => sig_mbaa_addr_cntr_slice(0),
      I5 => sig_first_xfer,
      O => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[1]_i_1_n_0\
    );
\GEN_ADDR_32.sig_addr_cntr_incr_imreg[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB080808"
    )
        port map (
      I0 => sig_btt_cntr(2),
      I1 => sig_btt_lt_b2mbaa1,
      I2 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_2_n_0\,
      I3 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[2]_i_2_n_0\,
      I4 => sig_first_xfer,
      O => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[2]_i_1_n_0\
    );
\GEN_ADDR_32.sig_addr_cntr_incr_imreg[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"56"
    )
        port map (
      I0 => sig_mbaa_addr_cntr_slice(2),
      I1 => sig_mbaa_addr_cntr_slice(1),
      I2 => sig_mbaa_addr_cntr_slice(0),
      O => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[2]_i_2_n_0\
    );
\GEN_ADDR_32.sig_addr_cntr_incr_imreg[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB080808"
    )
        port map (
      I0 => sig_btt_cntr(3),
      I1 => sig_btt_lt_b2mbaa1,
      I2 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_2_n_0\,
      I3 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[3]_i_2_n_0\,
      I4 => sig_first_xfer,
      O => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[3]_i_1_n_0\
    );
\GEN_ADDR_32.sig_addr_cntr_incr_imreg[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5556"
    )
        port map (
      I0 => sig_mbaa_addr_cntr_slice(3),
      I1 => sig_mbaa_addr_cntr_slice(0),
      I2 => sig_mbaa_addr_cntr_slice(1),
      I3 => sig_mbaa_addr_cntr_slice(2),
      O => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[3]_i_2_n_0\
    );
\GEN_ADDR_32.sig_addr_cntr_incr_imreg[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0808FB08"
    )
        port map (
      I0 => sig_btt_cntr(4),
      I1 => sig_btt_lt_b2mbaa1,
      I2 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_2_n_0\,
      I3 => sig_first_xfer,
      I4 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[4]_i_2_n_0\,
      O => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[4]_i_1_n_0\
    );
\GEN_ADDR_32.sig_addr_cntr_incr_imreg[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA9"
    )
        port map (
      I0 => sig_mbaa_addr_cntr_slice(4),
      I1 => sig_mbaa_addr_cntr_slice(2),
      I2 => sig_mbaa_addr_cntr_slice(3),
      I3 => sig_mbaa_addr_cntr_slice(0),
      I4 => sig_mbaa_addr_cntr_slice(1),
      O => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[4]_i_2_n_0\
    );
\GEN_ADDR_32.sig_addr_cntr_incr_imreg[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB080808"
    )
        port map (
      I0 => sig_btt_cntr(5),
      I1 => sig_btt_lt_b2mbaa1,
      I2 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_2_n_0\,
      I3 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[5]_i_2_n_0\,
      I4 => sig_first_xfer,
      O => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[5]_i_1_n_0\
    );
\GEN_ADDR_32.sig_addr_cntr_incr_imreg[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555555555556"
    )
        port map (
      I0 => sig_mbaa_addr_cntr_slice(5),
      I1 => sig_mbaa_addr_cntr_slice(1),
      I2 => sig_mbaa_addr_cntr_slice(0),
      I3 => sig_mbaa_addr_cntr_slice(3),
      I4 => sig_mbaa_addr_cntr_slice(2),
      I5 => sig_mbaa_addr_cntr_slice(4),
      O => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[5]_i_2_n_0\
    );
\GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B0BB"
    )
        port map (
      I0 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_2_n_0\,
      I1 => sig_btt_lt_b2mbaa1,
      I2 => sig_btt_lt_b2mbaa1_carry_i_1_n_0,
      I3 => sig_first_xfer,
      O => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_1_n_0\
    );
\GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => sig_btt_cntr(11),
      I1 => sig_btt_cntr(10),
      I2 => sig_btt_cntr(7),
      I3 => sig_btt_cntr(8),
      I4 => sig_btt_cntr(9),
      I5 => sig_btt_cntr(6),
      O => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_2_n_0\
    );
\GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_sm_ld_calc1_reg,
      D => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[0]_i_1_n_0\,
      Q => sig_addr_cntr_incr_imreg(0),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_sm_ld_calc1_reg,
      D => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[1]_i_1_n_0\,
      Q => sig_addr_cntr_incr_imreg(1),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_sm_ld_calc1_reg,
      D => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[2]_i_1_n_0\,
      Q => sig_addr_cntr_incr_imreg(2),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_sm_ld_calc1_reg,
      D => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[3]_i_1_n_0\,
      Q => sig_addr_cntr_incr_imreg(3),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_sm_ld_calc1_reg,
      D => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[4]_i_1_n_0\,
      Q => sig_addr_cntr_incr_imreg(4),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_sm_ld_calc1_reg,
      D => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[5]_i_1_n_0\,
      Q => sig_addr_cntr_incr_imreg(5),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_sm_ld_calc1_reg,
      D => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_1_n_0\,
      Q => sig_addr_cntr_incr_imreg(6),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_lsh[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => Q(8),
      I1 => sig_pcc2all_calc_err,
      I2 => sig_cmd2pcc_cmd_valid,
      I3 => sig_input_reg_empty,
      I4 => sig_sm_halt_reg,
      I5 => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[10]\,
      O => p_1_in_0(10)
    );
\GEN_ADDR_32.sig_addr_cntr_lsh[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => Q(9),
      I1 => sig_pcc2all_calc_err,
      I2 => sig_cmd2pcc_cmd_valid,
      I3 => sig_input_reg_empty,
      I4 => sig_sm_halt_reg,
      I5 => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[11]\,
      O => p_1_in_0(11)
    );
\GEN_ADDR_32.sig_addr_cntr_lsh[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => Q(10),
      I1 => sig_pcc2all_calc_err,
      I2 => sig_cmd2pcc_cmd_valid,
      I3 => sig_input_reg_empty,
      I4 => sig_sm_halt_reg,
      I5 => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[12]\,
      O => p_1_in_0(12)
    );
\GEN_ADDR_32.sig_addr_cntr_lsh[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => Q(11),
      I1 => sig_pcc2all_calc_err,
      I2 => sig_cmd2pcc_cmd_valid,
      I3 => sig_input_reg_empty,
      I4 => sig_sm_halt_reg,
      I5 => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[13]\,
      O => p_1_in_0(13)
    );
\GEN_ADDR_32.sig_addr_cntr_lsh[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => Q(12),
      I1 => sig_pcc2all_calc_err,
      I2 => sig_cmd2pcc_cmd_valid,
      I3 => sig_input_reg_empty,
      I4 => sig_sm_halt_reg,
      I5 => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[14]\,
      O => p_1_in_0(14)
    );
\GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EAAA"
    )
        port map (
      I0 => \^sig_input_reg_empty_reg_0\,
      I1 => sig_xfer_reg_empty,
      I2 => sig_ld_xfer_reg,
      I3 => sig_input_burst_type_reg,
      O => \GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0\
    );
\GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => Q(13),
      I1 => sig_pcc2all_calc_err,
      I2 => sig_cmd2pcc_cmd_valid,
      I3 => sig_input_reg_empty,
      I4 => sig_sm_halt_reg,
      I5 => p_0_in,
      O => p_1_in_0(15)
    );
\GEN_ADDR_32.sig_addr_cntr_lsh[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => Q(0),
      I1 => sig_pcc2all_calc_err,
      I2 => sig_cmd2pcc_cmd_valid,
      I3 => sig_input_reg_empty,
      I4 => sig_sm_halt_reg,
      I5 => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[2]\,
      O => p_1_in_0(2)
    );
\GEN_ADDR_32.sig_addr_cntr_lsh[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => Q(1),
      I1 => sig_pcc2all_calc_err,
      I2 => sig_cmd2pcc_cmd_valid,
      I3 => sig_input_reg_empty,
      I4 => sig_sm_halt_reg,
      I5 => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[3]\,
      O => p_1_in_0(3)
    );
\GEN_ADDR_32.sig_addr_cntr_lsh[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => Q(2),
      I1 => sig_pcc2all_calc_err,
      I2 => sig_cmd2pcc_cmd_valid,
      I3 => sig_input_reg_empty,
      I4 => sig_sm_halt_reg,
      I5 => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[4]\,
      O => p_1_in_0(4)
    );
\GEN_ADDR_32.sig_addr_cntr_lsh[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => Q(3),
      I1 => sig_pcc2all_calc_err,
      I2 => sig_cmd2pcc_cmd_valid,
      I3 => sig_input_reg_empty,
      I4 => sig_sm_halt_reg,
      I5 => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[5]\,
      O => p_1_in_0(5)
    );
\GEN_ADDR_32.sig_addr_cntr_lsh[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => Q(4),
      I1 => sig_pcc2all_calc_err,
      I2 => sig_cmd2pcc_cmd_valid,
      I3 => sig_input_reg_empty,
      I4 => sig_sm_halt_reg,
      I5 => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[6]\,
      O => p_1_in_0(6)
    );
\GEN_ADDR_32.sig_addr_cntr_lsh[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => Q(5),
      I1 => sig_pcc2all_calc_err,
      I2 => sig_cmd2pcc_cmd_valid,
      I3 => sig_input_reg_empty,
      I4 => sig_sm_halt_reg,
      I5 => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[7]\,
      O => p_1_in_0(7)
    );
\GEN_ADDR_32.sig_addr_cntr_lsh[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => Q(6),
      I1 => sig_pcc2all_calc_err,
      I2 => sig_cmd2pcc_cmd_valid,
      I3 => sig_input_reg_empty,
      I4 => sig_sm_halt_reg,
      I5 => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[8]\,
      O => p_1_in_0(8)
    );
\GEN_ADDR_32.sig_addr_cntr_lsh[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => Q(7),
      I1 => sig_pcc2all_calc_err,
      I2 => sig_cmd2pcc_cmd_valid,
      I3 => sig_input_reg_empty,
      I4 => sig_sm_halt_reg,
      I5 => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[9]\,
      O => p_1_in_0(9)
    );
\GEN_ADDR_32.sig_addr_cntr_lsh_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0\,
      D => D(0),
      Q => sig_mbaa_addr_cntr_slice(0),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_lsh_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0\,
      D => p_1_in_0(10),
      Q => sig_xfer_address(10),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_lsh_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0\,
      D => p_1_in_0(11),
      Q => sig_xfer_address(11),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_lsh_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0\,
      D => p_1_in_0(12),
      Q => sig_xfer_address(12),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_lsh_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0\,
      D => p_1_in_0(13),
      Q => sig_xfer_address(13),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_lsh_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0\,
      D => p_1_in_0(14),
      Q => sig_xfer_address(14),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_lsh_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0\,
      D => p_1_in_0(15),
      Q => p_1_in2_in,
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_lsh_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0\,
      D => D(1),
      Q => sig_mbaa_addr_cntr_slice(1),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_lsh_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0\,
      D => p_1_in_0(2),
      Q => sig_mbaa_addr_cntr_slice(2),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_lsh_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0\,
      D => p_1_in_0(3),
      Q => sig_mbaa_addr_cntr_slice(3),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_lsh_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0\,
      D => p_1_in_0(4),
      Q => sig_mbaa_addr_cntr_slice(4),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_lsh_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0\,
      D => p_1_in_0(5),
      Q => sig_mbaa_addr_cntr_slice(5),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_lsh_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0\,
      D => p_1_in_0(6),
      Q => sig_xfer_address(6),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_lsh_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0\,
      D => p_1_in_0(7),
      Q => sig_xfer_address(7),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_lsh_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0\,
      D => p_1_in_0(8),
      Q => sig_xfer_address(8),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_lsh_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0\,
      D => p_1_in_0(9),
      Q => sig_xfer_address(9),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \^sig_input_reg_empty_reg_0\,
      I1 => p_0_in,
      I2 => p_1_in2_in,
      I3 => sig_input_burst_type_reg,
      I4 => sig_ld_xfer_reg,
      I5 => sig_xfer_reg_empty,
      O => \GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0\
    );
\GEN_ADDR_32.sig_addr_cntr_msh_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0\,
      D => O(0),
      Q => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(0),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_msh_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0\,
      D => \sig_cmd_mst_addr_reg[27]\(2),
      Q => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(10),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_msh_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0\,
      D => \sig_cmd_mst_addr_reg[27]\(3),
      Q => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(11),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_msh_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0\,
      D => \sig_cmd_mst_addr_reg[31]\(0),
      Q => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(12),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_msh_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0\,
      D => \sig_cmd_mst_addr_reg[31]\(1),
      Q => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(13),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_msh_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0\,
      D => \sig_cmd_mst_addr_reg[31]\(2),
      Q => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(14),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_msh_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0\,
      D => \sig_cmd_mst_addr_reg[31]\(3),
      Q => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(15),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_msh_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0\,
      D => O(1),
      Q => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(1),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_msh_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0\,
      D => O(2),
      Q => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(2),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_msh_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0\,
      D => O(3),
      Q => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(3),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_msh_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0\,
      D => \sig_cmd_mst_addr_reg[23]\(0),
      Q => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(4),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_msh_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0\,
      D => \sig_cmd_mst_addr_reg[23]\(1),
      Q => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(5),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_msh_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0\,
      D => \sig_cmd_mst_addr_reg[23]\(2),
      Q => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(6),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_msh_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0\,
      D => \sig_cmd_mst_addr_reg[23]\(3),
      Q => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(7),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_msh_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0\,
      D => \sig_cmd_mst_addr_reg[27]\(0),
      Q => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(8),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_msh_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0\,
      D => \sig_cmd_mst_addr_reg[27]\(1),
      Q => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(9),
      R => \out\
    );
\GEN_ADDR_32.sig_adjusted_addr_incr_reg[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[2]_i_1_n_0\,
      I1 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg[2]_i_2_n_0\,
      O => sig_adjusted_addr_incr(2)
    );
\GEN_ADDR_32.sig_adjusted_addr_incr_reg[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"03573F570F57FF57"
    )
        port map (
      I0 => sig_first_xfer,
      I1 => sig_mbaa_addr_cntr_slice(0),
      I2 => sig_mbaa_addr_cntr_slice(1),
      I3 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[0]_i_2_n_0\,
      I4 => sig_btt_cntr(1),
      I5 => sig_btt_cntr(0),
      O => \GEN_ADDR_32.sig_adjusted_addr_incr_reg[2]_i_2_n_0\
    );
\GEN_ADDR_32.sig_adjusted_addr_incr_reg[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[3]_i_1_n_0\,
      I1 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg[5]_i_2_n_0\,
      O => sig_adjusted_addr_incr(3)
    );
\GEN_ADDR_32.sig_adjusted_addr_incr_reg[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[4]_i_1_n_0\,
      I1 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg[5]_i_2_n_0\,
      I2 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[3]_i_1_n_0\,
      O => sig_adjusted_addr_incr(4)
    );
\GEN_ADDR_32.sig_adjusted_addr_incr_reg[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[5]_i_1_n_0\,
      I1 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[3]_i_1_n_0\,
      I2 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg[5]_i_2_n_0\,
      I3 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[4]_i_1_n_0\,
      O => sig_adjusted_addr_incr(5)
    );
\GEN_ADDR_32.sig_adjusted_addr_incr_reg[5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A880"
    )
        port map (
      I0 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[2]_i_1_n_0\,
      I1 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg[5]_i_3_n_0\,
      I2 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[1]_i_1_n_0\,
      I3 => sig_mbaa_addr_cntr_slice(1),
      O => \GEN_ADDR_32.sig_adjusted_addr_incr_reg[5]_i_2_n_0\
    );
\GEN_ADDR_32.sig_adjusted_addr_incr_reg[5]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8AA0800"
    )
        port map (
      I0 => sig_mbaa_addr_cntr_slice(0),
      I1 => sig_btt_cntr(0),
      I2 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_2_n_0\,
      I3 => sig_btt_lt_b2mbaa1,
      I4 => sig_first_xfer,
      O => \GEN_ADDR_32.sig_adjusted_addr_incr_reg[5]_i_3_n_0\
    );
\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => '1',
      D => \sig_finish_addr_offset_reg[0]_i_1_n_0\,
      Q => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[0]\,
      R => \out\
    );
\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => '1',
      D => sig_adjusted_addr_incr(1),
      Q => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[1]\,
      R => \out\
    );
\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => '1',
      D => sig_adjusted_addr_incr(2),
      Q => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[2]\,
      R => \out\
    );
\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => '1',
      D => sig_adjusted_addr_incr(3),
      Q => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[3]\,
      R => \out\
    );
\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => '1',
      D => sig_adjusted_addr_incr(4),
      Q => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[4]\,
      R => \out\
    );
\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => '1',
      D => sig_adjusted_addr_incr(5),
      Q => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[5]\,
      R => \out\
    );
\GEN_ADDR_32.sig_first_xfer_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000EEEEEEE"
    )
        port map (
      I0 => sig_first_xfer,
      I1 => \^sig_input_reg_empty_reg_0\,
      I2 => sig_input_burst_type_reg,
      I3 => sig_ld_xfer_reg,
      I4 => sig_xfer_reg_empty,
      I5 => \out\,
      O => \GEN_ADDR_32.sig_first_xfer_i_1_n_0\
    );
\GEN_ADDR_32.sig_first_xfer_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => '1',
      D => \GEN_ADDR_32.sig_first_xfer_i_1_n_0\,
      Q => sig_first_xfer,
      R => '0'
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg[11]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sig_xfer_address(11),
      O => \GEN_ADDR_32.sig_predict_addr_lsh_imreg[11]_i_2_n_0\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg[11]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sig_xfer_address(10),
      O => \GEN_ADDR_32.sig_predict_addr_lsh_imreg[11]_i_3_n_0\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg[11]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sig_xfer_address(9),
      O => \GEN_ADDR_32.sig_predict_addr_lsh_imreg[11]_i_4_n_0\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg[11]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sig_xfer_address(8),
      O => \GEN_ADDR_32.sig_predict_addr_lsh_imreg[11]_i_5_n_0\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg[15]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_1_in2_in,
      O => \GEN_ADDR_32.sig_predict_addr_lsh_imreg[15]_i_2_n_0\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg[15]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sig_xfer_address(14),
      O => \GEN_ADDR_32.sig_predict_addr_lsh_imreg[15]_i_3_n_0\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg[15]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sig_xfer_address(13),
      O => \GEN_ADDR_32.sig_predict_addr_lsh_imreg[15]_i_4_n_0\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg[15]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sig_xfer_address(12),
      O => \GEN_ADDR_32.sig_predict_addr_lsh_imreg[15]_i_5_n_0\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sig_mbaa_addr_cntr_slice(3),
      I1 => sig_addr_cntr_incr_imreg(3),
      O => \GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_2_n_0\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sig_mbaa_addr_cntr_slice(2),
      I1 => sig_addr_cntr_incr_imreg(2),
      O => \GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_3_n_0\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sig_mbaa_addr_cntr_slice(1),
      I1 => sig_addr_cntr_incr_imreg(1),
      O => \GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_4_n_0\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sig_mbaa_addr_cntr_slice(0),
      I1 => sig_addr_cntr_incr_imreg(0),
      O => \GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_5_n_0\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg[7]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sig_xfer_address(7),
      O => \GEN_ADDR_32.sig_predict_addr_lsh_imreg[7]_i_2_n_0\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sig_xfer_address(6),
      I1 => sig_addr_cntr_incr_imreg(6),
      O => \GEN_ADDR_32.sig_predict_addr_lsh_imreg[7]_i_3_n_0\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sig_mbaa_addr_cntr_slice(5),
      I1 => sig_addr_cntr_incr_imreg(5),
      O => \GEN_ADDR_32.sig_predict_addr_lsh_imreg[7]_i_4_n_0\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sig_mbaa_addr_cntr_slice(4),
      I1 => sig_addr_cntr_incr_imreg(4),
      O => \GEN_ADDR_32.sig_predict_addr_lsh_imreg[7]_i_5_n_0\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => sig_predict_addr_lsh_im3_in(0),
      Q => \GEN_ADDR_32.sig_addr_cntr_lsh_reg[1]_0\(0),
      R => \out\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => sig_predict_addr_lsh_im3_in(10),
      Q => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[10]\,
      R => \out\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => sig_predict_addr_lsh_im3_in(11),
      Q => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[11]\,
      R => \out\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[7]_i_1_n_0\,
      CO(3) => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[11]_i_1_n_0\,
      CO(2) => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[11]_i_1_n_1\,
      CO(1) => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[11]_i_1_n_2\,
      CO(0) => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => sig_predict_addr_lsh_im3_in(11 downto 8),
      S(3) => \GEN_ADDR_32.sig_predict_addr_lsh_imreg[11]_i_2_n_0\,
      S(2) => \GEN_ADDR_32.sig_predict_addr_lsh_imreg[11]_i_3_n_0\,
      S(1) => \GEN_ADDR_32.sig_predict_addr_lsh_imreg[11]_i_4_n_0\,
      S(0) => \GEN_ADDR_32.sig_predict_addr_lsh_imreg[11]_i_5_n_0\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => sig_predict_addr_lsh_im3_in(12),
      Q => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[12]\,
      R => \out\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => sig_predict_addr_lsh_im3_in(13),
      Q => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[13]\,
      R => \out\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => sig_predict_addr_lsh_im3_in(14),
      Q => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[14]\,
      R => \out\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => sig_predict_addr_lsh_im3_in(15),
      Q => p_0_in,
      R => \out\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[15]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[11]_i_1_n_0\,
      CO(3) => \NLW_GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[15]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[15]_i_1_n_1\,
      CO(1) => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[15]_i_1_n_2\,
      CO(0) => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[15]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => sig_predict_addr_lsh_im3_in(15 downto 12),
      S(3) => \GEN_ADDR_32.sig_predict_addr_lsh_imreg[15]_i_2_n_0\,
      S(2) => \GEN_ADDR_32.sig_predict_addr_lsh_imreg[15]_i_3_n_0\,
      S(1) => \GEN_ADDR_32.sig_predict_addr_lsh_imreg[15]_i_4_n_0\,
      S(0) => \GEN_ADDR_32.sig_predict_addr_lsh_imreg[15]_i_5_n_0\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => sig_predict_addr_lsh_im3_in(1),
      Q => \GEN_ADDR_32.sig_addr_cntr_lsh_reg[1]_0\(1),
      R => \out\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => sig_predict_addr_lsh_im3_in(2),
      Q => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[2]\,
      R => \out\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => sig_predict_addr_lsh_im3_in(3),
      Q => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[3]\,
      R => \out\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[3]_i_1_n_0\,
      CO(2) => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[3]_i_1_n_1\,
      CO(1) => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[3]_i_1_n_2\,
      CO(0) => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => sig_mbaa_addr_cntr_slice(3 downto 0),
      O(3 downto 0) => sig_predict_addr_lsh_im3_in(3 downto 0),
      S(3) => \GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_2_n_0\,
      S(2) => \GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_3_n_0\,
      S(1) => \GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_4_n_0\,
      S(0) => \GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_5_n_0\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => sig_predict_addr_lsh_im3_in(4),
      Q => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[4]\,
      R => \out\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => sig_predict_addr_lsh_im3_in(5),
      Q => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[5]\,
      R => \out\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => sig_predict_addr_lsh_im3_in(6),
      Q => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[6]\,
      R => \out\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => sig_predict_addr_lsh_im3_in(7),
      Q => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[7]\,
      R => \out\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[3]_i_1_n_0\,
      CO(3) => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[7]_i_1_n_0\,
      CO(2) => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[7]_i_1_n_1\,
      CO(1) => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[7]_i_1_n_2\,
      CO(0) => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => sig_xfer_address(6),
      DI(1 downto 0) => sig_mbaa_addr_cntr_slice(5 downto 4),
      O(3 downto 0) => sig_predict_addr_lsh_im3_in(7 downto 4),
      S(3) => \GEN_ADDR_32.sig_predict_addr_lsh_imreg[7]_i_2_n_0\,
      S(2) => \GEN_ADDR_32.sig_predict_addr_lsh_imreg[7]_i_3_n_0\,
      S(1) => \GEN_ADDR_32.sig_predict_addr_lsh_imreg[7]_i_4_n_0\,
      S(0) => \GEN_ADDR_32.sig_predict_addr_lsh_imreg[7]_i_5_n_0\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => sig_predict_addr_lsh_im3_in(8),
      Q => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[8]\,
      R => \out\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => sig_predict_addr_lsh_im3_in(9),
      Q => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[9]\,
      R => \out\
    );
I_END_STRB_GEN: entity work.\design_1_myip_burst_test_0_0_axi_master_burst_strb_gen__parameterized0\
     port map (
      D(0) => I_END_STRB_GEN_n_0,
      Q(1 downto 0) => sig_finish_addr_offset_reg(1 downto 0)
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => Q(21),
      I1 => sig_pcc2all_calc_err,
      I2 => sig_cmd2pcc_cmd_valid,
      I3 => sig_input_reg_empty,
      I4 => sig_sm_halt_reg,
      I5 => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(7),
      O => \GEN_ADDR_32.sig_addr_cntr_msh_reg[7]_0\(3)
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => Q(20),
      I1 => sig_pcc2all_calc_err,
      I2 => sig_cmd2pcc_cmd_valid,
      I3 => sig_input_reg_empty,
      I4 => sig_sm_halt_reg,
      I5 => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(6),
      O => \GEN_ADDR_32.sig_addr_cntr_msh_reg[7]_0\(2)
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => Q(19),
      I1 => sig_pcc2all_calc_err,
      I2 => sig_cmd2pcc_cmd_valid,
      I3 => sig_input_reg_empty,
      I4 => sig_sm_halt_reg,
      I5 => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(5),
      O => \GEN_ADDR_32.sig_addr_cntr_msh_reg[7]_0\(1)
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => Q(18),
      I1 => sig_pcc2all_calc_err,
      I2 => sig_cmd2pcc_cmd_valid,
      I3 => sig_input_reg_empty,
      I4 => sig_sm_halt_reg,
      I5 => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(4),
      O => \GEN_ADDR_32.sig_addr_cntr_msh_reg[7]_0\(0)
    );
\i__carry__1_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => Q(25),
      I1 => sig_pcc2all_calc_err,
      I2 => sig_cmd2pcc_cmd_valid,
      I3 => sig_input_reg_empty,
      I4 => sig_sm_halt_reg,
      I5 => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(11),
      O => \GEN_ADDR_32.sig_addr_cntr_msh_reg[11]_0\(3)
    );
\i__carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => Q(24),
      I1 => sig_pcc2all_calc_err,
      I2 => sig_cmd2pcc_cmd_valid,
      I3 => sig_input_reg_empty,
      I4 => sig_sm_halt_reg,
      I5 => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(10),
      O => \GEN_ADDR_32.sig_addr_cntr_msh_reg[11]_0\(2)
    );
\i__carry__1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => Q(23),
      I1 => sig_pcc2all_calc_err,
      I2 => sig_cmd2pcc_cmd_valid,
      I3 => sig_input_reg_empty,
      I4 => sig_sm_halt_reg,
      I5 => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(9),
      O => \GEN_ADDR_32.sig_addr_cntr_msh_reg[11]_0\(1)
    );
\i__carry__1_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => Q(22),
      I1 => sig_pcc2all_calc_err,
      I2 => sig_cmd2pcc_cmd_valid,
      I3 => sig_input_reg_empty,
      I4 => sig_sm_halt_reg,
      I5 => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(8),
      O => \GEN_ADDR_32.sig_addr_cntr_msh_reg[11]_0\(0)
    );
\i__carry__2_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => Q(29),
      I1 => sig_pcc2all_calc_err,
      I2 => sig_cmd2pcc_cmd_valid,
      I3 => sig_input_reg_empty,
      I4 => sig_sm_halt_reg,
      I5 => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(15),
      O => \GEN_ADDR_32.sig_addr_cntr_msh_reg[15]_0\(3)
    );
\i__carry__2_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => Q(28),
      I1 => sig_pcc2all_calc_err,
      I2 => sig_cmd2pcc_cmd_valid,
      I3 => sig_input_reg_empty,
      I4 => sig_sm_halt_reg,
      I5 => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(14),
      O => \GEN_ADDR_32.sig_addr_cntr_msh_reg[15]_0\(2)
    );
\i__carry__2_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => Q(27),
      I1 => sig_pcc2all_calc_err,
      I2 => sig_cmd2pcc_cmd_valid,
      I3 => sig_input_reg_empty,
      I4 => sig_sm_halt_reg,
      I5 => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(13),
      O => \GEN_ADDR_32.sig_addr_cntr_msh_reg[15]_0\(1)
    );
\i__carry__2_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => Q(26),
      I1 => sig_pcc2all_calc_err,
      I2 => sig_cmd2pcc_cmd_valid,
      I3 => sig_input_reg_empty,
      I4 => sig_sm_halt_reg,
      I5 => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(12),
      O => \GEN_ADDR_32.sig_addr_cntr_msh_reg[15]_0\(0)
    );
\i__carry_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFBF"
    )
        port map (
      I0 => sig_sm_halt_reg,
      I1 => sig_input_reg_empty,
      I2 => sig_cmd2pcc_cmd_valid,
      I3 => sig_pcc2all_calc_err,
      O => DI(0)
    );
\i__carry_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => Q(17),
      I1 => sig_pcc2all_calc_err,
      I2 => sig_cmd2pcc_cmd_valid,
      I3 => sig_input_reg_empty,
      I4 => sig_sm_halt_reg,
      I5 => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(3),
      O => S(3)
    );
\i__carry_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => Q(16),
      I1 => sig_pcc2all_calc_err,
      I2 => sig_cmd2pcc_cmd_valid,
      I3 => sig_input_reg_empty,
      I4 => sig_sm_halt_reg,
      I5 => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(2),
      O => S(2)
    );
\i__carry_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => Q(15),
      I1 => sig_pcc2all_calc_err,
      I2 => sig_cmd2pcc_cmd_valid,
      I3 => sig_input_reg_empty,
      I4 => sig_sm_halt_reg,
      I5 => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(1),
      O => S(1)
    );
\i__carry_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555555555C555555"
    )
        port map (
      I0 => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(0),
      I1 => Q(14),
      I2 => sig_sm_halt_reg,
      I3 => sig_input_reg_empty,
      I4 => sig_cmd2pcc_cmd_valid,
      I5 => sig_pcc2all_calc_err,
      O => S(0)
    );
sig_btt_cntr0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => sig_btt_cntr0_carry_n_0,
      CO(2) => sig_btt_cntr0_carry_n_1,
      CO(1) => sig_btt_cntr0_carry_n_2,
      CO(0) => sig_btt_cntr0_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => sig_btt_cntr(3 downto 0),
      O(3 downto 0) => sig_btt_cntr0(3 downto 0),
      S(3) => sig_btt_cntr0_carry_i_1_n_0,
      S(2) => sig_btt_cntr0_carry_i_2_n_0,
      S(1) => sig_btt_cntr0_carry_i_3_n_0,
      S(0) => sig_btt_cntr0_carry_i_4_n_0
    );
\sig_btt_cntr0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => sig_btt_cntr0_carry_n_0,
      CO(3) => \sig_btt_cntr0_carry__0_n_0\,
      CO(2) => \sig_btt_cntr0_carry__0_n_1\,
      CO(1) => \sig_btt_cntr0_carry__0_n_2\,
      CO(0) => \sig_btt_cntr0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => sig_btt_cntr(7 downto 4),
      O(3 downto 0) => sig_btt_cntr0(7 downto 4),
      S(3) => \sig_btt_cntr0_carry__0_i_1_n_0\,
      S(2) => \sig_btt_cntr0_carry__0_i_2_n_0\,
      S(1) => \sig_btt_cntr0_carry__0_i_3_n_0\,
      S(0) => \sig_btt_cntr0_carry__0_i_4_n_0\
    );
\sig_btt_cntr0_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sig_btt_cntr(7),
      O => \sig_btt_cntr0_carry__0_i_1_n_0\
    );
\sig_btt_cntr0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => sig_btt_cntr(6),
      I1 => sig_addr_cntr_incr_imreg(6),
      O => \sig_btt_cntr0_carry__0_i_2_n_0\
    );
\sig_btt_cntr0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => sig_btt_cntr(5),
      I1 => sig_addr_cntr_incr_imreg(5),
      O => \sig_btt_cntr0_carry__0_i_3_n_0\
    );
\sig_btt_cntr0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => sig_btt_cntr(4),
      I1 => sig_addr_cntr_incr_imreg(4),
      O => \sig_btt_cntr0_carry__0_i_4_n_0\
    );
\sig_btt_cntr0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sig_btt_cntr0_carry__0_n_0\,
      CO(3) => \NLW_sig_btt_cntr0_carry__1_CO_UNCONNECTED\(3),
      CO(2) => \sig_btt_cntr0_carry__1_n_1\,
      CO(1) => \sig_btt_cntr0_carry__1_n_2\,
      CO(0) => \sig_btt_cntr0_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => sig_btt_cntr(10 downto 8),
      O(3 downto 0) => sig_btt_cntr0(11 downto 8),
      S(3) => \sig_btt_cntr0_carry__1_i_1_n_0\,
      S(2) => \sig_btt_cntr0_carry__1_i_2_n_0\,
      S(1) => \sig_btt_cntr0_carry__1_i_3_n_0\,
      S(0) => \sig_btt_cntr0_carry__1_i_4_n_0\
    );
\sig_btt_cntr0_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sig_btt_cntr(11),
      O => \sig_btt_cntr0_carry__1_i_1_n_0\
    );
\sig_btt_cntr0_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sig_btt_cntr(10),
      O => \sig_btt_cntr0_carry__1_i_2_n_0\
    );
\sig_btt_cntr0_carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sig_btt_cntr(9),
      O => \sig_btt_cntr0_carry__1_i_3_n_0\
    );
\sig_btt_cntr0_carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sig_btt_cntr(8),
      O => \sig_btt_cntr0_carry__1_i_4_n_0\
    );
sig_btt_cntr0_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => sig_btt_cntr(3),
      I1 => sig_addr_cntr_incr_imreg(3),
      O => sig_btt_cntr0_carry_i_1_n_0
    );
sig_btt_cntr0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => sig_btt_cntr(2),
      I1 => sig_addr_cntr_incr_imreg(2),
      O => sig_btt_cntr0_carry_i_2_n_0
    );
sig_btt_cntr0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => sig_btt_cntr(1),
      I1 => sig_addr_cntr_incr_imreg(1),
      O => sig_btt_cntr0_carry_i_3_n_0
    );
sig_btt_cntr0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => sig_btt_cntr(0),
      I1 => sig_addr_cntr_incr_imreg(0),
      O => sig_btt_cntr0_carry_i_4_n_0
    );
\sig_btt_cntr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0\,
      D => sig_cmd_type_req_reg(0),
      Q => sig_btt_cntr(0),
      R => \out\
    );
\sig_btt_cntr_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0\,
      D => sig_cmd_type_req_reg(10),
      Q => sig_btt_cntr(10),
      R => \out\
    );
\sig_btt_cntr_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0\,
      D => sig_cmd_type_req_reg(11),
      Q => sig_btt_cntr(11),
      R => \out\
    );
\sig_btt_cntr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0\,
      D => sig_cmd_type_req_reg(1),
      Q => sig_btt_cntr(1),
      R => \out\
    );
\sig_btt_cntr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0\,
      D => sig_cmd_type_req_reg(2),
      Q => sig_btt_cntr(2),
      R => \out\
    );
\sig_btt_cntr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0\,
      D => sig_cmd_type_req_reg(3),
      Q => sig_btt_cntr(3),
      R => \out\
    );
\sig_btt_cntr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0\,
      D => sig_cmd_type_req_reg(4),
      Q => sig_btt_cntr(4),
      R => \out\
    );
\sig_btt_cntr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0\,
      D => sig_cmd_type_req_reg(5),
      Q => sig_btt_cntr(5),
      R => \out\
    );
\sig_btt_cntr_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0\,
      D => sig_cmd_type_req_reg(6),
      Q => sig_btt_cntr(6),
      R => \out\
    );
\sig_btt_cntr_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0\,
      D => sig_cmd_type_req_reg(7),
      Q => sig_btt_cntr(7),
      R => \out\
    );
\sig_btt_cntr_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0\,
      D => sig_cmd_type_req_reg(8),
      Q => sig_btt_cntr(8),
      R => \out\
    );
\sig_btt_cntr_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0\,
      D => sig_cmd_type_req_reg(9),
      Q => sig_btt_cntr(9),
      R => \out\
    );
sig_btt_lt_b2mbaa1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => sig_btt_lt_b2mbaa1,
      CO(2) => sig_btt_lt_b2mbaa1_carry_n_1,
      CO(1) => sig_btt_lt_b2mbaa1_carry_n_2,
      CO(0) => sig_btt_lt_b2mbaa1_carry_n_3,
      CYINIT => '0',
      DI(3) => sig_btt_lt_b2mbaa1_carry_i_1_n_0,
      DI(2) => sig_btt_lt_b2mbaa1_carry_i_2_n_0,
      DI(1) => sig_btt_lt_b2mbaa1_carry_i_3_n_0,
      DI(0) => sig_btt_lt_b2mbaa1_carry_i_4_n_0,
      O(3 downto 0) => NLW_sig_btt_lt_b2mbaa1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => sig_btt_lt_b2mbaa1_carry_i_5_n_0,
      S(2) => sig_btt_lt_b2mbaa1_carry_i_6_n_0,
      S(1) => sig_btt_lt_b2mbaa1_carry_i_7_n_0,
      S(0) => sig_btt_lt_b2mbaa1_carry_i_8_n_0
    );
sig_btt_lt_b2mbaa1_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => sig_mbaa_addr_cntr_slice(2),
      I1 => sig_mbaa_addr_cntr_slice(3),
      I2 => sig_mbaa_addr_cntr_slice(0),
      I3 => sig_mbaa_addr_cntr_slice(1),
      I4 => sig_mbaa_addr_cntr_slice(4),
      I5 => sig_mbaa_addr_cntr_slice(5),
      O => sig_btt_lt_b2mbaa1_carry_i_1_n_0
    );
sig_btt_lt_b2mbaa1_carry_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"104551C7"
    )
        port map (
      I0 => sig_btt_cntr(5),
      I1 => sig_mbaa_addr_cntr_slice(4),
      I2 => sig_btt_lt_b2mbaa1_carry_i_9_n_0,
      I3 => sig_mbaa_addr_cntr_slice(5),
      I4 => sig_btt_cntr(4),
      O => sig_btt_lt_b2mbaa1_carry_i_2_n_0
    );
sig_btt_lt_b2mbaa1_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000155541115777C"
    )
        port map (
      I0 => sig_btt_cntr(3),
      I1 => sig_mbaa_addr_cntr_slice(2),
      I2 => sig_mbaa_addr_cntr_slice(1),
      I3 => sig_mbaa_addr_cntr_slice(0),
      I4 => sig_mbaa_addr_cntr_slice(3),
      I5 => sig_btt_cntr(2),
      O => sig_btt_lt_b2mbaa1_carry_i_3_n_0
    );
sig_btt_lt_b2mbaa1_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1474"
    )
        port map (
      I0 => sig_btt_cntr(1),
      I1 => sig_mbaa_addr_cntr_slice(1),
      I2 => sig_mbaa_addr_cntr_slice(0),
      I3 => sig_btt_cntr(0),
      O => sig_btt_lt_b2mbaa1_carry_i_4_n_0
    );
sig_btt_lt_b2mbaa1_carry_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => sig_mbaa_addr_cntr_slice(5),
      I1 => sig_mbaa_addr_cntr_slice(4),
      I2 => sig_mbaa_addr_cntr_slice(1),
      I3 => sig_mbaa_addr_cntr_slice(0),
      I4 => sig_mbaa_addr_cntr_slice(3),
      I5 => sig_mbaa_addr_cntr_slice(2),
      O => sig_btt_lt_b2mbaa1_carry_i_5_n_0
    );
sig_btt_lt_b2mbaa1_carry_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"21428418"
    )
        port map (
      I0 => sig_btt_cntr(4),
      I1 => sig_mbaa_addr_cntr_slice(5),
      I2 => sig_btt_lt_b2mbaa1_carry_i_9_n_0,
      I3 => sig_mbaa_addr_cntr_slice(4),
      I4 => sig_btt_cntr(5),
      O => sig_btt_lt_b2mbaa1_carry_i_6_n_0
    );
sig_btt_lt_b2mbaa1_carry_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1114222844428881"
    )
        port map (
      I0 => sig_btt_cntr(3),
      I1 => sig_mbaa_addr_cntr_slice(2),
      I2 => sig_mbaa_addr_cntr_slice(1),
      I3 => sig_mbaa_addr_cntr_slice(0),
      I4 => sig_mbaa_addr_cntr_slice(3),
      I5 => sig_btt_cntr(2),
      O => sig_btt_lt_b2mbaa1_carry_i_7_n_0
    );
sig_btt_lt_b2mbaa1_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1881"
    )
        port map (
      I0 => sig_mbaa_addr_cntr_slice(0),
      I1 => sig_btt_cntr(0),
      I2 => sig_btt_cntr(1),
      I3 => sig_mbaa_addr_cntr_slice(1),
      O => sig_btt_lt_b2mbaa1_carry_i_8_n_0
    );
sig_btt_lt_b2mbaa1_carry_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => sig_mbaa_addr_cntr_slice(1),
      I1 => sig_mbaa_addr_cntr_slice(0),
      I2 => sig_mbaa_addr_cntr_slice(3),
      I3 => sig_mbaa_addr_cntr_slice(2),
      O => sig_btt_lt_b2mbaa1_carry_i_9_n_0
    );
sig_calc_error_pushed_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF80"
    )
        port map (
      I0 => sig_pcc2all_calc_err,
      I1 => sig_ld_xfer_reg,
      I2 => sig_xfer_reg_empty,
      I3 => sig_calc_error_pushed,
      O => sig_calc_error_pushed_i_1_n_0
    );
sig_calc_error_pushed_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => '1',
      D => sig_calc_error_pushed_i_1_n_0,
      Q => sig_calc_error_pushed,
      R => \out\
    );
sig_calc_error_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCCECCC"
    )
        port map (
      I0 => sig_btt_is_zero,
      I1 => sig_pcc2all_calc_err,
      I2 => sig_cmd2pcc_cmd_valid,
      I3 => sig_input_reg_empty,
      I4 => sig_sm_halt_reg,
      O => sig_calc_error_reg_i_1_n_0
    );
sig_calc_error_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => '1',
      D => sig_calc_error_reg_i_1_n_0,
      Q => sig_pcc2all_calc_err,
      R => \out\
    );
sig_cmd2addr_valid_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000EA"
    )
        port map (
      I0 => \^sig_pcc2addr_cmd_valid\,
      I1 => sig_xfer_reg_empty,
      I2 => sig_ld_xfer_reg,
      I3 => sig_push_addr_reg1_out,
      I4 => \out\,
      O => sig_cmd2addr_valid_i_1_n_0
    );
sig_cmd2addr_valid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => '1',
      D => sig_cmd2addr_valid_i_1_n_0,
      Q => \^sig_pcc2addr_cmd_valid\,
      R => '0'
    );
sig_cmd2data_valid_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000EA"
    )
        port map (
      I0 => \^sig_pcc2data_cmd_valid\,
      I1 => sig_xfer_reg_empty,
      I2 => sig_ld_xfer_reg,
      I3 => sig_wdc2pcc_cmd_ready,
      I4 => \out\,
      O => sig_cmd2data_valid_i_1_n_0
    );
sig_cmd2data_valid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => '1',
      D => sig_cmd2data_valid_i_1_n_0,
      Q => \^sig_pcc2data_cmd_valid\,
      R => '0'
    );
sig_cmd2dre_valid_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => sig_ld_xfer_reg,
      I1 => sig_xfer_reg_empty,
      I2 => sig_first_xfer,
      I3 => sig_cmd2dre_valid_reg_n_0,
      I4 => \out\,
      O => sig_cmd2dre_valid_i_1_n_0
    );
sig_cmd2dre_valid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => '1',
      D => sig_cmd2dre_valid_i_1_n_0,
      Q => sig_cmd2dre_valid_reg_n_0,
      R => '0'
    );
sig_cmd_full_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAABAAAAAA"
    )
        port map (
      I0 => sig_cmd_reset_reg_reg,
      I1 => sig_push_cmd_reg,
      I2 => sig_calc_error_pushed,
      I3 => sig_cmd2pcc_cmd_valid,
      I4 => sig_input_reg_empty,
      I5 => sig_sm_halt_reg,
      O => sig_cmd_full_reg_reg(0)
    );
sig_doing_write_reg_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => sig_calc_error_pushed,
      I1 => sig_cmd2pcc_cmd_valid,
      I2 => sig_input_reg_empty,
      I3 => sig_sm_halt_reg,
      O => sig_pcc_taking_command
    );
\sig_finish_addr_offset_reg[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"486A"
    )
        port map (
      I0 => sig_mbaa_addr_cntr_slice(0),
      I1 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[0]_i_2_n_0\,
      I2 => sig_btt_cntr(0),
      I3 => sig_first_xfer,
      O => \sig_finish_addr_offset_reg[0]_i_1_n_0\
    );
\sig_finish_addr_offset_reg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"906030C09F603FC0"
    )
        port map (
      I0 => sig_btt_cntr(0),
      I1 => sig_btt_cntr(1),
      I2 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[0]_i_2_n_0\,
      I3 => sig_mbaa_addr_cntr_slice(1),
      I4 => sig_mbaa_addr_cntr_slice(0),
      I5 => sig_first_xfer,
      O => sig_adjusted_addr_incr(1)
    );
\sig_finish_addr_offset_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_sm_ld_calc1_reg,
      D => \sig_finish_addr_offset_reg[0]_i_1_n_0\,
      Q => sig_finish_addr_offset_reg(0),
      R => \out\
    );
\sig_finish_addr_offset_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_sm_ld_calc1_reg,
      D => sig_adjusted_addr_incr(1),
      Q => sig_finish_addr_offset_reg(1),
      R => \out\
    );
sig_input_burst_type_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000000E"
    )
        port map (
      I0 => sig_input_burst_type_reg,
      I1 => \^sig_input_reg_empty_reg_0\,
      I2 => \out\,
      I3 => sig_sm_pop_input_reg,
      I4 => sig_calc_error_pushed,
      O => sig_input_burst_type_reg_i_1_n_0
    );
sig_input_burst_type_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => '1',
      D => sig_input_burst_type_reg_i_1_n_0,
      Q => sig_input_burst_type_reg,
      R => '0'
    );
sig_input_eof_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000000E"
    )
        port map (
      I0 => sig_input_eof_reg,
      I1 => \^sig_input_reg_empty_reg_0\,
      I2 => \out\,
      I3 => sig_sm_pop_input_reg,
      I4 => sig_calc_error_pushed,
      O => sig_input_eof_reg_i_1_n_0
    );
sig_input_eof_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => '1',
      D => sig_input_eof_reg_i_1_n_0,
      Q => sig_input_eof_reg,
      R => '0'
    );
sig_input_reg_empty_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFF2"
    )
        port map (
      I0 => sig_input_reg_empty,
      I1 => \^sig_input_reg_empty_reg_0\,
      I2 => \out\,
      I3 => sig_sm_pop_input_reg,
      I4 => sig_calc_error_pushed,
      O => sig_input_reg_empty_i_1_n_0
    );
sig_input_reg_empty_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => '1',
      D => sig_input_reg_empty_i_1_n_0,
      Q => sig_input_reg_empty,
      R => '0'
    );
sig_last_dbeat_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^sig_next_len_reg_reg[3]\(3),
      I1 => \^sig_next_len_reg_reg[3]\(0),
      I2 => \^sig_next_len_reg_reg[3]\(2),
      I3 => \^sig_next_len_reg_reg[3]\(1),
      O => p_1_in
    );
sig_ld_xfer_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000FF4040"
    )
        port map (
      I0 => sig_pcc_sm_state(2),
      I1 => sig_pcc_sm_state(0),
      I2 => sig_pcc_sm_state(1),
      I3 => sig_xfer_reg_empty,
      I4 => sig_ld_xfer_reg,
      I5 => \out\,
      O => sig_ld_xfer_reg_i_1_n_0
    );
sig_ld_xfer_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => '1',
      D => sig_ld_xfer_reg_i_1_n_0,
      Q => sig_ld_xfer_reg,
      R => '0'
    );
sig_parent_done_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000EA2A"
    )
        port map (
      I0 => sig_parent_done,
      I1 => sig_ld_xfer_reg,
      I2 => sig_xfer_reg_empty,
      I3 => sig_last_xfer_valid1_out,
      I4 => \^sig_input_reg_empty_reg_0\,
      I5 => \out\,
      O => sig_parent_done_i_1_n_0
    );
sig_parent_done_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => '1',
      D => sig_parent_done_i_1_n_0,
      Q => sig_parent_done,
      R => '0'
    );
sig_sm_halt_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3803"
    )
        port map (
      I0 => sig_calc_error_pushed,
      I1 => sig_pcc_sm_state(0),
      I2 => sig_pcc_sm_state(1),
      I3 => sig_pcc_sm_state(2),
      O => sig_sm_halt_ns
    );
sig_sm_halt_reg_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => '1',
      D => sig_sm_halt_ns,
      Q => sig_sm_halt_reg,
      S => \out\
    );
sig_sm_ld_calc1_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040004000404440"
    )
        port map (
      I0 => sig_pcc_sm_state(1),
      I1 => sig_pcc_sm_state(0),
      I2 => \^sig_input_reg_empty_reg_0\,
      I3 => sig_pcc_sm_state(2),
      I4 => sig_calc_error_pushed,
      I5 => sig_parent_done,
      O => sig_sm_ld_calc1_reg_ns
    );
sig_sm_ld_calc1_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => '1',
      D => sig_sm_ld_calc1_reg_ns,
      Q => sig_sm_ld_calc1_reg,
      R => \out\
    );
sig_sm_ld_calc2_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => sig_pcc_sm_state(1),
      I1 => sig_pcc_sm_state(2),
      I2 => sig_pcc_sm_state(0),
      O => sig_sm_ld_calc2_reg_ns
    );
sig_sm_ld_calc2_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => '1',
      D => sig_sm_ld_calc2_reg_ns,
      Q => sig_sm_ld_calc2_reg,
      R => \out\
    );
sig_sm_pop_input_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002000"
    )
        port map (
      I0 => sig_pcc_sm_state(2),
      I1 => sig_pcc_sm_state(1),
      I2 => sig_pcc_sm_state(0),
      I3 => sig_parent_done,
      I4 => sig_calc_error_pushed,
      O => sig_sm_pop_input_reg_ns
    );
sig_sm_pop_input_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => '1',
      D => sig_sm_pop_input_reg_ns,
      Q => sig_sm_pop_input_reg,
      R => \out\
    );
\sig_strbgen_addr_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_sm_ld_calc1_reg,
      D => sig_mbaa_addr_cntr_slice(0),
      Q => sig_strbgen_addr_reg(0),
      R => \out\
    );
\sig_strbgen_addr_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_sm_ld_calc1_reg,
      D => sig_mbaa_addr_cntr_slice(1),
      Q => sig_strbgen_addr_reg(1),
      R => \out\
    );
\sig_strbgen_bytes_reg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000002E"
    )
        port map (
      I0 => \sig_strbgen_bytes_reg_reg_n_0_[0]\,
      I1 => sig_sm_ld_calc1_reg,
      I2 => \sig_strbgen_bytes_reg[0]_i_2_n_0\,
      I3 => sig_strbgen_bytes_reg(2),
      I4 => \out\,
      O => \sig_strbgen_bytes_reg[0]_i_1_n_0\
    );
\sig_strbgen_bytes_reg[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"353F"
    )
        port map (
      I0 => sig_first_xfer,
      I1 => sig_btt_cntr(0),
      I2 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[0]_i_2_n_0\,
      I3 => sig_mbaa_addr_cntr_slice(0),
      O => \sig_strbgen_bytes_reg[0]_i_2_n_0\
    );
\sig_strbgen_bytes_reg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => \sig_strbgen_bytes_reg_reg_n_0_[1]\,
      I1 => sig_sm_ld_calc1_reg,
      I2 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[1]_i_1_n_0\,
      I3 => sig_strbgen_bytes_reg(2),
      I4 => \out\,
      O => \sig_strbgen_bytes_reg[1]_i_1_n_0\
    );
\sig_strbgen_bytes_reg[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBF8"
    )
        port map (
      I0 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[2]_i_1_n_0\,
      I1 => sig_sm_ld_calc1_reg,
      I2 => sig_strbgen_bytes_reg(2),
      I3 => \sig_strbgen_bytes_reg_reg_n_0_[2]\,
      O => \sig_strbgen_bytes_reg[2]_i_1_n_0\
    );
\sig_strbgen_bytes_reg[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA8"
    )
        port map (
      I0 => sig_sm_ld_calc1_reg,
      I1 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[5]_i_1_n_0\,
      I2 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[3]_i_1_n_0\,
      I3 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[2]_i_1_n_0\,
      I4 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_1_n_0\,
      I5 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[4]_i_1_n_0\,
      O => sig_strbgen_bytes_reg(2)
    );
\sig_strbgen_bytes_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => '1',
      D => \sig_strbgen_bytes_reg[0]_i_1_n_0\,
      Q => \sig_strbgen_bytes_reg_reg_n_0_[0]\,
      R => '0'
    );
\sig_strbgen_bytes_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => '1',
      D => \sig_strbgen_bytes_reg[1]_i_1_n_0\,
      Q => \sig_strbgen_bytes_reg_reg_n_0_[1]\,
      R => '0'
    );
\sig_strbgen_bytes_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => '1',
      D => \sig_strbgen_bytes_reg[2]_i_1_n_0\,
      Q => \sig_strbgen_bytes_reg_reg_n_0_[2]\,
      R => \out\
    );
\sig_xfer_addr_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => sig_mbaa_addr_cntr_slice(0),
      Q => \sig_next_addr_reg_reg[31]\(0),
      R => SR(0)
    );
\sig_xfer_addr_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => sig_xfer_address(10),
      Q => \sig_next_addr_reg_reg[31]\(10),
      R => SR(0)
    );
\sig_xfer_addr_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => sig_xfer_address(11),
      Q => \sig_next_addr_reg_reg[31]\(11),
      R => SR(0)
    );
\sig_xfer_addr_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => sig_xfer_address(12),
      Q => \sig_next_addr_reg_reg[31]\(12),
      R => SR(0)
    );
\sig_xfer_addr_reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => sig_xfer_address(13),
      Q => \sig_next_addr_reg_reg[31]\(13),
      R => SR(0)
    );
\sig_xfer_addr_reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => sig_xfer_address(14),
      Q => \sig_next_addr_reg_reg[31]\(14),
      R => SR(0)
    );
\sig_xfer_addr_reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => p_1_in2_in,
      Q => \sig_next_addr_reg_reg[31]\(15),
      R => SR(0)
    );
\sig_xfer_addr_reg_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(0),
      Q => \sig_next_addr_reg_reg[31]\(16),
      R => SR(0)
    );
\sig_xfer_addr_reg_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(1),
      Q => \sig_next_addr_reg_reg[31]\(17),
      R => SR(0)
    );
\sig_xfer_addr_reg_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(2),
      Q => \sig_next_addr_reg_reg[31]\(18),
      R => SR(0)
    );
\sig_xfer_addr_reg_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(3),
      Q => \sig_next_addr_reg_reg[31]\(19),
      R => SR(0)
    );
\sig_xfer_addr_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => sig_mbaa_addr_cntr_slice(1),
      Q => \sig_next_addr_reg_reg[31]\(1),
      R => SR(0)
    );
\sig_xfer_addr_reg_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(4),
      Q => \sig_next_addr_reg_reg[31]\(20),
      R => SR(0)
    );
\sig_xfer_addr_reg_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(5),
      Q => \sig_next_addr_reg_reg[31]\(21),
      R => SR(0)
    );
\sig_xfer_addr_reg_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(6),
      Q => \sig_next_addr_reg_reg[31]\(22),
      R => SR(0)
    );
\sig_xfer_addr_reg_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(7),
      Q => \sig_next_addr_reg_reg[31]\(23),
      R => SR(0)
    );
\sig_xfer_addr_reg_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(8),
      Q => \sig_next_addr_reg_reg[31]\(24),
      R => SR(0)
    );
\sig_xfer_addr_reg_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(9),
      Q => \sig_next_addr_reg_reg[31]\(25),
      R => SR(0)
    );
\sig_xfer_addr_reg_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(10),
      Q => \sig_next_addr_reg_reg[31]\(26),
      R => SR(0)
    );
\sig_xfer_addr_reg_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(11),
      Q => \sig_next_addr_reg_reg[31]\(27),
      R => SR(0)
    );
\sig_xfer_addr_reg_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(12),
      Q => \sig_next_addr_reg_reg[31]\(28),
      R => SR(0)
    );
\sig_xfer_addr_reg_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(13),
      Q => \sig_next_addr_reg_reg[31]\(29),
      R => SR(0)
    );
\sig_xfer_addr_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => sig_mbaa_addr_cntr_slice(2),
      Q => \sig_next_addr_reg_reg[31]\(2),
      R => SR(0)
    );
\sig_xfer_addr_reg_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(14),
      Q => \sig_next_addr_reg_reg[31]\(30),
      R => SR(0)
    );
\sig_xfer_addr_reg_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(15),
      Q => \sig_next_addr_reg_reg[31]\(31),
      R => SR(0)
    );
\sig_xfer_addr_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => sig_mbaa_addr_cntr_slice(3),
      Q => \sig_next_addr_reg_reg[31]\(3),
      R => SR(0)
    );
\sig_xfer_addr_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => sig_mbaa_addr_cntr_slice(4),
      Q => \sig_next_addr_reg_reg[31]\(4),
      R => SR(0)
    );
\sig_xfer_addr_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => sig_mbaa_addr_cntr_slice(5),
      Q => \sig_next_addr_reg_reg[31]\(5),
      R => SR(0)
    );
\sig_xfer_addr_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => sig_xfer_address(6),
      Q => \sig_next_addr_reg_reg[31]\(6),
      R => SR(0)
    );
\sig_xfer_addr_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => sig_xfer_address(7),
      Q => \sig_next_addr_reg_reg[31]\(7),
      R => SR(0)
    );
\sig_xfer_addr_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => sig_xfer_address(8),
      Q => \sig_next_addr_reg_reg[31]\(8),
      R => SR(0)
    );
\sig_xfer_addr_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => sig_xfer_address(9),
      Q => \sig_next_addr_reg_reg[31]\(9),
      R => SR(0)
    );
sig_xfer_calc_err_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => sig_pcc2all_calc_err,
      Q => sig_pcc2data_calc_error,
      R => SR(0)
    );
sig_xfer_cmd_cmplt_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sig_pcc2all_calc_err,
      I1 => sig_last_xfer_valid1_out,
      O => sig_xfer_cmd_cmplt_reg0
    );
sig_xfer_cmd_cmplt_reg_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000A00C"
    )
        port map (
      I0 => sig_btt_lt_b2mbaa1_carry_i_1_n_0,
      I1 => sig_xfer_cmd_cmplt_reg_i_3_n_0,
      I2 => sig_xfer_cmd_cmplt_reg_i_4_n_0,
      I3 => sig_btt_cntr(6),
      I4 => sig_xfer_cmd_cmplt_reg_i_5_n_0,
      I5 => sig_xfer_cmd_cmplt_reg_i_6_n_0,
      O => sig_last_xfer_valid1_out
    );
sig_xfer_cmd_cmplt_reg_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAAA"
    )
        port map (
      I0 => sig_btt_lt_b2mbaa1,
      I1 => sig_xfer_cmd_cmplt_reg_i_7_n_0,
      I2 => sig_xfer_cmd_cmplt_reg_i_8_n_0,
      I3 => sig_btt_lt_b2mbaa1_carry_i_1_n_0,
      I4 => sig_xfer_cmd_cmplt_reg_i_9_n_0,
      O => sig_xfer_cmd_cmplt_reg_i_3_n_0
    );
sig_xfer_cmd_cmplt_reg_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => sig_btt_cntr(4),
      I1 => sig_btt_cntr(3),
      I2 => sig_btt_cntr(0),
      I3 => sig_btt_cntr(5),
      I4 => sig_btt_cntr(1),
      I5 => sig_btt_cntr(2),
      O => sig_xfer_cmd_cmplt_reg_i_4_n_0
    );
sig_xfer_cmd_cmplt_reg_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sig_btt_cntr(8),
      I1 => sig_btt_cntr(9),
      O => sig_xfer_cmd_cmplt_reg_i_5_n_0
    );
sig_xfer_cmd_cmplt_reg_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => sig_btt_cntr(7),
      I1 => sig_btt_cntr(10),
      I2 => sig_btt_cntr(11),
      O => sig_xfer_cmd_cmplt_reg_i_6_n_0
    );
sig_xfer_cmd_cmplt_reg_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEDDDDBBBB7777E"
    )
        port map (
      I0 => sig_btt_cntr(2),
      I1 => sig_mbaa_addr_cntr_slice(3),
      I2 => sig_mbaa_addr_cntr_slice(0),
      I3 => sig_mbaa_addr_cntr_slice(1),
      I4 => sig_mbaa_addr_cntr_slice(2),
      I5 => sig_btt_cntr(3),
      O => sig_xfer_cmd_cmplt_reg_i_7_n_0
    );
sig_xfer_cmd_cmplt_reg_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9FF6"
    )
        port map (
      I0 => sig_mbaa_addr_cntr_slice(1),
      I1 => sig_btt_cntr(1),
      I2 => sig_btt_cntr(0),
      I3 => sig_mbaa_addr_cntr_slice(0),
      O => sig_xfer_cmd_cmplt_reg_i_8_n_0
    );
sig_xfer_cmd_cmplt_reg_i_9: unisim.vcomponents.LUT5
    generic map(
      INIT => X"21428418"
    )
        port map (
      I0 => sig_btt_cntr(4),
      I1 => sig_mbaa_addr_cntr_slice(5),
      I2 => sig_btt_lt_b2mbaa1_carry_i_9_n_0,
      I3 => sig_mbaa_addr_cntr_slice(4),
      I4 => sig_btt_cntr(5),
      O => sig_xfer_cmd_cmplt_reg_i_9_n_0
    );
sig_xfer_cmd_cmplt_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => sig_xfer_cmd_cmplt_reg0,
      Q => sig_pcc2data_cmd_cmplt,
      R => SR(0)
    );
\sig_xfer_end_strb_imreg[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => sig_finish_addr_offset_reg(1),
      I1 => sig_finish_addr_offset_reg(0),
      O => \sig_xfer_end_strb_imreg[1]_i_1_n_0\
    );
\sig_xfer_end_strb_imreg[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sig_finish_addr_offset_reg(1),
      I1 => sig_finish_addr_offset_reg(0),
      O => \sig_xfer_end_strb_imreg[3]_i_1_n_0\
    );
\sig_xfer_end_strb_imreg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => '1',
      Q => sig_xfer_end_strb_imreg(0),
      R => \out\
    );
\sig_xfer_end_strb_imreg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => \sig_xfer_end_strb_imreg[1]_i_1_n_0\,
      Q => sig_xfer_end_strb_imreg(1),
      R => \out\
    );
\sig_xfer_end_strb_imreg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => I_END_STRB_GEN_n_0,
      Q => sig_xfer_end_strb_imreg(2),
      R => \out\
    );
\sig_xfer_end_strb_imreg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => \sig_xfer_end_strb_imreg[3]_i_1_n_0\,
      Q => sig_xfer_end_strb_imreg(3),
      R => \out\
    );
\sig_xfer_end_strb_reg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBBB0BBB"
    )
        port map (
      I0 => sig_xfer_end_strb_imreg(0),
      I1 => sig_last_xfer_valid1_out,
      I2 => sig_xfer_len_eq_0_reg,
      I3 => sig_first_xfer,
      I4 => sig_xfer_strt_strb_imreg(0),
      O => \sig_xfer_end_strb_reg[0]_i_1_n_0\
    );
\sig_xfer_end_strb_reg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBBB0BBB"
    )
        port map (
      I0 => sig_xfer_end_strb_imreg(1),
      I1 => sig_last_xfer_valid1_out,
      I2 => sig_xfer_len_eq_0_reg,
      I3 => sig_first_xfer,
      I4 => sig_xfer_strt_strb_imreg(1),
      O => \sig_xfer_end_strb_reg[1]_i_1_n_0\
    );
\sig_xfer_end_strb_reg[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBBB0BBB"
    )
        port map (
      I0 => sig_xfer_end_strb_imreg(2),
      I1 => sig_last_xfer_valid1_out,
      I2 => sig_xfer_len_eq_0_reg,
      I3 => sig_first_xfer,
      I4 => sig_xfer_strt_strb_imreg(2),
      O => \sig_xfer_end_strb_reg[2]_i_1_n_0\
    );
\sig_xfer_end_strb_reg[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF8"
    )
        port map (
      I0 => sig_xfer_reg_empty,
      I1 => sig_ld_xfer_reg,
      I2 => \out\,
      I3 => \^sig_xfer_end_strb_reg_reg[0]_0\,
      O => \sig_xfer_end_strb_reg[3]_i_2_n_0\
    );
\sig_xfer_end_strb_reg[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBBB0BBB"
    )
        port map (
      I0 => sig_xfer_end_strb_imreg(3),
      I1 => sig_last_xfer_valid1_out,
      I2 => sig_xfer_len_eq_0_reg,
      I3 => sig_first_xfer,
      I4 => sig_xfer_strt_strb_imreg(3),
      O => \sig_xfer_end_strb_reg[3]_i_3_n_0\
    );
\sig_xfer_end_strb_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \sig_xfer_end_strb_reg[3]_i_2_n_0\,
      D => \sig_xfer_end_strb_reg[0]_i_1_n_0\,
      Q => \sig_next_last_strb_reg_reg[3]\(0),
      R => sig_rdwr_reset_reg_reg
    );
\sig_xfer_end_strb_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \sig_xfer_end_strb_reg[3]_i_2_n_0\,
      D => \sig_xfer_end_strb_reg[1]_i_1_n_0\,
      Q => \sig_next_last_strb_reg_reg[3]\(1),
      R => sig_rdwr_reset_reg_reg
    );
\sig_xfer_end_strb_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \sig_xfer_end_strb_reg[3]_i_2_n_0\,
      D => \sig_xfer_end_strb_reg[2]_i_1_n_0\,
      Q => \sig_next_last_strb_reg_reg[3]\(2),
      R => sig_rdwr_reset_reg_reg
    );
\sig_xfer_end_strb_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \sig_xfer_end_strb_reg[3]_i_2_n_0\,
      D => \sig_xfer_end_strb_reg[3]_i_3_n_0\,
      Q => \sig_next_last_strb_reg_reg[3]\(3),
      R => sig_rdwr_reset_reg_reg
    );
sig_xfer_eof_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sig_input_eof_reg,
      I1 => sig_last_xfer_valid1_out,
      O => sig_xfer_eof_reg0
    );
sig_xfer_eof_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => sig_xfer_eof_reg0,
      Q => sig_pcc2data_eof,
      R => SR(0)
    );
sig_xfer_is_seq_reg_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sig_last_xfer_valid1_out,
      O => sig_xfer_is_seq_reg_i_1_n_0
    );
sig_xfer_is_seq_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => sig_xfer_is_seq_reg_i_1_n_0,
      Q => sig_pcc2data_sequential,
      R => SR(0)
    );
sig_xfer_len_eq_0_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000011110"
    )
        port map (
      I0 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[4]\,
      I1 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[5]\,
      I2 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[1]\,
      I3 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[0]\,
      I4 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[2]\,
      I5 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[3]\,
      O => sig_xfer_len_eq_0
    );
sig_xfer_len_eq_0_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => sig_xfer_len_eq_0,
      Q => sig_xfer_len_eq_0_reg,
      R => \out\
    );
\sig_xfer_len_reg[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[2]\,
      I1 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[0]\,
      I2 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[1]\,
      O => sig_byte_change_minus1(2)
    );
\sig_xfer_len_reg[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA9"
    )
        port map (
      I0 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[3]\,
      I1 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[1]\,
      I2 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[0]\,
      I3 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[2]\,
      O => sig_byte_change_minus1(3)
    );
\sig_xfer_len_reg[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA9"
    )
        port map (
      I0 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[4]\,
      I1 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[2]\,
      I2 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[0]\,
      I3 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[1]\,
      I4 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[3]\,
      O => sig_byte_change_minus1(4)
    );
\sig_xfer_len_reg[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA9"
    )
        port map (
      I0 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[5]\,
      I1 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[3]\,
      I2 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[1]\,
      I3 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[0]\,
      I4 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[2]\,
      I5 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[4]\,
      O => sig_byte_change_minus1(5)
    );
\sig_xfer_len_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => sig_byte_change_minus1(2),
      Q => \^sig_next_len_reg_reg[3]\(0),
      R => SR(0)
    );
\sig_xfer_len_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => sig_byte_change_minus1(3),
      Q => \^sig_next_len_reg_reg[3]\(1),
      R => SR(0)
    );
\sig_xfer_len_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => sig_byte_change_minus1(4),
      Q => \^sig_next_len_reg_reg[3]\(2),
      R => SR(0)
    );
\sig_xfer_len_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => sig_byte_change_minus1(5),
      Q => \^sig_next_len_reg_reg[3]\(3),
      R => SR(0)
    );
sig_xfer_reg_empty_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sig_xfer_reg_empty,
      I1 => sig_ld_xfer_reg,
      O => sig_push_xfer_reg15_out
    );
sig_xfer_reg_empty_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F3F200F2"
    )
        port map (
      I0 => sig_cmd2dre_valid_reg_n_0,
      I1 => \^sig_pcc2data_cmd_valid\,
      I2 => sig_wdc2pcc_cmd_ready,
      I3 => \^sig_pcc2addr_cmd_valid\,
      I4 => sig_push_addr_reg1_out,
      I5 => sig_push_xfer_reg15_out,
      O => \^sig_xfer_end_strb_reg_reg[0]_0\
    );
sig_xfer_reg_empty_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => '0',
      Q => sig_xfer_reg_empty,
      S => SR(0)
    );
\sig_xfer_strt_strb_imreg[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sig_strbgen_addr_reg(0),
      I1 => sig_strbgen_addr_reg(1),
      O => \sig_xfer_strt_strb_imreg[0]_i_1_n_0\
    );
\sig_xfer_strt_strb_imreg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FFEB"
    )
        port map (
      I0 => \sig_strbgen_bytes_reg_reg_n_0_[2]\,
      I1 => sig_strbgen_addr_reg(0),
      I2 => \sig_strbgen_bytes_reg_reg_n_0_[0]\,
      I3 => \sig_strbgen_bytes_reg_reg_n_0_[1]\,
      I4 => sig_strbgen_addr_reg(1),
      O => sig_xfer_strt_strb(1)
    );
\sig_xfer_strt_strb_imreg[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77777621"
    )
        port map (
      I0 => sig_strbgen_addr_reg(1),
      I1 => sig_strbgen_addr_reg(0),
      I2 => \sig_strbgen_bytes_reg_reg_n_0_[0]\,
      I3 => \sig_strbgen_bytes_reg_reg_n_0_[1]\,
      I4 => \sig_strbgen_bytes_reg_reg_n_0_[2]\,
      O => sig_xfer_strt_strb(2)
    );
\sig_xfer_strt_strb_imreg[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFEA81"
    )
        port map (
      I0 => sig_strbgen_addr_reg(1),
      I1 => \sig_strbgen_bytes_reg_reg_n_0_[0]\,
      I2 => sig_strbgen_addr_reg(0),
      I3 => \sig_strbgen_bytes_reg_reg_n_0_[1]\,
      I4 => \sig_strbgen_bytes_reg_reg_n_0_[2]\,
      O => \I_STRT_STRB_GEN/sig_strb_value17_in\
    );
\sig_xfer_strt_strb_imreg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => \sig_xfer_strt_strb_imreg[0]_i_1_n_0\,
      Q => sig_xfer_strt_strb_imreg(0),
      R => \out\
    );
\sig_xfer_strt_strb_imreg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => sig_xfer_strt_strb(1),
      Q => sig_xfer_strt_strb_imreg(1),
      R => \out\
    );
\sig_xfer_strt_strb_imreg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => sig_xfer_strt_strb(2),
      Q => sig_xfer_strt_strb_imreg(2),
      R => \out\
    );
\sig_xfer_strt_strb_imreg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => \I_STRT_STRB_GEN/sig_strb_value17_in\,
      Q => sig_xfer_strt_strb_imreg(3),
      R => \out\
    );
\sig_xfer_strt_strb_reg[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => sig_xfer_strt_strb_imreg(0),
      I1 => sig_first_xfer,
      O => sig_xfer_strt_strb2use(0)
    );
\sig_xfer_strt_strb_reg[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => sig_xfer_strt_strb_imreg(1),
      I1 => sig_first_xfer,
      O => sig_xfer_strt_strb2use(1)
    );
\sig_xfer_strt_strb_reg[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => sig_xfer_strt_strb_imreg(2),
      I1 => sig_first_xfer,
      O => sig_xfer_strt_strb2use(2)
    );
\sig_xfer_strt_strb_reg[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => sig_xfer_strt_strb_imreg(3),
      I1 => sig_first_xfer,
      O => sig_xfer_strt_strb2use(3)
    );
\sig_xfer_strt_strb_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => sig_xfer_strt_strb2use(0),
      Q => \sig_next_strt_strb_reg_reg[3]\(0),
      R => SR(0)
    );
\sig_xfer_strt_strb_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => sig_xfer_strt_strb2use(1),
      Q => \sig_next_strt_strb_reg_reg[3]\(1),
      R => SR(0)
    );
\sig_xfer_strt_strb_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => sig_xfer_strt_strb2use(2),
      Q => \sig_next_strt_strb_reg_reg[3]\(2),
      R => SR(0)
    );
\sig_xfer_strt_strb_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => sig_xfer_strt_strb2use(3),
      Q => \sig_next_strt_strb_reg_reg[3]\(3),
      R => SR(0)
    );
sig_xfer_type_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => sig_input_burst_type_reg,
      Q => sig_pcc2addr_burst(0),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_myip_burst_test_0_0_srl_fifo_rbu_f is
  port (
    \GEN_OMIT_STORE_FORWARD.sig_coelsc_decerr_reg_reg\ : out STD_LOGIC;
    \GEN_OMIT_STORE_FORWARD.sig_coelsc_slverr_reg_reg\ : out STD_LOGIC;
    m00_axi_bready : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    FIFO_Full_reg_0 : out STD_LOGIC;
    \out\ : in STD_LOGIC;
    m00_axi_aclk : in STD_LOGIC;
    sig_data2wsc_calc_err_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    sig_wsc2stat_status : in STD_LOGIC_VECTOR ( 1 downto 0 );
    sig_inhibit_rdy_n : in STD_LOGIC;
    \INFERRED_GEN.cnt_i_reg[2]\ : in STD_LOGIC;
    m00_axi_bvalid : in STD_LOGIC;
    sig_coelsc_reg_empty : in STD_LOGIC;
    \INFERRED_GEN.cnt_i_reg[2]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    m00_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_myip_burst_test_0_0_srl_fifo_rbu_f : entity is "srl_fifo_rbu_f";
end design_1_myip_burst_test_0_0_srl_fifo_rbu_f;

architecture STRUCTURE of design_1_myip_burst_test_0_0_srl_fifo_rbu_f is
  signal CNTR_INCR_DECR_ADDN_F_I_n_2 : STD_LOGIC;
  signal CNTR_INCR_DECR_ADDN_F_I_n_3 : STD_LOGIC;
  signal FIFO_Full_i_2_n_0 : STD_LOGIC;
  signal FIFO_Full_reg_n_0 : STD_LOGIC;
  signal fifo_full_p1 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of FIFO_Full_i_2 : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of m00_axi_bready_INST_0 : label is "soft_lutpair25";
begin
CNTR_INCR_DECR_ADDN_F_I: entity work.design_1_myip_burst_test_0_0_cntr_incr_decr_addn_f
     port map (
      FIFO_Full_reg => FIFO_Full_reg_0,
      FIFO_Full_reg_0 => FIFO_Full_reg_n_0,
      \INFERRED_GEN.cnt_i_reg[2]_0\ => \INFERRED_GEN.cnt_i_reg[2]\,
      \INFERRED_GEN.cnt_i_reg[2]_1\(0) => \INFERRED_GEN.cnt_i_reg[2]_0\(0),
      Q(2) => Q(0),
      Q(1) => CNTR_INCR_DECR_ADDN_F_I_n_2,
      Q(0) => CNTR_INCR_DECR_ADDN_F_I_n_3,
      fifo_full_p1 => fifo_full_p1,
      m00_axi_aclk => m00_axi_aclk,
      m00_axi_bvalid => m00_axi_bvalid,
      \out\ => \out\,
      sig_coelsc_reg_empty => sig_coelsc_reg_empty,
      sig_data2wsc_calc_err_reg(0) => sig_data2wsc_calc_err_reg(0),
      sig_inhibit_rdy_n => sig_inhibit_rdy_n,
      sig_inhibit_rdy_n_reg => FIFO_Full_i_2_n_0
    );
DYNSHREG_F_I: entity work.design_1_myip_burst_test_0_0_dynshreg_f
     port map (
      FIFO_Full_reg => FIFO_Full_reg_n_0,
      \GEN_OMIT_STORE_FORWARD.sig_coelsc_decerr_reg_reg\ => \GEN_OMIT_STORE_FORWARD.sig_coelsc_decerr_reg_reg\,
      \GEN_OMIT_STORE_FORWARD.sig_coelsc_slverr_reg_reg\ => \GEN_OMIT_STORE_FORWARD.sig_coelsc_slverr_reg_reg\,
      addr(0) => CNTR_INCR_DECR_ADDN_F_I_n_2,
      addr(1) => CNTR_INCR_DECR_ADDN_F_I_n_3,
      m00_axi_aclk => m00_axi_aclk,
      m00_axi_bresp(1 downto 0) => m00_axi_bresp(1 downto 0),
      m00_axi_bvalid => m00_axi_bvalid,
      sig_data2wsc_calc_err_reg(0) => sig_data2wsc_calc_err_reg(0),
      sig_inhibit_rdy_n => sig_inhibit_rdy_n,
      sig_wsc2stat_status(1 downto 0) => sig_wsc2stat_status(1 downto 0)
    );
FIFO_Full_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => sig_inhibit_rdy_n,
      I1 => FIFO_Full_reg_n_0,
      I2 => m00_axi_bvalid,
      O => FIFO_Full_i_2_n_0
    );
FIFO_Full_reg: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      D => fifo_full_p1,
      Q => FIFO_Full_reg_n_0,
      R => \out\
    );
m00_axi_bready_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sig_inhibit_rdy_n,
      I1 => FIFO_Full_reg_n_0,
      O => m00_axi_bready
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_myip_burst_test_0_0_srl_fifo_rbu_f__parameterized0\ is
  port (
    \INFERRED_GEN.cnt_i_reg[0]\ : out STD_LOGIC;
    p_0_in : out STD_LOGIC;
    \GEN_OMIT_STORE_FORWARD.sig_coelsc_interr_reg_reg\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    \INFERRED_GEN.cnt_i_reg[1]\ : out STD_LOGIC;
    sig_push_coelsc_reg : out STD_LOGIC;
    p_4_out : out STD_LOGIC;
    \sig_wdc_statcnt_reg[2]\ : out STD_LOGIC;
    \sig_wdc_statcnt_reg[1]\ : out STD_LOGIC;
    \sig_wdc_statcnt_reg[0]\ : out STD_LOGIC;
    \out\ : in STD_LOGIC;
    m00_axi_aclk : in STD_LOGIC;
    \GEN_OMIT_STORE_FORWARD.sig_coelsc_reg_empty_reg\ : in STD_LOGIC;
    \GEN_OMIT_STORE_FORWARD.sig_tlast_err_stop_reg\ : in STD_LOGIC;
    sig_tlast_err_stop : in STD_LOGIC;
    sig_push_to_wsc : in STD_LOGIC;
    sig_inhibit_rdy_n_reg : in STD_LOGIC;
    sig_coelsc_reg_empty : in STD_LOGIC;
    \INFERRED_GEN.cnt_i_reg[2]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    sig_wsc2stat_status : in STD_LOGIC_VECTOR ( 0 to 0 );
    sig_wdc_statcnt : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \in\ : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_myip_burst_test_0_0_srl_fifo_rbu_f__parameterized0\ : entity is "srl_fifo_rbu_f";
end \design_1_myip_burst_test_0_0_srl_fifo_rbu_f__parameterized0\;

architecture STRUCTURE of \design_1_myip_burst_test_0_0_srl_fifo_rbu_f__parameterized0\ is
  signal CNTR_INCR_DECR_ADDN_F_I_n_2 : STD_LOGIC;
  signal CNTR_INCR_DECR_ADDN_F_I_n_3 : STD_LOGIC;
  signal \^gen_omit_store_forward.sig_coelsc_interr_reg_reg\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^inferred_gen.cnt_i_reg[0]\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal fifo_full_p1 : STD_LOGIC;
begin
  \GEN_OMIT_STORE_FORWARD.sig_coelsc_interr_reg_reg\(1 downto 0) <= \^gen_omit_store_forward.sig_coelsc_interr_reg_reg\(1 downto 0);
  \INFERRED_GEN.cnt_i_reg[0]\ <= \^inferred_gen.cnt_i_reg[0]\;
  Q(0) <= \^q\(0);
CNTR_INCR_DECR_ADDN_F_I: entity work.design_1_myip_burst_test_0_0_cntr_incr_decr_addn_f_1
     port map (
      FIFO_Full_reg => \^inferred_gen.cnt_i_reg[0]\,
      \GEN_OMIT_STORE_FORWARD.sig_coelsc_reg_empty_reg\ => \GEN_OMIT_STORE_FORWARD.sig_coelsc_reg_empty_reg\,
      \GEN_OMIT_STORE_FORWARD.sig_tlast_err_stop_reg\ => \GEN_OMIT_STORE_FORWARD.sig_tlast_err_stop_reg\,
      \INFERRED_GEN.cnt_i_reg[1]_0\ => \INFERRED_GEN.cnt_i_reg[1]\,
      \INFERRED_GEN.cnt_i_reg[2]_0\(0) => \INFERRED_GEN.cnt_i_reg[2]\(0),
      Q(2) => \^q\(0),
      Q(1) => CNTR_INCR_DECR_ADDN_F_I_n_2,
      Q(0) => CNTR_INCR_DECR_ADDN_F_I_n_3,
      fifo_full_p1 => fifo_full_p1,
      m00_axi_aclk => m00_axi_aclk,
      \out\(0) => \^gen_omit_store_forward.sig_coelsc_interr_reg_reg\(1),
      sig_coelsc_reg_empty => sig_coelsc_reg_empty,
      sig_inhibit_rdy_n_reg => sig_inhibit_rdy_n_reg,
      sig_push_to_wsc => sig_push_to_wsc,
      sig_rdwr_reset_reg_reg => \out\,
      sig_tlast_err_stop => sig_tlast_err_stop,
      sig_wdc_statcnt(2 downto 0) => sig_wdc_statcnt(2 downto 0),
      \sig_wdc_statcnt_reg[0]\ => \sig_wdc_statcnt_reg[0]\,
      \sig_wdc_statcnt_reg[1]\ => \sig_wdc_statcnt_reg[1]\,
      \sig_wdc_statcnt_reg[2]\ => \sig_wdc_statcnt_reg[2]\
    );
DYNSHREG_F_I: entity work.\design_1_myip_burst_test_0_0_dynshreg_f__parameterized0\
     port map (
      FIFO_Full_reg => \^inferred_gen.cnt_i_reg[0]\,
      \GEN_OMIT_STORE_FORWARD.sig_coelsc_interr_reg_reg\(1 downto 0) => \^gen_omit_store_forward.sig_coelsc_interr_reg_reg\(1 downto 0),
      \INFERRED_GEN.cnt_i_reg[2]\(0) => \INFERRED_GEN.cnt_i_reg[2]\(0),
      Q(2) => \^q\(0),
      Q(1) => CNTR_INCR_DECR_ADDN_F_I_n_2,
      Q(0) => CNTR_INCR_DECR_ADDN_F_I_n_3,
      \in\(2 downto 0) => \in\(2 downto 0),
      m00_axi_aclk => m00_axi_aclk,
      p_0_in => p_0_in,
      p_4_out => p_4_out,
      sig_coelsc_reg_empty => sig_coelsc_reg_empty,
      sig_inhibit_rdy_n_reg => sig_inhibit_rdy_n_reg,
      sig_push_coelsc_reg => sig_push_coelsc_reg,
      sig_push_to_wsc => sig_push_to_wsc,
      sig_tlast_err_stop => sig_tlast_err_stop,
      sig_wsc2stat_status(0) => sig_wsc2stat_status(0)
    );
FIFO_Full_reg: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      D => fifo_full_p1,
      Q => \^inferred_gen.cnt_i_reg[0]\,
      R => \out\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_myip_burst_test_0_0_srl_fifo_f is
  port (
    \GEN_OMIT_STORE_FORWARD.sig_coelsc_decerr_reg_reg\ : out STD_LOGIC;
    \GEN_OMIT_STORE_FORWARD.sig_coelsc_slverr_reg_reg\ : out STD_LOGIC;
    m00_axi_bready : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    FIFO_Full_reg : out STD_LOGIC;
    \out\ : in STD_LOGIC;
    m00_axi_aclk : in STD_LOGIC;
    sig_data2wsc_calc_err_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    sig_wsc2stat_status : in STD_LOGIC_VECTOR ( 1 downto 0 );
    sig_inhibit_rdy_n : in STD_LOGIC;
    \INFERRED_GEN.cnt_i_reg[2]\ : in STD_LOGIC;
    m00_axi_bvalid : in STD_LOGIC;
    sig_coelsc_reg_empty : in STD_LOGIC;
    \INFERRED_GEN.cnt_i_reg[2]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    m00_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_myip_burst_test_0_0_srl_fifo_f : entity is "srl_fifo_f";
end design_1_myip_burst_test_0_0_srl_fifo_f;

architecture STRUCTURE of design_1_myip_burst_test_0_0_srl_fifo_f is
begin
I_SRL_FIFO_RBU_F: entity work.design_1_myip_burst_test_0_0_srl_fifo_rbu_f
     port map (
      FIFO_Full_reg_0 => FIFO_Full_reg,
      \GEN_OMIT_STORE_FORWARD.sig_coelsc_decerr_reg_reg\ => \GEN_OMIT_STORE_FORWARD.sig_coelsc_decerr_reg_reg\,
      \GEN_OMIT_STORE_FORWARD.sig_coelsc_slverr_reg_reg\ => \GEN_OMIT_STORE_FORWARD.sig_coelsc_slverr_reg_reg\,
      \INFERRED_GEN.cnt_i_reg[2]\ => \INFERRED_GEN.cnt_i_reg[2]\,
      \INFERRED_GEN.cnt_i_reg[2]_0\(0) => \INFERRED_GEN.cnt_i_reg[2]_0\(0),
      Q(0) => Q(0),
      m00_axi_aclk => m00_axi_aclk,
      m00_axi_bready => m00_axi_bready,
      m00_axi_bresp(1 downto 0) => m00_axi_bresp(1 downto 0),
      m00_axi_bvalid => m00_axi_bvalid,
      \out\ => \out\,
      sig_coelsc_reg_empty => sig_coelsc_reg_empty,
      sig_data2wsc_calc_err_reg(0) => sig_data2wsc_calc_err_reg(0),
      sig_inhibit_rdy_n => sig_inhibit_rdy_n,
      sig_wsc2stat_status(1 downto 0) => sig_wsc2stat_status(1 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_myip_burst_test_0_0_srl_fifo_f__parameterized0\ is
  port (
    \INFERRED_GEN.cnt_i_reg[0]\ : out STD_LOGIC;
    p_0_in : out STD_LOGIC;
    \GEN_OMIT_STORE_FORWARD.sig_coelsc_interr_reg_reg\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    \INFERRED_GEN.cnt_i_reg[1]\ : out STD_LOGIC;
    sig_push_coelsc_reg : out STD_LOGIC;
    p_4_out : out STD_LOGIC;
    \sig_wdc_statcnt_reg[2]\ : out STD_LOGIC;
    \sig_wdc_statcnt_reg[1]\ : out STD_LOGIC;
    \sig_wdc_statcnt_reg[0]\ : out STD_LOGIC;
    \out\ : in STD_LOGIC;
    m00_axi_aclk : in STD_LOGIC;
    \GEN_OMIT_STORE_FORWARD.sig_coelsc_reg_empty_reg\ : in STD_LOGIC;
    \GEN_OMIT_STORE_FORWARD.sig_tlast_err_stop_reg\ : in STD_LOGIC;
    sig_tlast_err_stop : in STD_LOGIC;
    sig_push_to_wsc : in STD_LOGIC;
    sig_inhibit_rdy_n_reg : in STD_LOGIC;
    sig_coelsc_reg_empty : in STD_LOGIC;
    \INFERRED_GEN.cnt_i_reg[2]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    sig_wsc2stat_status : in STD_LOGIC_VECTOR ( 0 to 0 );
    sig_wdc_statcnt : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \in\ : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_myip_burst_test_0_0_srl_fifo_f__parameterized0\ : entity is "srl_fifo_f";
end \design_1_myip_burst_test_0_0_srl_fifo_f__parameterized0\;

architecture STRUCTURE of \design_1_myip_burst_test_0_0_srl_fifo_f__parameterized0\ is
begin
I_SRL_FIFO_RBU_F: entity work.\design_1_myip_burst_test_0_0_srl_fifo_rbu_f__parameterized0\
     port map (
      \GEN_OMIT_STORE_FORWARD.sig_coelsc_interr_reg_reg\(1 downto 0) => \GEN_OMIT_STORE_FORWARD.sig_coelsc_interr_reg_reg\(1 downto 0),
      \GEN_OMIT_STORE_FORWARD.sig_coelsc_reg_empty_reg\ => \GEN_OMIT_STORE_FORWARD.sig_coelsc_reg_empty_reg\,
      \GEN_OMIT_STORE_FORWARD.sig_tlast_err_stop_reg\ => \GEN_OMIT_STORE_FORWARD.sig_tlast_err_stop_reg\,
      \INFERRED_GEN.cnt_i_reg[0]\ => \INFERRED_GEN.cnt_i_reg[0]\,
      \INFERRED_GEN.cnt_i_reg[1]\ => \INFERRED_GEN.cnt_i_reg[1]\,
      \INFERRED_GEN.cnt_i_reg[2]\(0) => \INFERRED_GEN.cnt_i_reg[2]\(0),
      Q(0) => Q(0),
      \in\(2 downto 0) => \in\(2 downto 0),
      m00_axi_aclk => m00_axi_aclk,
      \out\ => \out\,
      p_0_in => p_0_in,
      p_4_out => p_4_out,
      sig_coelsc_reg_empty => sig_coelsc_reg_empty,
      sig_inhibit_rdy_n_reg => sig_inhibit_rdy_n_reg,
      sig_push_coelsc_reg => sig_push_coelsc_reg,
      sig_push_to_wsc => sig_push_to_wsc,
      sig_tlast_err_stop => sig_tlast_err_stop,
      sig_wdc_statcnt(2 downto 0) => sig_wdc_statcnt(2 downto 0),
      \sig_wdc_statcnt_reg[0]\ => \sig_wdc_statcnt_reg[0]\,
      \sig_wdc_statcnt_reg[1]\ => \sig_wdc_statcnt_reg[1]\,
      \sig_wdc_statcnt_reg[2]\ => \sig_wdc_statcnt_reg[2]\,
      sig_wsc2stat_status(0) => sig_wsc2stat_status(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_myip_burst_test_0_0_axi_master_burst_fifo is
  port (
    sig_init_reg2_reg_0 : out STD_LOGIC;
    sig_m_valid_out_reg : out STD_LOGIC;
    \GEN_OMIT_STORE_FORWARD.sig_coelsc_decerr_reg_reg\ : out STD_LOGIC;
    \GEN_OMIT_STORE_FORWARD.sig_coelsc_slverr_reg_reg\ : out STD_LOGIC;
    sig_init_done_reg_0 : out STD_LOGIC;
    m00_axi_bready : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    FIFO_Full_reg : out STD_LOGIC;
    \out\ : in STD_LOGIC;
    m00_axi_aclk : in STD_LOGIC;
    sig_m_valid_dup_reg : in STD_LOGIC;
    sig_data2wsc_calc_err_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    sig_wsc2stat_status : in STD_LOGIC_VECTOR ( 1 downto 0 );
    sig_init_done : in STD_LOGIC;
    \INFERRED_GEN.cnt_i_reg[2]\ : in STD_LOGIC;
    m00_axi_bvalid : in STD_LOGIC;
    sig_coelsc_reg_empty : in STD_LOGIC;
    \INFERRED_GEN.cnt_i_reg[2]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    m00_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_myip_burst_test_0_0_axi_master_burst_fifo : entity is "axi_master_burst_fifo";
end design_1_myip_burst_test_0_0_axi_master_burst_fifo;

architecture STRUCTURE of design_1_myip_burst_test_0_0_axi_master_burst_fifo is
  signal \GEN_OMIT_STORE_FORWARD.I_DATA_CNTL_STATUS_FIFO/sig_init_reg2\ : STD_LOGIC;
  signal sig_inhibit_rdy_n : STD_LOGIC;
  signal sig_inhibit_rdy_n_i_1_n_0 : STD_LOGIC;
  signal sig_init_done_0 : STD_LOGIC;
  signal sig_init_done_i_1_n_0 : STD_LOGIC;
  signal \^sig_init_reg2_reg_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of sig_init_done_i_1 : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \sig_init_done_i_1__0\ : label is "soft_lutpair26";
begin
  sig_init_reg2_reg_0 <= \^sig_init_reg2_reg_0\;
\USE_SRL_FIFO.I_SYNC_FIFO\: entity work.design_1_myip_burst_test_0_0_srl_fifo_f
     port map (
      FIFO_Full_reg => FIFO_Full_reg,
      \GEN_OMIT_STORE_FORWARD.sig_coelsc_decerr_reg_reg\ => \GEN_OMIT_STORE_FORWARD.sig_coelsc_decerr_reg_reg\,
      \GEN_OMIT_STORE_FORWARD.sig_coelsc_slverr_reg_reg\ => \GEN_OMIT_STORE_FORWARD.sig_coelsc_slverr_reg_reg\,
      \INFERRED_GEN.cnt_i_reg[2]\ => \INFERRED_GEN.cnt_i_reg[2]\,
      \INFERRED_GEN.cnt_i_reg[2]_0\(0) => \INFERRED_GEN.cnt_i_reg[2]_0\(0),
      Q(0) => Q(0),
      m00_axi_aclk => m00_axi_aclk,
      m00_axi_bready => m00_axi_bready,
      m00_axi_bresp(1 downto 0) => m00_axi_bresp(1 downto 0),
      m00_axi_bvalid => m00_axi_bvalid,
      \out\ => \out\,
      sig_coelsc_reg_empty => sig_coelsc_reg_empty,
      sig_data2wsc_calc_err_reg(0) => sig_data2wsc_calc_err_reg(0),
      sig_inhibit_rdy_n => sig_inhibit_rdy_n,
      sig_wsc2stat_status(1 downto 0) => sig_wsc2stat_status(1 downto 0)
    );
sig_inhibit_rdy_n_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sig_init_done_0,
      I1 => sig_inhibit_rdy_n,
      O => sig_inhibit_rdy_n_i_1_n_0
    );
sig_inhibit_rdy_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => '1',
      D => sig_inhibit_rdy_n_i_1_n_0,
      Q => sig_inhibit_rdy_n,
      R => \out\
    );
sig_init_done_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => \^sig_init_reg2_reg_0\,
      I1 => \GEN_OMIT_STORE_FORWARD.I_DATA_CNTL_STATUS_FIFO/sig_init_reg2\,
      I2 => sig_init_done_0,
      I3 => \out\,
      O => sig_init_done_i_1_n_0
    );
\sig_init_done_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => \^sig_init_reg2_reg_0\,
      I1 => \GEN_OMIT_STORE_FORWARD.I_DATA_CNTL_STATUS_FIFO/sig_init_reg2\,
      I2 => sig_init_done,
      I3 => \out\,
      O => sig_init_done_reg_0
    );
sig_init_done_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => '1',
      D => sig_init_done_i_1_n_0,
      Q => sig_init_done_0,
      R => '0'
    );
sig_init_reg2_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => '1',
      D => \^sig_init_reg2_reg_0\,
      Q => \GEN_OMIT_STORE_FORWARD.I_DATA_CNTL_STATUS_FIFO/sig_init_reg2\,
      S => \out\
    );
sig_init_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => '1',
      D => \out\,
      Q => \^sig_init_reg2_reg_0\,
      R => '0'
    );
\sig_m_valid_dup_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \^sig_init_reg2_reg_0\,
      I1 => \out\,
      I2 => sig_m_valid_dup_reg,
      O => sig_m_valid_out_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_myip_burst_test_0_0_axi_master_burst_fifo__parameterized0\ is
  port (
    \INFERRED_GEN.cnt_i_reg[0]\ : out STD_LOGIC;
    sig_init_done : out STD_LOGIC;
    \INFERRED_GEN.cnt_i_reg[0]_0\ : out STD_LOGIC;
    p_0_in : out STD_LOGIC;
    \GEN_OMIT_STORE_FORWARD.sig_coelsc_interr_reg_reg\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    \INFERRED_GEN.cnt_i_reg[1]\ : out STD_LOGIC;
    sig_push_coelsc_reg : out STD_LOGIC;
    p_4_out : out STD_LOGIC;
    \sig_wdc_statcnt_reg[2]\ : out STD_LOGIC;
    \sig_wdc_statcnt_reg[1]\ : out STD_LOGIC;
    \sig_wdc_statcnt_reg[0]\ : out STD_LOGIC;
    \out\ : in STD_LOGIC;
    m00_axi_aclk : in STD_LOGIC;
    sig_init_reg_reg : in STD_LOGIC;
    \GEN_OMIT_STORE_FORWARD.sig_coelsc_reg_empty_reg\ : in STD_LOGIC;
    \GEN_OMIT_STORE_FORWARD.sig_tlast_err_stop_reg\ : in STD_LOGIC;
    sig_tlast_err_stop : in STD_LOGIC;
    sig_push_to_wsc : in STD_LOGIC;
    sig_coelsc_reg_empty : in STD_LOGIC;
    \INFERRED_GEN.cnt_i_reg[2]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    sig_wsc2stat_status : in STD_LOGIC_VECTOR ( 0 to 0 );
    sig_wdc_statcnt : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \in\ : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_myip_burst_test_0_0_axi_master_burst_fifo__parameterized0\ : entity is "axi_master_burst_fifo";
end \design_1_myip_burst_test_0_0_axi_master_burst_fifo__parameterized0\;

architecture STRUCTURE of \design_1_myip_burst_test_0_0_axi_master_burst_fifo__parameterized0\ is
  signal \^inferred_gen.cnt_i_reg[0]_0\ : STD_LOGIC;
  signal \sig_inhibit_rdy_n_i_1__0_n_0\ : STD_LOGIC;
  signal \^sig_init_done\ : STD_LOGIC;
begin
  \INFERRED_GEN.cnt_i_reg[0]_0\ <= \^inferred_gen.cnt_i_reg[0]_0\;
  sig_init_done <= \^sig_init_done\;
\USE_SRL_FIFO.I_SYNC_FIFO\: entity work.\design_1_myip_burst_test_0_0_srl_fifo_f__parameterized0\
     port map (
      \GEN_OMIT_STORE_FORWARD.sig_coelsc_interr_reg_reg\(1 downto 0) => \GEN_OMIT_STORE_FORWARD.sig_coelsc_interr_reg_reg\(1 downto 0),
      \GEN_OMIT_STORE_FORWARD.sig_coelsc_reg_empty_reg\ => \GEN_OMIT_STORE_FORWARD.sig_coelsc_reg_empty_reg\,
      \GEN_OMIT_STORE_FORWARD.sig_tlast_err_stop_reg\ => \GEN_OMIT_STORE_FORWARD.sig_tlast_err_stop_reg\,
      \INFERRED_GEN.cnt_i_reg[0]\ => \INFERRED_GEN.cnt_i_reg[0]\,
      \INFERRED_GEN.cnt_i_reg[1]\ => \INFERRED_GEN.cnt_i_reg[1]\,
      \INFERRED_GEN.cnt_i_reg[2]\(0) => \INFERRED_GEN.cnt_i_reg[2]\(0),
      Q(0) => Q(0),
      \in\(2 downto 0) => \in\(2 downto 0),
      m00_axi_aclk => m00_axi_aclk,
      \out\ => \out\,
      p_0_in => p_0_in,
      p_4_out => p_4_out,
      sig_coelsc_reg_empty => sig_coelsc_reg_empty,
      sig_inhibit_rdy_n_reg => \^inferred_gen.cnt_i_reg[0]_0\,
      sig_push_coelsc_reg => sig_push_coelsc_reg,
      sig_push_to_wsc => sig_push_to_wsc,
      sig_tlast_err_stop => sig_tlast_err_stop,
      sig_wdc_statcnt(2 downto 0) => sig_wdc_statcnt(2 downto 0),
      \sig_wdc_statcnt_reg[0]\ => \sig_wdc_statcnt_reg[0]\,
      \sig_wdc_statcnt_reg[1]\ => \sig_wdc_statcnt_reg[1]\,
      \sig_wdc_statcnt_reg[2]\ => \sig_wdc_statcnt_reg[2]\,
      sig_wsc2stat_status(0) => sig_wsc2stat_status(0)
    );
\sig_inhibit_rdy_n_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^sig_init_done\,
      I1 => \^inferred_gen.cnt_i_reg[0]_0\,
      O => \sig_inhibit_rdy_n_i_1__0_n_0\
    );
sig_inhibit_rdy_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => '1',
      D => \sig_inhibit_rdy_n_i_1__0_n_0\,
      Q => \^inferred_gen.cnt_i_reg[0]_0\,
      R => \out\
    );
sig_init_done_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => '1',
      D => sig_init_reg_reg,
      Q => \^sig_init_done\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_myip_burst_test_0_0_axi_master_burst_wr_status_cntl is
  port (
    sig_init_reg : out STD_LOGIC;
    \INFERRED_GEN.cnt_i_reg[0]\ : out STD_LOGIC;
    sig_wsc2stat_status_valid : out STD_LOGIC;
    sig_wsc2stat_status : out STD_LOGIC_VECTOR ( 2 downto 0 );
    sig_inhibit_rdy_n : out STD_LOGIC;
    sig_m_valid_out_reg : out STD_LOGIC;
    sig_next_calc_error_reg_reg : out STD_LOGIC;
    m00_axi_bready : out STD_LOGIC;
    sig_stat_error : out STD_LOGIC;
    \out\ : in STD_LOGIC;
    m00_axi_aclk : in STD_LOGIC;
    p_5_out : in STD_LOGIC;
    sig_m_valid_dup_reg : in STD_LOGIC;
    sig_next_calc_error_reg : in STD_LOGIC;
    sig_cmd2all_doing_write : in STD_LOGIC;
    sig_pcc2data_cmd_valid : in STD_LOGIC;
    sig_status_reg_empty : in STD_LOGIC;
    \GEN_OMIT_STORE_FORWARD.sig_tlast_err_stop_reg\ : in STD_LOGIC;
    sig_tlast_err_stop : in STD_LOGIC;
    sig_push_to_wsc : in STD_LOGIC;
    m00_axi_bvalid : in STD_LOGIC;
    m00_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \in\ : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_myip_burst_test_0_0_axi_master_burst_wr_status_cntl : entity is "axi_master_burst_wr_status_cntl";
end design_1_myip_burst_test_0_0_axi_master_burst_wr_status_cntl;

architecture STRUCTURE of design_1_myip_burst_test_0_0_axi_master_burst_wr_status_cntl is
  signal \GEN_OMIT_STORE_FORWARD.I_DATA_CNTL_STATUS_FIFO_n_10\ : STD_LOGIC;
  signal \GEN_OMIT_STORE_FORWARD.I_DATA_CNTL_STATUS_FIFO_n_11\ : STD_LOGIC;
  signal \GEN_OMIT_STORE_FORWARD.I_DATA_CNTL_STATUS_FIFO_n_12\ : STD_LOGIC;
  signal \GEN_OMIT_STORE_FORWARD.I_DATA_CNTL_STATUS_FIFO_n_7\ : STD_LOGIC;
  signal I_WRESP_STATUS_FIFO_n_2 : STD_LOGIC;
  signal I_WRESP_STATUS_FIFO_n_3 : STD_LOGIC;
  signal I_WRESP_STATUS_FIFO_n_4 : STD_LOGIC;
  signal I_WRESP_STATUS_FIFO_n_7 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_4_out : STD_LOGIC;
  signal sig_coelsc_reg_empty : STD_LOGIC;
  signal sig_dcntl_sfifo_out : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal sig_init_done : STD_LOGIC;
  signal sig_push_coelsc_reg : STD_LOGIC;
  signal sig_rd_empty : STD_LOGIC;
  signal sig_rd_empty_0 : STD_LOGIC;
  signal sig_statcnt_gt_eq_thres : STD_LOGIC;
  signal sig_wdc_statcnt : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal sig_wdc_status_going_full : STD_LOGIC;
  signal \^sig_wsc2stat_status\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^sig_wsc2stat_status_valid\ : STD_LOGIC;
begin
  sig_wsc2stat_status(2 downto 0) <= \^sig_wsc2stat_status\(2 downto 0);
  sig_wsc2stat_status_valid <= \^sig_wsc2stat_status_valid\;
\GEN_OMIT_STORE_FORWARD.I_DATA_CNTL_STATUS_FIFO\: entity work.\design_1_myip_burst_test_0_0_axi_master_burst_fifo__parameterized0\
     port map (
      \GEN_OMIT_STORE_FORWARD.sig_coelsc_interr_reg_reg\(1) => sig_dcntl_sfifo_out(2),
      \GEN_OMIT_STORE_FORWARD.sig_coelsc_interr_reg_reg\(0) => sig_dcntl_sfifo_out(0),
      \GEN_OMIT_STORE_FORWARD.sig_coelsc_reg_empty_reg\ => I_WRESP_STATUS_FIFO_n_7,
      \GEN_OMIT_STORE_FORWARD.sig_tlast_err_stop_reg\ => \GEN_OMIT_STORE_FORWARD.sig_tlast_err_stop_reg\,
      \INFERRED_GEN.cnt_i_reg[0]\ => \INFERRED_GEN.cnt_i_reg[0]\,
      \INFERRED_GEN.cnt_i_reg[0]_0\ => sig_inhibit_rdy_n,
      \INFERRED_GEN.cnt_i_reg[1]\ => \GEN_OMIT_STORE_FORWARD.I_DATA_CNTL_STATUS_FIFO_n_7\,
      \INFERRED_GEN.cnt_i_reg[2]\(0) => sig_rd_empty_0,
      Q(0) => sig_rd_empty,
      \in\(2 downto 0) => \in\(2 downto 0),
      m00_axi_aclk => m00_axi_aclk,
      \out\ => \out\,
      p_0_in => p_0_in,
      p_4_out => p_4_out,
      sig_coelsc_reg_empty => sig_coelsc_reg_empty,
      sig_init_done => sig_init_done,
      sig_init_reg_reg => I_WRESP_STATUS_FIFO_n_4,
      sig_push_coelsc_reg => sig_push_coelsc_reg,
      sig_push_to_wsc => sig_push_to_wsc,
      sig_tlast_err_stop => sig_tlast_err_stop,
      sig_wdc_statcnt(2 downto 0) => sig_wdc_statcnt(2 downto 0),
      \sig_wdc_statcnt_reg[0]\ => \GEN_OMIT_STORE_FORWARD.I_DATA_CNTL_STATUS_FIFO_n_12\,
      \sig_wdc_statcnt_reg[1]\ => \GEN_OMIT_STORE_FORWARD.I_DATA_CNTL_STATUS_FIFO_n_11\,
      \sig_wdc_statcnt_reg[2]\ => \GEN_OMIT_STORE_FORWARD.I_DATA_CNTL_STATUS_FIFO_n_10\,
      sig_wsc2stat_status(0) => \^sig_wsc2stat_status\(0)
    );
\GEN_OMIT_STORE_FORWARD.sig_coelsc_decerr_reg_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_push_coelsc_reg,
      D => I_WRESP_STATUS_FIFO_n_2,
      Q => \^sig_wsc2stat_status\(1),
      R => p_5_out
    );
\GEN_OMIT_STORE_FORWARD.sig_coelsc_interr_reg_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_push_coelsc_reg,
      D => p_4_out,
      Q => \^sig_wsc2stat_status\(0),
      R => p_5_out
    );
\GEN_OMIT_STORE_FORWARD.sig_coelsc_reg_empty_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_push_coelsc_reg,
      D => p_0_in,
      Q => sig_coelsc_reg_empty,
      S => p_5_out
    );
\GEN_OMIT_STORE_FORWARD.sig_coelsc_reg_full_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_push_coelsc_reg,
      D => sig_dcntl_sfifo_out(0),
      Q => \^sig_wsc2stat_status_valid\,
      R => p_5_out
    );
\GEN_OMIT_STORE_FORWARD.sig_coelsc_slverr_reg_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_push_coelsc_reg,
      D => I_WRESP_STATUS_FIFO_n_3,
      Q => \^sig_wsc2stat_status\(2),
      R => p_5_out
    );
I_WRESP_STATUS_FIFO: entity work.design_1_myip_burst_test_0_0_axi_master_burst_fifo
     port map (
      FIFO_Full_reg => I_WRESP_STATUS_FIFO_n_7,
      \GEN_OMIT_STORE_FORWARD.sig_coelsc_decerr_reg_reg\ => I_WRESP_STATUS_FIFO_n_2,
      \GEN_OMIT_STORE_FORWARD.sig_coelsc_slverr_reg_reg\ => I_WRESP_STATUS_FIFO_n_3,
      \INFERRED_GEN.cnt_i_reg[2]\ => \GEN_OMIT_STORE_FORWARD.I_DATA_CNTL_STATUS_FIFO_n_7\,
      \INFERRED_GEN.cnt_i_reg[2]_0\(0) => sig_rd_empty,
      Q(0) => sig_rd_empty_0,
      m00_axi_aclk => m00_axi_aclk,
      m00_axi_bready => m00_axi_bready,
      m00_axi_bresp(1 downto 0) => m00_axi_bresp(1 downto 0),
      m00_axi_bvalid => m00_axi_bvalid,
      \out\ => \out\,
      sig_coelsc_reg_empty => sig_coelsc_reg_empty,
      sig_data2wsc_calc_err_reg(0) => sig_dcntl_sfifo_out(2),
      sig_init_done => sig_init_done,
      sig_init_done_reg_0 => I_WRESP_STATUS_FIFO_n_4,
      sig_init_reg2_reg_0 => sig_init_reg,
      sig_m_valid_dup_reg => sig_m_valid_dup_reg,
      sig_m_valid_out_reg => sig_m_valid_out_reg,
      sig_wsc2stat_status(1 downto 0) => \^sig_wsc2stat_status\(2 downto 1)
    );
sig_dqual_reg_full_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFFEFFFEFFF"
    )
        port map (
      I0 => sig_next_calc_error_reg,
      I1 => sig_wdc_status_going_full,
      I2 => sig_cmd2all_doing_write,
      I3 => sig_pcc2data_cmd_valid,
      I4 => sig_status_reg_empty,
      I5 => \^sig_wsc2stat_status_valid\,
      O => sig_next_calc_error_reg_reg
    );
sig_stat_error_reg_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA8"
    )
        port map (
      I0 => sig_cmd2all_doing_write,
      I1 => \^sig_wsc2stat_status\(0),
      I2 => \^sig_wsc2stat_status\(1),
      I3 => \^sig_wsc2stat_status\(2),
      O => sig_stat_error
    );
\sig_wdc_statcnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => '1',
      D => \GEN_OMIT_STORE_FORWARD.I_DATA_CNTL_STATUS_FIFO_n_12\,
      Q => sig_wdc_statcnt(0),
      R => \out\
    );
\sig_wdc_statcnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => '1',
      D => \GEN_OMIT_STORE_FORWARD.I_DATA_CNTL_STATUS_FIFO_n_11\,
      Q => sig_wdc_statcnt(1),
      R => \out\
    );
\sig_wdc_statcnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => '1',
      D => \GEN_OMIT_STORE_FORWARD.I_DATA_CNTL_STATUS_FIFO_n_10\,
      Q => sig_wdc_statcnt(2),
      R => \out\
    );
sig_wdc_status_going_full_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => sig_wdc_statcnt(2),
      I1 => sig_wdc_statcnt(1),
      I2 => sig_wdc_statcnt(0),
      O => sig_statcnt_gt_eq_thres
    );
sig_wdc_status_going_full_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => '1',
      D => sig_statcnt_gt_eq_thres,
      Q => sig_wdc_status_going_full,
      R => \out\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_myip_burst_test_0_0_axi_master_burst_rd_wr_cntlr is
  port (
    sig_pcc2data_calc_error : out STD_LOGIC;
    sig_wsc2stat_status_valid : out STD_LOGIC;
    sig_wsc2stat_status : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m00_axi_wvalid : out STD_LOGIC;
    m00_axi_wlast : out STD_LOGIC;
    sig_llink_busy_reg : out STD_LOGIC;
    m00_axi_arsize : out STD_LOGIC_VECTOR ( 0 to 0 );
    m00_axi_arburst : out STD_LOGIC_VECTOR ( 0 to 0 );
    m00_axi_awvalid : out STD_LOGIC;
    sig_doing_write_reg : out STD_LOGIC;
    sig_btt_cntr0 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    sig_calc_error_reg0 : out STD_LOGIC;
    sig_cmd_full_reg_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    sig_pcc_taking_command : out STD_LOGIC;
    \sig_xfer_end_strb_reg_reg[0]\ : out STD_LOGIC;
    m00_axi_bready : out STD_LOGIC;
    sig_stat_error : out STD_LOGIC;
    \GEN_ADDR_32.sig_addr_cntr_lsh_reg[1]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m00_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m00_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axi_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \out\ : in STD_LOGIC;
    m00_axi_aclk : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_5_out : in STD_LOGIC;
    sig_wr_addr_valid_reg0 : in STD_LOGIC;
    sig_cmd2all_doing_write : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 29 downto 0 );
    sig_cmd2pcc_cmd_valid : in STD_LOGIC;
    sig_llink2cmd_wr_busy : in STD_LOGIC;
    ip2bus_inputs : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m00_axi_wready : in STD_LOGIC;
    sig_btt_is_zero : in STD_LOGIC;
    sig_cmd_reset_reg_reg : in STD_LOGIC;
    sig_push_cmd_reg : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 1 downto 0 );
    sig_llink2wr_allow_addr_req : in STD_LOGIC;
    sig_status_reg_empty : in STD_LOGIC;
    sig_llink_busy_reg_0 : in STD_LOGIC;
    m00_axi_bvalid : in STD_LOGIC;
    m00_axi_awready : in STD_LOGIC;
    ip2bus_mstwr_d : in STD_LOGIC_VECTOR ( 31 downto 0 );
    sig_cmd_type_req_reg : in STD_LOGIC_VECTOR ( 11 downto 0 );
    sig_rdwr_reset_reg_reg : in STD_LOGIC;
    m00_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_myip_burst_test_0_0_axi_master_burst_rd_wr_cntlr : entity is "axi_master_burst_rd_wr_cntlr";
end design_1_myip_burst_test_0_0_axi_master_burst_rd_wr_cntlr;

architecture STRUCTURE of design_1_myip_burst_test_0_0_axi_master_burst_rd_wr_cntlr is
  signal \GEN_OMIT_STORE_FORWARD.I_DATA_CNTL_STATUS_FIFO/sig_inhibit_rdy_n\ : STD_LOGIC;
  signal \GEN_OMIT_STORE_FORWARD.I_DATA_CNTL_STATUS_FIFO/sig_init_reg\ : STD_LOGIC;
  signal I_MSTR_PCC_n_19 : STD_LOGIC;
  signal I_MSTR_PCC_n_20 : STD_LOGIC;
  signal I_MSTR_PCC_n_21 : STD_LOGIC;
  signal I_MSTR_PCC_n_22 : STD_LOGIC;
  signal I_MSTR_PCC_n_25 : STD_LOGIC;
  signal I_MSTR_PCC_n_26 : STD_LOGIC;
  signal I_MSTR_PCC_n_27 : STD_LOGIC;
  signal I_MSTR_PCC_n_28 : STD_LOGIC;
  signal I_MSTR_PCC_n_29 : STD_LOGIC;
  signal I_MSTR_PCC_n_30 : STD_LOGIC;
  signal I_MSTR_PCC_n_31 : STD_LOGIC;
  signal I_MSTR_PCC_n_32 : STD_LOGIC;
  signal I_MSTR_PCC_n_33 : STD_LOGIC;
  signal I_MSTR_PCC_n_34 : STD_LOGIC;
  signal I_MSTR_PCC_n_35 : STD_LOGIC;
  signal I_MSTR_PCC_n_36 : STD_LOGIC;
  signal I_MSTR_PCC_n_37 : STD_LOGIC;
  signal I_WR_DATA_CNTL_n_10 : STD_LOGIC;
  signal I_WR_DATA_CNTL_n_13 : STD_LOGIC;
  signal I_WR_DATA_CNTL_n_6 : STD_LOGIC;
  signal I_WR_DATA_CNTL_n_9 : STD_LOGIC;
  signal I_WR_STATUS_CNTLR_n_1 : STD_LOGIC;
  signal I_WR_STATUS_CNTLR_n_7 : STD_LOGIC;
  signal I_WR_STATUS_CNTLR_n_8 : STD_LOGIC;
  signal \i_/i_/i__carry__0_n_0\ : STD_LOGIC;
  signal \i_/i_/i__carry__0_n_1\ : STD_LOGIC;
  signal \i_/i_/i__carry__0_n_2\ : STD_LOGIC;
  signal \i_/i_/i__carry__0_n_3\ : STD_LOGIC;
  signal \i_/i_/i__carry__0_n_4\ : STD_LOGIC;
  signal \i_/i_/i__carry__0_n_5\ : STD_LOGIC;
  signal \i_/i_/i__carry__0_n_6\ : STD_LOGIC;
  signal \i_/i_/i__carry__0_n_7\ : STD_LOGIC;
  signal \i_/i_/i__carry__1_n_0\ : STD_LOGIC;
  signal \i_/i_/i__carry__1_n_1\ : STD_LOGIC;
  signal \i_/i_/i__carry__1_n_2\ : STD_LOGIC;
  signal \i_/i_/i__carry__1_n_3\ : STD_LOGIC;
  signal \i_/i_/i__carry__1_n_4\ : STD_LOGIC;
  signal \i_/i_/i__carry__1_n_5\ : STD_LOGIC;
  signal \i_/i_/i__carry__1_n_6\ : STD_LOGIC;
  signal \i_/i_/i__carry__1_n_7\ : STD_LOGIC;
  signal \i_/i_/i__carry__2_n_1\ : STD_LOGIC;
  signal \i_/i_/i__carry__2_n_2\ : STD_LOGIC;
  signal \i_/i_/i__carry__2_n_3\ : STD_LOGIC;
  signal \i_/i_/i__carry__2_n_4\ : STD_LOGIC;
  signal \i_/i_/i__carry__2_n_5\ : STD_LOGIC;
  signal \i_/i_/i__carry__2_n_6\ : STD_LOGIC;
  signal \i_/i_/i__carry__2_n_7\ : STD_LOGIC;
  signal \i_/i_/i__carry_n_0\ : STD_LOGIC;
  signal \i_/i_/i__carry_n_1\ : STD_LOGIC;
  signal \i_/i_/i__carry_n_2\ : STD_LOGIC;
  signal \i_/i_/i__carry_n_3\ : STD_LOGIC;
  signal \i_/i_/i__carry_n_4\ : STD_LOGIC;
  signal \i_/i_/i__carry_n_5\ : STD_LOGIC;
  signal \i_/i_/i__carry_n_6\ : STD_LOGIC;
  signal \i_/i_/i__carry_n_7\ : STD_LOGIC;
  signal p_0_in2_in : STD_LOGIC;
  signal p_0_in2_in_0 : STD_LOGIC;
  signal p_0_in3_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal sig_addr2data_addr_posted : STD_LOGIC;
  signal sig_data_reg_out_en : STD_LOGIC;
  signal sig_last_skid_mux_out : STD_LOGIC;
  signal sig_last_skid_reg : STD_LOGIC;
  signal sig_next_calc_error_reg : STD_LOGIC;
  signal sig_pcc2addr_addr : STD_LOGIC_VECTOR ( 31 downto 2 );
  signal sig_pcc2addr_burst : STD_LOGIC_VECTOR ( 0 to 0 );
  signal sig_pcc2addr_cmd_valid : STD_LOGIC;
  signal \^sig_pcc2data_calc_error\ : STD_LOGIC;
  signal sig_pcc2data_cmd_cmplt : STD_LOGIC;
  signal sig_pcc2data_cmd_valid : STD_LOGIC;
  signal sig_pcc2data_dre_src_align : STD_LOGIC;
  signal sig_pcc2data_eof : STD_LOGIC;
  signal sig_pcc2data_last_strb : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal sig_pcc2data_len : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal sig_pcc2data_saddr_lsb : STD_LOGIC_VECTOR ( 1 to 1 );
  signal sig_pcc2data_sequential : STD_LOGIC;
  signal sig_pcc2data_strt_strb : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal sig_push_addr_reg1_out : STD_LOGIC;
  signal sig_push_to_wsc : STD_LOGIC;
  signal sig_strb_skid_mux_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal sig_strb_skid_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal sig_tlast_err_stop : STD_LOGIC;
  signal sig_wdc2pcc_cmd_ready : STD_LOGIC;
  signal sig_wdc2wrskid_wlast : STD_LOGIC;
  signal sig_wdc2wrskid_wstrb : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal sig_wdc2wsc_calc_err : STD_LOGIC;
  signal sig_wdc2wsc_cmd_cmplt : STD_LOGIC;
  signal sig_wdc2wsc_last_err : STD_LOGIC;
  signal sig_wrskid2wdc_tdata : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal sig_wrskid2wdc_tlast : STD_LOGIC;
  signal sig_wrskid2wdc_tvalid : STD_LOGIC;
  signal sig_wrskid2wdc_wready : STD_LOGIC;
  signal \NLW_i_/i_/i__carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
begin
  sig_pcc2data_calc_error <= \^sig_pcc2data_calc_error\;
I_ADDR_CNTL: entity work.design_1_myip_burst_test_0_0_axi_master_burst_addr_cntl
     port map (
      \GEN_OMIT_STORE_FORWARD.sig_tlast_error_reg_reg\ => I_WR_DATA_CNTL_n_6,
      Q(31 downto 2) => sig_pcc2addr_addr(31 downto 2),
      Q(1) => sig_pcc2data_saddr_lsb(1),
      Q(0) => sig_pcc2data_dre_src_align,
      m00_axi_aclk => m00_axi_aclk,
      m00_axi_araddr(31 downto 0) => m00_axi_araddr(31 downto 0),
      m00_axi_arburst(0) => m00_axi_arburst(0),
      m00_axi_arlen(3 downto 0) => m00_axi_arlen(3 downto 0),
      m00_axi_arsize(0) => m00_axi_arsize(0),
      m00_axi_awready => m00_axi_awready,
      m00_axi_awvalid => m00_axi_awvalid,
      \out\ => sig_addr2data_addr_posted,
      sig_cmd2all_doing_write => sig_cmd2all_doing_write,
      sig_llink2wr_allow_addr_req => sig_llink2wr_allow_addr_req,
      sig_pcc2addr_burst(0) => sig_pcc2addr_burst(0),
      sig_pcc2addr_cmd_valid => sig_pcc2addr_cmd_valid,
      sig_pcc2data_calc_error => \^sig_pcc2data_calc_error\,
      sig_push_addr_reg1_out => sig_push_addr_reg1_out,
      sig_rdwr_reset_reg_reg => \out\,
      sig_wr_addr_valid_reg0 => sig_wr_addr_valid_reg0,
      \sig_xfer_len_reg_reg[3]\(3 downto 0) => sig_pcc2data_len(3 downto 0)
    );
I_MSTR_PCC: entity work.design_1_myip_burst_test_0_0_axi_master_burst_pcc
     port map (
      D(1 downto 0) => D(1 downto 0),
      DI(0) => I_MSTR_PCC_n_37,
      \GEN_ADDR_32.sig_addr_cntr_lsh_reg[1]_0\(1 downto 0) => \GEN_ADDR_32.sig_addr_cntr_lsh_reg[1]\(1 downto 0),
      \GEN_ADDR_32.sig_addr_cntr_msh_reg[11]_0\(3) => I_MSTR_PCC_n_29,
      \GEN_ADDR_32.sig_addr_cntr_msh_reg[11]_0\(2) => I_MSTR_PCC_n_30,
      \GEN_ADDR_32.sig_addr_cntr_msh_reg[11]_0\(1) => I_MSTR_PCC_n_31,
      \GEN_ADDR_32.sig_addr_cntr_msh_reg[11]_0\(0) => I_MSTR_PCC_n_32,
      \GEN_ADDR_32.sig_addr_cntr_msh_reg[15]_0\(3) => I_MSTR_PCC_n_33,
      \GEN_ADDR_32.sig_addr_cntr_msh_reg[15]_0\(2) => I_MSTR_PCC_n_34,
      \GEN_ADDR_32.sig_addr_cntr_msh_reg[15]_0\(1) => I_MSTR_PCC_n_35,
      \GEN_ADDR_32.sig_addr_cntr_msh_reg[15]_0\(0) => I_MSTR_PCC_n_36,
      \GEN_ADDR_32.sig_addr_cntr_msh_reg[7]_0\(3) => I_MSTR_PCC_n_25,
      \GEN_ADDR_32.sig_addr_cntr_msh_reg[7]_0\(2) => I_MSTR_PCC_n_26,
      \GEN_ADDR_32.sig_addr_cntr_msh_reg[7]_0\(1) => I_MSTR_PCC_n_27,
      \GEN_ADDR_32.sig_addr_cntr_msh_reg[7]_0\(0) => I_MSTR_PCC_n_28,
      O(3) => \i_/i_/i__carry_n_4\,
      O(2) => \i_/i_/i__carry_n_5\,
      O(1) => \i_/i_/i__carry_n_6\,
      O(0) => \i_/i_/i__carry_n_7\,
      Q(29 downto 0) => Q(29 downto 0),
      S(3) => I_MSTR_PCC_n_19,
      S(2) => I_MSTR_PCC_n_20,
      S(1) => I_MSTR_PCC_n_21,
      S(0) => I_MSTR_PCC_n_22,
      SR(0) => SR(0),
      m00_axi_aclk => m00_axi_aclk,
      \out\ => \out\,
      p_1_in => p_1_in,
      sig_btt_cntr0(11 downto 0) => sig_btt_cntr0(11 downto 0),
      sig_btt_is_zero => sig_btt_is_zero,
      sig_cmd2pcc_cmd_valid => sig_cmd2pcc_cmd_valid,
      sig_cmd_full_reg_reg(0) => sig_cmd_full_reg_reg(0),
      \sig_cmd_mst_addr_reg[23]\(3) => \i_/i_/i__carry__0_n_4\,
      \sig_cmd_mst_addr_reg[23]\(2) => \i_/i_/i__carry__0_n_5\,
      \sig_cmd_mst_addr_reg[23]\(1) => \i_/i_/i__carry__0_n_6\,
      \sig_cmd_mst_addr_reg[23]\(0) => \i_/i_/i__carry__0_n_7\,
      \sig_cmd_mst_addr_reg[27]\(3) => \i_/i_/i__carry__1_n_4\,
      \sig_cmd_mst_addr_reg[27]\(2) => \i_/i_/i__carry__1_n_5\,
      \sig_cmd_mst_addr_reg[27]\(1) => \i_/i_/i__carry__1_n_6\,
      \sig_cmd_mst_addr_reg[27]\(0) => \i_/i_/i__carry__1_n_7\,
      \sig_cmd_mst_addr_reg[31]\(3) => \i_/i_/i__carry__2_n_4\,
      \sig_cmd_mst_addr_reg[31]\(2) => \i_/i_/i__carry__2_n_5\,
      \sig_cmd_mst_addr_reg[31]\(1) => \i_/i_/i__carry__2_n_6\,
      \sig_cmd_mst_addr_reg[31]\(0) => \i_/i_/i__carry__2_n_7\,
      sig_cmd_reset_reg_reg => sig_cmd_reset_reg_reg,
      sig_cmd_type_req_reg(11 downto 0) => sig_cmd_type_req_reg(11 downto 0),
      sig_input_reg_empty_reg_0 => sig_calc_error_reg0,
      \sig_next_addr_reg_reg[31]\(31 downto 2) => sig_pcc2addr_addr(31 downto 2),
      \sig_next_addr_reg_reg[31]\(1) => sig_pcc2data_saddr_lsb(1),
      \sig_next_addr_reg_reg[31]\(0) => sig_pcc2data_dre_src_align,
      \sig_next_last_strb_reg_reg[3]\(3 downto 0) => sig_pcc2data_last_strb(3 downto 0),
      \sig_next_len_reg_reg[3]\(3 downto 0) => sig_pcc2data_len(3 downto 0),
      \sig_next_strt_strb_reg_reg[3]\(3 downto 0) => sig_pcc2data_strt_strb(3 downto 0),
      sig_pcc2addr_burst(0) => sig_pcc2addr_burst(0),
      sig_pcc2addr_cmd_valid => sig_pcc2addr_cmd_valid,
      sig_pcc2data_calc_error => \^sig_pcc2data_calc_error\,
      sig_pcc2data_cmd_cmplt => sig_pcc2data_cmd_cmplt,
      sig_pcc2data_cmd_valid => sig_pcc2data_cmd_valid,
      sig_pcc2data_eof => sig_pcc2data_eof,
      sig_pcc2data_sequential => sig_pcc2data_sequential,
      sig_pcc_taking_command => sig_pcc_taking_command,
      sig_push_addr_reg1_out => sig_push_addr_reg1_out,
      sig_push_cmd_reg => sig_push_cmd_reg,
      sig_rdwr_reset_reg_reg => sig_rdwr_reset_reg_reg,
      sig_wdc2pcc_cmd_ready => sig_wdc2pcc_cmd_ready,
      \sig_xfer_end_strb_reg_reg[0]_0\ => \sig_xfer_end_strb_reg_reg[0]\
    );
I_READ_STREAM_SKID_BUF: entity work.design_1_myip_burst_test_0_0_axi_master_burst_skid_buf
     port map (
      m00_axi_aclk => m00_axi_aclk,
      \out\ => p_0_in2_in,
      sig_init_reg => \GEN_OMIT_STORE_FORWARD.I_DATA_CNTL_STATUS_FIFO/sig_init_reg\,
      sig_init_reg_reg => I_WR_STATUS_CNTLR_n_7,
      sig_rdwr_reset_reg_reg => \out\
    );
I_WRITE_MMAP_SKID_BUF: entity work.design_1_myip_burst_test_0_0_axi_master_burst_skid2mm_buf
     port map (
      D(3 downto 0) => sig_wdc2wrskid_wstrb(3 downto 0),
      Q(31 downto 0) => sig_wrskid2wdc_tdata(31 downto 0),
      m00_axi_aclk => m00_axi_aclk,
      m00_axi_wdata(31 downto 0) => m00_axi_wdata(31 downto 0),
      m00_axi_wlast => m00_axi_wlast,
      m00_axi_wready => m00_axi_wready,
      m00_axi_wstrb(3 downto 0) => m00_axi_wstrb(3 downto 0),
      m00_axi_wvalid => m00_axi_wvalid,
      \out\ => p_0_in3_in,
      \sig_data_reg_out_reg[31]_0\ => sig_wrskid2wdc_wready,
      sig_init_reg => \GEN_OMIT_STORE_FORWARD.I_DATA_CNTL_STATUS_FIFO/sig_init_reg\,
      sig_last_skid_mux_out => sig_last_skid_mux_out,
      sig_last_skid_reg => sig_last_skid_reg,
      sig_m_valid_out_reg_0 => I_WR_DATA_CNTL_n_10,
      \sig_next_strt_strb_reg_reg[3]\(3 downto 0) => sig_strb_skid_mux_out(3 downto 0),
      sig_rdwr_reset_reg_reg => \out\,
      \sig_strb_reg_out_reg[3]_0\(3 downto 0) => sig_strb_skid_reg(3 downto 0),
      sig_wdc2wrskid_wlast => sig_wdc2wrskid_wlast
    );
I_WRITE_STRM_SKID_BUF: entity work.design_1_myip_burst_test_0_0_axi_master_burst_skid_buf_0
     port map (
      E(0) => sig_data_reg_out_en,
      \GEN_OMIT_STORE_FORWARD.sig_tlast_error_reg_reg\ => I_WR_DATA_CNTL_n_9,
      Q(31 downto 0) => sig_wrskid2wdc_tdata(31 downto 0),
      ip2bus_inputs(1 downto 0) => ip2bus_inputs(1 downto 0),
      ip2bus_mstwr_d(31 downto 0) => ip2bus_mstwr_d(31 downto 0),
      m00_axi_aclk => m00_axi_aclk,
      \out\ => p_0_in2_in_0,
      sig_init_reg => \GEN_OMIT_STORE_FORWARD.I_DATA_CNTL_STATUS_FIFO/sig_init_reg\,
      sig_last_mmap_dbeat_reg_reg => sig_wrskid2wdc_tvalid,
      sig_llink2cmd_wr_busy => sig_llink2cmd_wr_busy,
      sig_llink_busy_reg => sig_llink_busy_reg,
      sig_llink_busy_reg_0 => sig_llink_busy_reg_0,
      sig_rdwr_reset_reg_reg => \out\,
      sig_wrskid2wdc_tlast => sig_wrskid2wdc_tlast
    );
I_WR_DATA_CNTL: entity work.design_1_myip_burst_test_0_0_axi_master_burst_wrdata_cntl
     port map (
      D(3 downto 0) => sig_wdc2wrskid_wstrb(3 downto 0),
      E(0) => sig_data_reg_out_en,
      FIFO_Full_reg => I_WR_STATUS_CNTLR_n_1,
      \GEN_OMIT_STORE_FORWARD.sig_tlast_err_stop_reg_0\ => I_WR_DATA_CNTL_n_6,
      \in\(2) => sig_wdc2wsc_calc_err,
      \in\(1) => sig_wdc2wsc_last_err,
      \in\(0) => sig_wdc2wsc_cmd_cmplt,
      m00_axi_aclk => m00_axi_aclk,
      \out\ => \out\,
      p_1_in => p_1_in,
      sig_cmd2all_doing_write => sig_cmd2all_doing_write,
      sig_inhibit_rdy_n => \GEN_OMIT_STORE_FORWARD.I_DATA_CNTL_STATUS_FIFO/sig_inhibit_rdy_n\,
      sig_last_skid_mux_out => sig_last_skid_mux_out,
      sig_last_skid_reg => sig_last_skid_reg,
      sig_m_valid_dup_reg => p_0_in2_in_0,
      sig_m_valid_out_reg => sig_wrskid2wdc_tvalid,
      sig_next_calc_error_reg => sig_next_calc_error_reg,
      sig_next_calc_error_reg_reg_0 => I_WR_STATUS_CNTLR_n_8,
      sig_pcc2data_calc_error => \^sig_pcc2data_calc_error\,
      sig_pcc2data_cmd_cmplt => sig_pcc2data_cmd_cmplt,
      sig_pcc2data_eof => sig_pcc2data_eof,
      sig_pcc2data_sequential => sig_pcc2data_sequential,
      sig_posted_to_axi_reg => sig_addr2data_addr_posted,
      sig_push_to_wsc => sig_push_to_wsc,
      sig_s_ready_dup_reg => I_WR_DATA_CNTL_n_9,
      sig_s_ready_dup_reg_0 => I_WR_DATA_CNTL_n_10,
      sig_s_ready_dup_reg_1 => p_0_in3_in,
      sig_s_ready_out_reg => sig_wrskid2wdc_wready,
      \sig_strb_reg_out_reg[3]\(3 downto 0) => sig_strb_skid_mux_out(3 downto 0),
      \sig_strb_skid_reg_reg[3]\(3 downto 0) => sig_strb_skid_reg(3 downto 0),
      sig_tlast_err_stop => sig_tlast_err_stop,
      sig_wdc2pcc_cmd_ready => sig_wdc2pcc_cmd_ready,
      sig_wdc2wrskid_wlast => sig_wdc2wrskid_wlast,
      \sig_wdc_statcnt_reg[2]\ => I_WR_DATA_CNTL_n_13,
      sig_wrskid2wdc_tlast => sig_wrskid2wdc_tlast,
      \sig_xfer_end_strb_reg_reg[3]\(3 downto 0) => sig_pcc2data_last_strb(3 downto 0),
      \sig_xfer_len_reg_reg[3]\(3 downto 0) => sig_pcc2data_len(3 downto 0),
      \sig_xfer_strt_strb_reg_reg[3]\(3 downto 0) => sig_pcc2data_strt_strb(3 downto 0)
    );
I_WR_STATUS_CNTLR: entity work.design_1_myip_burst_test_0_0_axi_master_burst_wr_status_cntl
     port map (
      \GEN_OMIT_STORE_FORWARD.sig_tlast_err_stop_reg\ => I_WR_DATA_CNTL_n_13,
      \INFERRED_GEN.cnt_i_reg[0]\ => I_WR_STATUS_CNTLR_n_1,
      \in\(2) => sig_wdc2wsc_calc_err,
      \in\(1) => sig_wdc2wsc_last_err,
      \in\(0) => sig_wdc2wsc_cmd_cmplt,
      m00_axi_aclk => m00_axi_aclk,
      m00_axi_bready => m00_axi_bready,
      m00_axi_bresp(1 downto 0) => m00_axi_bresp(1 downto 0),
      m00_axi_bvalid => m00_axi_bvalid,
      \out\ => \out\,
      p_5_out => p_5_out,
      sig_cmd2all_doing_write => sig_cmd2all_doing_write,
      sig_inhibit_rdy_n => \GEN_OMIT_STORE_FORWARD.I_DATA_CNTL_STATUS_FIFO/sig_inhibit_rdy_n\,
      sig_init_reg => \GEN_OMIT_STORE_FORWARD.I_DATA_CNTL_STATUS_FIFO/sig_init_reg\,
      sig_m_valid_dup_reg => p_0_in2_in,
      sig_m_valid_out_reg => I_WR_STATUS_CNTLR_n_7,
      sig_next_calc_error_reg => sig_next_calc_error_reg,
      sig_next_calc_error_reg_reg => I_WR_STATUS_CNTLR_n_8,
      sig_pcc2data_cmd_valid => sig_pcc2data_cmd_valid,
      sig_push_to_wsc => sig_push_to_wsc,
      sig_stat_error => sig_stat_error,
      sig_status_reg_empty => sig_status_reg_empty,
      sig_tlast_err_stop => sig_tlast_err_stop,
      sig_wsc2stat_status(2 downto 0) => sig_wsc2stat_status(2 downto 0),
      sig_wsc2stat_status_valid => sig_wsc2stat_status_valid
    );
\i_/i_/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \i_/i_/i__carry_n_0\,
      CO(2) => \i_/i_/i__carry_n_1\,
      CO(1) => \i_/i_/i__carry_n_2\,
      CO(0) => \i_/i_/i__carry_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => I_MSTR_PCC_n_37,
      O(3) => \i_/i_/i__carry_n_4\,
      O(2) => \i_/i_/i__carry_n_5\,
      O(1) => \i_/i_/i__carry_n_6\,
      O(0) => \i_/i_/i__carry_n_7\,
      S(3) => I_MSTR_PCC_n_19,
      S(2) => I_MSTR_PCC_n_20,
      S(1) => I_MSTR_PCC_n_21,
      S(0) => I_MSTR_PCC_n_22
    );
\i_/i_/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \i_/i_/i__carry_n_0\,
      CO(3) => \i_/i_/i__carry__0_n_0\,
      CO(2) => \i_/i_/i__carry__0_n_1\,
      CO(1) => \i_/i_/i__carry__0_n_2\,
      CO(0) => \i_/i_/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \i_/i_/i__carry__0_n_4\,
      O(2) => \i_/i_/i__carry__0_n_5\,
      O(1) => \i_/i_/i__carry__0_n_6\,
      O(0) => \i_/i_/i__carry__0_n_7\,
      S(3) => I_MSTR_PCC_n_25,
      S(2) => I_MSTR_PCC_n_26,
      S(1) => I_MSTR_PCC_n_27,
      S(0) => I_MSTR_PCC_n_28
    );
\i_/i_/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \i_/i_/i__carry__0_n_0\,
      CO(3) => \i_/i_/i__carry__1_n_0\,
      CO(2) => \i_/i_/i__carry__1_n_1\,
      CO(1) => \i_/i_/i__carry__1_n_2\,
      CO(0) => \i_/i_/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \i_/i_/i__carry__1_n_4\,
      O(2) => \i_/i_/i__carry__1_n_5\,
      O(1) => \i_/i_/i__carry__1_n_6\,
      O(0) => \i_/i_/i__carry__1_n_7\,
      S(3) => I_MSTR_PCC_n_29,
      S(2) => I_MSTR_PCC_n_30,
      S(1) => I_MSTR_PCC_n_31,
      S(0) => I_MSTR_PCC_n_32
    );
\i_/i_/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \i_/i_/i__carry__1_n_0\,
      CO(3) => \NLW_i_/i_/i__carry__2_CO_UNCONNECTED\(3),
      CO(2) => \i_/i_/i__carry__2_n_1\,
      CO(1) => \i_/i_/i__carry__2_n_2\,
      CO(0) => \i_/i_/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \i_/i_/i__carry__2_n_4\,
      O(2) => \i_/i_/i__carry__2_n_5\,
      O(1) => \i_/i_/i__carry__2_n_6\,
      O(0) => \i_/i_/i__carry__2_n_7\,
      S(3) => I_MSTR_PCC_n_33,
      S(2) => I_MSTR_PCC_n_34,
      S(1) => I_MSTR_PCC_n_35,
      S(0) => I_MSTR_PCC_n_36
    );
sig_doing_write_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => '1',
      D => sig_cmd2all_doing_write,
      Q => sig_doing_write_reg,
      R => \out\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_myip_burst_test_0_0_axi_master_burst is
  port (
    m00_axi_wvalid : out STD_LOGIC;
    m00_axi_wlast : out STD_LOGIC;
    m00_axi_arsize : out STD_LOGIC_VECTOR ( 0 to 0 );
    m00_axi_arburst : out STD_LOGIC_VECTOR ( 0 to 0 );
    m00_axi_awvalid : out STD_LOGIC;
    ip2bus_otputs : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m00_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m00_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axi_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m00_axi_bready : out STD_LOGIC;
    m00_axi_aclk : in STD_LOGIC;
    ip2bus_inputs : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m00_axi_wready : in STD_LOGIC;
    m00_axi_aresetn : in STD_LOGIC;
    m00_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ip2bus_mstwr_d : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ip2bus_mst_length : in STD_LOGIC_VECTOR ( 11 downto 0 );
    ip2bus_mst_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axi_bvalid : in STD_LOGIC;
    m00_axi_awready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_myip_burst_test_0_0_axi_master_burst : entity is "axi_master_burst";
end design_1_myip_burst_test_0_0_axi_master_burst;

architecture STRUCTURE of design_1_myip_burst_test_0_0_axi_master_burst is
  signal \I_ADDR_CNTL/sig_wr_addr_valid_reg0\ : STD_LOGIC;
  signal I_CMD_STATUS_MODULE_n_10 : STD_LOGIC;
  signal I_CMD_STATUS_MODULE_n_11 : STD_LOGIC;
  signal I_CMD_STATUS_MODULE_n_12 : STD_LOGIC;
  signal I_CMD_STATUS_MODULE_n_13 : STD_LOGIC;
  signal I_CMD_STATUS_MODULE_n_14 : STD_LOGIC;
  signal I_CMD_STATUS_MODULE_n_15 : STD_LOGIC;
  signal I_CMD_STATUS_MODULE_n_16 : STD_LOGIC;
  signal I_CMD_STATUS_MODULE_n_17 : STD_LOGIC;
  signal I_CMD_STATUS_MODULE_n_18 : STD_LOGIC;
  signal I_CMD_STATUS_MODULE_n_19 : STD_LOGIC;
  signal I_CMD_STATUS_MODULE_n_20 : STD_LOGIC;
  signal I_CMD_STATUS_MODULE_n_9 : STD_LOGIC;
  signal \I_MSTR_PCC/p_1_in\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \I_MSTR_PCC/sig_btt_cntr0\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \I_MSTR_PCC/sig_btt_is_zero\ : STD_LOGIC;
  signal \I_MSTR_PCC/sig_calc_error_reg0\ : STD_LOGIC;
  signal \I_MSTR_PCC/sig_xfer_addr_reg0\ : STD_LOGIC;
  signal I_RD_WR_CNTRL_MODULE_n_27 : STD_LOGIC;
  signal I_RD_WR_CNTRL_MODULE_n_30 : STD_LOGIC;
  signal I_RD_WR_CNTRL_MODULE_n_31 : STD_LOGIC;
  signal I_RESET_MODULE_n_3 : STD_LOGIC;
  signal I_WR_LLINK_ADAPTER_n_2 : STD_LOGIC;
  signal \I_WR_STATUS_CNTLR/p_5_out\ : STD_LOGIC;
  signal sig_cmd2all_doing_write : STD_LOGIC;
  signal sig_cmd2pcc_cmd_valid : STD_LOGIC;
  signal sig_cmd_mst_addr : STD_LOGIC_VECTOR ( 31 downto 2 );
  signal sig_cmd_mstrd_req0 : STD_LOGIC;
  signal sig_doing_write_reg : STD_LOGIC;
  signal sig_llink2cmd_wr_busy : STD_LOGIC;
  signal sig_llink2wr_allow_addr_req : STD_LOGIC;
  signal sig_llink2wr_strm_tready : STD_LOGIC;
  signal sig_pcc2data_calc_error : STD_LOGIC;
  signal sig_pcc_taking_command : STD_LOGIC;
  signal sig_push_cmd_reg : STD_LOGIC;
  signal sig_rdwr2llink_int_err : STD_LOGIC;
  signal sig_rst2cmd_stat_reset : STD_LOGIC;
  signal sig_rst2llink_reset : STD_LOGIC;
  signal sig_rst2rdwr_cntlr_reset : STD_LOGIC;
  signal sig_stat_error : STD_LOGIC;
  signal sig_status_reg_empty : STD_LOGIC;
  signal sig_wr_error_reg : STD_LOGIC;
  signal sig_wr_llink_enable : STD_LOGIC;
  signal sig_wsc2stat_status : STD_LOGIC_VECTOR ( 6 downto 4 );
  signal sig_wsc2stat_status_valid : STD_LOGIC;
begin
I_CMD_STATUS_MODULE: entity work.design_1_myip_burst_test_0_0_axi_master_burst_cmd_status
     port map (
      D(11) => I_CMD_STATUS_MODULE_n_9,
      D(10) => I_CMD_STATUS_MODULE_n_10,
      D(9) => I_CMD_STATUS_MODULE_n_11,
      D(8) => I_CMD_STATUS_MODULE_n_12,
      D(7) => I_CMD_STATUS_MODULE_n_13,
      D(6) => I_CMD_STATUS_MODULE_n_14,
      D(5) => I_CMD_STATUS_MODULE_n_15,
      D(4) => I_CMD_STATUS_MODULE_n_16,
      D(3) => I_CMD_STATUS_MODULE_n_17,
      D(2) => I_CMD_STATUS_MODULE_n_18,
      D(1) => I_CMD_STATUS_MODULE_n_19,
      D(0) => I_CMD_STATUS_MODULE_n_20,
      \GEN_ADDR_32.sig_addr_cntr_lsh_reg[1]\(1 downto 0) => \I_MSTR_PCC/p_1_in\(1 downto 0),
      \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[1]\(1) => I_RD_WR_CNTRL_MODULE_n_30,
      \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[1]\(0) => I_RD_WR_CNTRL_MODULE_n_31,
      Q(29 downto 0) => sig_cmd_mst_addr(31 downto 2),
      SR(0) => sig_cmd_mstrd_req0,
      ip2bus_inputs(1 downto 0) => ip2bus_inputs(1 downto 0),
      ip2bus_mst_addr(31 downto 0) => ip2bus_mst_addr(31 downto 0),
      ip2bus_mst_length(11 downto 0) => ip2bus_mst_length(11 downto 0),
      ip2bus_otputs(3) => ip2bus_otputs(5),
      ip2bus_otputs(2 downto 0) => ip2bus_otputs(2 downto 0),
      m00_axi_aclk => m00_axi_aclk,
      \out\ => sig_rst2cmd_stat_reset,
      p_5_out => \I_WR_STATUS_CNTLR/p_5_out\,
      sig_btt_cntr0(11 downto 0) => \I_MSTR_PCC/sig_btt_cntr0\(11 downto 0),
      sig_btt_is_zero => \I_MSTR_PCC/sig_btt_is_zero\,
      sig_calc_error_reg0 => \I_MSTR_PCC/sig_calc_error_reg0\,
      sig_cmd2all_doing_write => sig_cmd2all_doing_write,
      sig_cmd2pcc_cmd_valid => sig_cmd2pcc_cmd_valid,
      sig_doing_write_reg => sig_doing_write_reg,
      sig_llink2cmd_wr_busy => sig_llink2cmd_wr_busy,
      sig_pcc2data_calc_error => sig_pcc2data_calc_error,
      sig_pcc_taking_command => sig_pcc_taking_command,
      sig_push_cmd_reg => sig_push_cmd_reg,
      sig_rdwr2llink_int_err => sig_rdwr2llink_int_err,
      sig_rdwr_reset_reg_reg => sig_rst2rdwr_cntlr_reset,
      sig_stat_error => sig_stat_error,
      sig_status_reg_empty => sig_status_reg_empty,
      sig_wr_addr_valid_reg0 => \I_ADDR_CNTL/sig_wr_addr_valid_reg0\,
      sig_wr_llink_enable => sig_wr_llink_enable,
      sig_wsc2stat_status(2 downto 0) => sig_wsc2stat_status(6 downto 4),
      sig_wsc2stat_status_valid => sig_wsc2stat_status_valid
    );
I_RD_LLINK_ADAPTER: entity work.design_1_myip_burst_test_0_0_axi_master_burst_rd_llink
     port map (
      m00_axi_aclk => m00_axi_aclk,
      \out\ => sig_rst2llink_reset,
      sig_rdwr2llink_int_err => sig_rdwr2llink_int_err,
      sig_wr_error_reg => sig_wr_error_reg
    );
I_RD_WR_CNTRL_MODULE: entity work.design_1_myip_burst_test_0_0_axi_master_burst_rd_wr_cntlr
     port map (
      D(1 downto 0) => \I_MSTR_PCC/p_1_in\(1 downto 0),
      \GEN_ADDR_32.sig_addr_cntr_lsh_reg[1]\(1) => I_RD_WR_CNTRL_MODULE_n_30,
      \GEN_ADDR_32.sig_addr_cntr_lsh_reg[1]\(0) => I_RD_WR_CNTRL_MODULE_n_31,
      Q(29 downto 0) => sig_cmd_mst_addr(31 downto 2),
      SR(0) => \I_MSTR_PCC/sig_xfer_addr_reg0\,
      ip2bus_inputs(1 downto 0) => ip2bus_inputs(3 downto 2),
      ip2bus_mstwr_d(31 downto 0) => ip2bus_mstwr_d(31 downto 0),
      m00_axi_aclk => m00_axi_aclk,
      m00_axi_araddr(31 downto 0) => m00_axi_araddr(31 downto 0),
      m00_axi_arburst(0) => m00_axi_arburst(0),
      m00_axi_arlen(3 downto 0) => m00_axi_arlen(3 downto 0),
      m00_axi_arsize(0) => m00_axi_arsize(0),
      m00_axi_awready => m00_axi_awready,
      m00_axi_awvalid => m00_axi_awvalid,
      m00_axi_bready => m00_axi_bready,
      m00_axi_bresp(1 downto 0) => m00_axi_bresp(1 downto 0),
      m00_axi_bvalid => m00_axi_bvalid,
      m00_axi_wdata(31 downto 0) => m00_axi_wdata(31 downto 0),
      m00_axi_wlast => m00_axi_wlast,
      m00_axi_wready => m00_axi_wready,
      m00_axi_wstrb(3 downto 0) => m00_axi_wstrb(3 downto 0),
      m00_axi_wvalid => m00_axi_wvalid,
      \out\ => sig_rst2rdwr_cntlr_reset,
      p_5_out => \I_WR_STATUS_CNTLR/p_5_out\,
      sig_btt_cntr0(11 downto 0) => \I_MSTR_PCC/sig_btt_cntr0\(11 downto 0),
      sig_btt_is_zero => \I_MSTR_PCC/sig_btt_is_zero\,
      sig_calc_error_reg0 => \I_MSTR_PCC/sig_calc_error_reg0\,
      sig_cmd2all_doing_write => sig_cmd2all_doing_write,
      sig_cmd2pcc_cmd_valid => sig_cmd2pcc_cmd_valid,
      sig_cmd_full_reg_reg(0) => sig_cmd_mstrd_req0,
      sig_cmd_reset_reg_reg => sig_rst2cmd_stat_reset,
      sig_cmd_type_req_reg(11) => I_CMD_STATUS_MODULE_n_9,
      sig_cmd_type_req_reg(10) => I_CMD_STATUS_MODULE_n_10,
      sig_cmd_type_req_reg(9) => I_CMD_STATUS_MODULE_n_11,
      sig_cmd_type_req_reg(8) => I_CMD_STATUS_MODULE_n_12,
      sig_cmd_type_req_reg(7) => I_CMD_STATUS_MODULE_n_13,
      sig_cmd_type_req_reg(6) => I_CMD_STATUS_MODULE_n_14,
      sig_cmd_type_req_reg(5) => I_CMD_STATUS_MODULE_n_15,
      sig_cmd_type_req_reg(4) => I_CMD_STATUS_MODULE_n_16,
      sig_cmd_type_req_reg(3) => I_CMD_STATUS_MODULE_n_17,
      sig_cmd_type_req_reg(2) => I_CMD_STATUS_MODULE_n_18,
      sig_cmd_type_req_reg(1) => I_CMD_STATUS_MODULE_n_19,
      sig_cmd_type_req_reg(0) => I_CMD_STATUS_MODULE_n_20,
      sig_doing_write_reg => sig_doing_write_reg,
      sig_llink2cmd_wr_busy => sig_llink2cmd_wr_busy,
      sig_llink2wr_allow_addr_req => sig_llink2wr_allow_addr_req,
      sig_llink_busy_reg => sig_llink2wr_strm_tready,
      sig_llink_busy_reg_0 => I_WR_LLINK_ADAPTER_n_2,
      sig_pcc2data_calc_error => sig_pcc2data_calc_error,
      sig_pcc_taking_command => sig_pcc_taking_command,
      sig_push_cmd_reg => sig_push_cmd_reg,
      sig_rdwr_reset_reg_reg => I_RESET_MODULE_n_3,
      sig_stat_error => sig_stat_error,
      sig_status_reg_empty => sig_status_reg_empty,
      sig_wr_addr_valid_reg0 => \I_ADDR_CNTL/sig_wr_addr_valid_reg0\,
      sig_wsc2stat_status(2 downto 0) => sig_wsc2stat_status(6 downto 4),
      sig_wsc2stat_status_valid => sig_wsc2stat_status_valid,
      \sig_xfer_end_strb_reg_reg[0]\ => I_RD_WR_CNTRL_MODULE_n_27
    );
I_RESET_MODULE: entity work.design_1_myip_burst_test_0_0_axi_master_burst_reset
     port map (
      \INFERRED_GEN.cnt_i_reg[0]\ => sig_rst2rdwr_cntlr_reset,
      SR(0) => \I_MSTR_PCC/sig_xfer_addr_reg0\,
      m00_axi_aclk => m00_axi_aclk,
      m00_axi_aresetn => m00_axi_aresetn,
      \out\ => sig_rst2cmd_stat_reset,
      sig_cmd2dre_valid_reg => I_RD_WR_CNTRL_MODULE_n_27,
      sig_llink_busy_reg => sig_rst2llink_reset,
      \sig_xfer_end_strb_reg_reg[3]\ => I_RESET_MODULE_n_3
    );
I_WR_LLINK_ADAPTER: entity work.design_1_myip_burst_test_0_0_axi_master_burst_wr_llink
     port map (
      ip2bus_inputs(1 downto 0) => ip2bus_inputs(3 downto 2),
      ip2bus_otputs(1 downto 0) => ip2bus_otputs(4 downto 3),
      m00_axi_aclk => m00_axi_aclk,
      sig_cmd2all_doing_write => sig_cmd2all_doing_write,
      sig_doing_write_reg => sig_doing_write_reg,
      sig_llink2cmd_wr_busy => sig_llink2cmd_wr_busy,
      sig_llink2wr_allow_addr_req => sig_llink2wr_allow_addr_req,
      sig_llink_reset_reg_reg => sig_rst2llink_reset,
      sig_m_valid_out_reg => I_WR_LLINK_ADAPTER_n_2,
      sig_rdwr2llink_int_err => sig_rdwr2llink_int_err,
      sig_s_ready_out_reg => sig_llink2wr_strm_tready,
      sig_wr_error_reg => sig_wr_error_reg,
      sig_wr_llink_enable => sig_wr_llink_enable
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_myip_burst_test_0_0_myip_burst_test_v1_0 is
  port (
    s00_axi_arready : out STD_LOGIC;
    m00_axi_wvalid : out STD_LOGIC;
    m00_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m00_axi_wlast : out STD_LOGIC;
    m00_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axi_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m00_axi_arsize : out STD_LOGIC_VECTOR ( 0 to 0 );
    m00_axi_arburst : out STD_LOGIC_VECTOR ( 0 to 0 );
    m00_axi_awvalid : out STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    slave_reg_0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    slave_reg_1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 12 downto 0 );
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    m00_axi_bready : out STD_LOGIC;
    ip2bus_otputs : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    ip2bus_inputs : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m00_axi_wready : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    m00_axi_aresetn : in STD_LOGIC;
    m00_axi_aclk : in STD_LOGIC;
    m00_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ip2bus_mstwr_d : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    pwm : in STD_LOGIC;
    ip2bus_mst_length : in STD_LOGIC_VECTOR ( 11 downto 0 );
    ip2bus_mst_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m00_axi_bvalid : in STD_LOGIC;
    m00_axi_awready : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_myip_burst_test_0_0_myip_burst_test_v1_0 : entity is "myip_burst_test_v1_0";
end design_1_myip_burst_test_0_0_myip_burst_test_v1_0;

architecture STRUCTURE of design_1_myip_burst_test_0_0_myip_burst_test_v1_0 is
begin
myip_burst_test_v1_0_M00_AXI_inst: entity work.design_1_myip_burst_test_0_0_axi_master_burst
     port map (
      ip2bus_inputs(3 downto 0) => ip2bus_inputs(3 downto 0),
      ip2bus_mst_addr(31 downto 0) => ip2bus_mst_addr(31 downto 0),
      ip2bus_mst_length(11 downto 0) => ip2bus_mst_length(11 downto 0),
      ip2bus_mstwr_d(31 downto 0) => ip2bus_mstwr_d(31 downto 0),
      ip2bus_otputs(5 downto 0) => ip2bus_otputs(5 downto 0),
      m00_axi_aclk => m00_axi_aclk,
      m00_axi_araddr(31 downto 0) => m00_axi_araddr(31 downto 0),
      m00_axi_arburst(0) => m00_axi_arburst(0),
      m00_axi_aresetn => m00_axi_aresetn,
      m00_axi_arlen(3 downto 0) => m00_axi_arlen(3 downto 0),
      m00_axi_arsize(0) => m00_axi_arsize(0),
      m00_axi_awready => m00_axi_awready,
      m00_axi_awvalid => m00_axi_awvalid,
      m00_axi_bready => m00_axi_bready,
      m00_axi_bresp(1 downto 0) => m00_axi_bresp(1 downto 0),
      m00_axi_bvalid => m00_axi_bvalid,
      m00_axi_wdata(31 downto 0) => m00_axi_wdata(31 downto 0),
      m00_axi_wlast => m00_axi_wlast,
      m00_axi_wready => m00_axi_wready,
      m00_axi_wstrb(3 downto 0) => m00_axi_wstrb(3 downto 0),
      m00_axi_wvalid => m00_axi_wvalid
    );
myip_burst_test_v1_0_S00_AXI_inst: entity work.design_1_myip_burst_test_0_0_myip_burst_test_v1_0_S00_AXI
     port map (
      Q(12 downto 0) => Q(12 downto 0),
      pwm => pwm,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(1 downto 0),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arready => s00_axi_arready,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(1 downto 0),
      s00_axi_awready => s00_axi_awready,
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wready => s00_axi_wready,
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid,
      slave_reg_0(31 downto 0) => slave_reg_0(31 downto 0),
      slave_reg_1(31 downto 0) => slave_reg_1(31 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_myip_burst_test_0_0 is
  port (
    ip2bus_mst_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ip2bus_mst_length : in STD_LOGIC_VECTOR ( 11 downto 0 );
    ip2bus_mstwr_d : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ip2bus_inputs : in STD_LOGIC_VECTOR ( 4 downto 0 );
    ip2bus_otputs : out STD_LOGIC_VECTOR ( 5 downto 0 );
    slave_reg_0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    slave_reg_1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    restart : out STD_LOGIC;
    c64_mode : out STD_LOGIC;
    tape_button : out STD_LOGIC;
    pwm : in STD_LOGIC;
    joybits : out STD_LOGIC_VECTOR ( 4 downto 0 );
    joybits2 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    m00_axi_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m00_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m00_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m00_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m00_axi_awlock : out STD_LOGIC;
    m00_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m00_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m00_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m00_axi_awuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m00_axi_awvalid : out STD_LOGIC;
    m00_axi_awready : in STD_LOGIC;
    m00_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m00_axi_wlast : out STD_LOGIC;
    m00_axi_wuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m00_axi_wvalid : out STD_LOGIC;
    m00_axi_wready : in STD_LOGIC;
    m00_axi_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m00_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m00_axi_buser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m00_axi_bvalid : in STD_LOGIC;
    m00_axi_bready : out STD_LOGIC;
    m00_axi_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m00_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m00_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m00_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m00_axi_arlock : out STD_LOGIC;
    m00_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m00_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m00_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m00_axi_aruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m00_axi_arvalid : out STD_LOGIC;
    m00_axi_arready : in STD_LOGIC;
    m00_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m00_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m00_axi_rlast : in STD_LOGIC;
    m00_axi_ruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m00_axi_rvalid : in STD_LOGIC;
    m00_axi_rready : out STD_LOGIC;
    m00_axi_aclk : in STD_LOGIC;
    m00_axi_aresetn : in STD_LOGIC;
    m00_axi_init_axi_txn : in STD_LOGIC;
    m00_axi_txn_done : out STD_LOGIC;
    m00_axi_error : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_myip_burst_test_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_myip_burst_test_0_0 : entity is "design_1_myip_burst_test_0_0,myip_burst_test_v1_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_myip_burst_test_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_myip_burst_test_0_0 : entity is "myip_burst_test_v1_0,Vivado 2017.1";
end design_1_myip_burst_test_0_0;

architecture STRUCTURE of design_1_myip_burst_test_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^m00_axi_araddr\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^m00_axi_arburst\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^m00_axi_arlen\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^m00_axi_arsize\ : STD_LOGIC_VECTOR ( 1 to 1 );
begin
  m00_axi_araddr(31 downto 0) <= \^m00_axi_araddr\(31 downto 0);
  m00_axi_arburst(1) <= \<const0>\;
  m00_axi_arburst(0) <= \^m00_axi_arburst\(0);
  m00_axi_arcache(3) <= \<const0>\;
  m00_axi_arcache(2) <= \<const0>\;
  m00_axi_arcache(1) <= \<const1>\;
  m00_axi_arcache(0) <= \<const1>\;
  m00_axi_arid(0) <= \<const0>\;
  m00_axi_arlen(7) <= \<const0>\;
  m00_axi_arlen(6) <= \<const0>\;
  m00_axi_arlen(5) <= \<const0>\;
  m00_axi_arlen(4) <= \<const0>\;
  m00_axi_arlen(3 downto 0) <= \^m00_axi_arlen\(3 downto 0);
  m00_axi_arlock <= \<const0>\;
  m00_axi_arprot(2) <= \<const0>\;
  m00_axi_arprot(1) <= \<const0>\;
  m00_axi_arprot(0) <= \<const0>\;
  m00_axi_arqos(3) <= \<const1>\;
  m00_axi_arqos(2) <= \<const1>\;
  m00_axi_arqos(1) <= \<const1>\;
  m00_axi_arqos(0) <= \<const1>\;
  m00_axi_arsize(2) <= \<const0>\;
  m00_axi_arsize(1) <= \^m00_axi_arsize\(1);
  m00_axi_arsize(0) <= \<const0>\;
  m00_axi_aruser(0) <= \<const0>\;
  m00_axi_arvalid <= \<const0>\;
  m00_axi_awaddr(31 downto 0) <= \^m00_axi_araddr\(31 downto 0);
  m00_axi_awburst(1) <= \<const0>\;
  m00_axi_awburst(0) <= \^m00_axi_arburst\(0);
  m00_axi_awcache(3) <= \<const0>\;
  m00_axi_awcache(2) <= \<const0>\;
  m00_axi_awcache(1) <= \<const1>\;
  m00_axi_awcache(0) <= \<const1>\;
  m00_axi_awlen(7) <= \<const0>\;
  m00_axi_awlen(6) <= \<const0>\;
  m00_axi_awlen(5) <= \<const0>\;
  m00_axi_awlen(4) <= \<const0>\;
  m00_axi_awlen(3 downto 0) <= \^m00_axi_arlen\(3 downto 0);
  m00_axi_awlock <= \<const0>\;
  m00_axi_awprot(2) <= \<const0>\;
  m00_axi_awprot(1) <= \<const0>\;
  m00_axi_awprot(0) <= \<const0>\;
  m00_axi_awqos(3) <= \<const1>\;
  m00_axi_awqos(2) <= \<const1>\;
  m00_axi_awqos(1) <= \<const1>\;
  m00_axi_awqos(0) <= \<const1>\;
  m00_axi_awsize(2) <= \<const0>\;
  m00_axi_awsize(1) <= \^m00_axi_arsize\(1);
  m00_axi_awsize(0) <= \<const0>\;
  m00_axi_awuser(0) <= \<const1>\;
  m00_axi_rready <= \<const0>\;
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
  m00_axi_error <= 'Z';
  m00_axi_txn_done <= 'Z';
  m00_axi_awid(0) <= 'Z';
  m00_axi_wuser(0) <= 'Z';
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.design_1_myip_burst_test_0_0_myip_burst_test_v1_0
     port map (
      Q(12 downto 8) => joybits2(4 downto 0),
      Q(7) => c64_mode,
      Q(6 downto 2) => joybits(4 downto 0),
      Q(1) => tape_button,
      Q(0) => restart,
      ip2bus_inputs(3 downto 2) => ip2bus_inputs(4 downto 3),
      ip2bus_inputs(1 downto 0) => ip2bus_inputs(1 downto 0),
      ip2bus_mst_addr(31 downto 0) => ip2bus_mst_addr(31 downto 0),
      ip2bus_mst_length(11 downto 0) => ip2bus_mst_length(11 downto 0),
      ip2bus_mstwr_d(31 downto 0) => ip2bus_mstwr_d(31 downto 0),
      ip2bus_otputs(5 downto 0) => ip2bus_otputs(5 downto 0),
      m00_axi_aclk => m00_axi_aclk,
      m00_axi_araddr(31 downto 0) => \^m00_axi_araddr\(31 downto 0),
      m00_axi_arburst(0) => \^m00_axi_arburst\(0),
      m00_axi_aresetn => m00_axi_aresetn,
      m00_axi_arlen(3 downto 0) => \^m00_axi_arlen\(3 downto 0),
      m00_axi_arsize(0) => \^m00_axi_arsize\(1),
      m00_axi_awready => m00_axi_awready,
      m00_axi_awvalid => m00_axi_awvalid,
      m00_axi_bready => m00_axi_bready,
      m00_axi_bresp(1 downto 0) => m00_axi_bresp(1 downto 0),
      m00_axi_bvalid => m00_axi_bvalid,
      m00_axi_wdata(31 downto 0) => m00_axi_wdata(31 downto 0),
      m00_axi_wlast => m00_axi_wlast,
      m00_axi_wready => m00_axi_wready,
      m00_axi_wstrb(3 downto 0) => m00_axi_wstrb(3 downto 0),
      m00_axi_wvalid => m00_axi_wvalid,
      pwm => pwm,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(3 downto 2),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arready => s00_axi_arready,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(3 downto 2),
      s00_axi_awready => s00_axi_awready,
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wready => s00_axi_wready,
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid,
      slave_reg_0(31 downto 0) => slave_reg_0(31 downto 0),
      slave_reg_1(31 downto 0) => slave_reg_1(31 downto 0)
    );
end STRUCTURE;
