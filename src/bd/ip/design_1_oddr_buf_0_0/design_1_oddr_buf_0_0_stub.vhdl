-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
-- Date        : Sun Jun 14 10:42:59 2020
-- Host        : johan-Latitude-E5550 running 64-bit Ubuntu 16.04.5 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/johan/v20/c64fpga/src/bd/ip/design_1_oddr_buf_0_0/design_1_oddr_buf_0_0_stub.vhdl
-- Design      : design_1_oddr_buf_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_oddr_buf_0_0 is
  Port ( 
    Mlck_O : out STD_LOGIC;
    clk_in : in STD_LOGIC
  );

end design_1_oddr_buf_0_0;

architecture stub of design_1_oddr_buf_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "Mlck_O,clk_in";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "oddr_buf,Vivado 2019.1";
begin
end;
