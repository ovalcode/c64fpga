`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.06.2019 19:56:12
// Design Name: 
// Module Name: timer
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


module timer(
  input [15:0] reload_val,
  input force_reload,
  input new_started,
  input new_runmode,
  input write_control,
  input clk,
  output [15:0] counter_out,
  output started_status,
  output runmode_status,
  output overflow
    );
    
  reg [15:0] counter = 0;
  
  reg started = 0;
  reg runmode = 0;
  
  assign started_status = started;
  assign runmode_status = runmode;
  assign overflow = (counter == 0) ? 1 : 0;
   
  assign counter_out = counter;
  always @(posedge clk)
  if (force_reload & write_control)
      counter <= reload_val;
  else if (counter > 0 & started)
    counter <= counter - 1;
  else if (counter == 0 & started)
    counter <= reload_val;
  
  always @(posedge clk)
  if (counter == 0 & runmode)
    started <= 0;
  else if (write_control)
    started <= new_started;
  
  always @(posedge clk)
  if (write_control)
    runmode <= new_runmode;
    
endmodule
