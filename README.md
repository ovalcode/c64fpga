# Commodore 64 on an FPGA
This is a Verilog/VHDL implementation of a Commodore 64 specifically for the ZYBO Development board from DIGILENT.

This project need the Vivado IDE from Xilinx to build the Source Code as it make use of Block Designs.

Some features include:

- Makes use of the [Arlet Ottens FPGA implementation of the 6502](https://github.com/Arlet/verilog-6502) which specifically is designed to make use of Block RAMS found on FPGA's
- VGA output of VIC-II. Generated VIC-II frames is stored temporarily in SDRAM, so limited BRAM sources is not occupied for this purpose.
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

Now cd into directory into which you have cloned the source earlier on.

Now invoke the tcl script with the following command:

```
source c64_proj.tcl
```
This will create all the project files.

You can then proceed to Synthesise, create bitstream and launch Xilinx SDK.

### AXI Block Quirks
Running the TCL script will not give you a perfect implementation running out of the box.

You will find when running this implementation of of the box, reading from SDRAM will not work at all, giving you a blank VGA screen.

To fix this, you will need to manually ra-add the helper AXI blocks. The sections to follow will explain how to do this

#### Remove existing AXI HElper blocks

With the Block Design open, remove the following blocks:

- rst_ps7_0_100M (Processor System Reset)
- ps7_0_axi_periph (AXI Interconnect)
- axi_smc (AXI Smart Interconnect)

#### Re-add AXI Helper Blocks with COnnection Automation
With the AXI Helper blocks removed, a green bar will appear with the caption *Designer Assistance Available* with a link next to it. Click on this link. You will be presented with a list of checboxes arranged more or less as follows:

* my_ip_burst_test_0
  * S00_AXI
* processing_system7_0
  * A_AXI_GP0
  * A_AXI_GP1
  
Select *A_AXI_GP0* and *A_AXI_GP1* under processing_system7_0.

On hitting OK you will see two Helper blocks, an *AXI Smart Interconnect* and an *Processor System Reset*, been added to the block design.

You will also see the *AXI Smart Interconnect* instance have two AXi Master ports which connect to the two slave ports of the Zynq processing block.

This *AXI Smart Interconnect* block, however, only provides one input for an AXI Master, but our design requires two.

To add the extra input port, click *Connection Automation* again giving this set of checkboxes:

* myip_burst_read_test_0
  * M00_AXI
* myip_burst_test_0
  * S00_AXI
  
At this point we are only interested in the Master port, so select it and hit ok. You will see that both our master ports is now connected.

Do a similar excercise to add the remaining Slave AXI port.

As a final check, please verify that all reset inputs is connected to either *peripheral_reset* or *peripheral_aresetn* of the Processor Reset System, depending on whether the input is an active reset when low or Active reset when High. In my case I had to connect the reset inputs of the two clock wizards

#### Assigning Address Space

Next we should ensure that the address space is correctly allocated. Go to the Address Editor tab.

You will see that myip_burst_test_0->M00_AXI and mip_burst_read_test_0->M00_AXI contains lots of items and we will need to trim down on this.

Start off by selecting all items under myip_burst_test_0->M00_AXI, right click and select *Unmap Segment*. Do a similar exercise with mip_burst_read_test_0->M00_AXI.

Now, under the unmapped slaves of myip_burst_test_0->M00_AXI select S_AXI_GP0/GP0_DDR_LOWOCM and choose assign address option.

Under the unmapped slaves of mip_burst_read_test_0->M00_AXI select S_AXI_GP1/GP1_DDR_LOWOCM and choose assign address option.

You will now see that both Masters have the slaves S_AXI_GP0 and S_AXI_GP1. Leaving the address mapping like this will cause overlapping address conflicts.

To fix this make use of the *Unmap Adress* option to remove S_AXI_GP1 from the first master and S_AXI_GP0 from the second master. Thus, the first master will now only have S_AXI_GP0 linked to it and the second master will only have S_AXI_GP1 linked to it.

All Helper AXI blocks should now be fixed.

## Modules
The C64 FPGA consists out of a couple of key modules. In this section I list them and give a brief description of each. All these modules is located withinthe IP folder.

- bblock: This forms the core of the C64 system. It outputs VIC-II frames to SDRAM via an AXI interfcae. It also receives keystrokes.
- myip_burst_read_test_1.0: Encapsulates AXI functionality for reading from SDRAM. The VGA output generation block uses this module to read back produced VIC-II frames for display purposes.
- myip_burst_test_1.0: Encapsulates AXI functioanlity for writing to SDRAM. bblock uses this block to save produced VIC-II frames to SDRAM
- vga_block_c64: Generates VGA output signal from VIC-II frames stored in SDRAM.
