`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.03.2018 21:13:45
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


module vicii(
  input clk_in,
//  input reset,
  output reset_out,
  output c64_reset,
  output clk_1_mhz,
  output clk_2_mhz,
  output wire [13:0] addr
    );
    

reg [8:0] x_pos;
reg [8:0] y_pos;
reg [24:0] reset_counter = 0;
wire reset;
wire [2:0] bit_cycle;
wire visible_vertical;
wire visible_horiz;
wire [5:0] line_cycle_num;
reg [2:0] char_line_num;
reg [9:0] screen_mem_pos;
reg [13:0] addr_delay_1;
reg [13:0] addr_delay_2;
reg [13:0] addr_delay_3;
reg [13:0] addr_delay_4;

assign bit_cycle = x_pos[2:0];
assign line_cycle_num = x_pos[8:3];
assign c64_reset = (reset_counter > 8000000) & (reset_counter < 8000020) ? 1 : 0;
assign clk_1_mhz = x_pos[2];
assign clk_2_mhz = x_pos[1];
assign reset = reset_counter < 8000000 ? 1 : 0;
assign visible_vertical = (y_pos > 55) & (y_pos < 255) ? 1 : 0; 
assign visible_horiz = (line_cycle_num >= 5) & (line_cycle_num < 45);
assign addr = addr_delay_4;

   always @(posedge clk_in)
     if (!visible_vertical)
       screen_mem_pos <= 0;
     else if (bit_cycle == 0 & visible_horiz & char_line_num == 0)
       screen_mem_pos <= screen_mem_pos + 1;

   always @(posedge clk_in)
     if (!visible_vertical)
       screen_mem_pos <= 0;
     else if (bit_cycle == 0 & visible_horiz & char_line_num == 0)
       screen_mem_pos <= screen_mem_pos + 1;


    always @(posedge clk_in)
    if (reset_counter < 9000000)
      reset_counter <= reset_counter + 1;


  always @(posedge clk_in)
    if (!visible_vertical)
      char_line_num <= 0;
    else if (x_pos == 384)
      char_line_num <= char_line_num + 1;

  always @(posedge clk_in)
    if (reset)
    begin
      x_pos <= 0;
      y_pos <= 0;
    end
    else if (x_pos < 503)
      x_pos <= x_pos + 1;
    else
    begin
      x_pos <= 0;
      y_pos <= (y_pos < 311) ? y_pos + 1 : 0; 
    end
    
   always @(posedge clk_in)
      if (reset)
        addr_delay_1 <= 13'h30;
      else if ((bit_cycle == 7) | (bit_cycle == 6) | (bit_cycle == 5) | (bit_cycle == 4) | (bit_cycle == 3) | (bit_cycle == 2))
        addr_delay_1 <= {4'b1, screen_mem_pos};
      else
        addr_delay_1 <= 13'h406;
    
   always @(posedge clk_in)
   begin
     addr_delay_2 <= addr_delay_1;
     addr_delay_3 <= addr_delay_2;
     addr_delay_4 <= addr_delay_3;
   end
   
endmodule
