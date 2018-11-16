`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.12.2017 07:17:28
// Design Name: 
// Module Name: rom
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


module rom#(
 parameter ADDR_WIDTH = 13,
 parameter ROM_FILE = "/home/johan/ee2.txt"

)

(
  input clk,
  input wire [ADDR_WIDTH-1:0] addr,
  output reg [7:0] rom_out
    );

    
reg [7:0] rom[2**ADDR_WIDTH-1:0];

 always @ (posedge clk)
    begin
      rom_out <= rom[addr];
    end 

    
initial begin
      $readmemh(ROM_FILE, rom) ;
    end    

endmodule
