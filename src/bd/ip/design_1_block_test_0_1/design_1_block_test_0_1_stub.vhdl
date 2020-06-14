-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
-- Date        : Sun Jun 14 10:38:51 2020
-- Host        : johan-Latitude-E5550 running 64-bit Ubuntu 16.04.5 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/johan/v20/c64fpga/src/bd/ip/design_1_block_test_0_1/design_1_block_test_0_1_stub.vhdl
-- Design      : design_1_block_test_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_block_test_0_1 is
  Port ( 
    clk : in STD_LOGIC;
    axi_clk_in : in STD_LOGIC;
    addr_a : out STD_LOGIC_VECTOR ( 15 downto 0 );
    data_a : out STD_LOGIC_VECTOR ( 7 downto 0 );
    c_data_debug : out STD_LOGIC_VECTOR ( 7 downto 0 );
    cpu_data_debug : out STD_LOGIC_VECTOR ( 7 downto 0 );
    we_debug : out STD_LOGIC;
    addr_b : out STD_LOGIC_VECTOR ( 15 downto 0 );
    data_b : out STD_LOGIC_VECTOR ( 7 downto 0 );
    x_pos_debug : out STD_LOGIC_VECTOR ( 8 downto 0 );
    cycle_in_line_debug : out STD_LOGIC_VECTOR ( 6 downto 0 );
    clk_counter_debug : out STD_LOGIC_VECTOR ( 2 downto 0 );
    c64reset_debug : out STD_LOGIC;
    flag1_debug : out STD_LOGIC;
    flag1_delayed_debug : out STD_LOGIC;
    irq_debug : out STD_LOGIC;
    addr_debug : out STD_LOGIC;
    proc_rst : in STD_LOGIC;
    reset_cpu : in STD_LOGIC;
    locked : in STD_LOGIC;
    proc_rst_neg : out STD_LOGIC;
    clk_2_mhz_debug : out STD_LOGIC;
    out_rgb : out STD_LOGIC_VECTOR ( 23 downto 0 );
    blank_signal : out STD_LOGIC;
    ip2bus_mst_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ip2bus_mst_length : out STD_LOGIC_VECTOR ( 11 downto 0 );
    clk_1_mhz : out STD_LOGIC;
    pwm : in STD_LOGIC;
    joybits : in STD_LOGIC_VECTOR ( 4 downto 0 );
    joybits2 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    flag1 : in STD_LOGIC;
    ip2bus_mstwr_d : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ip2bus_inputs : out STD_LOGIC_VECTOR ( 4 downto 0 );
    ip2bus_otputs : in STD_LOGIC_VECTOR ( 5 downto 0 );
    slave_0_reg : in STD_LOGIC_VECTOR ( 31 downto 0 );
    slave_1_reg : in STD_LOGIC_VECTOR ( 31 downto 0 );
    tape_button : in STD_LOGIC;
    motor_control : out STD_LOGIC;
    count_in_buf : out STD_LOGIC_VECTOR ( 12 downto 0 );
    read : out STD_LOGIC;
    audio_out : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );

end design_1_block_test_0_1;

architecture stub of design_1_block_test_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,axi_clk_in,addr_a[15:0],data_a[7:0],c_data_debug[7:0],cpu_data_debug[7:0],we_debug,addr_b[15:0],data_b[7:0],x_pos_debug[8:0],cycle_in_line_debug[6:0],clk_counter_debug[2:0],c64reset_debug,flag1_debug,flag1_delayed_debug,irq_debug,addr_debug,proc_rst,reset_cpu,locked,proc_rst_neg,clk_2_mhz_debug,out_rgb[23:0],blank_signal,ip2bus_mst_addr[31:0],ip2bus_mst_length[11:0],clk_1_mhz,pwm,joybits[4:0],joybits2[4:0],flag1,ip2bus_mstwr_d[31:0],ip2bus_inputs[4:0],ip2bus_otputs[5:0],slave_0_reg[31:0],slave_1_reg[31:0],tape_button,motor_control,count_in_buf[12:0],read,audio_out[15:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "block_test,Vivado 2019.1";
begin
end;
