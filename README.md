# Commodore 64 on an FPGA
This is a Verilog/VHDL implementation of a Comoodore 64 specifically for the ZYBO Development board from DIGILENT.

This project need the Vivado IDE from Xilinx to build the Source Code as it make use of Block Designs.

Some features include:

- Makes use of the [Arlet Ottens FPGA implementation of the 6502](https://github.com/Arlet/verilog-6502) which specifically is designed to make use of Block RAMS found on FPGA's
- VGA output of VIC-II
- *Planned*: Interaction with the C64 with a USB keyboard

For a Tutorial on how this implementation is developed in a incremental way, please see [my Blog Series](http://c64onfpga.blogspot.com/)
