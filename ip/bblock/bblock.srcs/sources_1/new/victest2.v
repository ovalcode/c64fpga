`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.03.2018 16:57:21
// Design Name: 
// Module Name: vicii
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


module vic_test_2
(
  input clk_in,
//  input reset,
//  output clk_1_mhz,
  input clk_2_mhz,
  output c64_reset,
  output reg [13:0] addr
    );

reg [8:0] pixel_in_line = 0;
reg [8:0] y_pos = 0;
reg [6:0] cycle_in_line = 0;
reg [24:0] reset_counter = 0;
reg [2:0] char_line_num;
reg [9:0] screen_mem_pos;
wire visible_vert;
wire visible_horiz;
reg clk_1_mhz_delay_1;
reg clk_1_mhz_delay_2;
reg clk_2_mhz_delay_1;
reg clk_2_mhz_delay_2;
wire reset;
//wire slow_rest;

//assign clk_1_mhz = pixel_in_line[2];
//assign clk_2_mhz = pixel_in_line[1];
assign visible_vert = (y_pos > 55 & y_pos < 255) ? 1 : 0;
assign visible_horiz = cycle_in_line[6:1] >=5 & cycle_in_line[6:1] < 45;
assign c64_reset = (reset_counter > 8000000) & (reset_counter < 8000020) ? 1 : 0;
assign reset = reset_counter < 8000000;



  always @(posedge clk_2_mhz)
    if (!visible_vert)
      char_line_num <= 0;
    else if (cycle_in_line == 125)
      char_line_num <= char_line_num + 1;
      
     always @(posedge clk_2_mhz)
        if (c64_reset)
          screen_mem_pos <= 0;
        else if (!visible_vert)
          screen_mem_pos <= 0;
        else if (visible_horiz & char_line_num == 0 & cycle_in_line[0] == 1)
          screen_mem_pos <= screen_mem_pos + 1;

 
//assign slow_reset = (reset_counter < 30) ? 1 :0; 

//always @(posedge clk_2_mhz)
//  if (reset_counter < 50)
//    reset_counter <= reset_counter + 1;
    
   always @(posedge clk_2_mhz)   
//     if (slow_reset)
//     begin
//       cycle_in_line <= 0;
//       y_pos <= 0;
//     end
     if (cycle_in_line < 125)
       cycle_in_line <= cycle_in_line + 1;
     else
     begin
       cycle_in_line <= 0;
       y_pos <= (y_pos < 311) ? y_pos + 1 : 0; 
     end
     
    always @(posedge clk_in)
     if (reset_counter < 9000000)
       reset_counter <= reset_counter + 1;
   
    
     always @*
//     if (cycle_in_line[0] == 0)
       addr =  {4'h1, screen_mem_pos};
//     else 
//       addr =  2014;        

endmodule
