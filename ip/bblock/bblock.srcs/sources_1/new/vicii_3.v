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


module vic_test_3
(
  input clk_in,
  input [2:0] clk_counter,
//  input reset,
//  output clk_1_mhz,
  input clk_2_mhz,
  output wire blank_signal,
  output wire frame_sync,
  input [10:0] data_in,
  output c64_reset,
  output reg [13:0] addr,
  output reg [23:0] out_rgb
    );

reg [8:0] pixel_in_line = 0;
reg [7:0] pixel_shift_reg;
reg [8:0] y_pos = 0;
reg [8:0] x_pos;
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
reg [10:0] char_buffer[39:0];
reg [10:0] char_buffer_out;
reg [5:0] char_buf_pos;
wire WE_char_buf;
reg [3:0] current_front_color;
wire [3:0] color_for_bit;
wire [3:0] final_color;
//wire slow_rest;

//assign clk_1_mhz = pixel_in_line[2];
//assign clk_2_mhz = pixel_in_line[1];
assign visible_vert = (y_pos > 55 & y_pos < 255) ? 1 : 0;
assign visible_horiz = cycle_in_line[6:1] >=5 & cycle_in_line[6:1] < 45;
assign c64_reset = (reset_counter > 8000000) & (reset_counter < 8000020) ? 1 : 0;
assign reset = reset_counter < 8000000;
assign WE_char_buf = (cycle_in_line[6:1] >= 4) & visible_vert & (cycle_in_line[6:1] <=43) & (clk_counter == 3) & (char_line_num == 0);
assign frame_sync =  y_pos > 299; 
assign blank_signal = y_pos < 16 | y_pos > 299 | x_pos > 403 ? 1 : 0;

  always @(posedge clk_2_mhz)
    if (!visible_vert)
      char_line_num <= 0;
    else if (cycle_in_line == 125)
      char_line_num <= char_line_num + 1;
      
     always @(posedge clk_in)
        if (c64_reset)
          screen_mem_pos <= 0;
        else if (!visible_vert)
          screen_mem_pos <= 0;
        else if (visible_horiz & char_line_num == 0 & clk_counter == 0)
          screen_mem_pos <= screen_mem_pos + 1;

   always @(posedge clk_in)
  if (WE_char_buf)
  begin
    char_buffer[char_buf_pos] <= data_in;
    char_buffer_out <= data_in;
  end else
    char_buffer_out <= char_buffer[char_buf_pos];
    
  always @(posedge clk_in)
    if (clk_counter == 3'd7 & cycle_in_line == 7'h0)
      x_pos <= 0;
    else
      x_pos <= x_pos + 1;

  always @(posedge clk_in)
  if (clk_counter == 7)    
    current_front_color <= char_buffer_out[10:8]; 

  always @(posedge clk_in)
  if (!visible_vert)
    char_buf_pos <= 0;
  else if (visible_horiz & clk_counter == 7)
  begin
    if (char_buf_pos < 39)
      char_buf_pos <= char_buf_pos + 1;
    else
      char_buf_pos <= 0;
  end
  
//assign slow_reset = (reset_counter < 30) ? 1 :0; 

//always @(posedge clk_2_mhz)
//  if (reset_counter < 50)
//    reset_counter <= reset_counter + 1;
    
   always @(negedge clk_2_mhz)   
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
     
   assign color_for_bit = pixel_shift_reg[7] == 1 ? current_front_color : 6;
   assign final_color = (visible_vert & visible_horiz) ? color_for_bit : 14;
     
    always @(posedge clk_in)
     if (reset_counter < 9000000)
       reset_counter <= reset_counter + 1;
   
   always @(posedge clk_in)
   if (clk_counter == 7)
     pixel_shift_reg <= data_in;
   else
     pixel_shift_reg <= {pixel_shift_reg[6:0],1'b0};
    
     always @*
       if (clk_counter == 6 | clk_counter == 7)
         addr = {2'b10,char_buffer_out[7:0],char_line_num};       
       else
         addr =  {4'h1, screen_mem_pos};

   always @*
     case (final_color)
       4'd0: out_rgb = 24'h000000;
       4'd1: out_rgb = 24'hFFFFFF;
       4'd2: out_rgb = 24'h880000;
       4'd3: out_rgb = 24'hAAFFEE;
       4'd4: out_rgb = 24'hCC44CC;
       4'd5: out_rgb = 24'h00CC55;
       4'd6: out_rgb = 24'h0000AA;
       4'd7: out_rgb = 24'hEEEE77;
       4'd8: out_rgb = 24'hDD8855;
       4'd9: out_rgb = 24'h664400;
       4'd10: out_rgb = 24'hFF7777;
       4'd11: out_rgb = 24'h333333;
       4'd12: out_rgb = 24'h777777;
       4'd13: out_rgb = 24'hAAFF66;
       4'd14: out_rgb = 24'h0088FF;
       4'd15: out_rgb = 24'hBBBBBB;
    endcase
endmodule
