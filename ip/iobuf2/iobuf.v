`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.01.2019 17:07:39
// Design Name: 
// Module Name: iobuf
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module iobuf(
  output out,
  input in,
  input tristate,
  inout pin
    );
    
    
    //    IOBUF    : In order to incorporate this function into the design,
    //   Verilog   : the following instance declaration needs to be placed
    //  instance   : in the body of the design code.  The instance name
    // declaration : (IOBUF_inst) and/or the port declarations within the
    //    code     : parenthesis may be changed to properly reference and
    //             : connect this function to the design.  All inputs
    //             : and outputs must be connected.
    
    //  <-----Cut code below this line---->
    
       // IOBUF: Input/Output Buffer
       //        Kintex UltraScale
       // Xilinx HDL Language Template, version 2017.1
    
       IOBUF IOBUF_inst (
          .O(out),   // 1-bit output: Buffer output
          .I(in),   // 1-bit input: Buffer input
          .IO(pin), // 1-bit inout: Buffer inout (connect directly to top-level port)
          .T(tristate)    // 1-bit input: 3-state enable input
       );
    
       // End of IOBUF_inst instantiation
                        
                    
endmodule
