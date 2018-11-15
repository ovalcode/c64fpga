# Commodore 64 on an FPGA
This is a Verilog/VHDL implementation of a Comoodore 64 specifically for the ZYBO Development board from DIGILENT.

This project need the Vivado IDE from Xilinx to build the Source Code as it make use of Block Designs.

Some features include:

- Makes use of the [Arlet Ottens FPGA implementation of the 6502](https://github.com/Arlet/verilog-6502) which specifically is designed to make use of Block RAMS found on FPGA's
- VGA output of VIC-II
- *Planned*: Interaction with the C64 with a USB keyboard

For a Tutorial on how this implementation is developed in a incremental way, please see [my Blog Series](http://c64onfpga.blogspot.com/)

## Building
This implementation needs to be build within Vivado, an IDE provided by Xilinx.

A tcl script is provided for generating the project files, so you can open the implementation with Vivado.

Here follows step by step instructions

### Get the source
This step assumes you have GIT commandline installed. Open a commandline and type the following:

```
git clone https://github.com/ovalcode/c64fpga
```

### Create the project files that Vivado understands
You now need to create the project files that Vivado understands. I have provided a tcl scripts for generating the project files.

To use this tcl script startup Vivado, but don't open up any projects yet. At the bottom of the Vivado IDE, you will see a TCL console. Click on the TCL command prompt as indicated below:

![logo]

[logo]: https://github.com/ovalcode/c64fpga/blob/master/images/vivadointro.png
