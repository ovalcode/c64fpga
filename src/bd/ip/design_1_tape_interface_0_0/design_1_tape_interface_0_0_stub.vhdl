-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
-- Date        : Sun Jun 14 10:35:13 2020
-- Host        : johan-Latitude-E5550 running 64-bit Ubuntu 16.04.5 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/johan/v20/c64fpga/src/bd/ip/design_1_tape_interface_0_0/design_1_tape_interface_0_0_stub.vhdl
-- Design      : design_1_tape_interface_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_tape_interface_0_0 is
  Port ( 
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

end design_1_tape_interface_0_0;

architecture stub of design_1_tape_interface_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,clk_1_mhz,restart,reset,ip2bus_mst_addr[31:0],ip2bus_mst_length[11:0],ip2bus_mstrd_d[31:0],ip2bus_inputs[4:0],ip2bus_otputs[5:0],motor_control,pwm";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "top,Vivado 2019.1";
begin
end;
