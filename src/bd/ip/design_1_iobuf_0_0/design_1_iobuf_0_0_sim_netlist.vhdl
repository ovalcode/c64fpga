-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
-- Date        : Sun Jun 14 10:42:43 2020
-- Host        : johan-Latitude-E5550 running 64-bit Ubuntu 16.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top design_1_iobuf_0_0 -prefix
--               design_1_iobuf_0_0_ design_1_iobuf_1_0_sim_netlist.vhdl
-- Design      : design_1_iobuf_1_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_iobuf_0_0_iobuf is
  port (
    \out\ : out STD_LOGIC;
    pin : inout STD_LOGIC;
    \in\ : in STD_LOGIC;
    tristate : in STD_LOGIC
  );
end design_1_iobuf_0_0_iobuf;

architecture STRUCTURE of design_1_iobuf_0_0_iobuf is
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of IOBUF_inst : label is "PRIMITIVE";
begin
IOBUF_inst: unisim.vcomponents.IOBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => \in\,
      IO => pin,
      O => \out\,
      T => tristate
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_iobuf_0_0 is
  port (
    \out\ : out STD_LOGIC;
    \in\ : in STD_LOGIC;
    tristate : in STD_LOGIC;
    pin : inout STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_iobuf_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_iobuf_0_0 : entity is "design_1_iobuf_1_0,iobuf,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_iobuf_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_iobuf_0_0 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_iobuf_0_0 : entity is "iobuf,Vivado 2019.1";
end design_1_iobuf_0_0;

architecture STRUCTURE of design_1_iobuf_0_0 is
begin
inst: entity work.design_1_iobuf_0_0_iobuf
     port map (
      \in\ => \in\,
      \out\ => \out\,
      pin => pin,
      tristate => tristate
    );
end STRUCTURE;
