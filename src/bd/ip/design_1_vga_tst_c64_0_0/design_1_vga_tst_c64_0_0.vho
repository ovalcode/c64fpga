-- (c) Copyright 1995-2020 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: user.org:user:vga_tst_c64:1.0
-- IP Revision: 11

-- The following code must appear in the VHDL architecture header.

------------- Begin Cut here for COMPONENT Declaration ------ COMP_TAG
COMPONENT design_1_vga_tst_c64_0_0
  PORT (
    clk : IN STD_LOGIC;
    clk_axi : IN STD_LOGIC;
    reset : IN STD_LOGIC;
    vert_sync : OUT STD_LOGIC;
    horiz_sync : OUT STD_LOGIC;
    red : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    green : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
    blue : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    ip2bus_mst_addr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ip2bus_mst_length : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    ip2bus_mstrd_d : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    ip2bus_inputs : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    ip2bus_otputs : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
    c64_mode_in : IN STD_LOGIC;
    rst_status : OUT STD_LOGIC;
    horiz_pos_debug : OUT STD_LOGIC_VECTOR(10 DOWNTO 0);
    vert_pos_debug : OUT STD_LOGIC_VECTOR(10 DOWNTO 0);
    start_debug : OUT STD_LOGIC;
    data_in_debug : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
    data_out_debug : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
    next_in_debug : OUT STD_LOGIC;
    next_out_debug : OUT STD_LOGIC;
    data_valid_in_debug : OUT STD_LOGIC;
    data_valid_out_debug : OUT STD_LOGIC;
    shift_reg_debug : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    axi_data_out_debug : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    axi_read_debug : OUT STD_LOGIC;
    enable_write_async_debug : OUT STD_LOGIC;
    address_debug : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    fifo_write_address_debug : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    fifo_read_address_debug : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    fifo_full_debug : OUT STD_LOGIC;
    fifo_empty_debug : OUT STD_LOGIC;
    vert_sync_delayed_1_debug : OUT STD_LOGIC;
    vert_sync_delayed_2_debug : OUT STD_LOGIC;
    vert_sync_delayed_3_debug : OUT STD_LOGIC;
    vert_sync_delayed_4_debug : OUT STD_LOGIC;
    vert_sync_delayed_5_debug : OUT STD_LOGIC
  );
END COMPONENT;
-- COMP_TAG_END ------ End COMPONENT Declaration ------------

-- The following code must appear in the VHDL architecture
-- body. Substitute your own instance name and net names.

------------- Begin Cut here for INSTANTIATION Template ----- INST_TAG
your_instance_name : design_1_vga_tst_c64_0_0
  PORT MAP (
    clk => clk,
    clk_axi => clk_axi,
    reset => reset,
    vert_sync => vert_sync,
    horiz_sync => horiz_sync,
    red => red,
    green => green,
    blue => blue,
    ip2bus_mst_addr => ip2bus_mst_addr,
    ip2bus_mst_length => ip2bus_mst_length,
    ip2bus_mstrd_d => ip2bus_mstrd_d,
    ip2bus_inputs => ip2bus_inputs,
    ip2bus_otputs => ip2bus_otputs,
    c64_mode_in => c64_mode_in,
    rst_status => rst_status,
    horiz_pos_debug => horiz_pos_debug,
    vert_pos_debug => vert_pos_debug,
    start_debug => start_debug,
    data_in_debug => data_in_debug,
    data_out_debug => data_out_debug,
    next_in_debug => next_in_debug,
    next_out_debug => next_out_debug,
    data_valid_in_debug => data_valid_in_debug,
    data_valid_out_debug => data_valid_out_debug,
    shift_reg_debug => shift_reg_debug,
    axi_data_out_debug => axi_data_out_debug,
    axi_read_debug => axi_read_debug,
    enable_write_async_debug => enable_write_async_debug,
    address_debug => address_debug,
    fifo_write_address_debug => fifo_write_address_debug,
    fifo_read_address_debug => fifo_read_address_debug,
    fifo_full_debug => fifo_full_debug,
    fifo_empty_debug => fifo_empty_debug,
    vert_sync_delayed_1_debug => vert_sync_delayed_1_debug,
    vert_sync_delayed_2_debug => vert_sync_delayed_2_debug,
    vert_sync_delayed_3_debug => vert_sync_delayed_3_debug,
    vert_sync_delayed_4_debug => vert_sync_delayed_4_debug,
    vert_sync_delayed_5_debug => vert_sync_delayed_5_debug
  );
-- INST_TAG_END ------ End INSTANTIATION Template ---------

