-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.1 (lin64) Build 1846317 Fri Apr 14 18:54:47 MDT 2017
-- Date        : Sun Apr  5 18:33:43 2020
-- Host        : johan-Latitude-E5550 running 64-bit Ubuntu 16.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/johan/v/c64fpga/src/bd/ip/design_1_myip_burst_read_test_0_1/design_1_myip_burst_read_test_0_1_sim_netlist.vhdl
-- Design      : design_1_myip_burst_read_test_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_myip_burst_read_test_0_1_axi_master_burst_addr_cntl is
  port (
    \out\ : out STD_LOGIC;
    sig_addr2stat_cmd_fifo_empty : out STD_LOGIC;
    m00_axi_arsize : out STD_LOGIC_VECTOR ( 0 to 0 );
    m00_axi_arburst : out STD_LOGIC_VECTOR ( 0 to 0 );
    m00_axi_arvalid : out STD_LOGIC;
    m00_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axi_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    sig_push_addr_reg1_out : in STD_LOGIC;
    m00_axi_aclk : in STD_LOGIC;
    sig_pcc2data_calc_error : in STD_LOGIC;
    sig_pcc2addr_burst : in STD_LOGIC_VECTOR ( 0 to 0 );
    sig_doing_read_reg_reg : in STD_LOGIC;
    sig_rdwr_reset_reg_reg : in STD_LOGIC;
    m00_axi_arready : in STD_LOGIC;
    sig_cmd2all_doing_read : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \sig_xfer_len_reg_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_myip_burst_read_test_0_1_axi_master_burst_addr_cntl : entity is "axi_master_burst_addr_cntl";
end design_1_myip_burst_read_test_0_1_axi_master_burst_addr_cntl;

architecture STRUCTURE of design_1_myip_burst_read_test_0_1_axi_master_burst_addr_cntl is
  signal sig_addr2stat_calc_error : STD_LOGIC;
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
  attribute KEEP : string;
  attribute KEEP of sig_posted_to_axi_2_reg : label is "yes";
  attribute equivalent_register_removal of sig_posted_to_axi_2_reg : label is "no";
  attribute KEEP of sig_posted_to_axi_reg : label is "yes";
  attribute equivalent_register_removal of sig_posted_to_axi_reg : label is "no";
begin
  \out\ <= sig_posted_to_axi;
sig_addr_reg_empty_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_push_addr_reg1_out,
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
      CE => sig_push_addr_reg1_out,
      D => sig_push_addr_reg1_out,
      Q => sig_addr_reg_full,
      R => sig_next_addr_reg0
    );
sig_calc_error_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => sig_pcc2data_calc_error,
      Q => sig_addr2stat_calc_error,
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0080"
    )
        port map (
      I0 => m00_axi_arready,
      I1 => sig_cmd2all_doing_read,
      I2 => sig_addr_reg_full,
      I3 => sig_addr2stat_calc_error,
      I4 => sig_rdwr_reset_reg_reg,
      O => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_push_addr_reg1_out,
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
      CE => sig_push_addr_reg1_out,
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
      CE => sig_push_addr_reg1_out,
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
      CE => sig_push_addr_reg1_out,
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
      CE => sig_push_addr_reg1_out,
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
      CE => sig_push_addr_reg1_out,
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
      CE => sig_push_addr_reg1_out,
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
      CE => sig_push_addr_reg1_out,
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
      CE => sig_push_addr_reg1_out,
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
      CE => sig_push_addr_reg1_out,
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
      CE => sig_push_addr_reg1_out,
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
      CE => sig_push_addr_reg1_out,
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
      CE => sig_push_addr_reg1_out,
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
      CE => sig_push_addr_reg1_out,
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
      CE => sig_push_addr_reg1_out,
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
      CE => sig_push_addr_reg1_out,
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
      CE => sig_push_addr_reg1_out,
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
      CE => sig_push_addr_reg1_out,
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
      CE => sig_push_addr_reg1_out,
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
      CE => sig_push_addr_reg1_out,
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
      CE => sig_push_addr_reg1_out,
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
      CE => sig_push_addr_reg1_out,
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
      CE => sig_push_addr_reg1_out,
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
      CE => sig_push_addr_reg1_out,
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
      CE => sig_push_addr_reg1_out,
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
      CE => sig_push_addr_reg1_out,
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
      CE => sig_push_addr_reg1_out,
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
      CE => sig_push_addr_reg1_out,
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
      CE => sig_push_addr_reg1_out,
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
      CE => sig_push_addr_reg1_out,
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
      CE => sig_push_addr_reg1_out,
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
      CE => sig_push_addr_reg1_out,
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
      CE => sig_push_addr_reg1_out,
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
      CE => sig_push_addr_reg1_out,
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
      CE => sig_push_addr_reg1_out,
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
      CE => sig_push_addr_reg1_out,
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
      CE => sig_push_addr_reg1_out,
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
      CE => sig_push_addr_reg1_out,
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
      D => sig_push_addr_reg1_out,
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
      D => sig_push_addr_reg1_out,
      Q => sig_posted_to_axi,
      R => sig_rdwr_reset_reg_reg
    );
sig_rd_addr_valid_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => sig_doing_read_reg_reg,
      Q => m00_axi_arvalid,
      R => sig_next_addr_reg0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_myip_burst_read_test_0_1_axi_master_burst_cmd_status is
  port (
    sig_cmd2pcc_cmd_valid : out STD_LOGIC;
    sig_cmd_type_req : out STD_LOGIC;
    sig_cmd2all_doing_read : out STD_LOGIC;
    ip2bus_otputs : out STD_LOGIC_VECTOR ( 3 downto 0 );
    sig_status_reg_empty : out STD_LOGIC;
    sig_rdwr2llink_int_err : out STD_LOGIC;
    sig_rd_addr_valid_reg_reg : out STD_LOGIC;
    sig_cmd_full_reg_reg_0 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 8 downto 0 );
    sig_rd_sts_tag_reg0 : out STD_LOGIC;
    sig_int_error_pulse_reg_reg_0 : out STD_LOGIC;
    sig_next_eof_reg_reg : out STD_LOGIC;
    sig_rd_llink_enable : out STD_LOGIC;
    sig_calc_error_reg_reg : out STD_LOGIC;
    \GEN_ADDR_32.sig_addr_cntr_msh_reg[15]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \out\ : in STD_LOGIC;
    m00_axi_aclk : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    ip2bus_inputs : in STD_LOGIC_VECTOR ( 1 downto 0 );
    sig_rd_sts_slverr_reg_reg : in STD_LOGIC;
    sig_pcc2data_calc_error : in STD_LOGIC;
    O : in STD_LOGIC_VECTOR ( 2 downto 0 );
    sig_sm_halt_reg_reg : in STD_LOGIC;
    sig_rdwr_reset_reg_reg : in STD_LOGIC;
    sig_rsc2stat_status_valid : in STD_LOGIC;
    sig_pcc2data_cmd_valid : in STD_LOGIC;
    sig_doing_read_reg : in STD_LOGIC;
    sig_calc_error_pushed : in STD_LOGIC;
    sig_cmd_full_reg_reg_1 : in STD_LOGIC;
    sig_rsc2stat_status : in STD_LOGIC_VECTOR ( 0 to 0 );
    sig_llink2cmd_rd_busy : in STD_LOGIC;
    sig_pcc2all_calc_err : in STD_LOGIC;
    sig_stat_error : in STD_LOGIC;
    ip2bus_mst_length : in STD_LOGIC_VECTOR ( 11 downto 0 );
    ip2bus_mst_addr : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_myip_burst_read_test_0_1_axi_master_burst_cmd_status : entity is "axi_master_burst_cmd_status";
end design_1_myip_burst_read_test_0_1_axi_master_burst_cmd_status;

architecture STRUCTURE of design_1_myip_burst_read_test_0_1_axi_master_burst_cmd_status is
  signal \^q\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \^ip2bus_otputs\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal sig_calc_error_reg_i_2_n_0 : STD_LOGIC;
  signal sig_calc_error_reg_i_3_n_0 : STD_LOGIC;
  signal \^sig_cmd2all_doing_read\ : STD_LOGIC;
  signal sig_cmd_cmplt_reg_i_1_n_0 : STD_LOGIC;
  signal sig_cmd_empty_reg : STD_LOGIC;
  signal sig_cmd_empty_reg_i_1_n_0 : STD_LOGIC;
  signal sig_cmd_mst_length : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal sig_cmd_mstrd_req : STD_LOGIC;
  signal \^sig_cmd_type_req\ : STD_LOGIC;
  signal sig_cmdack_reg_i_1_n_0 : STD_LOGIC;
  signal sig_doing_read_reg_i_1_n_0 : STD_LOGIC;
  signal sig_init_reg1 : STD_LOGIC;
  signal sig_init_reg2 : STD_LOGIC;
  signal sig_int_error_pulse_reg_i_1_n_0 : STD_LOGIC;
  signal \^sig_int_error_pulse_reg_reg_0\ : STD_LOGIC;
  signal sig_push_cmd_reg : STD_LOGIC;
  signal \^sig_rdwr2llink_int_err\ : STD_LOGIC;
  signal sig_stat_error_reg_i_1_n_0 : STD_LOGIC;
  signal \^sig_status_reg_empty\ : STD_LOGIC;
  signal sig_status_reg_empty_i_1_n_0 : STD_LOGIC;
  signal sig_status_reg_full : STD_LOGIC;
  signal sig_status_reg_full_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of sig_cmd_empty_reg_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of sig_cmd_full_reg_i_3 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of sig_error_sh_reg_i_2 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of sig_next_cmd_cmplt_reg_i_9 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of sig_rd_addr_valid_reg_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of sig_rd_sts_reg_full_i_1 : label is "soft_lutpair1";
begin
  Q(8 downto 0) <= \^q\(8 downto 0);
  ip2bus_otputs(3 downto 0) <= \^ip2bus_otputs\(3 downto 0);
  sig_cmd2all_doing_read <= \^sig_cmd2all_doing_read\;
  sig_cmd_type_req <= \^sig_cmd_type_req\;
  sig_int_error_pulse_reg_reg_0 <= \^sig_int_error_pulse_reg_reg_0\;
  sig_rdwr2llink_int_err <= \^sig_rdwr2llink_int_err\;
  sig_status_reg_empty <= \^sig_status_reg_empty\;
\sig_btt_cntr[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F088"
    )
        port map (
      I0 => sig_cmd_mst_length(0),
      I1 => \^sig_cmd_type_req\,
      I2 => O(0),
      I3 => sig_sm_halt_reg_reg,
      O => D(0)
    );
\sig_btt_cntr[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F088"
    )
        port map (
      I0 => sig_cmd_mst_length(1),
      I1 => \^sig_cmd_type_req\,
      I2 => O(1),
      I3 => sig_sm_halt_reg_reg,
      O => D(1)
    );
\sig_btt_cntr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F088"
    )
        port map (
      I0 => sig_cmd_mst_length(2),
      I1 => \^sig_cmd_type_req\,
      I2 => O(2),
      I3 => sig_sm_halt_reg_reg,
      O => D(2)
    );
sig_calc_error_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF8F008F"
    )
        port map (
      I0 => sig_calc_error_reg_i_2_n_0,
      I1 => sig_calc_error_reg_i_3_n_0,
      I2 => \^sig_cmd_type_req\,
      I3 => sig_sm_halt_reg_reg,
      I4 => sig_pcc2all_calc_err,
      O => sig_calc_error_reg_reg
    );
sig_calc_error_reg_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => sig_cmd_mst_length(2),
      I1 => \^q\(0),
      I2 => sig_cmd_mst_length(0),
      I3 => sig_cmd_mst_length(1),
      I4 => \^q\(2),
      I5 => \^q\(1),
      O => sig_calc_error_reg_i_2_n_0
    );
sig_calc_error_reg_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(6),
      I2 => \^q\(3),
      I3 => \^q\(4),
      I4 => \^q\(8),
      I5 => \^q\(7),
      O => sig_calc_error_reg_i_3_n_0
    );
sig_cmd_cmplt_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000002A"
    )
        port map (
      I0 => sig_status_reg_full,
      I1 => \^sig_cmd2all_doing_read\,
      I2 => sig_llink2cmd_rd_busy,
      I3 => \^ip2bus_otputs\(1),
      I4 => \out\,
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
      INIT => X"AEFFAEAE"
    )
        port map (
      I0 => \^ip2bus_otputs\(1),
      I1 => sig_init_reg1,
      I2 => sig_init_reg2,
      I3 => ip2bus_inputs(0),
      I4 => sig_cmd_empty_reg,
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
      O => sig_push_cmd_reg
    );
sig_cmd_full_reg_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => sig_cmd_empty_reg,
      I1 => ip2bus_inputs(0),
      O => sig_cmd_full_reg_reg_0
    );
sig_cmd_full_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_push_cmd_reg,
      D => sig_push_cmd_reg,
      Q => sig_cmd2pcc_cmd_valid,
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => sig_push_cmd_reg,
      D => ip2bus_mst_addr(0),
      Q => \GEN_ADDR_32.sig_addr_cntr_msh_reg[15]\(0),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => sig_push_cmd_reg,
      D => ip2bus_mst_addr(10),
      Q => \GEN_ADDR_32.sig_addr_cntr_msh_reg[15]\(10),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => sig_push_cmd_reg,
      D => ip2bus_mst_addr(11),
      Q => \GEN_ADDR_32.sig_addr_cntr_msh_reg[15]\(11),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => sig_push_cmd_reg,
      D => ip2bus_mst_addr(12),
      Q => \GEN_ADDR_32.sig_addr_cntr_msh_reg[15]\(12),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => sig_push_cmd_reg,
      D => ip2bus_mst_addr(13),
      Q => \GEN_ADDR_32.sig_addr_cntr_msh_reg[15]\(13),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => sig_push_cmd_reg,
      D => ip2bus_mst_addr(14),
      Q => \GEN_ADDR_32.sig_addr_cntr_msh_reg[15]\(14),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => sig_push_cmd_reg,
      D => ip2bus_mst_addr(15),
      Q => \GEN_ADDR_32.sig_addr_cntr_msh_reg[15]\(15),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => sig_push_cmd_reg,
      D => ip2bus_mst_addr(16),
      Q => \GEN_ADDR_32.sig_addr_cntr_msh_reg[15]\(16),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => sig_push_cmd_reg,
      D => ip2bus_mst_addr(17),
      Q => \GEN_ADDR_32.sig_addr_cntr_msh_reg[15]\(17),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => sig_push_cmd_reg,
      D => ip2bus_mst_addr(18),
      Q => \GEN_ADDR_32.sig_addr_cntr_msh_reg[15]\(18),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => sig_push_cmd_reg,
      D => ip2bus_mst_addr(19),
      Q => \GEN_ADDR_32.sig_addr_cntr_msh_reg[15]\(19),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => sig_push_cmd_reg,
      D => ip2bus_mst_addr(1),
      Q => \GEN_ADDR_32.sig_addr_cntr_msh_reg[15]\(1),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => sig_push_cmd_reg,
      D => ip2bus_mst_addr(20),
      Q => \GEN_ADDR_32.sig_addr_cntr_msh_reg[15]\(20),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => sig_push_cmd_reg,
      D => ip2bus_mst_addr(21),
      Q => \GEN_ADDR_32.sig_addr_cntr_msh_reg[15]\(21),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => sig_push_cmd_reg,
      D => ip2bus_mst_addr(22),
      Q => \GEN_ADDR_32.sig_addr_cntr_msh_reg[15]\(22),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => sig_push_cmd_reg,
      D => ip2bus_mst_addr(23),
      Q => \GEN_ADDR_32.sig_addr_cntr_msh_reg[15]\(23),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => sig_push_cmd_reg,
      D => ip2bus_mst_addr(24),
      Q => \GEN_ADDR_32.sig_addr_cntr_msh_reg[15]\(24),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => sig_push_cmd_reg,
      D => ip2bus_mst_addr(25),
      Q => \GEN_ADDR_32.sig_addr_cntr_msh_reg[15]\(25),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => sig_push_cmd_reg,
      D => ip2bus_mst_addr(26),
      Q => \GEN_ADDR_32.sig_addr_cntr_msh_reg[15]\(26),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => sig_push_cmd_reg,
      D => ip2bus_mst_addr(27),
      Q => \GEN_ADDR_32.sig_addr_cntr_msh_reg[15]\(27),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => sig_push_cmd_reg,
      D => ip2bus_mst_addr(28),
      Q => \GEN_ADDR_32.sig_addr_cntr_msh_reg[15]\(28),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => sig_push_cmd_reg,
      D => ip2bus_mst_addr(29),
      Q => \GEN_ADDR_32.sig_addr_cntr_msh_reg[15]\(29),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => sig_push_cmd_reg,
      D => ip2bus_mst_addr(2),
      Q => \GEN_ADDR_32.sig_addr_cntr_msh_reg[15]\(2),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => sig_push_cmd_reg,
      D => ip2bus_mst_addr(30),
      Q => \GEN_ADDR_32.sig_addr_cntr_msh_reg[15]\(30),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => sig_push_cmd_reg,
      D => ip2bus_mst_addr(31),
      Q => \GEN_ADDR_32.sig_addr_cntr_msh_reg[15]\(31),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => sig_push_cmd_reg,
      D => ip2bus_mst_addr(3),
      Q => \GEN_ADDR_32.sig_addr_cntr_msh_reg[15]\(3),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => sig_push_cmd_reg,
      D => ip2bus_mst_addr(4),
      Q => \GEN_ADDR_32.sig_addr_cntr_msh_reg[15]\(4),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => sig_push_cmd_reg,
      D => ip2bus_mst_addr(5),
      Q => \GEN_ADDR_32.sig_addr_cntr_msh_reg[15]\(5),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => sig_push_cmd_reg,
      D => ip2bus_mst_addr(6),
      Q => \GEN_ADDR_32.sig_addr_cntr_msh_reg[15]\(6),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => sig_push_cmd_reg,
      D => ip2bus_mst_addr(7),
      Q => \GEN_ADDR_32.sig_addr_cntr_msh_reg[15]\(7),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => sig_push_cmd_reg,
      D => ip2bus_mst_addr(8),
      Q => \GEN_ADDR_32.sig_addr_cntr_msh_reg[15]\(8),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => sig_push_cmd_reg,
      D => ip2bus_mst_addr(9),
      Q => \GEN_ADDR_32.sig_addr_cntr_msh_reg[15]\(9),
      R => SR(0)
    );
\sig_cmd_mst_length_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => sig_push_cmd_reg,
      D => ip2bus_mst_length(0),
      Q => sig_cmd_mst_length(0),
      R => SR(0)
    );
\sig_cmd_mst_length_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => sig_push_cmd_reg,
      D => ip2bus_mst_length(10),
      Q => \^q\(7),
      R => SR(0)
    );
\sig_cmd_mst_length_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => sig_push_cmd_reg,
      D => ip2bus_mst_length(11),
      Q => \^q\(8),
      R => SR(0)
    );
\sig_cmd_mst_length_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => sig_push_cmd_reg,
      D => ip2bus_mst_length(1),
      Q => sig_cmd_mst_length(1),
      R => SR(0)
    );
\sig_cmd_mst_length_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => sig_push_cmd_reg,
      D => ip2bus_mst_length(2),
      Q => sig_cmd_mst_length(2),
      R => SR(0)
    );
\sig_cmd_mst_length_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => sig_push_cmd_reg,
      D => ip2bus_mst_length(3),
      Q => \^q\(0),
      R => SR(0)
    );
\sig_cmd_mst_length_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => sig_push_cmd_reg,
      D => ip2bus_mst_length(4),
      Q => \^q\(1),
      R => SR(0)
    );
\sig_cmd_mst_length_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => sig_push_cmd_reg,
      D => ip2bus_mst_length(5),
      Q => \^q\(2),
      R => SR(0)
    );
\sig_cmd_mst_length_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => sig_push_cmd_reg,
      D => ip2bus_mst_length(6),
      Q => \^q\(3),
      R => SR(0)
    );
\sig_cmd_mst_length_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => sig_push_cmd_reg,
      D => ip2bus_mst_length(7),
      Q => \^q\(4),
      R => SR(0)
    );
\sig_cmd_mst_length_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => sig_push_cmd_reg,
      D => ip2bus_mst_length(8),
      Q => \^q\(5),
      R => SR(0)
    );
\sig_cmd_mst_length_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => sig_push_cmd_reg,
      D => ip2bus_mst_length(9),
      Q => \^q\(6),
      R => SR(0)
    );
sig_cmd_mstrd_req_reg: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => sig_push_cmd_reg,
      D => ip2bus_inputs(0),
      Q => sig_cmd_mstrd_req,
      R => SR(0)
    );
sig_cmd_type_req_reg: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => sig_push_cmd_reg,
      D => ip2bus_inputs(1),
      Q => \^sig_cmd_type_req\,
      R => SR(0)
    );
sig_cmdack_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \^ip2bus_otputs\(0),
      I1 => \out\,
      I2 => ip2bus_inputs(0),
      I3 => sig_cmd_empty_reg,
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
sig_doing_read_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000ABA8"
    )
        port map (
      I0 => \^sig_cmd2all_doing_read\,
      I1 => sig_calc_error_pushed,
      I2 => sig_cmd_full_reg_reg_1,
      I3 => sig_cmd_mstrd_req,
      I4 => \^ip2bus_otputs\(1),
      I5 => \out\,
      O => sig_doing_read_reg_i_1_n_0
    );
sig_doing_read_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => '1',
      D => sig_doing_read_reg_i_1_n_0,
      Q => \^sig_cmd2all_doing_read\,
      R => '0'
    );
sig_error_sh_reg_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \^sig_cmd2all_doing_read\,
      I1 => sig_rsc2stat_status_valid,
      I2 => \^sig_status_reg_empty\,
      O => \^sig_int_error_pulse_reg_reg_0\
    );
sig_error_sh_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => '1',
      D => sig_rd_sts_slverr_reg_reg,
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
      INIT => X"00E2000000000000"
    )
        port map (
      I0 => sig_rsc2stat_status(0),
      I1 => \^sig_int_error_pulse_reg_reg_0\,
      I2 => \^sig_rdwr2llink_int_err\,
      I3 => \out\,
      I4 => \^sig_cmd2all_doing_read\,
      I5 => sig_llink2cmd_rd_busy,
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
      I0 => \^sig_cmd2all_doing_read\,
      I1 => sig_doing_read_reg,
      O => sig_rd_llink_enable
    );
sig_next_cmd_cmplt_reg_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"77F7"
    )
        port map (
      I0 => \^sig_cmd2all_doing_read\,
      I1 => sig_pcc2data_cmd_valid,
      I2 => sig_rsc2stat_status_valid,
      I3 => \^sig_status_reg_empty\,
      O => sig_next_eof_reg_reg
    );
sig_rd_addr_valid_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^sig_cmd2all_doing_read\,
      I1 => sig_pcc2data_calc_error,
      O => sig_rd_addr_valid_reg_reg
    );
sig_rd_sts_reg_full_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EAAA"
    )
        port map (
      I0 => sig_rdwr_reset_reg_reg,
      I1 => \^sig_status_reg_empty\,
      I2 => sig_rsc2stat_status_valid,
      I3 => \^sig_cmd2all_doing_read\,
      O => sig_rd_sts_tag_reg0
    );
sig_stat_error_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000C0A0C"
    )
        port map (
      I0 => \^ip2bus_otputs\(2),
      I1 => sig_stat_error,
      I2 => \out\,
      I3 => \^sig_int_error_pulse_reg_reg_0\,
      I4 => \^ip2bus_otputs\(1),
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
      INIT => X"AEAEFFAEFFAEFFAE"
    )
        port map (
      I0 => \^ip2bus_otputs\(1),
      I1 => sig_init_reg1,
      I2 => sig_init_reg2,
      I3 => \^sig_status_reg_empty\,
      I4 => sig_rsc2stat_status_valid,
      I5 => \^sig_cmd2all_doing_read\,
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
      INIT => X"3000000032222222"
    )
        port map (
      I0 => sig_status_reg_full,
      I1 => \out\,
      I2 => \^sig_status_reg_empty\,
      I3 => sig_rsc2stat_status_valid,
      I4 => \^sig_cmd2all_doing_read\,
      I5 => \^ip2bus_otputs\(1),
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
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_myip_burst_read_test_0_1_axi_master_burst_pcc is
  port (
    sig_pcc2addr_burst : out STD_LOGIC_VECTOR ( 0 to 0 );
    sig_pcc2data_cmd_cmplt : out STD_LOGIC;
    sig_pcc2data_calc_error : out STD_LOGIC;
    sig_xfer_calc_err_reg_reg_0 : out STD_LOGIC;
    sig_pcc2data_eof : out STD_LOGIC;
    sig_pcc2data_sequential : out STD_LOGIC;
    \sig_btt_cntr_reg[2]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    sig_cmd2data_valid_reg_0 : out STD_LOGIC;
    sig_input_burst_type_reg_reg_0 : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    DI : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \GEN_ADDR_32.sig_addr_cntr_msh_reg[7]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \GEN_ADDR_32.sig_addr_cntr_msh_reg[11]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \GEN_ADDR_32.sig_addr_cntr_msh_reg[15]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    sig_doing_read_reg_reg : out STD_LOGIC;
    sig_push_addr_reg1_out : out STD_LOGIC;
    sig_last_dbeat_reg : out STD_LOGIC;
    \sig_next_len_reg_reg[3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \sig_next_addr_reg_reg[31]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \out\ : in STD_LOGIC;
    m00_axi_aclk : in STD_LOGIC;
    O : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \GEN_ADDR_32.sig_addr_cntr_msh_reg[7]_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \GEN_ADDR_32.sig_addr_cntr_msh_reg[11]_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \GEN_ADDR_32.sig_addr_cntr_msh_reg[15]_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    sig_cmd_type_req_reg : in STD_LOGIC;
    sig_cmd2pcc_cmd_valid : in STD_LOGIC;
    sig_cmd_empty_reg_reg : in STD_LOGIC;
    sig_cmd_reset_reg_reg : in STD_LOGIC;
    \sig_cmd_mst_addr_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 8 downto 0 );
    sig_cmd_type_req : in STD_LOGIC;
    sig_rdc2pcc_cmd_ready : in STD_LOGIC;
    sig_addr2stat_cmd_fifo_empty : in STD_LOGIC;
    sig_llink2rd_allow_addr_req : in STD_LOGIC;
    sig_cmd2all_doing_read : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_myip_burst_read_test_0_1_axi_master_burst_pcc : entity is "axi_master_burst_pcc";
end design_1_myip_burst_read_test_0_1_axi_master_burst_pcc;

architecture STRUCTURE of design_1_myip_burst_read_test_0_1_axi_master_burst_pcc is
  signal \^di\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \FSM_sequential_sig_pcc_sm_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_sig_pcc_sm_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_sig_pcc_sm_state[0]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_sig_pcc_sm_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_sig_pcc_sm_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_addr_cntr_incr_imreg[0]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_addr_cntr_incr_imreg[1]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_addr_cntr_incr_imreg[2]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_addr_cntr_incr_imreg[3]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_addr_cntr_incr_imreg[3]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_addr_cntr_incr_imreg[4]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_addr_cntr_incr_imreg[5]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_3_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_4_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_addr_cntr_msh_reg\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \GEN_ADDR_32.sig_adjusted_addr_incr_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_adjusted_addr_incr_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_adjusted_addr_incr_reg[4]_i_3_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_adjusted_addr_incr_reg[4]_i_4_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_adjusted_addr_incr_reg[4]_i_5_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_adjusted_addr_incr_reg[5]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_adjusted_addr_incr_reg[5]_i_3_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_adjusted_addr_incr_reg[5]_i_4_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_adjusted_addr_incr_reg[5]_i_5_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_adjusted_addr_incr_reg[5]_i_6_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_adjusted_addr_incr_reg[5]_i_7_n_0\ : STD_LOGIC;
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
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[0]\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[10]\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[11]\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[12]\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[13]\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[14]\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[1]\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[2]\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[3]\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[4]\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[5]\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[6]\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[7]\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[8]\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[9]\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal p_1_in2_in : STD_LOGIC;
  signal sig_addr_cntr_incr_imreg : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal sig_adjusted_addr_incr : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal sig_btt_cntr : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal sig_btt_cntr0 : STD_LOGIC_VECTOR ( 11 downto 3 );
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
  signal \sig_btt_cntr[10]_i_1_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr[11]_i_1_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr[3]_i_1_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr[4]_i_1_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr[5]_i_1_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr[6]_i_1_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr[7]_i_1_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr[8]_i_1_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr[9]_i_1_n_0\ : STD_LOGIC;
  signal sig_btt_lt_b2mbaa1 : STD_LOGIC;
  signal sig_btt_lt_b2mbaa1_carry_i_1_n_0 : STD_LOGIC;
  signal sig_btt_lt_b2mbaa1_carry_i_2_n_0 : STD_LOGIC;
  signal sig_btt_lt_b2mbaa1_carry_i_3_n_0 : STD_LOGIC;
  signal sig_btt_lt_b2mbaa1_carry_i_4_n_0 : STD_LOGIC;
  signal sig_btt_lt_b2mbaa1_carry_i_5_n_0 : STD_LOGIC;
  signal sig_btt_lt_b2mbaa1_carry_i_6_n_0 : STD_LOGIC;
  signal sig_btt_lt_b2mbaa1_carry_i_7_n_0 : STD_LOGIC;
  signal sig_btt_lt_b2mbaa1_carry_i_8_n_0 : STD_LOGIC;
  signal sig_btt_lt_b2mbaa1_carry_n_1 : STD_LOGIC;
  signal sig_btt_lt_b2mbaa1_carry_n_2 : STD_LOGIC;
  signal sig_btt_lt_b2mbaa1_carry_n_3 : STD_LOGIC;
  signal sig_calc_error_pushed_i_1_n_0 : STD_LOGIC;
  signal sig_cmd2addr_valid_i_1_n_0 : STD_LOGIC;
  signal sig_cmd2data_valid_i_1_n_0 : STD_LOGIC;
  signal \^sig_cmd2data_valid_reg_0\ : STD_LOGIC;
  signal sig_cmd2dre_valid_i_1_n_0 : STD_LOGIC;
  signal sig_cmd2dre_valid_reg_n_0 : STD_LOGIC;
  signal sig_first_xfer : STD_LOGIC;
  signal sig_input_burst_type_reg : STD_LOGIC;
  signal sig_input_burst_type_reg_i_1_n_0 : STD_LOGIC;
  signal \^sig_input_burst_type_reg_reg_0\ : STD_LOGIC;
  signal sig_input_eof_reg : STD_LOGIC;
  signal sig_input_eof_reg_i_1_n_0 : STD_LOGIC;
  signal sig_input_reg_empty : STD_LOGIC;
  signal sig_input_reg_empty_i_1_n_0 : STD_LOGIC;
  signal sig_ld_xfer_reg : STD_LOGIC;
  signal sig_ld_xfer_reg_i_1_n_0 : STD_LOGIC;
  signal sig_mbaa_addr_cntr_slice : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \^sig_next_len_reg_reg[3]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal sig_parent_done : STD_LOGIC;
  signal sig_parent_done_i_1_n_0 : STD_LOGIC;
  signal sig_pcc2addr_cmd_valid : STD_LOGIC;
  signal sig_pcc_sm_state : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of sig_pcc_sm_state : signal is "yes";
  signal sig_predict_addr_lsh_im3_in : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^sig_push_addr_reg1_out\ : STD_LOGIC;
  signal sig_push_xfer_reg15_out : STD_LOGIC;
  signal sig_sm_halt_ns : STD_LOGIC;
  signal sig_sm_halt_reg : STD_LOGIC;
  signal sig_sm_ld_calc1_reg : STD_LOGIC;
  signal sig_sm_ld_calc1_reg_ns : STD_LOGIC;
  signal sig_sm_ld_calc2_reg : STD_LOGIC;
  signal sig_sm_ld_calc2_reg_ns : STD_LOGIC;
  signal sig_sm_pop_input_reg : STD_LOGIC;
  signal sig_sm_pop_input_reg_ns : STD_LOGIC;
  signal sig_xfer_addr_reg0 : STD_LOGIC;
  signal sig_xfer_address : STD_LOGIC_VECTOR ( 14 downto 6 );
  signal \^sig_xfer_calc_err_reg_reg_0\ : STD_LOGIC;
  signal sig_xfer_cmd_cmplt_reg0 : STD_LOGIC;
  signal sig_xfer_cmd_cmplt_reg_i_10_n_0 : STD_LOGIC;
  signal sig_xfer_cmd_cmplt_reg_i_11_n_0 : STD_LOGIC;
  signal sig_xfer_cmd_cmplt_reg_i_12_n_0 : STD_LOGIC;
  signal sig_xfer_cmd_cmplt_reg_i_13_n_0 : STD_LOGIC;
  signal sig_xfer_cmd_cmplt_reg_i_14_n_0 : STD_LOGIC;
  signal sig_xfer_cmd_cmplt_reg_i_15_n_0 : STD_LOGIC;
  signal sig_xfer_cmd_cmplt_reg_i_2_n_0 : STD_LOGIC;
  signal sig_xfer_cmd_cmplt_reg_i_3_n_0 : STD_LOGIC;
  signal sig_xfer_cmd_cmplt_reg_i_4_n_0 : STD_LOGIC;
  signal sig_xfer_cmd_cmplt_reg_i_5_n_0 : STD_LOGIC;
  signal sig_xfer_cmd_cmplt_reg_i_6_n_0 : STD_LOGIC;
  signal sig_xfer_cmd_cmplt_reg_i_7_n_0 : STD_LOGIC;
  signal sig_xfer_cmd_cmplt_reg_i_8_n_0 : STD_LOGIC;
  signal sig_xfer_cmd_cmplt_reg_i_9_n_0 : STD_LOGIC;
  signal sig_xfer_eof_reg0 : STD_LOGIC;
  signal sig_xfer_eof_reg_i_2_n_0 : STD_LOGIC;
  signal sig_xfer_eof_reg_i_3_n_0 : STD_LOGIC;
  signal sig_xfer_eof_reg_i_4_n_0 : STD_LOGIC;
  signal sig_xfer_is_seq_reg_i_10_n_0 : STD_LOGIC;
  signal sig_xfer_is_seq_reg_i_1_n_0 : STD_LOGIC;
  signal sig_xfer_is_seq_reg_i_2_n_0 : STD_LOGIC;
  signal sig_xfer_is_seq_reg_i_3_n_0 : STD_LOGIC;
  signal sig_xfer_is_seq_reg_i_4_n_0 : STD_LOGIC;
  signal sig_xfer_is_seq_reg_i_5_n_0 : STD_LOGIC;
  signal sig_xfer_is_seq_reg_i_6_n_0 : STD_LOGIC;
  signal sig_xfer_is_seq_reg_i_7_n_0 : STD_LOGIC;
  signal sig_xfer_is_seq_reg_i_8_n_0 : STD_LOGIC;
  signal sig_xfer_is_seq_reg_i_9_n_0 : STD_LOGIC;
  signal \sig_xfer_len_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \sig_xfer_len_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \sig_xfer_len_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \sig_xfer_len_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal sig_xfer_reg_empty : STD_LOGIC;
  signal sig_xfer_reg_empty_i_3_n_0 : STD_LOGIC;
  signal \NLW_GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[15]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_sig_btt_cntr0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_sig_btt_lt_b2mbaa1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_sig_pcc_sm_state[0]_i_2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \FSM_sequential_sig_pcc_sm_state[0]_i_3\ : label is "soft_lutpair8";
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_sig_pcc_sm_state_reg[0]\ : label is "yes";
  attribute KEEP of \FSM_sequential_sig_pcc_sm_state_reg[1]\ : label is "yes";
  attribute KEEP of \FSM_sequential_sig_pcc_sm_state_reg[2]\ : label is "yes";
  attribute SOFT_HLUTNM of \GEN_ADDR_32.sig_addr_cntr_incr_imreg[0]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \GEN_ADDR_32.sig_addr_cntr_incr_imreg[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \GEN_ADDR_32.sig_addr_cntr_incr_imreg[3]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \GEN_ADDR_32.sig_addr_cntr_incr_imreg[4]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_2\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_3\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \GEN_ADDR_32.sig_adjusted_addr_incr_reg[0]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \GEN_ADDR_32.sig_adjusted_addr_incr_reg[3]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \GEN_ADDR_32.sig_adjusted_addr_incr_reg[4]_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \GEN_ADDR_32.sig_adjusted_addr_incr_reg[4]_i_3\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \GEN_ADDR_32.sig_adjusted_addr_incr_reg[5]_i_2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \GEN_ADDR_32.sig_adjusted_addr_incr_reg[5]_i_4\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \GEN_ADDR_32.sig_adjusted_addr_incr_reg[5]_i_6\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \GEN_ADDR_32.sig_adjusted_addr_incr_reg[5]_i_7\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of sig_calc_error_pushed_i_1 : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of sig_cmd2dre_valid_i_1 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of sig_xfer_cmd_cmplt_reg_i_12 : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of sig_xfer_cmd_cmplt_reg_i_13 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of sig_xfer_cmd_cmplt_reg_i_15 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of sig_xfer_cmd_cmplt_reg_i_4 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of sig_xfer_cmd_cmplt_reg_i_5 : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of sig_xfer_eof_reg_i_2 : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of sig_xfer_eof_reg_i_4 : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of sig_xfer_is_seq_reg_i_7 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of sig_xfer_is_seq_reg_i_8 : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of sig_xfer_is_seq_reg_i_9 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \sig_xfer_len_reg[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \sig_xfer_len_reg[2]_i_1\ : label is "soft_lutpair6";
begin
  DI(0) <= \^di\(0);
  sig_cmd2data_valid_reg_0 <= \^sig_cmd2data_valid_reg_0\;
  sig_input_burst_type_reg_reg_0 <= \^sig_input_burst_type_reg_reg_0\;
  \sig_next_len_reg_reg[3]\(3 downto 0) <= \^sig_next_len_reg_reg[3]\(3 downto 0);
  sig_push_addr_reg1_out <= \^sig_push_addr_reg1_out\;
  sig_xfer_calc_err_reg_reg_0 <= \^sig_xfer_calc_err_reg_reg_0\;
\FSM_sequential_sig_pcc_sm_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"003300338BFF8B33"
    )
        port map (
      I0 => \FSM_sequential_sig_pcc_sm_state[0]_i_2_n_0\,
      I1 => sig_pcc_sm_state(0),
      I2 => \FSM_sequential_sig_pcc_sm_state[0]_i_3_n_0\,
      I3 => sig_pcc_sm_state(2),
      I4 => \^di\(0),
      I5 => sig_pcc_sm_state(1),
      O => \FSM_sequential_sig_pcc_sm_state[0]_i_1_n_0\
    );
\FSM_sequential_sig_pcc_sm_state[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sig_parent_done,
      I1 => \^sig_input_burst_type_reg_reg_0\,
      O => \FSM_sequential_sig_pcc_sm_state[0]_i_2_n_0\
    );
\FSM_sequential_sig_pcc_sm_state[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => sig_ld_xfer_reg,
      I1 => sig_xfer_reg_empty,
      O => \FSM_sequential_sig_pcc_sm_state[0]_i_3_n_0\
    );
\FSM_sequential_sig_pcc_sm_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4A4A0A4A5A5A1A5A"
    )
        port map (
      I0 => sig_pcc_sm_state(1),
      I1 => sig_pcc_sm_state(2),
      I2 => sig_pcc_sm_state(0),
      I3 => sig_parent_done,
      I4 => \^sig_input_burst_type_reg_reg_0\,
      I5 => \^di\(0),
      O => \FSM_sequential_sig_pcc_sm_state[1]_i_1_n_0\
    );
\FSM_sequential_sig_pcc_sm_state[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3C8C"
    )
        port map (
      I0 => \^sig_input_burst_type_reg_reg_0\,
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
      INIT => X"CA0A"
    )
        port map (
      I0 => sig_btt_cntr(0),
      I1 => sig_mbaa_addr_cntr_slice(0),
      I2 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_3_n_0\,
      I3 => sig_first_xfer,
      O => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[0]_i_1_n_0\
    );
\GEN_ADDR_32.sig_addr_cntr_incr_imreg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"60FF6000"
    )
        port map (
      I0 => sig_mbaa_addr_cntr_slice(1),
      I1 => sig_mbaa_addr_cntr_slice(0),
      I2 => sig_first_xfer,
      I3 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_3_n_0\,
      I4 => sig_btt_cntr(1),
      O => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[1]_i_1_n_0\
    );
\GEN_ADDR_32.sig_addr_cntr_incr_imreg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2E2E2EE222222222"
    )
        port map (
      I0 => sig_btt_cntr(2),
      I1 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_3_n_0\,
      I2 => sig_mbaa_addr_cntr_slice(2),
      I3 => sig_mbaa_addr_cntr_slice(0),
      I4 => sig_mbaa_addr_cntr_slice(1),
      I5 => sig_first_xfer,
      O => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[2]_i_1_n_0\
    );
\GEN_ADDR_32.sig_addr_cntr_incr_imreg[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2E2E2EE222222222"
    )
        port map (
      I0 => sig_btt_cntr(3),
      I1 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_3_n_0\,
      I2 => sig_mbaa_addr_cntr_slice(3),
      I3 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[3]_i_2_n_0\,
      I4 => sig_mbaa_addr_cntr_slice(2),
      I5 => sig_first_xfer,
      O => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[3]_i_1_n_0\
    );
\GEN_ADDR_32.sig_addr_cntr_incr_imreg[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sig_mbaa_addr_cntr_slice(0),
      I1 => sig_mbaa_addr_cntr_slice(1),
      O => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[3]_i_2_n_0\
    );
\GEN_ADDR_32.sig_addr_cntr_incr_imreg[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3C00AAAA"
    )
        port map (
      I0 => sig_btt_cntr(4),
      I1 => sig_mbaa_addr_cntr_slice(4),
      I2 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_2_n_0\,
      I3 => sig_first_xfer,
      I4 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_3_n_0\,
      O => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[4]_i_1_n_0\
    );
\GEN_ADDR_32.sig_addr_cntr_incr_imreg[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"333C0000AAAAAAAA"
    )
        port map (
      I0 => sig_btt_cntr(5),
      I1 => sig_mbaa_addr_cntr_slice(5),
      I2 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_2_n_0\,
      I3 => sig_mbaa_addr_cntr_slice(4),
      I4 => sig_first_xfer,
      I5 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_3_n_0\,
      O => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[5]_i_1_n_0\
    );
\GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01FF0000"
    )
        port map (
      I0 => sig_mbaa_addr_cntr_slice(4),
      I1 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_2_n_0\,
      I2 => sig_mbaa_addr_cntr_slice(5),
      I3 => sig_first_xfer,
      I4 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_3_n_0\,
      O => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_1_n_0\
    );
\GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => sig_mbaa_addr_cntr_slice(2),
      I1 => sig_mbaa_addr_cntr_slice(0),
      I2 => sig_mbaa_addr_cntr_slice(1),
      I3 => sig_mbaa_addr_cntr_slice(3),
      O => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_2_n_0\
    );
\GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_4_n_0\,
      I1 => sig_btt_lt_b2mbaa1,
      O => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_3_n_0\
    );
\GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => sig_btt_cntr(8),
      I1 => sig_btt_cntr(9),
      I2 => sig_btt_cntr(11),
      I3 => sig_btt_cntr(10),
      I4 => sig_btt_cntr(7),
      I5 => sig_btt_cntr(6),
      O => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_4_n_0\
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
\GEN_ADDR_32.sig_addr_cntr_lsh[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAC0"
    )
        port map (
      I0 => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[0]\,
      I1 => \sig_cmd_mst_addr_reg[31]\(0),
      I2 => sig_cmd_type_req,
      I3 => \^di\(0),
      O => p_1_in(0)
    );
\GEN_ADDR_32.sig_addr_cntr_lsh[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABAAAAAAA8AAA"
    )
        port map (
      I0 => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[10]\,
      I1 => sig_sm_halt_reg,
      I2 => sig_input_reg_empty,
      I3 => sig_cmd2pcc_cmd_valid,
      I4 => \^sig_xfer_calc_err_reg_reg_0\,
      I5 => \sig_cmd_mst_addr_reg[31]\(10),
      O => p_1_in(10)
    );
\GEN_ADDR_32.sig_addr_cntr_lsh[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABAAAAAAA8AAA"
    )
        port map (
      I0 => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[11]\,
      I1 => sig_sm_halt_reg,
      I2 => sig_input_reg_empty,
      I3 => sig_cmd2pcc_cmd_valid,
      I4 => \^sig_xfer_calc_err_reg_reg_0\,
      I5 => \sig_cmd_mst_addr_reg[31]\(11),
      O => p_1_in(11)
    );
\GEN_ADDR_32.sig_addr_cntr_lsh[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABAAAAAAA8AAA"
    )
        port map (
      I0 => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[12]\,
      I1 => sig_sm_halt_reg,
      I2 => sig_input_reg_empty,
      I3 => sig_cmd2pcc_cmd_valid,
      I4 => \^sig_xfer_calc_err_reg_reg_0\,
      I5 => \sig_cmd_mst_addr_reg[31]\(12),
      O => p_1_in(12)
    );
\GEN_ADDR_32.sig_addr_cntr_lsh[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABAAAAAAA8AAA"
    )
        port map (
      I0 => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[13]\,
      I1 => sig_sm_halt_reg,
      I2 => sig_input_reg_empty,
      I3 => sig_cmd2pcc_cmd_valid,
      I4 => \^sig_xfer_calc_err_reg_reg_0\,
      I5 => \sig_cmd_mst_addr_reg[31]\(13),
      O => p_1_in(13)
    );
\GEN_ADDR_32.sig_addr_cntr_lsh[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABAAAAAAA8AAA"
    )
        port map (
      I0 => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[14]\,
      I1 => sig_sm_halt_reg,
      I2 => sig_input_reg_empty,
      I3 => sig_cmd2pcc_cmd_valid,
      I4 => \^sig_xfer_calc_err_reg_reg_0\,
      I5 => \sig_cmd_mst_addr_reg[31]\(14),
      O => p_1_in(14)
    );
\GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"80FF"
    )
        port map (
      I0 => sig_ld_xfer_reg,
      I1 => sig_xfer_reg_empty,
      I2 => sig_input_burst_type_reg,
      I3 => \^di\(0),
      O => \GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0\
    );
\GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABAAAAAAA8AAA"
    )
        port map (
      I0 => p_0_in,
      I1 => sig_sm_halt_reg,
      I2 => sig_input_reg_empty,
      I3 => sig_cmd2pcc_cmd_valid,
      I4 => \^sig_xfer_calc_err_reg_reg_0\,
      I5 => \sig_cmd_mst_addr_reg[31]\(15),
      O => p_1_in(15)
    );
\GEN_ADDR_32.sig_addr_cntr_lsh[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAC0"
    )
        port map (
      I0 => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[1]\,
      I1 => \sig_cmd_mst_addr_reg[31]\(1),
      I2 => sig_cmd_type_req,
      I3 => \^di\(0),
      O => p_1_in(1)
    );
\GEN_ADDR_32.sig_addr_cntr_lsh[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABAAAAAAA8AAA"
    )
        port map (
      I0 => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[2]\,
      I1 => sig_sm_halt_reg,
      I2 => sig_input_reg_empty,
      I3 => sig_cmd2pcc_cmd_valid,
      I4 => \^sig_xfer_calc_err_reg_reg_0\,
      I5 => \sig_cmd_mst_addr_reg[31]\(2),
      O => p_1_in(2)
    );
\GEN_ADDR_32.sig_addr_cntr_lsh[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABAAAAAAA8AAA"
    )
        port map (
      I0 => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[3]\,
      I1 => sig_sm_halt_reg,
      I2 => sig_input_reg_empty,
      I3 => sig_cmd2pcc_cmd_valid,
      I4 => \^sig_xfer_calc_err_reg_reg_0\,
      I5 => \sig_cmd_mst_addr_reg[31]\(3),
      O => p_1_in(3)
    );
\GEN_ADDR_32.sig_addr_cntr_lsh[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABAAAAAAA8AAA"
    )
        port map (
      I0 => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[4]\,
      I1 => sig_sm_halt_reg,
      I2 => sig_input_reg_empty,
      I3 => sig_cmd2pcc_cmd_valid,
      I4 => \^sig_xfer_calc_err_reg_reg_0\,
      I5 => \sig_cmd_mst_addr_reg[31]\(4),
      O => p_1_in(4)
    );
\GEN_ADDR_32.sig_addr_cntr_lsh[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABAAAAAAA8AAA"
    )
        port map (
      I0 => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[5]\,
      I1 => sig_sm_halt_reg,
      I2 => sig_input_reg_empty,
      I3 => sig_cmd2pcc_cmd_valid,
      I4 => \^sig_xfer_calc_err_reg_reg_0\,
      I5 => \sig_cmd_mst_addr_reg[31]\(5),
      O => p_1_in(5)
    );
\GEN_ADDR_32.sig_addr_cntr_lsh[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABAAAAAAA8AAA"
    )
        port map (
      I0 => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[6]\,
      I1 => sig_sm_halt_reg,
      I2 => sig_input_reg_empty,
      I3 => sig_cmd2pcc_cmd_valid,
      I4 => \^sig_xfer_calc_err_reg_reg_0\,
      I5 => \sig_cmd_mst_addr_reg[31]\(6),
      O => p_1_in(6)
    );
\GEN_ADDR_32.sig_addr_cntr_lsh[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABAAAAAAA8AAA"
    )
        port map (
      I0 => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[7]\,
      I1 => sig_sm_halt_reg,
      I2 => sig_input_reg_empty,
      I3 => sig_cmd2pcc_cmd_valid,
      I4 => \^sig_xfer_calc_err_reg_reg_0\,
      I5 => \sig_cmd_mst_addr_reg[31]\(7),
      O => p_1_in(7)
    );
\GEN_ADDR_32.sig_addr_cntr_lsh[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABAAAAAAA8AAA"
    )
        port map (
      I0 => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[8]\,
      I1 => sig_sm_halt_reg,
      I2 => sig_input_reg_empty,
      I3 => sig_cmd2pcc_cmd_valid,
      I4 => \^sig_xfer_calc_err_reg_reg_0\,
      I5 => \sig_cmd_mst_addr_reg[31]\(8),
      O => p_1_in(8)
    );
\GEN_ADDR_32.sig_addr_cntr_lsh[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABAAAAAAA8AAA"
    )
        port map (
      I0 => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[9]\,
      I1 => sig_sm_halt_reg,
      I2 => sig_input_reg_empty,
      I3 => sig_cmd2pcc_cmd_valid,
      I4 => \^sig_xfer_calc_err_reg_reg_0\,
      I5 => \sig_cmd_mst_addr_reg[31]\(9),
      O => p_1_in(9)
    );
\GEN_ADDR_32.sig_addr_cntr_lsh_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0\,
      D => p_1_in(0),
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
      D => p_1_in(10),
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
      D => p_1_in(11),
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
      D => p_1_in(12),
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
      D => p_1_in(13),
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
      D => p_1_in(14),
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
      D => p_1_in(15),
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
      D => p_1_in(1),
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
      D => p_1_in(2),
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
      D => p_1_in(3),
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
      D => p_1_in(4),
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
      D => p_1_in(5),
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
      D => p_1_in(6),
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
      D => p_1_in(7),
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
      D => p_1_in(8),
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
      D => p_1_in(9),
      Q => sig_xfer_address(9),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00008000FFFFFFFF"
    )
        port map (
      I0 => sig_ld_xfer_reg,
      I1 => sig_xfer_reg_empty,
      I2 => sig_input_burst_type_reg,
      I3 => p_1_in2_in,
      I4 => p_0_in,
      I5 => \^di\(0),
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
      D => \GEN_ADDR_32.sig_addr_cntr_msh_reg[11]_1\(2),
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
      D => \GEN_ADDR_32.sig_addr_cntr_msh_reg[11]_1\(3),
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
      D => \GEN_ADDR_32.sig_addr_cntr_msh_reg[15]_1\(0),
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
      D => \GEN_ADDR_32.sig_addr_cntr_msh_reg[15]_1\(1),
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
      D => \GEN_ADDR_32.sig_addr_cntr_msh_reg[15]_1\(2),
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
      D => \GEN_ADDR_32.sig_addr_cntr_msh_reg[15]_1\(3),
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
      D => \GEN_ADDR_32.sig_addr_cntr_msh_reg[7]_1\(0),
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
      D => \GEN_ADDR_32.sig_addr_cntr_msh_reg[7]_1\(1),
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
      D => \GEN_ADDR_32.sig_addr_cntr_msh_reg[7]_1\(2),
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
      D => \GEN_ADDR_32.sig_addr_cntr_msh_reg[7]_1\(3),
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
      D => \GEN_ADDR_32.sig_addr_cntr_msh_reg[11]_1\(0),
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
      D => \GEN_ADDR_32.sig_addr_cntr_msh_reg[11]_1\(1),
      Q => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(9),
      R => \out\
    );
\GEN_ADDR_32.sig_adjusted_addr_incr_reg[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"12D2"
    )
        port map (
      I0 => sig_btt_cntr(0),
      I1 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_3_n_0\,
      I2 => sig_mbaa_addr_cntr_slice(0),
      I3 => sig_first_xfer,
      O => sig_adjusted_addr_incr(0)
    );
\GEN_ADDR_32.sig_adjusted_addr_incr_reg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0096003CCC96CC3C"
    )
        port map (
      I0 => sig_mbaa_addr_cntr_slice(0),
      I1 => sig_mbaa_addr_cntr_slice(1),
      I2 => sig_btt_cntr(1),
      I3 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_3_n_0\,
      I4 => sig_btt_cntr(0),
      I5 => sig_first_xfer,
      O => sig_adjusted_addr_incr(1)
    );
\GEN_ADDR_32.sig_adjusted_addr_incr_reg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88FF8800F8F0F8F0"
    )
        port map (
      I0 => sig_first_xfer,
      I1 => sig_mbaa_addr_cntr_slice(2),
      I2 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg[4]_i_4_n_0\,
      I3 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_3_n_0\,
      I4 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg[4]_i_2_n_0\,
      I5 => sig_btt_cntr(2),
      O => sig_adjusted_addr_incr(2)
    );
\GEN_ADDR_32.sig_adjusted_addr_incr_reg[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF4F504050"
    )
        port map (
      I0 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_3_n_0\,
      I1 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg[4]_i_2_n_0\,
      I2 => sig_btt_cntr(3),
      I3 => sig_btt_cntr(2),
      I4 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg[4]_i_4_n_0\,
      I5 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg[3]_i_2_n_0\,
      O => sig_adjusted_addr_incr(3)
    );
\GEN_ADDR_32.sig_adjusted_addr_incr_reg[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00D0D000"
    )
        port map (
      I0 => sig_btt_lt_b2mbaa1,
      I1 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_4_n_0\,
      I2 => sig_first_xfer,
      I3 => sig_mbaa_addr_cntr_slice(2),
      I4 => sig_mbaa_addr_cntr_slice(3),
      O => \GEN_ADDR_32.sig_adjusted_addr_incr_reg[3]_i_2_n_0\
    );
\GEN_ADDR_32.sig_adjusted_addr_incr_reg[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF504F5040"
    )
        port map (
      I0 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_3_n_0\,
      I1 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg[4]_i_2_n_0\,
      I2 => sig_btt_cntr(4),
      I3 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg[4]_i_3_n_0\,
      I4 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg[4]_i_4_n_0\,
      I5 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg[4]_i_5_n_0\,
      O => sig_adjusted_addr_incr(4)
    );
\GEN_ADDR_32.sig_adjusted_addr_incr_reg[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"077F"
    )
        port map (
      I0 => sig_mbaa_addr_cntr_slice(0),
      I1 => sig_btt_cntr(0),
      I2 => sig_btt_cntr(1),
      I3 => sig_mbaa_addr_cntr_slice(1),
      O => \GEN_ADDR_32.sig_adjusted_addr_incr_reg[4]_i_2_n_0\
    );
\GEN_ADDR_32.sig_adjusted_addr_incr_reg[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => sig_btt_cntr(2),
      I1 => sig_btt_cntr(3),
      O => \GEN_ADDR_32.sig_adjusted_addr_incr_reg[4]_i_3_n_0\
    );
\GEN_ADDR_32.sig_adjusted_addr_incr_reg[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000E8880000"
    )
        port map (
      I0 => sig_mbaa_addr_cntr_slice(1),
      I1 => sig_btt_cntr(1),
      I2 => sig_btt_cntr(0),
      I3 => sig_mbaa_addr_cntr_slice(0),
      I4 => sig_btt_lt_b2mbaa1,
      I5 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_4_n_0\,
      O => \GEN_ADDR_32.sig_adjusted_addr_incr_reg[4]_i_4_n_0\
    );
\GEN_ADDR_32.sig_adjusted_addr_incr_reg[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000D0D0D0D000"
    )
        port map (
      I0 => sig_btt_lt_b2mbaa1,
      I1 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_4_n_0\,
      I2 => sig_first_xfer,
      I3 => sig_mbaa_addr_cntr_slice(3),
      I4 => sig_mbaa_addr_cntr_slice(2),
      I5 => sig_mbaa_addr_cntr_slice(4),
      O => \GEN_ADDR_32.sig_adjusted_addr_incr_reg[4]_i_5_n_0\
    );
\GEN_ADDR_32.sig_adjusted_addr_incr_reg[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFFCCCCCEEEEEEEE"
    )
        port map (
      I0 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg[5]_i_2_n_0\,
      I1 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg[5]_i_3_n_0\,
      I2 => sig_mbaa_addr_cntr_slice(5),
      I3 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg[5]_i_4_n_0\,
      I4 => sig_first_xfer,
      I5 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_3_n_0\,
      O => sig_adjusted_addr_incr(5)
    );
\GEN_ADDR_32.sig_adjusted_addr_incr_reg[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sig_btt_cntr(5),
      I1 => sig_btt_cntr(4),
      O => \GEN_ADDR_32.sig_adjusted_addr_incr_reg[5]_i_2_n_0\
    );
\GEN_ADDR_32.sig_adjusted_addr_incr_reg[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000F80000008800"
    )
        port map (
      I0 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg[5]_i_5_n_0\,
      I1 => sig_btt_cntr(5),
      I2 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg[5]_i_6_n_0\,
      I3 => sig_btt_lt_b2mbaa1,
      I4 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_4_n_0\,
      I5 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg[5]_i_7_n_0\,
      O => \GEN_ADDR_32.sig_adjusted_addr_incr_reg[5]_i_3_n_0\
    );
\GEN_ADDR_32.sig_adjusted_addr_incr_reg[5]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => sig_mbaa_addr_cntr_slice(3),
      I1 => sig_mbaa_addr_cntr_slice(2),
      I2 => sig_mbaa_addr_cntr_slice(4),
      O => \GEN_ADDR_32.sig_adjusted_addr_incr_reg[5]_i_4_n_0\
    );
\GEN_ADDR_32.sig_adjusted_addr_incr_reg[5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"777F7FFF7FFF7FFF"
    )
        port map (
      I0 => sig_btt_cntr(3),
      I1 => sig_btt_cntr(2),
      I2 => sig_mbaa_addr_cntr_slice(1),
      I3 => sig_btt_cntr(1),
      I4 => sig_btt_cntr(0),
      I5 => sig_mbaa_addr_cntr_slice(0),
      O => \GEN_ADDR_32.sig_adjusted_addr_incr_reg[5]_i_5_n_0\
    );
\GEN_ADDR_32.sig_adjusted_addr_incr_reg[5]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F880"
    )
        port map (
      I0 => sig_mbaa_addr_cntr_slice(0),
      I1 => sig_btt_cntr(0),
      I2 => sig_btt_cntr(1),
      I3 => sig_mbaa_addr_cntr_slice(1),
      O => \GEN_ADDR_32.sig_adjusted_addr_incr_reg[5]_i_6_n_0\
    );
\GEN_ADDR_32.sig_adjusted_addr_incr_reg[5]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => sig_btt_cntr(5),
      I1 => sig_btt_cntr(4),
      I2 => sig_btt_cntr(3),
      I3 => sig_btt_cntr(2),
      O => \GEN_ADDR_32.sig_adjusted_addr_incr_reg[5]_i_7_n_0\
    );
\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => '1',
      D => sig_adjusted_addr_incr(0),
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
      INIT => X"000D0D0D0D0D0D0D"
    )
        port map (
      I0 => \^di\(0),
      I1 => sig_first_xfer,
      I2 => \out\,
      I3 => sig_input_burst_type_reg,
      I4 => sig_xfer_reg_empty,
      I5 => sig_ld_xfer_reg,
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
      Q => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[0]\,
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
      Q => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[1]\,
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
\i__carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABAAAAAAA8AAA"
    )
        port map (
      I0 => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(7),
      I1 => sig_sm_halt_reg,
      I2 => sig_input_reg_empty,
      I3 => sig_cmd2pcc_cmd_valid,
      I4 => \^sig_xfer_calc_err_reg_reg_0\,
      I5 => \sig_cmd_mst_addr_reg[31]\(23),
      O => \GEN_ADDR_32.sig_addr_cntr_msh_reg[7]_0\(3)
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABAAAAAAA8AAA"
    )
        port map (
      I0 => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(6),
      I1 => sig_sm_halt_reg,
      I2 => sig_input_reg_empty,
      I3 => sig_cmd2pcc_cmd_valid,
      I4 => \^sig_xfer_calc_err_reg_reg_0\,
      I5 => \sig_cmd_mst_addr_reg[31]\(22),
      O => \GEN_ADDR_32.sig_addr_cntr_msh_reg[7]_0\(2)
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABAAAAAAA8AAA"
    )
        port map (
      I0 => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(5),
      I1 => sig_sm_halt_reg,
      I2 => sig_input_reg_empty,
      I3 => sig_cmd2pcc_cmd_valid,
      I4 => \^sig_xfer_calc_err_reg_reg_0\,
      I5 => \sig_cmd_mst_addr_reg[31]\(21),
      O => \GEN_ADDR_32.sig_addr_cntr_msh_reg[7]_0\(1)
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABAAAAAAA8AAA"
    )
        port map (
      I0 => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(4),
      I1 => sig_sm_halt_reg,
      I2 => sig_input_reg_empty,
      I3 => sig_cmd2pcc_cmd_valid,
      I4 => \^sig_xfer_calc_err_reg_reg_0\,
      I5 => \sig_cmd_mst_addr_reg[31]\(20),
      O => \GEN_ADDR_32.sig_addr_cntr_msh_reg[7]_0\(0)
    );
\i__carry__1_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABAAAAAAA8AAA"
    )
        port map (
      I0 => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(11),
      I1 => sig_sm_halt_reg,
      I2 => sig_input_reg_empty,
      I3 => sig_cmd2pcc_cmd_valid,
      I4 => \^sig_xfer_calc_err_reg_reg_0\,
      I5 => \sig_cmd_mst_addr_reg[31]\(27),
      O => \GEN_ADDR_32.sig_addr_cntr_msh_reg[11]_0\(3)
    );
\i__carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABAAAAAAA8AAA"
    )
        port map (
      I0 => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(10),
      I1 => sig_sm_halt_reg,
      I2 => sig_input_reg_empty,
      I3 => sig_cmd2pcc_cmd_valid,
      I4 => \^sig_xfer_calc_err_reg_reg_0\,
      I5 => \sig_cmd_mst_addr_reg[31]\(26),
      O => \GEN_ADDR_32.sig_addr_cntr_msh_reg[11]_0\(2)
    );
\i__carry__1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABAAAAAAA8AAA"
    )
        port map (
      I0 => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(9),
      I1 => sig_sm_halt_reg,
      I2 => sig_input_reg_empty,
      I3 => sig_cmd2pcc_cmd_valid,
      I4 => \^sig_xfer_calc_err_reg_reg_0\,
      I5 => \sig_cmd_mst_addr_reg[31]\(25),
      O => \GEN_ADDR_32.sig_addr_cntr_msh_reg[11]_0\(1)
    );
\i__carry__1_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABAAAAAAA8AAA"
    )
        port map (
      I0 => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(8),
      I1 => sig_sm_halt_reg,
      I2 => sig_input_reg_empty,
      I3 => sig_cmd2pcc_cmd_valid,
      I4 => \^sig_xfer_calc_err_reg_reg_0\,
      I5 => \sig_cmd_mst_addr_reg[31]\(24),
      O => \GEN_ADDR_32.sig_addr_cntr_msh_reg[11]_0\(0)
    );
\i__carry__2_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABAAAAAAA8AAA"
    )
        port map (
      I0 => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(15),
      I1 => sig_sm_halt_reg,
      I2 => sig_input_reg_empty,
      I3 => sig_cmd2pcc_cmd_valid,
      I4 => \^sig_xfer_calc_err_reg_reg_0\,
      I5 => \sig_cmd_mst_addr_reg[31]\(31),
      O => \GEN_ADDR_32.sig_addr_cntr_msh_reg[15]_0\(3)
    );
\i__carry__2_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABAAAAAAA8AAA"
    )
        port map (
      I0 => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(14),
      I1 => sig_sm_halt_reg,
      I2 => sig_input_reg_empty,
      I3 => sig_cmd2pcc_cmd_valid,
      I4 => \^sig_xfer_calc_err_reg_reg_0\,
      I5 => \sig_cmd_mst_addr_reg[31]\(30),
      O => \GEN_ADDR_32.sig_addr_cntr_msh_reg[15]_0\(2)
    );
\i__carry__2_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABAAAAAAA8AAA"
    )
        port map (
      I0 => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(13),
      I1 => sig_sm_halt_reg,
      I2 => sig_input_reg_empty,
      I3 => sig_cmd2pcc_cmd_valid,
      I4 => \^sig_xfer_calc_err_reg_reg_0\,
      I5 => \sig_cmd_mst_addr_reg[31]\(29),
      O => \GEN_ADDR_32.sig_addr_cntr_msh_reg[15]_0\(1)
    );
\i__carry__2_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABAAAAAAA8AAA"
    )
        port map (
      I0 => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(12),
      I1 => sig_sm_halt_reg,
      I2 => sig_input_reg_empty,
      I3 => sig_cmd2pcc_cmd_valid,
      I4 => \^sig_xfer_calc_err_reg_reg_0\,
      I5 => \sig_cmd_mst_addr_reg[31]\(28),
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
      I3 => \^sig_xfer_calc_err_reg_reg_0\,
      O => \^di\(0)
    );
\i__carry_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABAAAAAAA8AAA"
    )
        port map (
      I0 => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(3),
      I1 => sig_sm_halt_reg,
      I2 => sig_input_reg_empty,
      I3 => sig_cmd2pcc_cmd_valid,
      I4 => \^sig_xfer_calc_err_reg_reg_0\,
      I5 => \sig_cmd_mst_addr_reg[31]\(19),
      O => S(3)
    );
\i__carry_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABAAAAAAA8AAA"
    )
        port map (
      I0 => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(2),
      I1 => sig_sm_halt_reg,
      I2 => sig_input_reg_empty,
      I3 => sig_cmd2pcc_cmd_valid,
      I4 => \^sig_xfer_calc_err_reg_reg_0\,
      I5 => \sig_cmd_mst_addr_reg[31]\(18),
      O => S(2)
    );
\i__carry_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABAAAAAAA8AAA"
    )
        port map (
      I0 => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(1),
      I1 => sig_sm_halt_reg,
      I2 => sig_input_reg_empty,
      I3 => sig_cmd2pcc_cmd_valid,
      I4 => \^sig_xfer_calc_err_reg_reg_0\,
      I5 => \sig_cmd_mst_addr_reg[31]\(17),
      O => S(1)
    );
\i__carry_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"333333333A333333"
    )
        port map (
      I0 => \sig_cmd_mst_addr_reg[31]\(16),
      I1 => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(0),
      I2 => \^sig_xfer_calc_err_reg_reg_0\,
      I3 => sig_cmd2pcc_cmd_valid,
      I4 => sig_input_reg_empty,
      I5 => sig_sm_halt_reg,
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
      O(3) => sig_btt_cntr0(3),
      O(2 downto 0) => \sig_btt_cntr_reg[2]_0\(2 downto 0),
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
\sig_btt_cntr[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAC0"
    )
        port map (
      I0 => sig_btt_cntr0(10),
      I1 => Q(7),
      I2 => sig_cmd_type_req,
      I3 => \^di\(0),
      O => \sig_btt_cntr[10]_i_1_n_0\
    );
\sig_btt_cntr[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAC0"
    )
        port map (
      I0 => sig_btt_cntr0(11),
      I1 => Q(8),
      I2 => sig_cmd_type_req,
      I3 => \^di\(0),
      O => \sig_btt_cntr[11]_i_1_n_0\
    );
\sig_btt_cntr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAC0"
    )
        port map (
      I0 => sig_btt_cntr0(3),
      I1 => Q(0),
      I2 => sig_cmd_type_req,
      I3 => \^di\(0),
      O => \sig_btt_cntr[3]_i_1_n_0\
    );
\sig_btt_cntr[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAC0"
    )
        port map (
      I0 => sig_btt_cntr0(4),
      I1 => Q(1),
      I2 => sig_cmd_type_req,
      I3 => \^di\(0),
      O => \sig_btt_cntr[4]_i_1_n_0\
    );
\sig_btt_cntr[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAC0"
    )
        port map (
      I0 => sig_btt_cntr0(5),
      I1 => Q(2),
      I2 => sig_cmd_type_req,
      I3 => \^di\(0),
      O => \sig_btt_cntr[5]_i_1_n_0\
    );
\sig_btt_cntr[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAC0"
    )
        port map (
      I0 => sig_btt_cntr0(6),
      I1 => Q(3),
      I2 => sig_cmd_type_req,
      I3 => \^di\(0),
      O => \sig_btt_cntr[6]_i_1_n_0\
    );
\sig_btt_cntr[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAC0"
    )
        port map (
      I0 => sig_btt_cntr0(7),
      I1 => Q(4),
      I2 => sig_cmd_type_req,
      I3 => \^di\(0),
      O => \sig_btt_cntr[7]_i_1_n_0\
    );
\sig_btt_cntr[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAC0"
    )
        port map (
      I0 => sig_btt_cntr0(8),
      I1 => Q(5),
      I2 => sig_cmd_type_req,
      I3 => \^di\(0),
      O => \sig_btt_cntr[8]_i_1_n_0\
    );
\sig_btt_cntr[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAC0"
    )
        port map (
      I0 => sig_btt_cntr0(9),
      I1 => Q(6),
      I2 => sig_cmd_type_req,
      I3 => \^di\(0),
      O => \sig_btt_cntr[9]_i_1_n_0\
    );
\sig_btt_cntr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0\,
      D => D(0),
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
      D => \sig_btt_cntr[10]_i_1_n_0\,
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
      D => \sig_btt_cntr[11]_i_1_n_0\,
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
      D => D(1),
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
      D => D(2),
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
      D => \sig_btt_cntr[3]_i_1_n_0\,
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
      D => \sig_btt_cntr[4]_i_1_n_0\,
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
      D => \sig_btt_cntr[5]_i_1_n_0\,
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
      D => \sig_btt_cntr[6]_i_1_n_0\,
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
      D => \sig_btt_cntr[7]_i_1_n_0\,
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
      D => \sig_btt_cntr[8]_i_1_n_0\,
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
      D => \sig_btt_cntr[9]_i_1_n_0\,
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
      I0 => sig_mbaa_addr_cntr_slice(5),
      I1 => sig_mbaa_addr_cntr_slice(3),
      I2 => sig_mbaa_addr_cntr_slice(1),
      I3 => sig_mbaa_addr_cntr_slice(0),
      I4 => sig_mbaa_addr_cntr_slice(2),
      I5 => sig_mbaa_addr_cntr_slice(4),
      O => sig_btt_lt_b2mbaa1_carry_i_1_n_0
    );
sig_btt_lt_b2mbaa1_carry_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11171722"
    )
        port map (
      I0 => sig_mbaa_addr_cntr_slice(5),
      I1 => sig_btt_cntr(5),
      I2 => sig_btt_cntr(4),
      I3 => sig_mbaa_addr_cntr_slice(4),
      I4 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_2_n_0\,
      O => sig_btt_lt_b2mbaa1_carry_i_2_n_0
    );
sig_btt_lt_b2mbaa1_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0101011337373770"
    )
        port map (
      I0 => sig_btt_cntr(2),
      I1 => sig_btt_cntr(3),
      I2 => sig_mbaa_addr_cntr_slice(2),
      I3 => sig_mbaa_addr_cntr_slice(0),
      I4 => sig_mbaa_addr_cntr_slice(1),
      I5 => sig_mbaa_addr_cntr_slice(3),
      O => sig_btt_lt_b2mbaa1_carry_i_3_n_0
    );
sig_btt_lt_b2mbaa1_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"145C"
    )
        port map (
      I0 => sig_btt_cntr(1),
      I1 => sig_mbaa_addr_cntr_slice(0),
      I2 => sig_mbaa_addr_cntr_slice(1),
      I3 => sig_btt_cntr(0),
      O => sig_btt_lt_b2mbaa1_carry_i_4_n_0
    );
sig_btt_lt_b2mbaa1_carry_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => sig_mbaa_addr_cntr_slice(4),
      I1 => sig_mbaa_addr_cntr_slice(2),
      I2 => sig_mbaa_addr_cntr_slice(0),
      I3 => sig_mbaa_addr_cntr_slice(1),
      I4 => sig_mbaa_addr_cntr_slice(3),
      I5 => sig_mbaa_addr_cntr_slice(5),
      O => sig_btt_lt_b2mbaa1_carry_i_5_n_0
    );
sig_btt_lt_b2mbaa1_carry_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"14284281"
    )
        port map (
      I0 => sig_mbaa_addr_cntr_slice(5),
      I1 => sig_mbaa_addr_cntr_slice(4),
      I2 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_2_n_0\,
      I3 => sig_btt_cntr(5),
      I4 => sig_btt_cntr(4),
      O => sig_btt_lt_b2mbaa1_carry_i_6_n_0
    );
sig_btt_lt_b2mbaa1_carry_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0660066006601881"
    )
        port map (
      I0 => sig_mbaa_addr_cntr_slice(2),
      I1 => sig_btt_cntr(2),
      I2 => sig_btt_cntr(3),
      I3 => sig_mbaa_addr_cntr_slice(3),
      I4 => sig_mbaa_addr_cntr_slice(1),
      I5 => sig_mbaa_addr_cntr_slice(0),
      O => sig_btt_lt_b2mbaa1_carry_i_7_n_0
    );
sig_btt_lt_b2mbaa1_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1881"
    )
        port map (
      I0 => sig_btt_cntr(0),
      I1 => sig_mbaa_addr_cntr_slice(0),
      I2 => sig_btt_cntr(1),
      I3 => sig_mbaa_addr_cntr_slice(1),
      O => sig_btt_lt_b2mbaa1_carry_i_8_n_0
    );
sig_calc_error_pushed_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF80"
    )
        port map (
      I0 => \^sig_xfer_calc_err_reg_reg_0\,
      I1 => sig_xfer_reg_empty,
      I2 => sig_ld_xfer_reg,
      I3 => \^sig_input_burst_type_reg_reg_0\,
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
      Q => \^sig_input_burst_type_reg_reg_0\,
      R => \out\
    );
sig_calc_error_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => '1',
      D => sig_cmd_type_req_reg,
      Q => \^sig_xfer_calc_err_reg_reg_0\,
      R => \out\
    );
sig_cmd2addr_valid_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000F8"
    )
        port map (
      I0 => sig_ld_xfer_reg,
      I1 => sig_xfer_reg_empty,
      I2 => sig_pcc2addr_cmd_valid,
      I3 => \out\,
      I4 => \^sig_push_addr_reg1_out\,
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
      Q => sig_pcc2addr_cmd_valid,
      R => '0'
    );
sig_cmd2data_valid_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000F8"
    )
        port map (
      I0 => sig_xfer_reg_empty,
      I1 => sig_ld_xfer_reg,
      I2 => \^sig_cmd2data_valid_reg_0\,
      I3 => \out\,
      I4 => sig_rdc2pcc_cmd_ready,
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
      Q => \^sig_cmd2data_valid_reg_0\,
      R => '0'
    );
sig_cmd2dre_valid_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => sig_first_xfer,
      I1 => sig_xfer_reg_empty,
      I2 => sig_ld_xfer_reg,
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
      INIT => X"FFFFFFFF00000800"
    )
        port map (
      I0 => sig_cmd2pcc_cmd_valid,
      I1 => sig_input_reg_empty,
      I2 => sig_sm_halt_reg,
      I3 => sig_cmd_empty_reg_reg,
      I4 => \^sig_input_burst_type_reg_reg_0\,
      I5 => sig_cmd_reset_reg_reg,
      O => SR(0)
    );
sig_doing_read_reg_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F7"
    )
        port map (
      I0 => sig_cmd2pcc_cmd_valid,
      I1 => sig_input_reg_empty,
      I2 => sig_sm_halt_reg,
      O => sig_doing_read_reg_reg
    );
sig_input_burst_type_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000000B"
    )
        port map (
      I0 => sig_input_burst_type_reg,
      I1 => \^di\(0),
      I2 => sig_sm_pop_input_reg,
      I3 => \^sig_input_burst_type_reg_reg_0\,
      I4 => \out\,
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
      INIT => X"0000000B"
    )
        port map (
      I0 => sig_input_eof_reg,
      I1 => \^di\(0),
      I2 => sig_sm_pop_input_reg,
      I3 => \^sig_input_burst_type_reg_reg_0\,
      I4 => \out\,
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
      INIT => X"FFFFFFF8"
    )
        port map (
      I0 => sig_input_reg_empty,
      I1 => \^di\(0),
      I2 => sig_sm_pop_input_reg,
      I3 => \^sig_input_burst_type_reg_reg_0\,
      I4 => \out\,
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
sig_last_dbeat_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => \^sig_next_len_reg_reg[3]\(3),
      I1 => \out\,
      I2 => \^sig_next_len_reg_reg[3]\(2),
      I3 => \^sig_next_len_reg_reg[3]\(1),
      I4 => \^sig_next_len_reg_reg[3]\(0),
      I5 => sig_rdc2pcc_cmd_ready,
      O => sig_last_dbeat_reg
    );
sig_ld_xfer_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000040FF40"
    )
        port map (
      I0 => sig_pcc_sm_state(2),
      I1 => sig_pcc_sm_state(0),
      I2 => sig_pcc_sm_state(1),
      I3 => sig_ld_xfer_reg,
      I4 => sig_xfer_reg_empty,
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
\sig_next_addr_reg[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => sig_cmd2all_doing_read,
      I1 => sig_pcc2addr_cmd_valid,
      I2 => sig_llink2rd_allow_addr_req,
      I3 => sig_addr2stat_cmd_fifo_empty,
      O => \^sig_push_addr_reg1_out\
    );
sig_parent_done_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FE0E0000"
    )
        port map (
      I0 => sig_xfer_cmd_cmplt_reg_i_3_n_0,
      I1 => sig_xfer_cmd_cmplt_reg_i_2_n_0,
      I2 => \FSM_sequential_sig_pcc_sm_state[0]_i_3_n_0\,
      I3 => sig_parent_done,
      I4 => \^di\(0),
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
      I0 => \^sig_input_burst_type_reg_reg_0\,
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
      INIT => X"0004000400044404"
    )
        port map (
      I0 => sig_pcc_sm_state(1),
      I1 => sig_pcc_sm_state(0),
      I2 => \^di\(0),
      I3 => sig_pcc_sm_state(2),
      I4 => \^sig_input_burst_type_reg_reg_0\,
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
      I4 => \^sig_input_burst_type_reg_reg_0\,
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
\sig_xfer_addr_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => sig_mbaa_addr_cntr_slice(0),
      Q => \sig_next_addr_reg_reg[31]\(0),
      R => sig_xfer_addr_reg0
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
      R => sig_xfer_addr_reg0
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
      R => sig_xfer_addr_reg0
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
      R => sig_xfer_addr_reg0
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
      R => sig_xfer_addr_reg0
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
      R => sig_xfer_addr_reg0
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
      R => sig_xfer_addr_reg0
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
      R => sig_xfer_addr_reg0
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
      R => sig_xfer_addr_reg0
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
      R => sig_xfer_addr_reg0
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
      R => sig_xfer_addr_reg0
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
      R => sig_xfer_addr_reg0
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
      R => sig_xfer_addr_reg0
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
      R => sig_xfer_addr_reg0
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
      R => sig_xfer_addr_reg0
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
      R => sig_xfer_addr_reg0
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
      R => sig_xfer_addr_reg0
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
      R => sig_xfer_addr_reg0
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
      R => sig_xfer_addr_reg0
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
      R => sig_xfer_addr_reg0
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
      R => sig_xfer_addr_reg0
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
      R => sig_xfer_addr_reg0
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
      R => sig_xfer_addr_reg0
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
      R => sig_xfer_addr_reg0
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
      R => sig_xfer_addr_reg0
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
      R => sig_xfer_addr_reg0
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
      R => sig_xfer_addr_reg0
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
      R => sig_xfer_addr_reg0
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
      R => sig_xfer_addr_reg0
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
      R => sig_xfer_addr_reg0
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
      R => sig_xfer_addr_reg0
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
      R => sig_xfer_addr_reg0
    );
sig_xfer_calc_err_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => \^sig_xfer_calc_err_reg_reg_0\,
      Q => sig_pcc2data_calc_error,
      R => sig_xfer_addr_reg0
    );
sig_xfer_cmd_cmplt_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \^sig_xfer_calc_err_reg_reg_0\,
      I1 => sig_xfer_cmd_cmplt_reg_i_2_n_0,
      I2 => sig_xfer_cmd_cmplt_reg_i_3_n_0,
      O => sig_xfer_cmd_cmplt_reg0
    );
sig_xfer_cmd_cmplt_reg_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => sig_mbaa_addr_cntr_slice(5),
      I1 => sig_mbaa_addr_cntr_slice(4),
      I2 => sig_mbaa_addr_cntr_slice(2),
      I3 => sig_mbaa_addr_cntr_slice(0),
      I4 => sig_mbaa_addr_cntr_slice(1),
      I5 => sig_mbaa_addr_cntr_slice(3),
      O => sig_xfer_cmd_cmplt_reg_i_10_n_0
    );
sig_xfer_cmd_cmplt_reg_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => sig_mbaa_addr_cntr_slice(2),
      I1 => sig_mbaa_addr_cntr_slice(0),
      I2 => sig_mbaa_addr_cntr_slice(1),
      I3 => sig_mbaa_addr_cntr_slice(3),
      I4 => sig_mbaa_addr_cntr_slice(4),
      I5 => sig_btt_cntr(4),
      O => sig_xfer_cmd_cmplt_reg_i_11_n_0
    );
sig_xfer_cmd_cmplt_reg_i_12: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sig_mbaa_addr_cntr_slice(5),
      I1 => sig_btt_cntr(5),
      O => sig_xfer_cmd_cmplt_reg_i_12_n_0
    );
sig_xfer_cmd_cmplt_reg_i_13: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => sig_btt_cntr(3),
      I1 => sig_btt_cntr(2),
      I2 => sig_btt_cntr(1),
      I3 => sig_btt_cntr(0),
      O => sig_xfer_cmd_cmplt_reg_i_13_n_0
    );
sig_xfer_cmd_cmplt_reg_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010100001000000"
    )
        port map (
      I0 => sig_mbaa_addr_cntr_slice(1),
      I1 => sig_mbaa_addr_cntr_slice(0),
      I2 => sig_mbaa_addr_cntr_slice(2),
      I3 => sig_btt_cntr(3),
      I4 => sig_mbaa_addr_cntr_slice(3),
      I5 => sig_btt_cntr(2),
      O => sig_xfer_cmd_cmplt_reg_i_14_n_0
    );
sig_xfer_cmd_cmplt_reg_i_15: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sig_btt_cntr(0),
      I1 => sig_btt_cntr(1),
      O => sig_xfer_cmd_cmplt_reg_i_15_n_0
    );
sig_xfer_cmd_cmplt_reg_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080800000000000"
    )
        port map (
      I0 => sig_xfer_eof_reg_i_4_n_0,
      I1 => sig_xfer_cmd_cmplt_reg_i_4_n_0,
      I2 => sig_xfer_cmd_cmplt_reg_i_5_n_0,
      I3 => sig_btt_cntr(2),
      I4 => sig_mbaa_addr_cntr_slice(2),
      I5 => sig_xfer_eof_reg_i_2_n_0,
      O => sig_xfer_cmd_cmplt_reg_i_2_n_0
    );
sig_xfer_cmd_cmplt_reg_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEFEEEEEE"
    )
        port map (
      I0 => sig_xfer_cmd_cmplt_reg_i_6_n_0,
      I1 => sig_xfer_cmd_cmplt_reg_i_7_n_0,
      I2 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_4_n_0\,
      I3 => sig_btt_lt_b2mbaa1,
      I4 => sig_xfer_is_seq_reg_i_6_n_0,
      I5 => sig_xfer_cmd_cmplt_reg_i_8_n_0,
      O => sig_xfer_cmd_cmplt_reg_i_3_n_0
    );
sig_xfer_cmd_cmplt_reg_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sig_mbaa_addr_cntr_slice(4),
      I1 => sig_btt_cntr(4),
      O => sig_xfer_cmd_cmplt_reg_i_4_n_0
    );
sig_xfer_cmd_cmplt_reg_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sig_mbaa_addr_cntr_slice(3),
      I1 => sig_btt_cntr(3),
      O => sig_xfer_cmd_cmplt_reg_i_5_n_0
    );
sig_xfer_cmd_cmplt_reg_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => sig_xfer_cmd_cmplt_reg_i_9_n_0,
      I1 => sig_xfer_is_seq_reg_i_6_n_0,
      I2 => sig_btt_cntr(6),
      I3 => sig_mbaa_addr_cntr_slice(4),
      I4 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_2_n_0\,
      I5 => sig_mbaa_addr_cntr_slice(5),
      O => sig_xfer_cmd_cmplt_reg_i_6_n_0
    );
sig_xfer_cmd_cmplt_reg_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000F080808"
    )
        port map (
      I0 => sig_xfer_cmd_cmplt_reg_i_10_n_0,
      I1 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg[5]_i_2_n_0\,
      I2 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_4_n_0\,
      I3 => sig_xfer_cmd_cmplt_reg_i_11_n_0,
      I4 => sig_xfer_cmd_cmplt_reg_i_12_n_0,
      I5 => sig_xfer_cmd_cmplt_reg_i_13_n_0,
      O => sig_xfer_cmd_cmplt_reg_i_7_n_0
    );
sig_xfer_cmd_cmplt_reg_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000080800"
    )
        port map (
      I0 => sig_xfer_cmd_cmplt_reg_i_4_n_0,
      I1 => sig_xfer_cmd_cmplt_reg_i_14_n_0,
      I2 => sig_xfer_cmd_cmplt_reg_i_15_n_0,
      I3 => sig_btt_cntr(5),
      I4 => sig_mbaa_addr_cntr_slice(5),
      I5 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_4_n_0\,
      O => sig_xfer_cmd_cmplt_reg_i_8_n_0
    );
sig_xfer_cmd_cmplt_reg_i_9: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => sig_btt_cntr(7),
      I1 => sig_btt_cntr(10),
      I2 => sig_btt_cntr(11),
      I3 => sig_btt_cntr(9),
      I4 => sig_btt_cntr(8),
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
      R => sig_xfer_addr_reg0
    );
sig_xfer_eof_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8888888"
    )
        port map (
      I0 => sig_input_eof_reg,
      I1 => sig_xfer_cmd_cmplt_reg_i_3_n_0,
      I2 => sig_xfer_eof_reg_i_2_n_0,
      I3 => sig_xfer_eof_reg_i_3_n_0,
      I4 => sig_xfer_eof_reg_i_4_n_0,
      O => sig_xfer_eof_reg0
    );
sig_xfer_eof_reg_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => sig_btt_cntr(5),
      I1 => sig_mbaa_addr_cntr_slice(5),
      I2 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_4_n_0\,
      O => sig_xfer_eof_reg_i_2_n_0
    );
sig_xfer_eof_reg_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0660000000000000"
    )
        port map (
      I0 => sig_mbaa_addr_cntr_slice(3),
      I1 => sig_btt_cntr(3),
      I2 => sig_mbaa_addr_cntr_slice(2),
      I3 => sig_btt_cntr(2),
      I4 => sig_input_eof_reg,
      I5 => sig_xfer_cmd_cmplt_reg_i_4_n_0,
      O => sig_xfer_eof_reg_i_3_n_0
    );
sig_xfer_eof_reg_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6008"
    )
        port map (
      I0 => sig_mbaa_addr_cntr_slice(1),
      I1 => sig_btt_cntr(1),
      I2 => sig_mbaa_addr_cntr_slice(0),
      I3 => sig_btt_cntr(0),
      O => sig_xfer_eof_reg_i_4_n_0
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
      R => sig_xfer_addr_reg0
    );
sig_xfer_is_seq_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFEFEFFFE"
    )
        port map (
      I0 => sig_xfer_is_seq_reg_i_2_n_0,
      I1 => sig_xfer_is_seq_reg_i_3_n_0,
      I2 => sig_xfer_is_seq_reg_i_4_n_0,
      I3 => sig_xfer_is_seq_reg_i_5_n_0,
      I4 => sig_xfer_is_seq_reg_i_6_n_0,
      I5 => sig_xfer_is_seq_reg_i_7_n_0,
      O => sig_xfer_is_seq_reg_i_1_n_0
    );
sig_xfer_is_seq_reg_i_10: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => sig_btt_cntr(6),
      I1 => sig_xfer_is_seq_reg_i_6_n_0,
      I2 => sig_xfer_cmd_cmplt_reg_i_9_n_0,
      O => sig_xfer_is_seq_reg_i_10_n_0
    );
sig_xfer_is_seq_reg_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F99F9966"
    )
        port map (
      I0 => sig_mbaa_addr_cntr_slice(4),
      I1 => sig_btt_cntr(4),
      I2 => sig_btt_cntr(3),
      I3 => sig_mbaa_addr_cntr_slice(3),
      I4 => sig_xfer_is_seq_reg_i_8_n_0,
      I5 => sig_btt_lt_b2mbaa1,
      O => sig_xfer_is_seq_reg_i_2_n_0
    );
sig_xfer_is_seq_reg_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF00009992"
    )
        port map (
      I0 => sig_btt_cntr(5),
      I1 => sig_mbaa_addr_cntr_slice(5),
      I2 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_2_n_0\,
      I3 => sig_mbaa_addr_cntr_slice(4),
      I4 => sig_btt_lt_b2mbaa1,
      I5 => sig_xfer_is_seq_reg_i_9_n_0,
      O => sig_xfer_is_seq_reg_i_3_n_0
    );
sig_xfer_is_seq_reg_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAABABBBBAABABBA"
    )
        port map (
      I0 => sig_xfer_is_seq_reg_i_10_n_0,
      I1 => sig_btt_lt_b2mbaa1,
      I2 => sig_mbaa_addr_cntr_slice(2),
      I3 => sig_btt_cntr(2),
      I4 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[3]_i_2_n_0\,
      I5 => sig_xfer_cmd_cmplt_reg_i_5_n_0,
      O => sig_xfer_is_seq_reg_i_4_n_0
    );
sig_xfer_is_seq_reg_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFFFFFF"
    )
        port map (
      I0 => sig_mbaa_addr_cntr_slice(5),
      I1 => sig_mbaa_addr_cntr_slice(3),
      I2 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[3]_i_2_n_0\,
      I3 => sig_mbaa_addr_cntr_slice(2),
      I4 => sig_mbaa_addr_cntr_slice(4),
      I5 => sig_btt_cntr(6),
      O => sig_xfer_is_seq_reg_i_5_n_0
    );
sig_xfer_is_seq_reg_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => sig_btt_cntr(5),
      I1 => sig_btt_cntr(4),
      I2 => sig_btt_cntr(0),
      I3 => sig_btt_cntr(1),
      I4 => sig_btt_cntr(2),
      I5 => sig_btt_cntr(3),
      O => sig_xfer_is_seq_reg_i_6_n_0
    );
sig_xfer_is_seq_reg_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000D7AA"
    )
        port map (
      I0 => sig_btt_cntr(0),
      I1 => sig_btt_cntr(1),
      I2 => sig_mbaa_addr_cntr_slice(1),
      I3 => sig_mbaa_addr_cntr_slice(0),
      I4 => sig_btt_lt_b2mbaa1,
      O => sig_xfer_is_seq_reg_i_7_n_0
    );
sig_xfer_is_seq_reg_i_8: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => sig_mbaa_addr_cntr_slice(1),
      I1 => sig_mbaa_addr_cntr_slice(0),
      I2 => sig_mbaa_addr_cntr_slice(2),
      O => sig_xfer_is_seq_reg_i_8_n_0
    );
sig_xfer_is_seq_reg_i_9: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => sig_btt_cntr(1),
      I1 => sig_mbaa_addr_cntr_slice(1),
      I2 => sig_mbaa_addr_cntr_slice(0),
      O => sig_xfer_is_seq_reg_i_9_n_0
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
      R => sig_xfer_addr_reg0
    );
\sig_xfer_len_reg[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[1]\,
      I1 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[0]\,
      I2 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[2]\,
      O => \sig_xfer_len_reg[0]_i_1_n_0\
    );
\sig_xfer_len_reg[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE01"
    )
        port map (
      I0 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[2]\,
      I1 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[0]\,
      I2 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[1]\,
      I3 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[3]\,
      O => \sig_xfer_len_reg[1]_i_1_n_0\
    );
\sig_xfer_len_reg[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0001"
    )
        port map (
      I0 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[3]\,
      I1 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[1]\,
      I2 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[0]\,
      I3 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[2]\,
      I4 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[4]\,
      O => \sig_xfer_len_reg[2]_i_1_n_0\
    );
\sig_xfer_len_reg[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000001"
    )
        port map (
      I0 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[4]\,
      I1 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[2]\,
      I2 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[0]\,
      I3 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[1]\,
      I4 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[3]\,
      I5 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[5]\,
      O => \sig_xfer_len_reg[3]_i_1_n_0\
    );
\sig_xfer_len_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => \sig_xfer_len_reg[0]_i_1_n_0\,
      Q => \^sig_next_len_reg_reg[3]\(0),
      R => sig_xfer_addr_reg0
    );
\sig_xfer_len_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => \sig_xfer_len_reg[1]_i_1_n_0\,
      Q => \^sig_next_len_reg_reg[3]\(1),
      R => sig_xfer_addr_reg0
    );
\sig_xfer_len_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => \sig_xfer_len_reg[2]_i_1_n_0\,
      Q => \^sig_next_len_reg_reg[3]\(2),
      R => sig_xfer_addr_reg0
    );
\sig_xfer_len_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => \sig_xfer_len_reg[3]_i_1_n_0\,
      Q => \^sig_next_len_reg_reg[3]\(3),
      R => sig_xfer_addr_reg0
    );
sig_xfer_reg_empty_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEAEAEAEAAAAAAAA"
    )
        port map (
      I0 => sig_xfer_reg_empty_i_3_n_0,
      I1 => sig_rdc2pcc_cmd_ready,
      I2 => sig_pcc2addr_cmd_valid,
      I3 => sig_addr2stat_cmd_fifo_empty,
      I4 => sig_llink2rd_allow_addr_req,
      I5 => \FSM_sequential_sig_pcc_sm_state[0]_i_3_n_0\,
      O => sig_xfer_addr_reg0
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
      INIT => X"FFFFFFFF0000F400"
    )
        port map (
      I0 => sig_pcc2addr_cmd_valid,
      I1 => sig_cmd2dre_valid_reg_n_0,
      I2 => \^sig_push_addr_reg1_out\,
      I3 => \FSM_sequential_sig_pcc_sm_state[0]_i_3_n_0\,
      I4 => \^sig_cmd2data_valid_reg_0\,
      I5 => \out\,
      O => sig_xfer_reg_empty_i_3_n_0
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
      S => sig_xfer_addr_reg0
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
      R => sig_xfer_addr_reg0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_myip_burst_read_test_0_1_axi_master_burst_rd_llink is
  port (
    sig_llink2cmd_rd_busy : out STD_LOGIC;
    sig_llink2rd_allow_addr_req : out STD_LOGIC;
    sig_llink_busy0 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    sig_m_valid_out_reg : out STD_LOGIC;
    ip2bus_otputs : out STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC;
    sig_rdwr2llink_int_err : in STD_LOGIC;
    m00_axi_aclk : in STD_LOGIC;
    sig_m_valid_out_reg_0 : in STD_LOGIC;
    ip2bus_inputs : in STD_LOGIC_VECTOR ( 0 to 0 );
    sig_m_valid_dup_reg : in STD_LOGIC;
    sig_m_valid_out_reg_1 : in STD_LOGIC;
    sig_cmd2all_doing_read : in STD_LOGIC;
    sig_doing_read_reg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_myip_burst_read_test_0_1_axi_master_burst_rd_llink : entity is "axi_master_burst_rd_llink";
end design_1_myip_burst_read_test_0_1_axi_master_burst_rd_llink;

architecture STRUCTURE of design_1_myip_burst_read_test_0_1_axi_master_burst_rd_llink is
  signal \I_WR_LLINK_ADAPTER/sig_wr_error_reg\ : STD_LOGIC;
  signal sig_allow_rd_requests_i_1_n_0 : STD_LOGIC;
  signal \^sig_llink2cmd_rd_busy\ : STD_LOGIC;
  signal \^sig_llink2rd_allow_addr_req\ : STD_LOGIC;
  signal sig_rd_discontinue : STD_LOGIC;
  signal sig_rd_discontinue_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ip2bus_otputs[3]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \sig_data_reg_out[31]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of sig_llink_busy_i_3 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of sig_s_ready_dup_i_2 : label is "soft_lutpair4";
begin
  sig_llink2cmd_rd_busy <= \^sig_llink2cmd_rd_busy\;
  sig_llink2rd_allow_addr_req <= \^sig_llink2rd_allow_addr_req\;
\ip2bus_otputs[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"07"
    )
        port map (
      I0 => sig_rd_discontinue,
      I1 => \^sig_llink2cmd_rd_busy\,
      I2 => sig_m_valid_out_reg_1,
      O => ip2bus_otputs(0)
    );
sig_allow_rd_requests_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F400F4000000F4"
    )
        port map (
      I0 => ip2bus_inputs(0),
      I1 => \^sig_llink2cmd_rd_busy\,
      I2 => \^sig_llink2rd_allow_addr_req\,
      I3 => \out\,
      I4 => sig_cmd2all_doing_read,
      I5 => sig_doing_read_reg,
      O => sig_allow_rd_requests_i_1_n_0
    );
sig_allow_rd_requests_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => '1',
      D => sig_allow_rd_requests_i_1_n_0,
      Q => \^sig_llink2rd_allow_addr_req\,
      R => '0'
    );
\sig_data_reg_out[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2F"
    )
        port map (
      I0 => \^sig_llink2cmd_rd_busy\,
      I1 => ip2bus_inputs(0),
      I2 => sig_m_valid_dup_reg,
      O => E(0)
    );
sig_llink_busy_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF40"
    )
        port map (
      I0 => ip2bus_inputs(0),
      I1 => \^sig_llink2cmd_rd_busy\,
      I2 => sig_rd_discontinue,
      I3 => \out\,
      O => sig_llink_busy0
    );
sig_llink_busy_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => '1',
      D => sig_m_valid_out_reg_0,
      Q => \^sig_llink2cmd_rd_busy\,
      R => '0'
    );
sig_rd_discontinue_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F020F0000020F00"
    )
        port map (
      I0 => sig_rdwr2llink_int_err,
      I1 => \I_WR_LLINK_ADAPTER/sig_wr_error_reg\,
      I2 => \out\,
      I3 => sig_rd_discontinue,
      I4 => \^sig_llink2cmd_rd_busy\,
      I5 => ip2bus_inputs(0),
      O => sig_rd_discontinue_i_1_n_0
    );
sig_rd_discontinue_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => '1',
      D => sig_rd_discontinue_i_1_n_0,
      Q => sig_rd_discontinue,
      R => '0'
    );
sig_rd_error_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => '1',
      D => sig_rdwr2llink_int_err,
      Q => \I_WR_LLINK_ADAPTER/sig_wr_error_reg\,
      R => \out\
    );
sig_s_ready_dup_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => ip2bus_inputs(0),
      I1 => \^sig_llink2cmd_rd_busy\,
      O => sig_m_valid_out_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_myip_burst_read_test_0_1_axi_master_burst_rd_status_cntl is
  port (
    sig_rsc2stat_status_valid : out STD_LOGIC;
    sig_rsc2rdc_ready : out STD_LOGIC;
    sig_rd_sts_interr_reg_reg_0 : out STD_LOGIC;
    sig_error_sh_reg_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    sig_next_cmd_cmplt_reg_reg : out STD_LOGIC;
    sig_stat_error : out STD_LOGIC;
    sig_error_sh_reg_reg_0 : out STD_LOGIC;
    sig_rd_sts_tag_reg0 : in STD_LOGIC;
    sig_rd_sts_reg_full0 : in STD_LOGIC;
    m00_axi_aclk : in STD_LOGIC;
    p_0_in_0 : in STD_LOGIC;
    sig_rd_sts_decerr_reg0 : in STD_LOGIC;
    sig_status_reg_empty : in STD_LOGIC;
    sig_pcc2data_cmd_valid : in STD_LOGIC;
    sig_cmd2all_doing_read : in STD_LOGIC;
    sig_next_calc_error_reg : in STD_LOGIC;
    sig_rdc2rsc_calc_err : in STD_LOGIC;
    sig_rdc2rsc_slverr : in STD_LOGIC;
    sig_rdc2rsc_valid : in STD_LOGIC;
    sig_doing_read_reg_reg : in STD_LOGIC;
    ip2bus_otputs : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_myip_burst_read_test_0_1_axi_master_burst_rd_status_cntl : entity is "axi_master_burst_rd_status_cntl";
end design_1_myip_burst_read_test_0_1_axi_master_burst_rd_status_cntl;

architecture STRUCTURE of design_1_myip_burst_read_test_0_1_axi_master_burst_rd_status_cntl is
  signal \^sig_error_sh_reg_reg\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal sig_push_rd_sts_reg : STD_LOGIC;
  signal sig_rd_sts_interr_reg0 : STD_LOGIC;
  signal \^sig_rd_sts_interr_reg_reg_0\ : STD_LOGIC;
  signal sig_rd_sts_slverr_reg0 : STD_LOGIC;
  signal \^sig_rsc2rdc_ready\ : STD_LOGIC;
  signal sig_rsc2stat_status : STD_LOGIC_VECTOR ( 6 to 6 );
  signal \^sig_rsc2stat_status_valid\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of sig_error_sh_reg_i_1 : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of sig_stat_error_reg_i_2 : label is "soft_lutpair28";
begin
  sig_error_sh_reg_reg(0) <= \^sig_error_sh_reg_reg\(0);
  sig_rd_sts_interr_reg_reg_0 <= \^sig_rd_sts_interr_reg_reg_0\;
  sig_rsc2rdc_ready <= \^sig_rsc2rdc_ready\;
  sig_rsc2stat_status_valid <= \^sig_rsc2stat_status_valid\;
sig_error_sh_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF00FE"
    )
        port map (
      I0 => sig_rsc2stat_status(6),
      I1 => \^sig_error_sh_reg_reg\(0),
      I2 => \^sig_rd_sts_interr_reg_reg_0\,
      I3 => sig_doing_read_reg_reg,
      I4 => ip2bus_otputs(0),
      O => sig_error_sh_reg_reg_0
    );
sig_next_cmd_cmplt_reg_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000B000"
    )
        port map (
      I0 => sig_status_reg_empty,
      I1 => \^sig_rsc2stat_status_valid\,
      I2 => sig_pcc2data_cmd_valid,
      I3 => sig_cmd2all_doing_read,
      I4 => sig_next_calc_error_reg,
      O => sig_next_cmd_cmplt_reg_reg
    );
sig_rd_sts_decerr_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_push_rd_sts_reg,
      D => sig_rd_sts_decerr_reg0,
      Q => \^sig_error_sh_reg_reg\(0),
      R => sig_rd_sts_tag_reg0
    );
sig_rd_sts_interr_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^sig_rd_sts_interr_reg_reg_0\,
      I1 => sig_rdc2rsc_calc_err,
      O => sig_rd_sts_interr_reg0
    );
sig_rd_sts_interr_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_push_rd_sts_reg,
      D => sig_rd_sts_interr_reg0,
      Q => \^sig_rd_sts_interr_reg_reg_0\,
      R => sig_rd_sts_tag_reg0
    );
sig_rd_sts_reg_empty_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_push_rd_sts_reg,
      D => p_0_in_0,
      Q => \^sig_rsc2rdc_ready\,
      S => sig_rd_sts_tag_reg0
    );
sig_rd_sts_reg_full_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^sig_rsc2rdc_ready\,
      I1 => sig_rdc2rsc_valid,
      O => sig_push_rd_sts_reg
    );
sig_rd_sts_reg_full_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_push_rd_sts_reg,
      D => sig_rd_sts_reg_full0,
      Q => \^sig_rsc2stat_status_valid\,
      R => sig_rd_sts_tag_reg0
    );
sig_rd_sts_slverr_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sig_rsc2stat_status(6),
      I1 => sig_rdc2rsc_slverr,
      O => sig_rd_sts_slverr_reg0
    );
sig_rd_sts_slverr_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_push_rd_sts_reg,
      D => sig_rd_sts_slverr_reg0,
      Q => sig_rsc2stat_status(6),
      R => sig_rd_sts_tag_reg0
    );
sig_stat_error_reg_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => sig_rsc2stat_status(6),
      I1 => \^sig_error_sh_reg_reg\(0),
      I2 => \^sig_rd_sts_interr_reg_reg_0\,
      O => sig_stat_error
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_myip_burst_read_test_0_1_axi_master_burst_rddata_cntl is
  port (
    sig_rdc2pcc_cmd_ready : out STD_LOGIC;
    sig_rdc2rsc_valid : out STD_LOGIC;
    sig_next_calc_error_reg : out STD_LOGIC;
    sig_next_eof_reg : out STD_LOGIC;
    sig_rdc2rsc_calc_err : out STD_LOGIC;
    sig_rdc2rsc_slverr : out STD_LOGIC;
    sig_s_ready_out_reg : out STD_LOGIC;
    m00_axi_rready : out STD_LOGIC;
    sig_rdc2rdskid_tlast : out STD_LOGIC;
    p_0_in_0 : out STD_LOGIC;
    sig_rd_sts_reg_full0 : out STD_LOGIC;
    sig_rd_sts_decerr_reg0 : out STD_LOGIC;
    sig_pcc2data_cmd_cmplt : in STD_LOGIC;
    m00_axi_aclk : in STD_LOGIC;
    sig_pcc2data_calc_error : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    sig_pcc2data_sequential : in STD_LOGIC;
    sig_pcc2data_eof : in STD_LOGIC;
    m00_axi_rlast : in STD_LOGIC;
    sig_doing_read_reg_reg : in STD_LOGIC;
    \sig_xfer_len_reg_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    sig_s_ready_out_reg_0 : in STD_LOGIC;
    m00_axi_rvalid : in STD_LOGIC;
    sig_status_reg_empty_reg : in STD_LOGIC;
    m00_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    sig_rsc2stat_status : in STD_LOGIC_VECTOR ( 0 to 0 );
    sig_rsc2rdc_ready : in STD_LOGIC;
    \sig_xfer_len_reg_reg[3]_0\ : in STD_LOGIC;
    sig_cmd2all_doing_read : in STD_LOGIC;
    sig_posted_to_axi_reg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_myip_burst_read_test_0_1_axi_master_burst_rddata_cntl : entity is "axi_master_burst_rddata_cntl";
end design_1_myip_burst_read_test_0_1_axi_master_burst_rddata_cntl;

architecture STRUCTURE of design_1_myip_burst_read_test_0_1_axi_master_burst_rddata_cntl is
  signal m00_axi_rready_INST_0_i_1_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal sig_addr_posted_cntr : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \sig_addr_posted_cntr[0]_i_1_n_0\ : STD_LOGIC;
  signal \sig_addr_posted_cntr[1]_i_1_n_0\ : STD_LOGIC;
  signal \sig_addr_posted_cntr[2]_i_1_n_0\ : STD_LOGIC;
  signal sig_clr_dqual_reg : STD_LOGIC;
  signal sig_cmd_cmplt_last_dbeat : STD_LOGIC;
  signal sig_coelsc_decerr_reg0 : STD_LOGIC;
  signal sig_coelsc_interr_reg0 : STD_LOGIC;
  signal sig_coelsc_reg_full_i_4_n_0 : STD_LOGIC;
  signal sig_coelsc_slverr_reg0 : STD_LOGIC;
  signal sig_coelsc_tag_reg0 : STD_LOGIC;
  signal \sig_dbeat_cntr[3]_i_2_n_0\ : STD_LOGIC;
  signal \sig_dbeat_cntr[5]_i_2_n_0\ : STD_LOGIC;
  signal \sig_dbeat_cntr[7]_i_1_n_0\ : STD_LOGIC;
  signal \sig_dbeat_cntr[7]_i_3_n_0\ : STD_LOGIC;
  signal \sig_dbeat_cntr[7]_i_4_n_0\ : STD_LOGIC;
  signal \sig_dbeat_cntr[7]_i_5_n_0\ : STD_LOGIC;
  signal \sig_dbeat_cntr_reg__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal sig_dqual_reg_empty : STD_LOGIC;
  signal sig_dqual_reg_full : STD_LOGIC;
  signal sig_last_dbeat_i_1_n_0 : STD_LOGIC;
  signal sig_last_dbeat_i_2_n_0 : STD_LOGIC;
  signal sig_last_dbeat_i_4_n_0 : STD_LOGIC;
  signal sig_last_dbeat_reg_n_0 : STD_LOGIC;
  signal sig_last_mmap_dbeat : STD_LOGIC;
  signal sig_ld_new_cmd_reg : STD_LOGIC;
  signal sig_ld_new_cmd_reg_i_1_n_0 : STD_LOGIC;
  signal \^sig_next_calc_error_reg\ : STD_LOGIC;
  signal sig_next_cmd_cmplt_reg : STD_LOGIC;
  signal sig_next_cmd_cmplt_reg_i_3_n_0 : STD_LOGIC;
  signal sig_next_cmd_cmplt_reg_i_4_n_0 : STD_LOGIC;
  signal sig_next_cmd_cmplt_reg_i_5_n_0 : STD_LOGIC;
  signal sig_next_cmd_cmplt_reg_i_7_n_0 : STD_LOGIC;
  signal sig_next_cmd_cmplt_reg_i_8_n_0 : STD_LOGIC;
  signal \^sig_next_eof_reg\ : STD_LOGIC;
  signal sig_next_sequential_reg : STD_LOGIC;
  signal sig_push_coelsc_reg : STD_LOGIC;
  signal sig_rd2llink_xfer_cmplt : STD_LOGIC;
  signal \^sig_rdc2pcc_cmd_ready\ : STD_LOGIC;
  signal \^sig_rdc2rsc_calc_err\ : STD_LOGIC;
  signal sig_rdc2rsc_decerr : STD_LOGIC;
  signal \^sig_rdc2rsc_slverr\ : STD_LOGIC;
  signal \^sig_rdc2rsc_valid\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of m00_axi_rready_INST_0_i_1 : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of sig_coelsc_decerr_reg_i_1 : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of sig_coelsc_reg_full_i_3 : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of sig_coelsc_reg_full_i_4 : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of sig_coelsc_slverr_reg_i_1 : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \sig_dbeat_cntr[3]_i_2\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \sig_dbeat_cntr[5]_i_2\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \sig_dbeat_cntr[6]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \sig_dbeat_cntr[7]_i_2\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \sig_dbeat_cntr[7]_i_5\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of sig_last_skid_reg_i_1 : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of sig_next_cmd_cmplt_reg_i_5 : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of sig_next_cmd_cmplt_reg_i_7 : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of sig_next_cmd_cmplt_reg_i_8 : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of sig_rd_sts_reg_empty_i_1 : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of sig_rd_sts_reg_full_i_3 : label is "soft_lutpair27";
begin
  sig_next_calc_error_reg <= \^sig_next_calc_error_reg\;
  sig_next_eof_reg <= \^sig_next_eof_reg\;
  sig_rdc2pcc_cmd_ready <= \^sig_rdc2pcc_cmd_ready\;
  sig_rdc2rsc_calc_err <= \^sig_rdc2rsc_calc_err\;
  sig_rdc2rsc_slverr <= \^sig_rdc2rsc_slverr\;
  sig_rdc2rsc_valid <= \^sig_rdc2rsc_valid\;
m00_axi_rready_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => \^sig_rdc2rsc_valid\,
      I1 => sig_dqual_reg_full,
      I2 => sig_s_ready_out_reg_0,
      I3 => m00_axi_rready_INST_0_i_1_n_0,
      I4 => \^sig_next_calc_error_reg\,
      O => m00_axi_rready
    );
m00_axi_rready_INST_0_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => sig_addr_posted_cntr(2),
      I1 => sig_addr_posted_cntr(1),
      I2 => sig_addr_posted_cntr(0),
      O => m00_axi_rready_INST_0_i_1_n_0
    );
\sig_addr_posted_cntr[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F80F0F0F0FE0E0E0"
    )
        port map (
      I0 => sig_addr_posted_cntr(1),
      I1 => sig_addr_posted_cntr(2),
      I2 => sig_rd2llink_xfer_cmplt,
      I3 => sig_posted_to_axi_reg,
      I4 => sig_cmd2all_doing_read,
      I5 => sig_addr_posted_cntr(0),
      O => \sig_addr_posted_cntr[0]_i_1_n_0\
    );
\sig_addr_posted_cntr[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF708088F8F7000"
    )
        port map (
      I0 => sig_cmd2all_doing_read,
      I1 => sig_posted_to_axi_reg,
      I2 => sig_rd2llink_xfer_cmplt,
      I3 => sig_addr_posted_cntr(2),
      I4 => sig_addr_posted_cntr(1),
      I5 => sig_addr_posted_cntr(0),
      O => \sig_addr_posted_cntr[1]_i_1_n_0\
    );
\sig_addr_posted_cntr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF08FF00FF008F00"
    )
        port map (
      I0 => sig_cmd2all_doing_read,
      I1 => sig_posted_to_axi_reg,
      I2 => sig_rd2llink_xfer_cmplt,
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
sig_coelsc_decerr_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => m00_axi_rresp(1),
      I1 => m00_axi_rresp(0),
      I2 => sig_rdc2rsc_decerr,
      O => sig_coelsc_decerr_reg0
    );
sig_coelsc_decerr_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_push_coelsc_reg,
      D => sig_coelsc_decerr_reg0,
      Q => sig_rdc2rsc_decerr,
      R => sig_coelsc_tag_reg0
    );
sig_coelsc_interr_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^sig_next_calc_error_reg\,
      I1 => \^sig_rdc2rsc_calc_err\,
      O => sig_coelsc_interr_reg0
    );
sig_coelsc_interr_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_push_coelsc_reg,
      D => sig_coelsc_interr_reg0,
      Q => \^sig_rdc2rsc_calc_err\,
      R => sig_coelsc_tag_reg0
    );
sig_coelsc_reg_full_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7000"
    )
        port map (
      I0 => \^sig_next_calc_error_reg\,
      I1 => sig_ld_new_cmd_reg,
      I2 => sig_rsc2rdc_ready,
      I3 => \^sig_rdc2rsc_valid\,
      I4 => \out\,
      O => sig_coelsc_tag_reg0
    );
sig_coelsc_reg_full_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => sig_coelsc_reg_full_i_4_n_0,
      I1 => sig_ld_new_cmd_reg,
      I2 => \^sig_next_calc_error_reg\,
      O => sig_push_coelsc_reg
    );
sig_coelsc_reg_full_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF80"
    )
        port map (
      I0 => sig_next_cmd_cmplt_reg,
      I1 => m00_axi_rvalid,
      I2 => m00_axi_rlast,
      I3 => \^sig_next_calc_error_reg\,
      O => sig_cmd_cmplt_last_dbeat
    );
sig_coelsc_reg_full_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FFFFFF"
    )
        port map (
      I0 => sig_s_ready_out_reg_0,
      I1 => sig_dqual_reg_full,
      I2 => \^sig_rdc2rsc_valid\,
      I3 => m00_axi_rvalid,
      I4 => m00_axi_rready_INST_0_i_1_n_0,
      O => sig_coelsc_reg_full_i_4_n_0
    );
sig_coelsc_reg_full_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_push_coelsc_reg,
      D => sig_cmd_cmplt_last_dbeat,
      Q => \^sig_rdc2rsc_valid\,
      R => sig_coelsc_tag_reg0
    );
sig_coelsc_slverr_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => m00_axi_rresp(0),
      I1 => m00_axi_rresp(1),
      I2 => \^sig_rdc2rsc_slverr\,
      O => sig_coelsc_slverr_reg0
    );
sig_coelsc_slverr_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_push_coelsc_reg,
      D => sig_coelsc_slverr_reg0,
      Q => \^sig_rdc2rsc_slverr\,
      R => sig_coelsc_tag_reg0
    );
\sig_dbeat_cntr[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => \sig_dbeat_cntr_reg__0\(0),
      I1 => \sig_dbeat_cntr[7]_i_4_n_0\,
      I2 => \sig_xfer_len_reg_reg[3]\(0),
      I3 => \^sig_rdc2pcc_cmd_ready\,
      O => p_0_in(0)
    );
\sig_dbeat_cntr[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F88888F8"
    )
        port map (
      I0 => \^sig_rdc2pcc_cmd_ready\,
      I1 => \sig_xfer_len_reg_reg[3]\(1),
      I2 => \sig_dbeat_cntr[7]_i_4_n_0\,
      I3 => \sig_dbeat_cntr_reg__0\(0),
      I4 => \sig_dbeat_cntr_reg__0\(1),
      O => p_0_in(1)
    );
\sig_dbeat_cntr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8F8F888888888F8"
    )
        port map (
      I0 => \^sig_rdc2pcc_cmd_ready\,
      I1 => \sig_xfer_len_reg_reg[3]\(2),
      I2 => \sig_dbeat_cntr[7]_i_4_n_0\,
      I3 => \sig_dbeat_cntr_reg__0\(1),
      I4 => \sig_dbeat_cntr_reg__0\(0),
      I5 => \sig_dbeat_cntr_reg__0\(2),
      O => p_0_in(2)
    );
\sig_dbeat_cntr[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F88888F8"
    )
        port map (
      I0 => \^sig_rdc2pcc_cmd_ready\,
      I1 => \sig_xfer_len_reg_reg[3]\(3),
      I2 => \sig_dbeat_cntr[7]_i_4_n_0\,
      I3 => \sig_dbeat_cntr[3]_i_2_n_0\,
      I4 => \sig_dbeat_cntr_reg__0\(3),
      O => p_0_in(3)
    );
\sig_dbeat_cntr[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \sig_dbeat_cntr_reg__0\(1),
      I1 => \sig_dbeat_cntr_reg__0\(0),
      I2 => \sig_dbeat_cntr_reg__0\(2),
      O => \sig_dbeat_cntr[3]_i_2_n_0\
    );
\sig_dbeat_cntr[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFE000100000000"
    )
        port map (
      I0 => \sig_dbeat_cntr_reg__0\(3),
      I1 => \sig_dbeat_cntr_reg__0\(1),
      I2 => \sig_dbeat_cntr_reg__0\(0),
      I3 => \sig_dbeat_cntr_reg__0\(2),
      I4 => \sig_dbeat_cntr_reg__0\(4),
      I5 => \sig_dbeat_cntr[7]_i_4_n_0\,
      O => p_0_in(4)
    );
\sig_dbeat_cntr[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"90"
    )
        port map (
      I0 => \sig_dbeat_cntr[5]_i_2_n_0\,
      I1 => \sig_dbeat_cntr_reg__0\(5),
      I2 => \sig_dbeat_cntr[7]_i_4_n_0\,
      O => p_0_in(5)
    );
\sig_dbeat_cntr[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \sig_dbeat_cntr_reg__0\(3),
      I1 => \sig_dbeat_cntr_reg__0\(1),
      I2 => \sig_dbeat_cntr_reg__0\(0),
      I3 => \sig_dbeat_cntr_reg__0\(2),
      I4 => \sig_dbeat_cntr_reg__0\(4),
      O => \sig_dbeat_cntr[5]_i_2_n_0\
    );
\sig_dbeat_cntr[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"90"
    )
        port map (
      I0 => \sig_dbeat_cntr[7]_i_3_n_0\,
      I1 => \sig_dbeat_cntr_reg__0\(6),
      I2 => \sig_dbeat_cntr[7]_i_4_n_0\,
      O => p_0_in(6)
    );
\sig_dbeat_cntr[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF000000FE"
    )
        port map (
      I0 => \sig_dbeat_cntr_reg__0\(6),
      I1 => \sig_dbeat_cntr[7]_i_3_n_0\,
      I2 => \sig_dbeat_cntr_reg__0\(7),
      I3 => sig_coelsc_reg_full_i_4_n_0,
      I4 => \^sig_next_calc_error_reg\,
      I5 => \^sig_rdc2pcc_cmd_ready\,
      O => \sig_dbeat_cntr[7]_i_1_n_0\
    );
\sig_dbeat_cntr[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E100"
    )
        port map (
      I0 => \sig_dbeat_cntr_reg__0\(6),
      I1 => \sig_dbeat_cntr[7]_i_3_n_0\,
      I2 => \sig_dbeat_cntr_reg__0\(7),
      I3 => \sig_dbeat_cntr[7]_i_4_n_0\,
      O => p_0_in(7)
    );
\sig_dbeat_cntr[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \sig_dbeat_cntr_reg__0\(4),
      I1 => \sig_dbeat_cntr_reg__0\(2),
      I2 => \sig_dbeat_cntr_reg__0\(0),
      I3 => \sig_dbeat_cntr_reg__0\(1),
      I4 => \sig_dbeat_cntr_reg__0\(3),
      I5 => \sig_dbeat_cntr_reg__0\(5),
      O => \sig_dbeat_cntr[7]_i_3_n_0\
    );
\sig_dbeat_cntr[7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FDFDFFFD"
    )
        port map (
      I0 => sig_next_cmd_cmplt_reg_i_4_n_0,
      I1 => \sig_dbeat_cntr[7]_i_5_n_0\,
      I2 => \^sig_next_calc_error_reg\,
      I3 => sig_coelsc_reg_full_i_4_n_0,
      I4 => sig_dqual_reg_empty,
      O => \sig_dbeat_cntr[7]_i_4_n_0\
    );
\sig_dbeat_cntr[7]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF15"
    )
        port map (
      I0 => sig_dqual_reg_empty,
      I1 => sig_last_dbeat_reg_n_0,
      I2 => sig_next_sequential_reg,
      I3 => sig_doing_read_reg_reg,
      O => \sig_dbeat_cntr[7]_i_5_n_0\
    );
\sig_dbeat_cntr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \sig_dbeat_cntr[7]_i_1_n_0\,
      D => p_0_in(0),
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
      D => p_0_in(1),
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
      D => p_0_in(2),
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
      D => p_0_in(3),
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
      D => p_0_in(4),
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
      D => p_0_in(5),
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
      D => p_0_in(6),
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
      D => p_0_in(7),
      Q => \sig_dbeat_cntr_reg__0\(7),
      R => \out\
    );
sig_dqual_reg_empty_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \^sig_rdc2pcc_cmd_ready\,
      D => '0',
      Q => sig_dqual_reg_empty,
      S => sig_clr_dqual_reg
    );
sig_dqual_reg_full_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \^sig_rdc2pcc_cmd_ready\,
      D => \^sig_rdc2pcc_cmd_ready\,
      Q => sig_dqual_reg_full,
      R => sig_clr_dqual_reg
    );
sig_last_dbeat_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEFEEE0"
    )
        port map (
      I0 => sig_last_dbeat_i_2_n_0,
      I1 => \sig_xfer_len_reg_reg[3]_0\,
      I2 => \sig_dbeat_cntr[7]_i_1_n_0\,
      I3 => \out\,
      I4 => sig_last_dbeat_reg_n_0,
      O => sig_last_dbeat_i_1_n_0
    );
sig_last_dbeat_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000000000"
    )
        port map (
      I0 => sig_last_dbeat_i_4_n_0,
      I1 => \sig_dbeat_cntr_reg__0\(1),
      I2 => \sig_dbeat_cntr_reg__0\(0),
      I3 => \out\,
      I4 => \sig_dbeat_cntr_reg__0\(2),
      I5 => sig_next_cmd_cmplt_reg_i_3_n_0,
      O => sig_last_dbeat_i_2_n_0
    );
sig_last_dbeat_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \sig_dbeat_cntr_reg__0\(5),
      I1 => \sig_dbeat_cntr_reg__0\(6),
      I2 => \sig_dbeat_cntr_reg__0\(3),
      I3 => \sig_dbeat_cntr_reg__0\(4),
      I4 => \^sig_next_calc_error_reg\,
      I5 => \sig_dbeat_cntr_reg__0\(7),
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
sig_last_mmap_dbeat_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^sig_next_calc_error_reg\,
      I1 => m00_axi_rlast,
      I2 => sig_coelsc_reg_full_i_4_n_0,
      O => sig_last_mmap_dbeat
    );
sig_last_mmap_dbeat_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => '1',
      D => sig_last_mmap_dbeat,
      Q => sig_rd2llink_xfer_cmplt,
      R => \out\
    );
sig_last_skid_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => m00_axi_rlast,
      I1 => m00_axi_rvalid,
      I2 => \^sig_next_eof_reg\,
      O => sig_rdc2rdskid_tlast
    );
sig_ld_new_cmd_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \^sig_rdc2pcc_cmd_ready\,
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
sig_next_calc_error_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \^sig_rdc2pcc_cmd_ready\,
      D => sig_pcc2data_calc_error,
      Q => \^sig_next_calc_error_reg\,
      R => sig_clr_dqual_reg
    );
sig_next_cmd_cmplt_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF08"
    )
        port map (
      I0 => sig_next_cmd_cmplt_reg_i_3_n_0,
      I1 => m00_axi_rlast,
      I2 => \^sig_next_calc_error_reg\,
      I3 => \out\,
      O => sig_clr_dqual_reg
    );
sig_next_cmd_cmplt_reg_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8800F800"
    )
        port map (
      I0 => sig_next_cmd_cmplt_reg_i_4_n_0,
      I1 => sig_dqual_reg_empty,
      I2 => sig_next_cmd_cmplt_reg_i_5_n_0,
      I3 => sig_status_reg_empty_reg,
      I4 => sig_next_cmd_cmplt_reg_i_7_n_0,
      O => \^sig_rdc2pcc_cmd_ready\
    );
sig_next_cmd_cmplt_reg_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AA20FFFF"
    )
        port map (
      I0 => m00_axi_rready_INST_0_i_1_n_0,
      I1 => sig_dqual_reg_empty,
      I2 => sig_next_cmd_cmplt_reg_i_8_n_0,
      I3 => sig_doing_read_reg_reg,
      I4 => sig_next_cmd_cmplt_reg_i_4_n_0,
      I5 => sig_next_cmd_cmplt_reg_i_7_n_0,
      O => sig_next_cmd_cmplt_reg_i_3_n_0
    );
sig_next_cmd_cmplt_reg_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => sig_addr_posted_cntr(2),
      I1 => sig_addr_posted_cntr(1),
      I2 => sig_addr_posted_cntr(0),
      O => sig_next_cmd_cmplt_reg_i_4_n_0
    );
sig_next_cmd_cmplt_reg_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7E000000"
    )
        port map (
      I0 => sig_addr_posted_cntr(2),
      I1 => sig_addr_posted_cntr(1),
      I2 => sig_addr_posted_cntr(0),
      I3 => sig_next_sequential_reg,
      I4 => sig_last_dbeat_reg_n_0,
      O => sig_next_cmd_cmplt_reg_i_5_n_0
    );
sig_next_cmd_cmplt_reg_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => m00_axi_rvalid,
      I1 => \^sig_rdc2rsc_valid\,
      I2 => sig_dqual_reg_full,
      I3 => sig_s_ready_out_reg_0,
      O => sig_next_cmd_cmplt_reg_i_7_n_0
    );
sig_next_cmd_cmplt_reg_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => sig_last_dbeat_reg_n_0,
      I1 => sig_next_sequential_reg,
      O => sig_next_cmd_cmplt_reg_i_8_n_0
    );
sig_next_cmd_cmplt_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \^sig_rdc2pcc_cmd_ready\,
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
      CE => \^sig_rdc2pcc_cmd_ready\,
      D => sig_pcc2data_eof,
      Q => \^sig_next_eof_reg\,
      R => sig_clr_dqual_reg
    );
sig_next_sequential_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \^sig_rdc2pcc_cmd_ready\,
      D => sig_pcc2data_sequential,
      Q => sig_next_sequential_reg,
      R => sig_clr_dqual_reg
    );
sig_rd_sts_decerr_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sig_rdc2rsc_decerr,
      I1 => sig_rsc2stat_status(0),
      O => sig_rd_sts_decerr_reg0
    );
sig_rd_sts_reg_empty_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^sig_rdc2rsc_calc_err\,
      I1 => \^sig_rdc2rsc_valid\,
      O => p_0_in_0
    );
sig_rd_sts_reg_full_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^sig_rdc2rsc_valid\,
      I1 => \^sig_rdc2rsc_calc_err\,
      O => sig_rd_sts_reg_full0
    );
sig_s_ready_dup_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFDFFFFF"
    )
        port map (
      I0 => m00_axi_rready_INST_0_i_1_n_0,
      I1 => \^sig_next_calc_error_reg\,
      I2 => m00_axi_rvalid,
      I3 => \^sig_rdc2rsc_valid\,
      I4 => sig_dqual_reg_full,
      O => sig_s_ready_out_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_myip_burst_read_test_0_1_axi_master_burst_reset is
  port (
    \out\ : out STD_LOGIC;
    \INFERRED_GEN.cnt_i_reg[0]\ : out STD_LOGIC;
    sig_rd_error_reg_reg : out STD_LOGIC;
    m00_axi_aclk : in STD_LOGIC;
    m00_axi_aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_myip_burst_read_test_0_1_axi_master_burst_reset : entity is "axi_master_burst_reset";
end design_1_myip_burst_read_test_0_1_axi_master_burst_reset;

architecture STRUCTURE of design_1_myip_burst_read_test_0_1_axi_master_burst_reset is
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
  sig_rd_error_reg_reg <= sig_llink_reset_reg;
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
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_myip_burst_read_test_0_1_axi_master_burst_skid2mm_buf is
  port (
    \out\ : out STD_LOGIC;
    m00_axi_wvalid : out STD_LOGIC;
    m00_axi_wstrb : out STD_LOGIC_VECTOR ( 0 to 0 );
    sig_init_reg_reg : in STD_LOGIC;
    m00_axi_aclk : in STD_LOGIC;
    sig_rdwr_reset_reg_reg : in STD_LOGIC;
    sig_init_reg : in STD_LOGIC;
    m00_axi_wready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_myip_burst_read_test_0_1_axi_master_burst_skid2mm_buf : entity is "axi_master_burst_skid2mm_buf";
end design_1_myip_burst_read_test_0_1_axi_master_burst_skid2mm_buf;

architecture STRUCTURE of design_1_myip_burst_read_test_0_1_axi_master_burst_skid2mm_buf is
  signal \^m00_axi_wstrb\ : STD_LOGIC_VECTOR ( 0 to 0 );
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
  signal sig_s_ready_out : STD_LOGIC;
  attribute RTL_KEEP of sig_s_ready_out : signal is "true";
  attribute equivalent_register_removal of sig_s_ready_out : signal is "no";
  signal \sig_strb_reg_out[3]_i_1_n_0\ : STD_LOGIC;
  signal sig_strb_skid_reg : STD_LOGIC_VECTOR ( 3 to 3 );
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
  m00_axi_wstrb(0) <= \^m00_axi_wstrb\(0);
  m00_axi_wvalid <= sig_m_valid_out;
  \out\ <= sig_s_ready_dup;
\sig_m_valid_dup_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020202"
    )
        port map (
      I0 => sig_m_valid_dup,
      I1 => sig_init_reg,
      I2 => sig_rdwr_reset_reg_reg,
      I3 => sig_s_ready_dup,
      I4 => m00_axi_wready,
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
sig_s_ready_dup_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => '1',
      D => sig_init_reg_reg,
      Q => sig_s_ready_dup,
      R => '0'
    );
sig_s_ready_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => '1',
      D => sig_init_reg_reg,
      Q => sig_s_ready_out,
      R => '0'
    );
\sig_strb_reg_out[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFEEE0EE"
    )
        port map (
      I0 => sig_s_ready_dup,
      I1 => sig_strb_skid_reg(3),
      I2 => m00_axi_wready,
      I3 => sig_m_valid_dup,
      I4 => \^m00_axi_wstrb\(0),
      O => \sig_strb_reg_out[3]_i_1_n_0\
    );
\sig_strb_reg_out_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => '1',
      D => \sig_strb_reg_out[3]_i_1_n_0\,
      Q => \^m00_axi_wstrb\(0),
      R => sig_rdwr_reset_reg_reg
    );
\sig_strb_skid_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_s_ready_dup,
      D => '1',
      Q => sig_strb_skid_reg(3),
      R => sig_rdwr_reset_reg_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_myip_burst_read_test_0_1_axi_master_burst_skid_buf is
  port (
    sig_m_valid_out_reg_0 : out STD_LOGIC;
    \out\ : out STD_LOGIC;
    sig_llink_busy_reg : out STD_LOGIC;
    sig_llink_busy_reg_0 : out STD_LOGIC;
    bus2ip_mstrd_d : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axi_aclk : in STD_LOGIC;
    sig_rdwr_reset_reg_reg : in STD_LOGIC;
    sig_rdc2rdskid_tlast : in STD_LOGIC;
    sig_llink_busy_reg_1 : in STD_LOGIC;
    sig_init_reg : in STD_LOGIC;
    sig_next_calc_error_reg_reg : in STD_LOGIC;
    m00_axi_rvalid : in STD_LOGIC;
    m00_axi_rlast : in STD_LOGIC;
    m00_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    sig_llink2cmd_rd_busy : in STD_LOGIC;
    ip2bus_inputs : in STD_LOGIC_VECTOR ( 0 to 0 );
    sig_rd_llink_enable : in STD_LOGIC;
    sig_llink_busy0 : in STD_LOGIC;
    sig_next_eof_reg : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_myip_burst_read_test_0_1_axi_master_burst_skid_buf : entity is "axi_master_burst_skid_buf";
end design_1_myip_burst_read_test_0_1_axi_master_burst_skid_buf;

architecture STRUCTURE of design_1_myip_burst_read_test_0_1_axi_master_burst_skid_buf is
  signal sig_data_skid_mux_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal sig_data_skid_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal sig_last_reg_out_i_1_n_0 : STD_LOGIC;
  signal sig_last_reg_out_i_2_n_0 : STD_LOGIC;
  signal sig_last_skid_reg : STD_LOGIC;
  signal sig_m_valid_dup : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of sig_m_valid_dup : signal is "true";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of sig_m_valid_dup : signal is "no";
  signal sig_m_valid_dup_i_1_n_0 : STD_LOGIC;
  signal sig_m_valid_out : STD_LOGIC;
  attribute RTL_KEEP of sig_m_valid_out : signal is "true";
  attribute equivalent_register_removal of sig_m_valid_out : signal is "no";
  signal sig_rd2llink_strm_tlast : STD_LOGIC;
  signal sig_s_ready_dup : STD_LOGIC;
  attribute RTL_KEEP of sig_s_ready_dup : signal is "true";
  attribute equivalent_register_removal of sig_s_ready_dup : signal is "no";
  signal sig_s_ready_dup_i_1_n_0 : STD_LOGIC;
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
  \out\ <= sig_s_ready_out;
  sig_llink_busy_reg <= sig_m_valid_out;
  sig_m_valid_out_reg_0 <= sig_m_valid_dup;
\sig_data_reg_out[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m00_axi_rdata(0),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(0),
      O => sig_data_skid_mux_out(0)
    );
\sig_data_reg_out[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m00_axi_rdata(10),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(10),
      O => sig_data_skid_mux_out(10)
    );
\sig_data_reg_out[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m00_axi_rdata(11),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(11),
      O => sig_data_skid_mux_out(11)
    );
\sig_data_reg_out[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m00_axi_rdata(12),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(12),
      O => sig_data_skid_mux_out(12)
    );
\sig_data_reg_out[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m00_axi_rdata(13),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(13),
      O => sig_data_skid_mux_out(13)
    );
\sig_data_reg_out[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m00_axi_rdata(14),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(14),
      O => sig_data_skid_mux_out(14)
    );
\sig_data_reg_out[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m00_axi_rdata(15),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(15),
      O => sig_data_skid_mux_out(15)
    );
\sig_data_reg_out[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m00_axi_rdata(16),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(16),
      O => sig_data_skid_mux_out(16)
    );
\sig_data_reg_out[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m00_axi_rdata(17),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(17),
      O => sig_data_skid_mux_out(17)
    );
\sig_data_reg_out[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m00_axi_rdata(18),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(18),
      O => sig_data_skid_mux_out(18)
    );
\sig_data_reg_out[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m00_axi_rdata(19),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(19),
      O => sig_data_skid_mux_out(19)
    );
\sig_data_reg_out[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m00_axi_rdata(1),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(1),
      O => sig_data_skid_mux_out(1)
    );
\sig_data_reg_out[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m00_axi_rdata(20),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(20),
      O => sig_data_skid_mux_out(20)
    );
\sig_data_reg_out[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m00_axi_rdata(21),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(21),
      O => sig_data_skid_mux_out(21)
    );
\sig_data_reg_out[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m00_axi_rdata(22),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(22),
      O => sig_data_skid_mux_out(22)
    );
\sig_data_reg_out[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m00_axi_rdata(23),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(23),
      O => sig_data_skid_mux_out(23)
    );
\sig_data_reg_out[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m00_axi_rdata(24),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(24),
      O => sig_data_skid_mux_out(24)
    );
\sig_data_reg_out[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m00_axi_rdata(25),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(25),
      O => sig_data_skid_mux_out(25)
    );
\sig_data_reg_out[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m00_axi_rdata(26),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(26),
      O => sig_data_skid_mux_out(26)
    );
\sig_data_reg_out[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m00_axi_rdata(27),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(27),
      O => sig_data_skid_mux_out(27)
    );
\sig_data_reg_out[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m00_axi_rdata(28),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(28),
      O => sig_data_skid_mux_out(28)
    );
\sig_data_reg_out[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m00_axi_rdata(29),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(29),
      O => sig_data_skid_mux_out(29)
    );
\sig_data_reg_out[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m00_axi_rdata(2),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(2),
      O => sig_data_skid_mux_out(2)
    );
\sig_data_reg_out[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m00_axi_rdata(30),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(30),
      O => sig_data_skid_mux_out(30)
    );
\sig_data_reg_out[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m00_axi_rdata(31),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(31),
      O => sig_data_skid_mux_out(31)
    );
\sig_data_reg_out[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m00_axi_rdata(3),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(3),
      O => sig_data_skid_mux_out(3)
    );
\sig_data_reg_out[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m00_axi_rdata(4),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(4),
      O => sig_data_skid_mux_out(4)
    );
\sig_data_reg_out[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m00_axi_rdata(5),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(5),
      O => sig_data_skid_mux_out(5)
    );
\sig_data_reg_out[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m00_axi_rdata(6),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(6),
      O => sig_data_skid_mux_out(6)
    );
\sig_data_reg_out[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m00_axi_rdata(7),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(7),
      O => sig_data_skid_mux_out(7)
    );
\sig_data_reg_out[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m00_axi_rdata(8),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(8),
      O => sig_data_skid_mux_out(8)
    );
\sig_data_reg_out[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m00_axi_rdata(9),
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
      Q => bus2ip_mstrd_d(0),
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
      Q => bus2ip_mstrd_d(10),
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
      Q => bus2ip_mstrd_d(11),
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
      Q => bus2ip_mstrd_d(12),
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
      Q => bus2ip_mstrd_d(13),
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
      Q => bus2ip_mstrd_d(14),
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
      Q => bus2ip_mstrd_d(15),
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
      Q => bus2ip_mstrd_d(16),
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
      Q => bus2ip_mstrd_d(17),
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
      Q => bus2ip_mstrd_d(18),
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
      Q => bus2ip_mstrd_d(19),
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
      Q => bus2ip_mstrd_d(1),
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
      Q => bus2ip_mstrd_d(20),
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
      Q => bus2ip_mstrd_d(21),
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
      Q => bus2ip_mstrd_d(22),
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
      Q => bus2ip_mstrd_d(23),
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
      Q => bus2ip_mstrd_d(24),
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
      Q => bus2ip_mstrd_d(25),
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
      Q => bus2ip_mstrd_d(26),
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
      Q => bus2ip_mstrd_d(27),
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
      Q => bus2ip_mstrd_d(28),
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
      Q => bus2ip_mstrd_d(29),
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
      Q => bus2ip_mstrd_d(2),
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
      Q => bus2ip_mstrd_d(30),
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
      Q => bus2ip_mstrd_d(31),
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
      Q => bus2ip_mstrd_d(3),
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
      Q => bus2ip_mstrd_d(4),
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
      Q => bus2ip_mstrd_d(5),
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
      Q => bus2ip_mstrd_d(6),
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
      Q => bus2ip_mstrd_d(7),
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
      Q => bus2ip_mstrd_d(8),
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
      Q => bus2ip_mstrd_d(9),
      R => '0'
    );
\sig_data_skid_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_s_ready_dup,
      D => m00_axi_rdata(0),
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
      D => m00_axi_rdata(10),
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
      D => m00_axi_rdata(11),
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
      D => m00_axi_rdata(12),
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
      D => m00_axi_rdata(13),
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
      D => m00_axi_rdata(14),
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
      D => m00_axi_rdata(15),
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
      D => m00_axi_rdata(16),
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
      D => m00_axi_rdata(17),
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
      D => m00_axi_rdata(18),
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
      D => m00_axi_rdata(19),
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
      D => m00_axi_rdata(1),
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
      D => m00_axi_rdata(20),
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
      D => m00_axi_rdata(21),
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
      D => m00_axi_rdata(22),
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
      D => m00_axi_rdata(23),
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
      D => m00_axi_rdata(24),
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
      D => m00_axi_rdata(25),
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
      D => m00_axi_rdata(26),
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
      D => m00_axi_rdata(27),
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
      D => m00_axi_rdata(28),
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
      D => m00_axi_rdata(29),
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
      D => m00_axi_rdata(2),
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
      D => m00_axi_rdata(30),
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
      D => m00_axi_rdata(31),
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
      D => m00_axi_rdata(3),
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
      D => m00_axi_rdata(4),
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
      D => m00_axi_rdata(5),
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
      D => m00_axi_rdata(6),
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
      D => m00_axi_rdata(7),
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
      D => m00_axi_rdata(8),
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
      D => m00_axi_rdata(9),
      Q => sig_data_skid_reg(9),
      R => '0'
    );
sig_last_reg_out_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CA0AFFFFCA0A0000"
    )
        port map (
      I0 => sig_last_skid_reg,
      I1 => sig_last_reg_out_i_2_n_0,
      I2 => sig_s_ready_dup,
      I3 => sig_next_eof_reg,
      I4 => E(0),
      I5 => sig_rd2llink_strm_tlast,
      O => sig_last_reg_out_i_1_n_0
    );
sig_last_reg_out_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => m00_axi_rvalid,
      I1 => m00_axi_rlast,
      O => sig_last_reg_out_i_2_n_0
    );
sig_last_reg_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => '1',
      D => sig_last_reg_out_i_1_n_0,
      Q => sig_rd2llink_strm_tlast,
      R => sig_rdwr_reset_reg_reg
    );
sig_last_skid_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => sig_s_ready_dup,
      D => sig_rdc2rdskid_tlast,
      Q => sig_last_skid_reg,
      R => sig_rdwr_reset_reg_reg
    );
sig_llink_busy_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFF070"
    )
        port map (
      I0 => sig_m_valid_out,
      I1 => sig_rd2llink_strm_tlast,
      I2 => sig_llink2cmd_rd_busy,
      I3 => ip2bus_inputs(0),
      I4 => sig_rd_llink_enable,
      I5 => sig_llink_busy0,
      O => sig_llink_busy_reg_0
    );
sig_m_valid_dup_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000B0FF"
    )
        port map (
      I0 => sig_llink_busy_reg_1,
      I1 => sig_s_ready_dup,
      I2 => sig_m_valid_dup,
      I3 => sig_next_calc_error_reg_reg,
      I4 => sig_init_reg,
      I5 => sig_rdwr_reset_reg_reg,
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
      INIT => X"00000000FDFFDDDD"
    )
        port map (
      I0 => sig_llink_busy_reg_1,
      I1 => sig_init_reg,
      I2 => sig_next_calc_error_reg_reg,
      I3 => sig_m_valid_dup,
      I4 => sig_s_ready_dup,
      I5 => sig_rdwr_reset_reg_reg,
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
      R => '0'
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
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_myip_burst_read_test_0_1_axi_master_burst_skid_buf_0 is
  port (
    \out\ : out STD_LOGIC;
    m00_axi_aclk : in STD_LOGIC;
    sig_rdwr_reset_reg_reg : in STD_LOGIC;
    sig_rdwr_reset_reg_reg_0 : in STD_LOGIC;
    sig_init_reg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_myip_burst_read_test_0_1_axi_master_burst_skid_buf_0 : entity is "axi_master_burst_skid_buf";
end design_1_myip_burst_read_test_0_1_axi_master_burst_skid_buf_0;

architecture STRUCTURE of design_1_myip_burst_read_test_0_1_axi_master_burst_skid_buf_0 is
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
      D => sig_rdwr_reset_reg_reg,
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
      D => sig_rdwr_reset_reg_reg,
      Q => sig_m_valid_out,
      R => '0'
    );
\sig_s_ready_dup_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"32"
    )
        port map (
      I0 => sig_s_ready_dup,
      I1 => sig_rdwr_reset_reg_reg_0,
      I2 => sig_init_reg,
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
      R => '0'
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
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_myip_burst_read_test_0_1_cntr_incr_decr_addn_f is
  port (
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    sig_inhibit_rdy_n : in STD_LOGIC;
    FIFO_Full_reg : in STD_LOGIC;
    m00_axi_bvalid : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    m00_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_myip_burst_read_test_0_1_cntr_incr_decr_addn_f : entity is "cntr_incr_decr_addn_f";
end design_1_myip_burst_read_test_0_1_cntr_incr_decr_addn_f;

architecture STRUCTURE of design_1_myip_burst_read_test_0_1_cntr_incr_decr_addn_f is
  signal \INFERRED_GEN.cnt_i[1]_i_1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.cnt_i[2]_i_1_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal addr_i_p1 : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of Cnt_p10 : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \INFERRED_GEN.cnt_i[1]_i_1\ : label is "soft_lutpair29";
begin
  Q(2 downto 0) <= \^q\(2 downto 0);
Cnt_p10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A6AA"
    )
        port map (
      I0 => \^q\(0),
      I1 => sig_inhibit_rdy_n,
      I2 => FIFO_Full_reg,
      I3 => m00_axi_bvalid,
      O => addr_i_p1(0)
    );
\INFERRED_GEN.cnt_i[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FF0800"
    )
        port map (
      I0 => \^q\(0),
      I1 => m00_axi_bvalid,
      I2 => FIFO_Full_reg,
      I3 => sig_inhibit_rdy_n,
      I4 => \^q\(1),
      O => \INFERRED_GEN.cnt_i[1]_i_1_n_0\
    );
\INFERRED_GEN.cnt_i[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFF08000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => sig_inhibit_rdy_n,
      I2 => FIFO_Full_reg,
      I3 => m00_axi_bvalid,
      I4 => \^q\(0),
      I5 => \^q\(2),
      O => \INFERRED_GEN.cnt_i[2]_i_1_n_0\
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
      D => \INFERRED_GEN.cnt_i[1]_i_1_n_0\,
      Q => \^q\(1),
      S => \out\
    );
\INFERRED_GEN.cnt_i_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      D => \INFERRED_GEN.cnt_i[2]_i_1_n_0\,
      Q => \^q\(2),
      S => \out\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_myip_burst_read_test_0_1_srl_fifo_rbu_f is
  port (
    m00_axi_bready : out STD_LOGIC;
    \out\ : in STD_LOGIC;
    m00_axi_aclk : in STD_LOGIC;
    m00_axi_bvalid : in STD_LOGIC;
    sig_inhibit_rdy_n : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_myip_burst_read_test_0_1_srl_fifo_rbu_f : entity is "srl_fifo_rbu_f";
end design_1_myip_burst_read_test_0_1_srl_fifo_rbu_f;

architecture STRUCTURE of design_1_myip_burst_read_test_0_1_srl_fifo_rbu_f is
  signal CNTR_INCR_DECR_ADDN_F_I_n_1 : STD_LOGIC;
  signal CNTR_INCR_DECR_ADDN_F_I_n_2 : STD_LOGIC;
  signal FIFO_Full_reg_n_0 : STD_LOGIC;
  signal \fifo_full_p1__0\ : STD_LOGIC;
  signal sig_rd_empty : STD_LOGIC;
begin
CNTR_INCR_DECR_ADDN_F_I: entity work.design_1_myip_burst_read_test_0_1_cntr_incr_decr_addn_f
     port map (
      FIFO_Full_reg => FIFO_Full_reg_n_0,
      Q(2) => sig_rd_empty,
      Q(1) => CNTR_INCR_DECR_ADDN_F_I_n_1,
      Q(0) => CNTR_INCR_DECR_ADDN_F_I_n_2,
      m00_axi_aclk => m00_axi_aclk,
      m00_axi_bvalid => m00_axi_bvalid,
      \out\ => \out\,
      sig_inhibit_rdy_n => sig_inhibit_rdy_n
    );
FIFO_Full_reg: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      D => \fifo_full_p1__0\,
      Q => FIFO_Full_reg_n_0,
      R => \out\
    );
fifo_full_p1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000400A2AA"
    )
        port map (
      I0 => CNTR_INCR_DECR_ADDN_F_I_n_1,
      I1 => sig_inhibit_rdy_n,
      I2 => FIFO_Full_reg_n_0,
      I3 => m00_axi_bvalid,
      I4 => CNTR_INCR_DECR_ADDN_F_I_n_2,
      I5 => sig_rd_empty,
      O => \fifo_full_p1__0\
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
entity design_1_myip_burst_read_test_0_1_srl_fifo_f is
  port (
    m00_axi_bready : out STD_LOGIC;
    \out\ : in STD_LOGIC;
    m00_axi_aclk : in STD_LOGIC;
    m00_axi_bvalid : in STD_LOGIC;
    sig_inhibit_rdy_n : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_myip_burst_read_test_0_1_srl_fifo_f : entity is "srl_fifo_f";
end design_1_myip_burst_read_test_0_1_srl_fifo_f;

architecture STRUCTURE of design_1_myip_burst_read_test_0_1_srl_fifo_f is
begin
I_SRL_FIFO_RBU_F: entity work.design_1_myip_burst_read_test_0_1_srl_fifo_rbu_f
     port map (
      m00_axi_aclk => m00_axi_aclk,
      m00_axi_bready => m00_axi_bready,
      m00_axi_bvalid => m00_axi_bvalid,
      \out\ => \out\,
      sig_inhibit_rdy_n => sig_inhibit_rdy_n
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_myip_burst_read_test_0_1_axi_master_burst_fifo is
  port (
    sig_init_reg2_reg_0 : out STD_LOGIC;
    m00_axi_bready : out STD_LOGIC;
    sig_s_ready_dup_reg : out STD_LOGIC;
    sig_m_valid_dup_reg : out STD_LOGIC;
    \out\ : in STD_LOGIC;
    m00_axi_aclk : in STD_LOGIC;
    m00_axi_bvalid : in STD_LOGIC;
    sig_s_ready_dup_reg_0 : in STD_LOGIC;
    m00_axi_wready : in STD_LOGIC;
    sig_m_valid_dup_reg_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_myip_burst_read_test_0_1_axi_master_burst_fifo : entity is "axi_master_burst_fifo";
end design_1_myip_burst_read_test_0_1_axi_master_burst_fifo;

architecture STRUCTURE of design_1_myip_burst_read_test_0_1_axi_master_burst_fifo is
  signal \GEN_OMIT_STORE_FORWARD.I_DATA_CNTL_STATUS_FIFO/sig_init_reg2\ : STD_LOGIC;
  signal sig_inhibit_rdy_n : STD_LOGIC;
  signal sig_inhibit_rdy_n_i_1_n_0 : STD_LOGIC;
  signal sig_init_done : STD_LOGIC;
  signal sig_init_done_i_1_n_0 : STD_LOGIC;
  signal \^sig_init_reg2_reg_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \sig_m_valid_dup_i_1__1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \sig_s_ready_dup_i_1__0\ : label is "soft_lutpair30";
begin
  sig_init_reg2_reg_0 <= \^sig_init_reg2_reg_0\;
\USE_SRL_FIFO.I_SYNC_FIFO\: entity work.design_1_myip_burst_read_test_0_1_srl_fifo_f
     port map (
      m00_axi_aclk => m00_axi_aclk,
      m00_axi_bready => m00_axi_bready,
      m00_axi_bvalid => m00_axi_bvalid,
      \out\ => \out\,
      sig_inhibit_rdy_n => sig_inhibit_rdy_n
    );
sig_inhibit_rdy_n_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sig_init_done,
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
      I2 => sig_init_done,
      I3 => \out\,
      O => sig_init_done_i_1_n_0
    );
sig_init_done_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => '1',
      D => sig_init_done_i_1_n_0,
      Q => sig_init_done,
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
      I0 => \out\,
      I1 => \^sig_init_reg2_reg_0\,
      I2 => sig_m_valid_dup_reg_0,
      O => sig_m_valid_dup_reg
    );
\sig_s_ready_dup_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0F0E"
    )
        port map (
      I0 => \^sig_init_reg2_reg_0\,
      I1 => sig_s_ready_dup_reg_0,
      I2 => \out\,
      I3 => m00_axi_wready,
      O => sig_s_ready_dup_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_myip_burst_read_test_0_1_axi_master_burst_wr_status_cntl is
  port (
    sig_init_reg : out STD_LOGIC;
    m00_axi_bready : out STD_LOGIC;
    sig_s_ready_dup_reg : out STD_LOGIC;
    sig_m_valid_dup_reg : out STD_LOGIC;
    \out\ : in STD_LOGIC;
    m00_axi_aclk : in STD_LOGIC;
    m00_axi_bvalid : in STD_LOGIC;
    sig_s_ready_dup_reg_0 : in STD_LOGIC;
    m00_axi_wready : in STD_LOGIC;
    sig_m_valid_dup_reg_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_myip_burst_read_test_0_1_axi_master_burst_wr_status_cntl : entity is "axi_master_burst_wr_status_cntl";
end design_1_myip_burst_read_test_0_1_axi_master_burst_wr_status_cntl;

architecture STRUCTURE of design_1_myip_burst_read_test_0_1_axi_master_burst_wr_status_cntl is
begin
I_WRESP_STATUS_FIFO: entity work.design_1_myip_burst_read_test_0_1_axi_master_burst_fifo
     port map (
      m00_axi_aclk => m00_axi_aclk,
      m00_axi_bready => m00_axi_bready,
      m00_axi_bvalid => m00_axi_bvalid,
      m00_axi_wready => m00_axi_wready,
      \out\ => \out\,
      sig_init_reg2_reg_0 => sig_init_reg,
      sig_m_valid_dup_reg => sig_m_valid_dup_reg,
      sig_m_valid_dup_reg_0 => sig_m_valid_dup_reg_0,
      sig_s_ready_dup_reg => sig_s_ready_dup_reg,
      sig_s_ready_dup_reg_0 => sig_s_ready_dup_reg_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_myip_burst_read_test_0_1_axi_master_burst_rd_wr_cntlr is
  port (
    sig_pcc2data_calc_error : out STD_LOGIC;
    sig_pcc2all_calc_err : out STD_LOGIC;
    sig_m_valid_out_reg : out STD_LOGIC;
    sig_llink_busy_reg : out STD_LOGIC;
    m00_axi_wvalid : out STD_LOGIC;
    m00_axi_arsize : out STD_LOGIC_VECTOR ( 0 to 0 );
    m00_axi_arburst : out STD_LOGIC_VECTOR ( 0 to 0 );
    m00_axi_arvalid : out STD_LOGIC;
    sig_rsc2stat_status_valid : out STD_LOGIC;
    sig_rd_sts_interr_reg_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    sig_doing_read_reg : out STD_LOGIC;
    O : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \GEN_ADDR_32.sig_addr_cntr_lsh_reg[1]\ : out STD_LOGIC;
    sig_pcc2data_cmd_valid : out STD_LOGIC;
    sig_calc_error_pushed : out STD_LOGIC;
    m00_axi_wstrb : out STD_LOGIC_VECTOR ( 0 to 0 );
    m00_axi_bready : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    sig_doing_read_reg_reg_0 : out STD_LOGIC;
    m00_axi_rready : out STD_LOGIC;
    sig_stat_error : out STD_LOGIC;
    sig_error_sh_reg_reg : out STD_LOGIC;
    sig_llink_busy_reg_0 : out STD_LOGIC;
    bus2ip_mstrd_d : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axi_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \out\ : in STD_LOGIC;
    m00_axi_aclk : in STD_LOGIC;
    sig_doing_read_reg_reg_1 : in STD_LOGIC;
    sig_rd_sts_tag_reg0 : in STD_LOGIC;
    sig_cmd2all_doing_read : in STD_LOGIC;
    sig_cmd_type_req_reg : in STD_LOGIC;
    m00_axi_bvalid : in STD_LOGIC;
    sig_cmd2pcc_cmd_valid : in STD_LOGIC;
    sig_cmd_empty_reg_reg : in STD_LOGIC;
    sig_cmd_reset_reg_reg : in STD_LOGIC;
    \sig_cmd_mst_addr_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 8 downto 0 );
    sig_cmd_type_req : in STD_LOGIC;
    sig_llink2rd_allow_addr_req : in STD_LOGIC;
    m00_axi_rlast : in STD_LOGIC;
    sig_doing_read_reg_reg_2 : in STD_LOGIC;
    m00_axi_rvalid : in STD_LOGIC;
    sig_llink_busy_reg_1 : in STD_LOGIC;
    sig_status_reg_empty : in STD_LOGIC;
    m00_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m00_axi_wready : in STD_LOGIC;
    m00_axi_arready : in STD_LOGIC;
    m00_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    sig_doing_read_reg_reg_3 : in STD_LOGIC;
    ip2bus_otputs : in STD_LOGIC_VECTOR ( 0 to 0 );
    sig_llink2cmd_rd_busy : in STD_LOGIC;
    ip2bus_inputs : in STD_LOGIC_VECTOR ( 0 to 0 );
    sig_rd_llink_enable : in STD_LOGIC;
    sig_llink_busy0 : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_myip_burst_read_test_0_1_axi_master_burst_rd_wr_cntlr : entity is "axi_master_burst_rd_wr_cntlr";
end design_1_myip_burst_read_test_0_1_axi_master_burst_rd_wr_cntlr;

architecture STRUCTURE of design_1_myip_burst_read_test_0_1_axi_master_burst_rd_wr_cntlr is
  signal \^gen_addr_32.sig_addr_cntr_lsh_reg[1]\ : STD_LOGIC;
  signal \GEN_OMIT_STORE_FORWARD.I_DATA_CNTL_STATUS_FIFO/sig_init_reg\ : STD_LOGIC;
  signal I_MSTR_PCC_n_13 : STD_LOGIC;
  signal I_MSTR_PCC_n_14 : STD_LOGIC;
  signal I_MSTR_PCC_n_15 : STD_LOGIC;
  signal I_MSTR_PCC_n_16 : STD_LOGIC;
  signal I_MSTR_PCC_n_17 : STD_LOGIC;
  signal I_MSTR_PCC_n_18 : STD_LOGIC;
  signal I_MSTR_PCC_n_19 : STD_LOGIC;
  signal I_MSTR_PCC_n_20 : STD_LOGIC;
  signal I_MSTR_PCC_n_21 : STD_LOGIC;
  signal I_MSTR_PCC_n_22 : STD_LOGIC;
  signal I_MSTR_PCC_n_23 : STD_LOGIC;
  signal I_MSTR_PCC_n_24 : STD_LOGIC;
  signal I_MSTR_PCC_n_25 : STD_LOGIC;
  signal I_MSTR_PCC_n_26 : STD_LOGIC;
  signal I_MSTR_PCC_n_27 : STD_LOGIC;
  signal I_MSTR_PCC_n_28 : STD_LOGIC;
  signal I_MSTR_PCC_n_31 : STD_LOGIC;
  signal I_RD_DATA_CNTL_n_6 : STD_LOGIC;
  signal I_RD_STATUS_CNTLR_n_4 : STD_LOGIC;
  signal I_WR_STATUS_CNTLR_n_2 : STD_LOGIC;
  signal I_WR_STATUS_CNTLR_n_3 : STD_LOGIC;
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
  signal p_0_in3_in : STD_LOGIC;
  signal p_0_in_0 : STD_LOGIC;
  signal sig_addr2data_addr_posted : STD_LOGIC;
  signal sig_addr2stat_cmd_fifo_empty : STD_LOGIC;
  signal sig_next_calc_error_reg : STD_LOGIC;
  signal sig_next_eof_reg : STD_LOGIC;
  signal sig_pcc2addr_addr : STD_LOGIC_VECTOR ( 31 downto 2 );
  signal sig_pcc2addr_burst : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^sig_pcc2data_calc_error\ : STD_LOGIC;
  signal sig_pcc2data_cmd_cmplt : STD_LOGIC;
  signal \^sig_pcc2data_cmd_valid\ : STD_LOGIC;
  signal sig_pcc2data_dre_src_align : STD_LOGIC;
  signal sig_pcc2data_eof : STD_LOGIC;
  signal sig_pcc2data_len : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal sig_pcc2data_saddr_lsb : STD_LOGIC_VECTOR ( 1 to 1 );
  signal sig_pcc2data_sequential : STD_LOGIC;
  signal sig_push_addr_reg1_out : STD_LOGIC;
  signal sig_rd_sts_decerr_reg0 : STD_LOGIC;
  signal sig_rd_sts_reg_full0 : STD_LOGIC;
  signal sig_rdc2pcc_cmd_ready : STD_LOGIC;
  signal sig_rdc2rdskid_tlast : STD_LOGIC;
  signal sig_rdc2rsc_calc_err : STD_LOGIC;
  signal sig_rdc2rsc_slverr : STD_LOGIC;
  signal sig_rdc2rsc_valid : STD_LOGIC;
  signal sig_rdskid2rdc_tready : STD_LOGIC;
  signal sig_rsc2rdc_ready : STD_LOGIC;
  signal sig_rsc2stat_status : STD_LOGIC_VECTOR ( 5 to 5 );
  signal \NLW_i_/i_/i__carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
begin
  \GEN_ADDR_32.sig_addr_cntr_lsh_reg[1]\ <= \^gen_addr_32.sig_addr_cntr_lsh_reg[1]\;
  sig_pcc2data_calc_error <= \^sig_pcc2data_calc_error\;
  sig_pcc2data_cmd_valid <= \^sig_pcc2data_cmd_valid\;
I_ADDR_CNTL: entity work.design_1_myip_burst_read_test_0_1_axi_master_burst_addr_cntl
     port map (
      Q(31 downto 2) => sig_pcc2addr_addr(31 downto 2),
      Q(1) => sig_pcc2data_saddr_lsb(1),
      Q(0) => sig_pcc2data_dre_src_align,
      m00_axi_aclk => m00_axi_aclk,
      m00_axi_araddr(31 downto 0) => m00_axi_araddr(31 downto 0),
      m00_axi_arburst(0) => m00_axi_arburst(0),
      m00_axi_arlen(3 downto 0) => m00_axi_arlen(3 downto 0),
      m00_axi_arready => m00_axi_arready,
      m00_axi_arsize(0) => m00_axi_arsize(0),
      m00_axi_arvalid => m00_axi_arvalid,
      \out\ => sig_addr2data_addr_posted,
      sig_addr2stat_cmd_fifo_empty => sig_addr2stat_cmd_fifo_empty,
      sig_cmd2all_doing_read => sig_cmd2all_doing_read,
      sig_doing_read_reg_reg => sig_doing_read_reg_reg_1,
      sig_pcc2addr_burst(0) => sig_pcc2addr_burst(0),
      sig_pcc2data_calc_error => \^sig_pcc2data_calc_error\,
      sig_push_addr_reg1_out => sig_push_addr_reg1_out,
      sig_rdwr_reset_reg_reg => \out\,
      \sig_xfer_len_reg_reg[3]\(3 downto 0) => sig_pcc2data_len(3 downto 0)
    );
I_MSTR_PCC: entity work.design_1_myip_burst_read_test_0_1_axi_master_burst_pcc
     port map (
      D(2 downto 0) => D(2 downto 0),
      DI(0) => \^gen_addr_32.sig_addr_cntr_lsh_reg[1]\,
      \GEN_ADDR_32.sig_addr_cntr_msh_reg[11]_0\(3) => I_MSTR_PCC_n_21,
      \GEN_ADDR_32.sig_addr_cntr_msh_reg[11]_0\(2) => I_MSTR_PCC_n_22,
      \GEN_ADDR_32.sig_addr_cntr_msh_reg[11]_0\(1) => I_MSTR_PCC_n_23,
      \GEN_ADDR_32.sig_addr_cntr_msh_reg[11]_0\(0) => I_MSTR_PCC_n_24,
      \GEN_ADDR_32.sig_addr_cntr_msh_reg[11]_1\(3) => \i_/i_/i__carry__1_n_4\,
      \GEN_ADDR_32.sig_addr_cntr_msh_reg[11]_1\(2) => \i_/i_/i__carry__1_n_5\,
      \GEN_ADDR_32.sig_addr_cntr_msh_reg[11]_1\(1) => \i_/i_/i__carry__1_n_6\,
      \GEN_ADDR_32.sig_addr_cntr_msh_reg[11]_1\(0) => \i_/i_/i__carry__1_n_7\,
      \GEN_ADDR_32.sig_addr_cntr_msh_reg[15]_0\(3) => I_MSTR_PCC_n_25,
      \GEN_ADDR_32.sig_addr_cntr_msh_reg[15]_0\(2) => I_MSTR_PCC_n_26,
      \GEN_ADDR_32.sig_addr_cntr_msh_reg[15]_0\(1) => I_MSTR_PCC_n_27,
      \GEN_ADDR_32.sig_addr_cntr_msh_reg[15]_0\(0) => I_MSTR_PCC_n_28,
      \GEN_ADDR_32.sig_addr_cntr_msh_reg[15]_1\(3) => \i_/i_/i__carry__2_n_4\,
      \GEN_ADDR_32.sig_addr_cntr_msh_reg[15]_1\(2) => \i_/i_/i__carry__2_n_5\,
      \GEN_ADDR_32.sig_addr_cntr_msh_reg[15]_1\(1) => \i_/i_/i__carry__2_n_6\,
      \GEN_ADDR_32.sig_addr_cntr_msh_reg[15]_1\(0) => \i_/i_/i__carry__2_n_7\,
      \GEN_ADDR_32.sig_addr_cntr_msh_reg[7]_0\(3) => I_MSTR_PCC_n_17,
      \GEN_ADDR_32.sig_addr_cntr_msh_reg[7]_0\(2) => I_MSTR_PCC_n_18,
      \GEN_ADDR_32.sig_addr_cntr_msh_reg[7]_0\(1) => I_MSTR_PCC_n_19,
      \GEN_ADDR_32.sig_addr_cntr_msh_reg[7]_0\(0) => I_MSTR_PCC_n_20,
      \GEN_ADDR_32.sig_addr_cntr_msh_reg[7]_1\(3) => \i_/i_/i__carry__0_n_4\,
      \GEN_ADDR_32.sig_addr_cntr_msh_reg[7]_1\(2) => \i_/i_/i__carry__0_n_5\,
      \GEN_ADDR_32.sig_addr_cntr_msh_reg[7]_1\(1) => \i_/i_/i__carry__0_n_6\,
      \GEN_ADDR_32.sig_addr_cntr_msh_reg[7]_1\(0) => \i_/i_/i__carry__0_n_7\,
      O(3) => \i_/i_/i__carry_n_4\,
      O(2) => \i_/i_/i__carry_n_5\,
      O(1) => \i_/i_/i__carry_n_6\,
      O(0) => \i_/i_/i__carry_n_7\,
      Q(8 downto 0) => Q(8 downto 0),
      S(3) => I_MSTR_PCC_n_13,
      S(2) => I_MSTR_PCC_n_14,
      S(1) => I_MSTR_PCC_n_15,
      S(0) => I_MSTR_PCC_n_16,
      SR(0) => SR(0),
      m00_axi_aclk => m00_axi_aclk,
      \out\ => \out\,
      sig_addr2stat_cmd_fifo_empty => sig_addr2stat_cmd_fifo_empty,
      \sig_btt_cntr_reg[2]_0\(2 downto 0) => O(2 downto 0),
      sig_cmd2all_doing_read => sig_cmd2all_doing_read,
      sig_cmd2data_valid_reg_0 => \^sig_pcc2data_cmd_valid\,
      sig_cmd2pcc_cmd_valid => sig_cmd2pcc_cmd_valid,
      sig_cmd_empty_reg_reg => sig_cmd_empty_reg_reg,
      \sig_cmd_mst_addr_reg[31]\(31 downto 0) => \sig_cmd_mst_addr_reg[31]\(31 downto 0),
      sig_cmd_reset_reg_reg => sig_cmd_reset_reg_reg,
      sig_cmd_type_req => sig_cmd_type_req,
      sig_cmd_type_req_reg => sig_cmd_type_req_reg,
      sig_doing_read_reg_reg => sig_doing_read_reg_reg_0,
      sig_input_burst_type_reg_reg_0 => sig_calc_error_pushed,
      sig_last_dbeat_reg => I_MSTR_PCC_n_31,
      sig_llink2rd_allow_addr_req => sig_llink2rd_allow_addr_req,
      \sig_next_addr_reg_reg[31]\(31 downto 2) => sig_pcc2addr_addr(31 downto 2),
      \sig_next_addr_reg_reg[31]\(1) => sig_pcc2data_saddr_lsb(1),
      \sig_next_addr_reg_reg[31]\(0) => sig_pcc2data_dre_src_align,
      \sig_next_len_reg_reg[3]\(3 downto 0) => sig_pcc2data_len(3 downto 0),
      sig_pcc2addr_burst(0) => sig_pcc2addr_burst(0),
      sig_pcc2data_calc_error => \^sig_pcc2data_calc_error\,
      sig_pcc2data_cmd_cmplt => sig_pcc2data_cmd_cmplt,
      sig_pcc2data_eof => sig_pcc2data_eof,
      sig_pcc2data_sequential => sig_pcc2data_sequential,
      sig_push_addr_reg1_out => sig_push_addr_reg1_out,
      sig_rdc2pcc_cmd_ready => sig_rdc2pcc_cmd_ready,
      sig_xfer_calc_err_reg_reg_0 => sig_pcc2all_calc_err
    );
I_RD_DATA_CNTL: entity work.design_1_myip_burst_read_test_0_1_axi_master_burst_rddata_cntl
     port map (
      m00_axi_aclk => m00_axi_aclk,
      m00_axi_rlast => m00_axi_rlast,
      m00_axi_rready => m00_axi_rready,
      m00_axi_rresp(1 downto 0) => m00_axi_rresp(1 downto 0),
      m00_axi_rvalid => m00_axi_rvalid,
      \out\ => \out\,
      p_0_in_0 => p_0_in_0,
      sig_cmd2all_doing_read => sig_cmd2all_doing_read,
      sig_doing_read_reg_reg => sig_doing_read_reg_reg_2,
      sig_next_calc_error_reg => sig_next_calc_error_reg,
      sig_next_eof_reg => sig_next_eof_reg,
      sig_pcc2data_calc_error => \^sig_pcc2data_calc_error\,
      sig_pcc2data_cmd_cmplt => sig_pcc2data_cmd_cmplt,
      sig_pcc2data_eof => sig_pcc2data_eof,
      sig_pcc2data_sequential => sig_pcc2data_sequential,
      sig_posted_to_axi_reg => sig_addr2data_addr_posted,
      sig_rd_sts_decerr_reg0 => sig_rd_sts_decerr_reg0,
      sig_rd_sts_reg_full0 => sig_rd_sts_reg_full0,
      sig_rdc2pcc_cmd_ready => sig_rdc2pcc_cmd_ready,
      sig_rdc2rdskid_tlast => sig_rdc2rdskid_tlast,
      sig_rdc2rsc_calc_err => sig_rdc2rsc_calc_err,
      sig_rdc2rsc_slverr => sig_rdc2rsc_slverr,
      sig_rdc2rsc_valid => sig_rdc2rsc_valid,
      sig_rsc2rdc_ready => sig_rsc2rdc_ready,
      sig_rsc2stat_status(0) => sig_rsc2stat_status(5),
      sig_s_ready_out_reg => I_RD_DATA_CNTL_n_6,
      sig_s_ready_out_reg_0 => sig_rdskid2rdc_tready,
      sig_status_reg_empty_reg => I_RD_STATUS_CNTLR_n_4,
      \sig_xfer_len_reg_reg[3]\(3 downto 0) => sig_pcc2data_len(3 downto 0),
      \sig_xfer_len_reg_reg[3]_0\ => I_MSTR_PCC_n_31
    );
I_RD_STATUS_CNTLR: entity work.design_1_myip_burst_read_test_0_1_axi_master_burst_rd_status_cntl
     port map (
      ip2bus_otputs(0) => ip2bus_otputs(0),
      m00_axi_aclk => m00_axi_aclk,
      p_0_in_0 => p_0_in_0,
      sig_cmd2all_doing_read => sig_cmd2all_doing_read,
      sig_doing_read_reg_reg => sig_doing_read_reg_reg_3,
      sig_error_sh_reg_reg(0) => sig_rsc2stat_status(5),
      sig_error_sh_reg_reg_0 => sig_error_sh_reg_reg,
      sig_next_calc_error_reg => sig_next_calc_error_reg,
      sig_next_cmd_cmplt_reg_reg => I_RD_STATUS_CNTLR_n_4,
      sig_pcc2data_cmd_valid => \^sig_pcc2data_cmd_valid\,
      sig_rd_sts_decerr_reg0 => sig_rd_sts_decerr_reg0,
      sig_rd_sts_interr_reg_reg_0 => sig_rd_sts_interr_reg_reg(0),
      sig_rd_sts_reg_full0 => sig_rd_sts_reg_full0,
      sig_rd_sts_tag_reg0 => sig_rd_sts_tag_reg0,
      sig_rdc2rsc_calc_err => sig_rdc2rsc_calc_err,
      sig_rdc2rsc_slverr => sig_rdc2rsc_slverr,
      sig_rdc2rsc_valid => sig_rdc2rsc_valid,
      sig_rsc2rdc_ready => sig_rsc2rdc_ready,
      sig_rsc2stat_status_valid => sig_rsc2stat_status_valid,
      sig_stat_error => sig_stat_error,
      sig_status_reg_empty => sig_status_reg_empty
    );
I_READ_STREAM_SKID_BUF: entity work.design_1_myip_burst_read_test_0_1_axi_master_burst_skid_buf
     port map (
      E(0) => E(0),
      bus2ip_mstrd_d(31 downto 0) => bus2ip_mstrd_d(31 downto 0),
      ip2bus_inputs(0) => ip2bus_inputs(0),
      m00_axi_aclk => m00_axi_aclk,
      m00_axi_rdata(31 downto 0) => m00_axi_rdata(31 downto 0),
      m00_axi_rlast => m00_axi_rlast,
      m00_axi_rvalid => m00_axi_rvalid,
      \out\ => sig_rdskid2rdc_tready,
      sig_init_reg => \GEN_OMIT_STORE_FORWARD.I_DATA_CNTL_STATUS_FIFO/sig_init_reg\,
      sig_llink2cmd_rd_busy => sig_llink2cmd_rd_busy,
      sig_llink_busy0 => sig_llink_busy0,
      sig_llink_busy_reg => sig_llink_busy_reg,
      sig_llink_busy_reg_0 => sig_llink_busy_reg_0,
      sig_llink_busy_reg_1 => sig_llink_busy_reg_1,
      sig_m_valid_out_reg_0 => sig_m_valid_out_reg,
      sig_next_calc_error_reg_reg => I_RD_DATA_CNTL_n_6,
      sig_next_eof_reg => sig_next_eof_reg,
      sig_rd_llink_enable => sig_rd_llink_enable,
      sig_rdc2rdskid_tlast => sig_rdc2rdskid_tlast,
      sig_rdwr_reset_reg_reg => \out\
    );
I_WRITE_MMAP_SKID_BUF: entity work.design_1_myip_burst_read_test_0_1_axi_master_burst_skid2mm_buf
     port map (
      m00_axi_aclk => m00_axi_aclk,
      m00_axi_wready => m00_axi_wready,
      m00_axi_wstrb(0) => m00_axi_wstrb(0),
      m00_axi_wvalid => m00_axi_wvalid,
      \out\ => p_0_in3_in,
      sig_init_reg => \GEN_OMIT_STORE_FORWARD.I_DATA_CNTL_STATUS_FIFO/sig_init_reg\,
      sig_init_reg_reg => I_WR_STATUS_CNTLR_n_2,
      sig_rdwr_reset_reg_reg => \out\
    );
I_WRITE_STRM_SKID_BUF: entity work.design_1_myip_burst_read_test_0_1_axi_master_burst_skid_buf_0
     port map (
      m00_axi_aclk => m00_axi_aclk,
      \out\ => p_0_in2_in,
      sig_init_reg => \GEN_OMIT_STORE_FORWARD.I_DATA_CNTL_STATUS_FIFO/sig_init_reg\,
      sig_rdwr_reset_reg_reg => I_WR_STATUS_CNTLR_n_3,
      sig_rdwr_reset_reg_reg_0 => \out\
    );
I_WR_STATUS_CNTLR: entity work.design_1_myip_burst_read_test_0_1_axi_master_burst_wr_status_cntl
     port map (
      m00_axi_aclk => m00_axi_aclk,
      m00_axi_bready => m00_axi_bready,
      m00_axi_bvalid => m00_axi_bvalid,
      m00_axi_wready => m00_axi_wready,
      \out\ => \out\,
      sig_init_reg => \GEN_OMIT_STORE_FORWARD.I_DATA_CNTL_STATUS_FIFO/sig_init_reg\,
      sig_m_valid_dup_reg => I_WR_STATUS_CNTLR_n_3,
      sig_m_valid_dup_reg_0 => p_0_in2_in,
      sig_s_ready_dup_reg => I_WR_STATUS_CNTLR_n_2,
      sig_s_ready_dup_reg_0 => p_0_in3_in
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
      DI(0) => \^gen_addr_32.sig_addr_cntr_lsh_reg[1]\,
      O(3) => \i_/i_/i__carry_n_4\,
      O(2) => \i_/i_/i__carry_n_5\,
      O(1) => \i_/i_/i__carry_n_6\,
      O(0) => \i_/i_/i__carry_n_7\,
      S(3) => I_MSTR_PCC_n_13,
      S(2) => I_MSTR_PCC_n_14,
      S(1) => I_MSTR_PCC_n_15,
      S(0) => I_MSTR_PCC_n_16
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
      S(3) => I_MSTR_PCC_n_17,
      S(2) => I_MSTR_PCC_n_18,
      S(1) => I_MSTR_PCC_n_19,
      S(0) => I_MSTR_PCC_n_20
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
      S(3) => I_MSTR_PCC_n_21,
      S(2) => I_MSTR_PCC_n_22,
      S(1) => I_MSTR_PCC_n_23,
      S(0) => I_MSTR_PCC_n_24
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
      S(3) => I_MSTR_PCC_n_25,
      S(2) => I_MSTR_PCC_n_26,
      S(1) => I_MSTR_PCC_n_27,
      S(0) => I_MSTR_PCC_n_28
    );
sig_doing_read_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => '1',
      D => sig_cmd2all_doing_read,
      Q => sig_doing_read_reg,
      R => \out\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_myip_burst_read_test_0_1_axi_master_burst is
  port (
    ip2bus_otputs : out STD_LOGIC_VECTOR ( 4 downto 0 );
    m00_axi_bready : out STD_LOGIC;
    bus2ip_mstrd_d : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axi_wvalid : out STD_LOGIC;
    m00_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axi_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m00_axi_arsize : out STD_LOGIC_VECTOR ( 0 to 0 );
    m00_axi_arburst : out STD_LOGIC_VECTOR ( 0 to 0 );
    m00_axi_arvalid : out STD_LOGIC;
    m00_axi_rready : out STD_LOGIC;
    m00_axi_wstrb : out STD_LOGIC_VECTOR ( 0 to 0 );
    ip2bus_inputs : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m00_axi_bvalid : in STD_LOGIC;
    m00_axi_aresetn : in STD_LOGIC;
    m00_axi_aclk : in STD_LOGIC;
    m00_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ip2bus_mst_length : in STD_LOGIC_VECTOR ( 11 downto 0 );
    ip2bus_mst_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axi_rlast : in STD_LOGIC;
    m00_axi_rvalid : in STD_LOGIC;
    m00_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m00_axi_wready : in STD_LOGIC;
    m00_axi_arready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_myip_burst_read_test_0_1_axi_master_burst : entity is "axi_master_burst";
end design_1_myip_burst_read_test_0_1_axi_master_burst;

architecture STRUCTURE of design_1_myip_burst_read_test_0_1_axi_master_burst is
  signal I_CMD_STATUS_MODULE_n_10 : STD_LOGIC;
  signal I_CMD_STATUS_MODULE_n_11 : STD_LOGIC;
  signal I_CMD_STATUS_MODULE_n_12 : STD_LOGIC;
  signal I_CMD_STATUS_MODULE_n_13 : STD_LOGIC;
  signal I_CMD_STATUS_MODULE_n_24 : STD_LOGIC;
  signal I_CMD_STATUS_MODULE_n_25 : STD_LOGIC;
  signal I_CMD_STATUS_MODULE_n_27 : STD_LOGIC;
  signal I_CMD_STATUS_MODULE_n_9 : STD_LOGIC;
  signal \I_MSTR_PCC/sig_btt_cntr0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \I_MSTR_PCC/sig_calc_error_pushed\ : STD_LOGIC;
  signal I_RD_LLINK_ADAPTER_n_4 : STD_LOGIC;
  signal \I_RD_STATUS_CNTLR/sig_rd_sts_tag_reg0\ : STD_LOGIC;
  signal I_RD_WR_CNTRL_MODULE_n_14 : STD_LOGIC;
  signal I_RD_WR_CNTRL_MODULE_n_20 : STD_LOGIC;
  signal I_RD_WR_CNTRL_MODULE_n_23 : STD_LOGIC;
  signal I_RD_WR_CNTRL_MODULE_n_24 : STD_LOGIC;
  signal \I_READ_STREAM_SKID_BUF/p_0_in2_in\ : STD_LOGIC;
  signal \I_READ_STREAM_SKID_BUF/sig_data_reg_out_en\ : STD_LOGIC;
  signal \^ip2bus_otputs\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal sig_cmd2all_doing_read : STD_LOGIC;
  signal sig_cmd2pcc_cmd_valid : STD_LOGIC;
  signal sig_cmd_mst_addr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal sig_cmd_mst_length : STD_LOGIC_VECTOR ( 11 downto 3 );
  signal sig_cmd_mstrd_req0 : STD_LOGIC;
  signal sig_cmd_type_req : STD_LOGIC;
  signal sig_doing_read_reg : STD_LOGIC;
  signal sig_llink2cmd_rd_busy : STD_LOGIC;
  signal sig_llink2rd_allow_addr_req : STD_LOGIC;
  signal sig_llink_busy0 : STD_LOGIC;
  signal sig_pcc2all_calc_err : STD_LOGIC;
  signal sig_pcc2data_calc_error : STD_LOGIC;
  signal sig_pcc2data_cmd_valid : STD_LOGIC;
  signal sig_rd2llink_strm_tvalid : STD_LOGIC;
  signal sig_rd_llink_enable : STD_LOGIC;
  signal sig_rdwr2llink_int_err : STD_LOGIC;
  signal sig_rsc2stat_status : STD_LOGIC_VECTOR ( 4 to 4 );
  signal sig_rsc2stat_status_valid : STD_LOGIC;
  signal sig_rst2cmd_stat_reset : STD_LOGIC;
  signal sig_rst2llink_reset : STD_LOGIC;
  signal sig_rst2rdwr_cntlr_reset : STD_LOGIC;
  signal sig_stat_error : STD_LOGIC;
  signal sig_status_reg_empty : STD_LOGIC;
begin
  ip2bus_otputs(4 downto 0) <= \^ip2bus_otputs\(4 downto 0);
I_CMD_STATUS_MODULE: entity work.design_1_myip_burst_read_test_0_1_axi_master_burst_cmd_status
     port map (
      D(2) => I_CMD_STATUS_MODULE_n_11,
      D(1) => I_CMD_STATUS_MODULE_n_12,
      D(0) => I_CMD_STATUS_MODULE_n_13,
      \GEN_ADDR_32.sig_addr_cntr_msh_reg[15]\(31 downto 0) => sig_cmd_mst_addr(31 downto 0),
      O(2 downto 0) => \I_MSTR_PCC/sig_btt_cntr0\(2 downto 0),
      Q(8 downto 0) => sig_cmd_mst_length(11 downto 3),
      SR(0) => sig_cmd_mstrd_req0,
      ip2bus_inputs(1 downto 0) => ip2bus_inputs(1 downto 0),
      ip2bus_mst_addr(31 downto 0) => ip2bus_mst_addr(31 downto 0),
      ip2bus_mst_length(11 downto 0) => ip2bus_mst_length(11 downto 0),
      ip2bus_otputs(3) => \^ip2bus_otputs\(4),
      ip2bus_otputs(2 downto 0) => \^ip2bus_otputs\(2 downto 0),
      m00_axi_aclk => m00_axi_aclk,
      \out\ => sig_rst2cmd_stat_reset,
      sig_calc_error_pushed => \I_MSTR_PCC/sig_calc_error_pushed\,
      sig_calc_error_reg_reg => I_CMD_STATUS_MODULE_n_27,
      sig_cmd2all_doing_read => sig_cmd2all_doing_read,
      sig_cmd2pcc_cmd_valid => sig_cmd2pcc_cmd_valid,
      sig_cmd_full_reg_reg_0 => I_CMD_STATUS_MODULE_n_10,
      sig_cmd_full_reg_reg_1 => I_RD_WR_CNTRL_MODULE_n_20,
      sig_cmd_type_req => sig_cmd_type_req,
      sig_doing_read_reg => sig_doing_read_reg,
      sig_int_error_pulse_reg_reg_0 => I_CMD_STATUS_MODULE_n_24,
      sig_llink2cmd_rd_busy => sig_llink2cmd_rd_busy,
      sig_next_eof_reg_reg => I_CMD_STATUS_MODULE_n_25,
      sig_pcc2all_calc_err => sig_pcc2all_calc_err,
      sig_pcc2data_calc_error => sig_pcc2data_calc_error,
      sig_pcc2data_cmd_valid => sig_pcc2data_cmd_valid,
      sig_rd_addr_valid_reg_reg => I_CMD_STATUS_MODULE_n_9,
      sig_rd_llink_enable => sig_rd_llink_enable,
      sig_rd_sts_slverr_reg_reg => I_RD_WR_CNTRL_MODULE_n_23,
      sig_rd_sts_tag_reg0 => \I_RD_STATUS_CNTLR/sig_rd_sts_tag_reg0\,
      sig_rdwr2llink_int_err => sig_rdwr2llink_int_err,
      sig_rdwr_reset_reg_reg => sig_rst2rdwr_cntlr_reset,
      sig_rsc2stat_status(0) => sig_rsc2stat_status(4),
      sig_rsc2stat_status_valid => sig_rsc2stat_status_valid,
      sig_sm_halt_reg_reg => I_RD_WR_CNTRL_MODULE_n_14,
      sig_stat_error => sig_stat_error,
      sig_status_reg_empty => sig_status_reg_empty
    );
I_RD_LLINK_ADAPTER: entity work.design_1_myip_burst_read_test_0_1_axi_master_burst_rd_llink
     port map (
      E(0) => \I_READ_STREAM_SKID_BUF/sig_data_reg_out_en\,
      ip2bus_inputs(0) => ip2bus_inputs(2),
      ip2bus_otputs(0) => \^ip2bus_otputs\(3),
      m00_axi_aclk => m00_axi_aclk,
      \out\ => sig_rst2llink_reset,
      sig_cmd2all_doing_read => sig_cmd2all_doing_read,
      sig_doing_read_reg => sig_doing_read_reg,
      sig_llink2cmd_rd_busy => sig_llink2cmd_rd_busy,
      sig_llink2rd_allow_addr_req => sig_llink2rd_allow_addr_req,
      sig_llink_busy0 => sig_llink_busy0,
      sig_m_valid_dup_reg => \I_READ_STREAM_SKID_BUF/p_0_in2_in\,
      sig_m_valid_out_reg => I_RD_LLINK_ADAPTER_n_4,
      sig_m_valid_out_reg_0 => I_RD_WR_CNTRL_MODULE_n_24,
      sig_m_valid_out_reg_1 => sig_rd2llink_strm_tvalid,
      sig_rdwr2llink_int_err => sig_rdwr2llink_int_err
    );
I_RD_WR_CNTRL_MODULE: entity work.design_1_myip_burst_read_test_0_1_axi_master_burst_rd_wr_cntlr
     port map (
      D(2) => I_CMD_STATUS_MODULE_n_11,
      D(1) => I_CMD_STATUS_MODULE_n_12,
      D(0) => I_CMD_STATUS_MODULE_n_13,
      E(0) => \I_READ_STREAM_SKID_BUF/sig_data_reg_out_en\,
      \GEN_ADDR_32.sig_addr_cntr_lsh_reg[1]\ => I_RD_WR_CNTRL_MODULE_n_14,
      O(2 downto 0) => \I_MSTR_PCC/sig_btt_cntr0\(2 downto 0),
      Q(8 downto 0) => sig_cmd_mst_length(11 downto 3),
      SR(0) => sig_cmd_mstrd_req0,
      bus2ip_mstrd_d(31 downto 0) => bus2ip_mstrd_d(31 downto 0),
      ip2bus_inputs(0) => ip2bus_inputs(2),
      ip2bus_otputs(0) => \^ip2bus_otputs\(4),
      m00_axi_aclk => m00_axi_aclk,
      m00_axi_araddr(31 downto 0) => m00_axi_araddr(31 downto 0),
      m00_axi_arburst(0) => m00_axi_arburst(0),
      m00_axi_arlen(3 downto 0) => m00_axi_arlen(3 downto 0),
      m00_axi_arready => m00_axi_arready,
      m00_axi_arsize(0) => m00_axi_arsize(0),
      m00_axi_arvalid => m00_axi_arvalid,
      m00_axi_bready => m00_axi_bready,
      m00_axi_bvalid => m00_axi_bvalid,
      m00_axi_rdata(31 downto 0) => m00_axi_rdata(31 downto 0),
      m00_axi_rlast => m00_axi_rlast,
      m00_axi_rready => m00_axi_rready,
      m00_axi_rresp(1 downto 0) => m00_axi_rresp(1 downto 0),
      m00_axi_rvalid => m00_axi_rvalid,
      m00_axi_wready => m00_axi_wready,
      m00_axi_wstrb(0) => m00_axi_wstrb(0),
      m00_axi_wvalid => m00_axi_wvalid,
      \out\ => sig_rst2rdwr_cntlr_reset,
      sig_calc_error_pushed => \I_MSTR_PCC/sig_calc_error_pushed\,
      sig_cmd2all_doing_read => sig_cmd2all_doing_read,
      sig_cmd2pcc_cmd_valid => sig_cmd2pcc_cmd_valid,
      sig_cmd_empty_reg_reg => I_CMD_STATUS_MODULE_n_10,
      \sig_cmd_mst_addr_reg[31]\(31 downto 0) => sig_cmd_mst_addr(31 downto 0),
      sig_cmd_reset_reg_reg => sig_rst2cmd_stat_reset,
      sig_cmd_type_req => sig_cmd_type_req,
      sig_cmd_type_req_reg => I_CMD_STATUS_MODULE_n_27,
      sig_doing_read_reg => sig_doing_read_reg,
      sig_doing_read_reg_reg_0 => I_RD_WR_CNTRL_MODULE_n_20,
      sig_doing_read_reg_reg_1 => I_CMD_STATUS_MODULE_n_9,
      sig_doing_read_reg_reg_2 => I_CMD_STATUS_MODULE_n_25,
      sig_doing_read_reg_reg_3 => I_CMD_STATUS_MODULE_n_24,
      sig_error_sh_reg_reg => I_RD_WR_CNTRL_MODULE_n_23,
      sig_llink2cmd_rd_busy => sig_llink2cmd_rd_busy,
      sig_llink2rd_allow_addr_req => sig_llink2rd_allow_addr_req,
      sig_llink_busy0 => sig_llink_busy0,
      sig_llink_busy_reg => sig_rd2llink_strm_tvalid,
      sig_llink_busy_reg_0 => I_RD_WR_CNTRL_MODULE_n_24,
      sig_llink_busy_reg_1 => I_RD_LLINK_ADAPTER_n_4,
      sig_m_valid_out_reg => \I_READ_STREAM_SKID_BUF/p_0_in2_in\,
      sig_pcc2all_calc_err => sig_pcc2all_calc_err,
      sig_pcc2data_calc_error => sig_pcc2data_calc_error,
      sig_pcc2data_cmd_valid => sig_pcc2data_cmd_valid,
      sig_rd_llink_enable => sig_rd_llink_enable,
      sig_rd_sts_interr_reg_reg(0) => sig_rsc2stat_status(4),
      sig_rd_sts_tag_reg0 => \I_RD_STATUS_CNTLR/sig_rd_sts_tag_reg0\,
      sig_rsc2stat_status_valid => sig_rsc2stat_status_valid,
      sig_stat_error => sig_stat_error,
      sig_status_reg_empty => sig_status_reg_empty
    );
I_RESET_MODULE: entity work.design_1_myip_burst_read_test_0_1_axi_master_burst_reset
     port map (
      \INFERRED_GEN.cnt_i_reg[0]\ => sig_rst2rdwr_cntlr_reset,
      m00_axi_aclk => m00_axi_aclk,
      m00_axi_aresetn => m00_axi_aresetn,
      \out\ => sig_rst2cmd_stat_reset,
      sig_rd_error_reg_reg => sig_rst2llink_reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_myip_burst_read_test_0_1_myip_burst_read_test_v1_0 is
  port (
    ip2bus_otputs : out STD_LOGIC_VECTOR ( 4 downto 0 );
    m00_axi_bready : out STD_LOGIC;
    bus2ip_mstrd_d : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axi_wvalid : out STD_LOGIC;
    m00_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axi_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m00_axi_arsize : out STD_LOGIC_VECTOR ( 0 to 0 );
    m00_axi_arburst : out STD_LOGIC_VECTOR ( 0 to 0 );
    m00_axi_arvalid : out STD_LOGIC;
    m00_axi_rready : out STD_LOGIC;
    m00_axi_wstrb : out STD_LOGIC_VECTOR ( 0 to 0 );
    ip2bus_inputs : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m00_axi_bvalid : in STD_LOGIC;
    m00_axi_aresetn : in STD_LOGIC;
    m00_axi_aclk : in STD_LOGIC;
    m00_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ip2bus_mst_length : in STD_LOGIC_VECTOR ( 11 downto 0 );
    ip2bus_mst_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axi_rlast : in STD_LOGIC;
    m00_axi_rvalid : in STD_LOGIC;
    m00_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m00_axi_wready : in STD_LOGIC;
    m00_axi_arready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_myip_burst_read_test_0_1_myip_burst_read_test_v1_0 : entity is "myip_burst_read_test_v1_0";
end design_1_myip_burst_read_test_0_1_myip_burst_read_test_v1_0;

architecture STRUCTURE of design_1_myip_burst_read_test_0_1_myip_burst_read_test_v1_0 is
begin
myip_burst_test_v1_0_M00_AXI_inst: entity work.design_1_myip_burst_read_test_0_1_axi_master_burst
     port map (
      bus2ip_mstrd_d(31 downto 0) => bus2ip_mstrd_d(31 downto 0),
      ip2bus_inputs(2 downto 0) => ip2bus_inputs(2 downto 0),
      ip2bus_mst_addr(31 downto 0) => ip2bus_mst_addr(31 downto 0),
      ip2bus_mst_length(11 downto 0) => ip2bus_mst_length(11 downto 0),
      ip2bus_otputs(4 downto 0) => ip2bus_otputs(4 downto 0),
      m00_axi_aclk => m00_axi_aclk,
      m00_axi_araddr(31 downto 0) => m00_axi_araddr(31 downto 0),
      m00_axi_arburst(0) => m00_axi_arburst(0),
      m00_axi_aresetn => m00_axi_aresetn,
      m00_axi_arlen(3 downto 0) => m00_axi_arlen(3 downto 0),
      m00_axi_arready => m00_axi_arready,
      m00_axi_arsize(0) => m00_axi_arsize(0),
      m00_axi_arvalid => m00_axi_arvalid,
      m00_axi_bready => m00_axi_bready,
      m00_axi_bvalid => m00_axi_bvalid,
      m00_axi_rdata(31 downto 0) => m00_axi_rdata(31 downto 0),
      m00_axi_rlast => m00_axi_rlast,
      m00_axi_rready => m00_axi_rready,
      m00_axi_rresp(1 downto 0) => m00_axi_rresp(1 downto 0),
      m00_axi_rvalid => m00_axi_rvalid,
      m00_axi_wready => m00_axi_wready,
      m00_axi_wstrb(0) => m00_axi_wstrb(0),
      m00_axi_wvalid => m00_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_myip_burst_read_test_0_1 is
  port (
    ip2bus_mst_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ip2bus_mst_length : in STD_LOGIC_VECTOR ( 11 downto 0 );
    bus2ip_mstrd_d : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ip2bus_inputs : in STD_LOGIC_VECTOR ( 4 downto 0 );
    ip2bus_otputs : out STD_LOGIC_VECTOR ( 5 downto 0 );
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
  attribute NotValidForBitStream of design_1_myip_burst_read_test_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_myip_burst_read_test_0_1 : entity is "design_1_myip_burst_read_test_0_1,myip_burst_read_test_v1_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_myip_burst_read_test_0_1 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_myip_burst_read_test_0_1 : entity is "myip_burst_read_test_v1_0,Vivado 2017.1";
end design_1_myip_burst_read_test_0_1;

architecture STRUCTURE of design_1_myip_burst_read_test_0_1 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^ip2bus_otputs\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^m00_axi_araddr\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^m00_axi_arburst\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^m00_axi_arlen\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^m00_axi_arsize\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \^m00_axi_wstrb\ : STD_LOGIC_VECTOR ( 2 to 2 );
begin
  ip2bus_otputs(5) <= \<const0>\;
  ip2bus_otputs(4 downto 0) <= \^ip2bus_otputs\(4 downto 0);
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
  m00_axi_aruser(0) <= \<const1>\;
  m00_axi_awaddr(31 downto 0) <= \^m00_axi_araddr\(31 downto 0);
  m00_axi_awburst(1) <= \<const0>\;
  m00_axi_awburst(0) <= \^m00_axi_arburst\(0);
  m00_axi_awcache(3) <= \<const0>\;
  m00_axi_awcache(2) <= \<const0>\;
  m00_axi_awcache(1) <= \<const1>\;
  m00_axi_awcache(0) <= \<const1>\;
  m00_axi_awid(0) <= \<const0>\;
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
  m00_axi_awuser(0) <= \<const0>\;
  m00_axi_awvalid <= \<const0>\;
  m00_axi_wdata(31) <= \<const0>\;
  m00_axi_wdata(30) <= \<const0>\;
  m00_axi_wdata(29) <= \<const0>\;
  m00_axi_wdata(28) <= \<const0>\;
  m00_axi_wdata(27) <= \<const0>\;
  m00_axi_wdata(26) <= \<const0>\;
  m00_axi_wdata(25) <= \<const0>\;
  m00_axi_wdata(24) <= \<const0>\;
  m00_axi_wdata(23) <= \<const0>\;
  m00_axi_wdata(22) <= \<const0>\;
  m00_axi_wdata(21) <= \<const0>\;
  m00_axi_wdata(20) <= \<const0>\;
  m00_axi_wdata(19) <= \<const0>\;
  m00_axi_wdata(18) <= \<const0>\;
  m00_axi_wdata(17) <= \<const0>\;
  m00_axi_wdata(16) <= \<const0>\;
  m00_axi_wdata(15) <= \<const0>\;
  m00_axi_wdata(14) <= \<const0>\;
  m00_axi_wdata(13) <= \<const0>\;
  m00_axi_wdata(12) <= \<const0>\;
  m00_axi_wdata(11) <= \<const0>\;
  m00_axi_wdata(10) <= \<const0>\;
  m00_axi_wdata(9) <= \<const0>\;
  m00_axi_wdata(8) <= \<const0>\;
  m00_axi_wdata(7) <= \<const0>\;
  m00_axi_wdata(6) <= \<const0>\;
  m00_axi_wdata(5) <= \<const0>\;
  m00_axi_wdata(4) <= \<const0>\;
  m00_axi_wdata(3) <= \<const0>\;
  m00_axi_wdata(2) <= \<const0>\;
  m00_axi_wdata(1) <= \<const0>\;
  m00_axi_wdata(0) <= \<const0>\;
  m00_axi_wlast <= \<const0>\;
  m00_axi_wstrb(3) <= \^m00_axi_wstrb\(2);
  m00_axi_wstrb(2) <= \^m00_axi_wstrb\(2);
  m00_axi_wstrb(1) <= \^m00_axi_wstrb\(2);
  m00_axi_wstrb(0) <= \^m00_axi_wstrb\(2);
  m00_axi_error <= 'Z';
  m00_axi_txn_done <= 'Z';
  m00_axi_wuser(0) <= 'Z';
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.design_1_myip_burst_read_test_0_1_myip_burst_read_test_v1_0
     port map (
      bus2ip_mstrd_d(31 downto 0) => bus2ip_mstrd_d(31 downto 0),
      ip2bus_inputs(2 downto 0) => ip2bus_inputs(2 downto 0),
      ip2bus_mst_addr(31 downto 0) => ip2bus_mst_addr(31 downto 0),
      ip2bus_mst_length(11 downto 0) => ip2bus_mst_length(11 downto 0),
      ip2bus_otputs(4 downto 0) => \^ip2bus_otputs\(4 downto 0),
      m00_axi_aclk => m00_axi_aclk,
      m00_axi_araddr(31 downto 0) => \^m00_axi_araddr\(31 downto 0),
      m00_axi_arburst(0) => \^m00_axi_arburst\(0),
      m00_axi_aresetn => m00_axi_aresetn,
      m00_axi_arlen(3 downto 0) => \^m00_axi_arlen\(3 downto 0),
      m00_axi_arready => m00_axi_arready,
      m00_axi_arsize(0) => \^m00_axi_arsize\(1),
      m00_axi_arvalid => m00_axi_arvalid,
      m00_axi_bready => m00_axi_bready,
      m00_axi_bvalid => m00_axi_bvalid,
      m00_axi_rdata(31 downto 0) => m00_axi_rdata(31 downto 0),
      m00_axi_rlast => m00_axi_rlast,
      m00_axi_rready => m00_axi_rready,
      m00_axi_rresp(1 downto 0) => m00_axi_rresp(1 downto 0),
      m00_axi_rvalid => m00_axi_rvalid,
      m00_axi_wready => m00_axi_wready,
      m00_axi_wstrb(0) => \^m00_axi_wstrb\(2),
      m00_axi_wvalid => m00_axi_wvalid
    );
end STRUCTURE;
