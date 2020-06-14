-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
-- Date        : Sun Jun 14 10:33:46 2020
-- Host        : johan-Latitude-E5550 running 64-bit Ubuntu 16.04.5 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/johan/v20/c64fpga/src/bd/ip/design_1_vga_tst_c64_0_1/design_1_vga_tst_c64_0_1_stub.vhdl
-- Design      : design_1_vga_tst_c64_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_vga_tst_c64_0_1 is
  Port ( 
    clk : in STD_LOGIC;
    clk_axi : in STD_LOGIC;
    reset : in STD_LOGIC;
    vert_sync : out STD_LOGIC;
    horiz_sync : out STD_LOGIC;
    red : out STD_LOGIC_VECTOR ( 4 downto 0 );
    green : out STD_LOGIC_VECTOR ( 5 downto 0 );
    blue : out STD_LOGIC_VECTOR ( 4 downto 0 );
    ip2bus_mst_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ip2bus_mst_length : out STD_LOGIC_VECTOR ( 11 downto 0 );
    ip2bus_mstrd_d : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ip2bus_inputs : out STD_LOGIC_VECTOR ( 4 downto 0 );
    ip2bus_otputs : in STD_LOGIC_VECTOR ( 5 downto 0 );
    c64_mode_in : in STD_LOGIC;
    rst_status : out STD_LOGIC;
    horiz_pos_debug : out STD_LOGIC_VECTOR ( 10 downto 0 );
    vert_pos_debug : out STD_LOGIC_VECTOR ( 10 downto 0 );
    start_debug : out STD_LOGIC;
    data_in_debug : out STD_LOGIC_VECTOR ( 23 downto 0 );
    data_out_debug : out STD_LOGIC_VECTOR ( 23 downto 0 );
    next_in_debug : out STD_LOGIC;
    next_out_debug : out STD_LOGIC;
    data_valid_in_debug : out STD_LOGIC;
    data_valid_out_debug : out STD_LOGIC;
    shift_reg_debug : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_data_out_debug : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_read_debug : out STD_LOGIC;
    enable_write_async_debug : out STD_LOGIC;
    address_debug : out STD_LOGIC_VECTOR ( 31 downto 0 );
    fifo_write_address_debug : out STD_LOGIC_VECTOR ( 7 downto 0 );
    fifo_read_address_debug : out STD_LOGIC_VECTOR ( 7 downto 0 );
    fifo_full_debug : out STD_LOGIC;
    fifo_empty_debug : out STD_LOGIC;
    vert_sync_delayed_1_debug : out STD_LOGIC;
    vert_sync_delayed_2_debug : out STD_LOGIC;
    vert_sync_delayed_3_debug : out STD_LOGIC;
    vert_sync_delayed_4_debug : out STD_LOGIC;
    vert_sync_delayed_5_debug : out STD_LOGIC
  );

end design_1_vga_tst_c64_0_1;

architecture stub of design_1_vga_tst_c64_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,clk_axi,reset,vert_sync,horiz_sync,red[4:0],green[5:0],blue[4:0],ip2bus_mst_addr[31:0],ip2bus_mst_length[11:0],ip2bus_mstrd_d[31:0],ip2bus_inputs[4:0],ip2bus_otputs[5:0],c64_mode_in,rst_status,horiz_pos_debug[10:0],vert_pos_debug[10:0],start_debug,data_in_debug[23:0],data_out_debug[23:0],next_in_debug,next_out_debug,data_valid_in_debug,data_valid_out_debug,shift_reg_debug[31:0],axi_data_out_debug[31:0],axi_read_debug,enable_write_async_debug,address_debug[31:0],fifo_write_address_debug[7:0],fifo_read_address_debug[7:0],fifo_full_debug,fifo_empty_debug,vert_sync_delayed_1_debug,vert_sync_delayed_2_debug,vert_sync_delayed_3_debug,vert_sync_delayed_4_debug,vert_sync_delayed_5_debug";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "vga,Vivado 2019.1";
begin
end;
