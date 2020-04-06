`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.09.2019 13:39:42
// Design Name: 
// Module Name: sprite_generator
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


module sprite_generator(
  input clk_in,
  input [8:0] raster_y_pos,
  input [8:0] raster_x_pos,
  input [8:0] sprite_x_pos,
  input [7:0] sprite_y_pos,
  input store_byte,
  input [7:0] data,
  input sprite_enabled,
  input x_expand,
  input y_expand,
  input multi_color_mode,
  input [3:0] sprite_multi_0,
  input [3:0] sprite_multi_1,
  input [3:0] primary_color,
  output show_pixel,
  output [3:0] output_pixel,
  output request_data,
  output [5:0] request_line_offset
    );
    
  wire [8:0] next_raster;
  wire [5:0] request_line;
  wire [3:0] output_pixel_single;
  reg [3:0] output_pixel_multi;
  wire [5:0] request_line_pre;
  wire [5:0] sprite_width;
  wire [5:0] sprite_height;
  wire sprite_display_region;
  reg [23:0] sprite_data;
  reg [1:0] toggle;
  wire toggle_single_color_bit;
  wire toggle_multi_color_bit;
  
  assign sprite_height = y_expand ? 42 : 21;
  assign sprite_width = x_expand ? 48 : 24;
  assign toggle_single_color_bit = x_expand ? toggle[0] : 1;
  assign toggle_multi_color_bit = x_expand ? (toggle[1:0] == 2'b11) : toggle[0];
  
  assign sprite_display_region = (raster_y_pos >= sprite_y_pos && raster_y_pos < (sprite_y_pos + sprite_height)) &&
                                 (raster_x_pos >= sprite_x_pos && raster_x_pos < (sprite_x_pos + sprite_width));
  assign request_line_pre = next_raster - sprite_y_pos;
  assign request_line = y_expand ? (request_line_pre>>1) : request_line_pre;
  assign next_raster = raster_y_pos + 1;
  assign request_line_offset = (request_line << 1) + request_line;
  assign request_data = ((next_raster >= sprite_y_pos) && (next_raster < (sprite_y_pos + 21)));
  assign show_pixel = sprite_enabled && (multi_color_mode ? !(sprite_data[23:22] == 2'b0) : sprite_data[23]) && sprite_display_region;
  assign output_pixel_single = sprite_data[23] ? primary_color : 0;
//  assign output_pixel_multi = sprite_data[23] ? 4'b1 : 0;
  assign output_pixel = multi_color_mode ? output_pixel_multi : output_pixel_single;//sprite_data[23] ? 4'b1 : 0;
  
  always @*
    case (sprite_data[23:22])
      2'b01: output_pixel_multi = sprite_multi_0;
      2'b10: output_pixel_multi = primary_color;//sprite_multi_1;
      2'b11: output_pixel_multi = sprite_multi_1;
//      7, 11, 15:  store_sprite_pixel_byte = sprite_data_region && 1;
      default:  output_pixel_multi = 0;
    endcase
  
  always @(posedge clk_in)
  if (!sprite_display_region)
    toggle <= 0;
  else
    toggle <= toggle + 1;
  
  always @(posedge clk_in)
    if (store_byte)
      sprite_data <= {sprite_data[15:0], data[7:0]};
    else if (sprite_display_region && toggle_single_color_bit && !multi_color_mode)
      sprite_data <= {sprite_data[22:0], 1'b0};
    else if (sprite_display_region && toggle_multi_color_bit && multi_color_mode)
      sprite_data <= {sprite_data[21:0], 2'b0};
endmodule

