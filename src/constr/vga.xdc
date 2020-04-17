##Audio Codec/external EEPROM IIC bus
set_property -dict {PACKAGE_PIN N18 IOSTANDARD LVCMOS33} [get_ports ac_scl]
set_property -dict {PACKAGE_PIN N17 IOSTANDARD LVCMOS33} [get_ports ac_sda]

set_property -dict {PACKAGE_PIN K18 IOSTANDARD LVCMOS33} [get_ports ac_bclk]
set_property -dict {PACKAGE_PIN T19 IOSTANDARD LVCMOS33} [get_ports ac_mclk]
set_property -dict {PACKAGE_PIN P18 IOSTANDARD LVCMOS33} [get_ports ac_muten]
set_property -dict {PACKAGE_PIN M17 IOSTANDARD LVCMOS33} [get_ports ac_pbdat]
set_property -dict {PACKAGE_PIN L17 IOSTANDARD LVCMOS33} [get_ports ac_pblrc]
#set_property -dict {PACKAGE_PIN K17 IOSTANDARD LVCMOS33} [get_ports ac_recdat]
set_property -dict {PACKAGE_PIN M18 IOSTANDARD LVCMOS33} [get_ports ac_reclrc]


#VGA Connector
#IO_L7P_T1_AD2P_35
set_property PACKAGE_PIN M19 [get_ports {vga_r[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_r[0]}]

#IO_L9N_T1_DQS_AD3N_35
set_property PACKAGE_PIN L20 [get_ports {vga_r[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_r[1]}]

#IO_L17P_T2_AD5P_35
set_property PACKAGE_PIN J20 [get_ports {vga_r[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_r[2]}]

#IO_L18N_T2_AD13N_35
set_property PACKAGE_PIN G20 [get_ports {vga_r[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_r[3]}]

#IO_L15P_T2_DQS_AD12P_35
set_property PACKAGE_PIN F19 [get_ports {vga_r[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_r[4]}]

#IO_L14N_T2_AD4N_SRCC_35
set_property PACKAGE_PIN H18 [get_ports {vga_g[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_g[0]}]

#IO_L14P_T2_SRCC_34
set_property PACKAGE_PIN N20 [get_ports {vga_g[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_g[1]}]

#IO_L9P_T1_DQS_AD3P_35
set_property PACKAGE_PIN L19 [get_ports {vga_g[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_g[2]}]

#IO_L10N_T1_AD11N_35
set_property PACKAGE_PIN J19 [get_ports {vga_g[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_g[3]}]

#IO_L17N_T2_AD5N_35
set_property PACKAGE_PIN H20 [get_ports {vga_g[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_g[4]}]

#IO_L15N_T2_DQS_AD12N_35
set_property PACKAGE_PIN F20 [get_ports {vga_g[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_g[5]}]

#IO_L14N_T2_SRCC_34
set_property PACKAGE_PIN P20 [get_ports {vga_b[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_b[0]}]

#IO_L7N_T1_AD2N_35
set_property PACKAGE_PIN M20 [get_ports {vga_b[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_b[1]}]

#IO_L10P_T1_AD11P_35
set_property PACKAGE_PIN K19 [get_ports {vga_b[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_b[2]}]

#IO_L14P_T2_AD4P_SRCC_35
set_property PACKAGE_PIN J18 [get_ports {vga_b[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_b[3]}]

#IO_L18P_T2_AD13P_35
set_property PACKAGE_PIN G19 [get_ports {vga_b[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_b[4]}]

#IO_L13N_T2_MRCC_34
set_property PACKAGE_PIN P19 [get_ports vga_hs]
set_property IOSTANDARD LVCMOS33 [get_ports vga_hs]

#IO_0_34
set_property PACKAGE_PIN R19 [get_ports vga_vs]
set_property IOSTANDARD LVCMOS33 [get_ports vga_vs]

