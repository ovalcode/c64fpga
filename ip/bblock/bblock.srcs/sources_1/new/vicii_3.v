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
  input locked,
  input [2:0] clk_counter,
//  input reset,
//  output clk_1_mhz,
  input clk_2_mhz,
  input clk_1_mhz,
  output wire blank_signal,
  output wire frame_sync,
  input [11:0] data_in,
  input [5:0] addr_in,
  input [7:0] reg_data_in,
  input we,
  output irq, 
  output [7:0] data_out,
  output c64_reset,
  output reg [13:0] addr,
  output reg [23:0] out_rgb
    );
//`define SIM
reg [7:0] data_out_reg;
reg [8:0] pixel_in_line = 0;
reg [7:0] pixel_shift_reg;
`ifdef SIM
reg [8:0] y_pos = 400;
`else
reg [8:0] y_pos = 0;
`endif

wire [9:0] y_pos_minus_7;
wire [9:0] y_pos_real;

reg [8:0] x_pos = 0;
`ifdef SIM
reg [6:0] cycle_in_line = 127;
`else
reg [6:0] cycle_in_line = 0;
`endif
reg [24:0] reset_counter = 0;
reg [2:0] char_line_num;
reg [9:0] screen_mem_pos;
reg [3:0] border_color = 0;
reg [3:0] background_color = 0;
reg [3:0] extra_background_color_1 = 0;
reg [3:0] extra_background_color_2 = 0;
//Sprite X/Y
reg [7:0] sprite_0_xpos;
reg [7:0] sprite_0_ypos;
reg [7:0] sprite_1_xpos;
reg [7:0] sprite_1_ypos;
reg [7:0] sprite_2_xpos;
reg [7:0] sprite_2_ypos;
reg [7:0] sprite_3_xpos;
reg [7:0] sprite_3_ypos;
reg [7:0] sprite_4_xpos;
reg [7:0] sprite_4_ypos;
reg [7:0] sprite_5_xpos;
reg [7:0] sprite_5_ypos;
reg [7:0] sprite_6_xpos;
reg [7:0] sprite_6_ypos;
reg [7:0] sprite_7_xpos;
reg [7:0] sprite_7_ypos;
reg [7:0] sprite_msb_x = 0;
reg [7:0] sprite_enabled;
reg [7:0] x_expand;//1d
reg [7:0] y_expand;//17
reg [7:0] sprite_priority;//1b
reg [7:0] multi_color_mode;//1c
reg [7:0] sprite_multi_color_0;//25
reg [7:0] sprite_multi_color_1;//26
reg [7:0] sprite_primary_color_0;//27
reg [7:0] sprite_primary_color_1;//28
reg [7:0] sprite_primary_color_2;//29
reg [7:0] sprite_primary_color_3;//2a
reg [7:0] sprite_primary_color_4;//2b
reg [7:0] sprite_primary_color_5;//2c
reg [7:0] sprite_primary_color_6;//2d
reg [7:0] sprite_primary_color_7;//2e


wire visible_vert;
wire visible_horiz;
reg clk_1_mhz_delay_1;
reg clk_1_mhz_delay_2;
reg clk_2_mhz_delay_1;
reg clk_2_mhz_delay_2;
wire reset;
wire multicolor_data;
reg [11:0] char_buffer[39:0];
reg [11:0] char_buffer_out;
reg [11:0] char_buffer_out_delayed;
reg [5:0] char_buf_pos;
reg [7:0] screen_control_1 = 0;
reg [7:0] int_enabled = 0;
reg [7:0] rasterline_ref = 0;
//reg rasterline_ref_msb = 0;
reg [7:0] screen_control_2 = 0;
reg [7:0] mem_pointers = 0;
wire WE_char_buf;
reg [7:0] sprite_data_location;
//reg [3:0] current_front_color;
wire sprite_data_region;
wire [1:0] sprite_byte_num;
wire [9:0] sprite_data_region_offset;
wire [3:0] color_for_bit;
reg [3:0] color_for_bit_with_sprite;
wire show_pixel_sprite_0;
wire show_pixel_sprite_1;
wire show_pixel_sprite_2;
wire show_pixel_sprite_3;
wire show_pixel_sprite_4;
wire show_pixel_sprite_5;
wire show_pixel_sprite_6;
wire show_pixel_sprite_7;
wire [3:0] out_pixel_sprite_0;
wire [3:0] out_pixel_sprite_1;
wire [3:0] out_pixel_sprite_2;
wire [3:0] out_pixel_sprite_3;
wire [3:0] out_pixel_sprite_4;
wire [3:0] out_pixel_sprite_5;
wire [3:0] out_pixel_sprite_6;
wire [3:0] out_pixel_sprite_7;

wire [3:0] final_color;
wire screen_enabled;
reg [9:0] char_line_pointer;
reg [7:0] char_pointer_in_line;
wire [13:0] bit_data_pointer;
wire [3:0] multi_color;
reg [3:0] multi_color_text_mode;
reg [3:0] multi_color_bitmap_mode;
reg [11:0] char_capture;
reg [23:0] sprite_0_data;
reg [23:0] sprite_1_data;
wire is_equal_raster;
wire [5:0] sprite_0_offset;
wire [5:0] sprite_1_offset;
wire [5:0] sprite_2_offset;
wire [5:0] sprite_3_offset;
wire [5:0] sprite_4_offset;
wire [5:0] sprite_5_offset;
wire [5:0] sprite_6_offset;
wire [5:0] sprite_7_offset;

reg [5:0] sprite_offset;
reg raster_int = 0;
reg is_equal_raster_delayed;
reg store_sprite_pixel_byte;
//wire slow_rest;

//assign clk_1_mhz = pixel_in_line[2];
//assign clk_2_mhz = pixel_in_line[1];



always @*
  case (sprite_data_region_offset[3:0])
    7, 11, 15:  store_sprite_pixel_byte = sprite_data_region && 1;
    default:  store_sprite_pixel_byte = 0;
  endcase

sprite_generator sprite_0(
  .clk_in(clk_in),
  .raster_y_pos(y_pos - 5),
  .raster_x_pos(x_pos - 16),
  .sprite_x_pos({sprite_msb_x[0],sprite_0_xpos}),
  .sprite_y_pos(sprite_0_ypos),
  .store_byte(store_sprite_pixel_byte && sprite_data_region_offset[6:4] == 0),

  .x_expand(x_expand[0]),
  .y_expand(y_expand[0]),
  .multi_color_mode(multi_color_mode[0]),
  .sprite_multi_0(sprite_multi_color_0),
  .sprite_multi_1(sprite_multi_color_1),
  .primary_color(sprite_primary_color_0),

  .data(data_in[7:0]),
  .sprite_enabled(sprite_enabled[0]),
  .show_pixel(show_pixel_sprite_0),
  .output_pixel(out_pixel_sprite_0),
  .request_data(),
  .request_line_offset(sprite_0_offset)
    );

sprite_generator sprite_1(
  .clk_in(clk_in),
  .raster_y_pos(y_pos - 5),
  .raster_x_pos(x_pos - 16),
  .sprite_x_pos({sprite_msb_x[1],sprite_1_xpos}),
  .sprite_y_pos(sprite_1_ypos),
  .store_byte(store_sprite_pixel_byte && sprite_data_region_offset[6:4] == 1),

  .x_expand(x_expand[1]),
  .y_expand(y_expand[1]),
  .multi_color_mode(multi_color_mode[1]),
  .sprite_multi_0(sprite_multi_color_0),
  .sprite_multi_1(sprite_multi_color_1),
  .primary_color(sprite_primary_color_1),

  .data(data_in[7:0]),
  .sprite_enabled(sprite_enabled[1]),
  .show_pixel(show_pixel_sprite_1),
  .output_pixel(out_pixel_sprite_1),
  .request_data(),
  .request_line_offset(sprite_1_offset)
    );

sprite_generator sprite_2(
  .clk_in(clk_in),
  .raster_y_pos(y_pos - 5),
  .raster_x_pos(x_pos - 16),
  .sprite_x_pos({sprite_msb_x[2],sprite_2_xpos}),
  .sprite_y_pos(sprite_2_ypos),
  .store_byte(store_sprite_pixel_byte && sprite_data_region_offset[6:4] == 2),

  .x_expand(x_expand[2]),
  .y_expand(y_expand[2]),
  .multi_color_mode(multi_color_mode[2]),
  .sprite_multi_0(sprite_multi_color_0),
  .sprite_multi_1(sprite_multi_color_1),
  .primary_color(sprite_primary_color_2),

  .data(data_in[7:0]),
  .sprite_enabled(sprite_enabled[2]),
  .show_pixel(show_pixel_sprite_2),
  .output_pixel(out_pixel_sprite_2),
  .request_data(),
  .request_line_offset(sprite_2_offset)
    );

sprite_generator sprite_3(
  .clk_in(clk_in),
  .raster_y_pos(y_pos - 5),
  .raster_x_pos(x_pos - 16),
  .sprite_x_pos({sprite_msb_x[3],sprite_3_xpos}),
  .sprite_y_pos(sprite_3_ypos),
  .store_byte(store_sprite_pixel_byte && sprite_data_region_offset[6:4] == 3),

  .x_expand(x_expand[3]),
  .y_expand(y_expand[3]),
  .multi_color_mode(multi_color_mode[3]),
  .sprite_multi_0(sprite_multi_color_0),
  .sprite_multi_1(sprite_multi_color_1),
  .primary_color(sprite_primary_color_3),

  .data(data_in[7:0]),
  .sprite_enabled(sprite_enabled[3]),
  .show_pixel(show_pixel_sprite_3),
  .output_pixel(out_pixel_sprite_3),
  .request_data(),
  .request_line_offset(sprite_3_offset)
    );

sprite_generator sprite_4(
  .clk_in(clk_in),
  .raster_y_pos(y_pos - 5),
  .raster_x_pos(x_pos - 16),
  .sprite_x_pos({sprite_msb_x[4],sprite_4_xpos}),
  .sprite_y_pos(sprite_4_ypos),
  .store_byte(store_sprite_pixel_byte && sprite_data_region_offset[6:4] == 4),

  .x_expand(x_expand[4]),
  .y_expand(y_expand[4]),
  .multi_color_mode(multi_color_mode[4]),
  .sprite_multi_0(sprite_multi_color_0),
  .sprite_multi_1(sprite_multi_color_1),
  .primary_color(sprite_primary_color_4),

  .data(data_in[7:0]),
  .sprite_enabled(sprite_enabled[4]),
  .show_pixel(show_pixel_sprite_4),
  .output_pixel(out_pixel_sprite_4),
  .request_data(),
  .request_line_offset(sprite_4_offset)
    );

sprite_generator sprite_5(
  .clk_in(clk_in),
  .raster_y_pos(y_pos - 5),
  .raster_x_pos(x_pos - 16),
  .sprite_x_pos({sprite_msb_x[5],sprite_5_xpos}),
  .sprite_y_pos(sprite_5_ypos),
  .store_byte(store_sprite_pixel_byte && sprite_data_region_offset[6:4] == 5),

  .x_expand(x_expand[5]),
  .y_expand(y_expand[5]),
  .multi_color_mode(multi_color_mode[5]),
  .sprite_multi_0(sprite_multi_color_0),
  .sprite_multi_1(sprite_multi_color_1),
  .primary_color(sprite_primary_color_5),

  .data(data_in[7:0]),
  .sprite_enabled(sprite_enabled[5]),
  .show_pixel(show_pixel_sprite_5),
  .output_pixel(out_pixel_sprite_5),
  .request_data(),
  .request_line_offset(sprite_5_offset)
    );

sprite_generator sprite_6(
  .clk_in(clk_in),
  .raster_y_pos(y_pos - 5),
  .raster_x_pos(x_pos - 16),
  .sprite_x_pos({sprite_msb_x[6],sprite_6_xpos}),
  .sprite_y_pos(sprite_6_ypos),
  .store_byte(store_sprite_pixel_byte && sprite_data_region_offset[6:4] == 6),

  .x_expand(x_expand[6]),
  .y_expand(y_expand[6]),
  .multi_color_mode(multi_color_mode[6]),
  .sprite_multi_0(sprite_multi_color_0),
  .sprite_multi_1(sprite_multi_color_1),
  .primary_color(sprite_primary_color_6),

  .data(data_in[7:0]),
  .sprite_enabled(sprite_enabled[6]),
  .show_pixel(show_pixel_sprite_6),
  .output_pixel(out_pixel_sprite_6),
  .request_data(),
  .request_line_offset(sprite_6_offset)
    );

sprite_generator sprite_7(
  .clk_in(clk_in),
  .raster_y_pos(y_pos - 5),
  .raster_x_pos(x_pos - 16),
  .sprite_x_pos({sprite_msb_x[7],sprite_7_xpos}),
  .sprite_y_pos(sprite_7_ypos),
  .store_byte(store_sprite_pixel_byte && sprite_data_region_offset[6:4] == 7),

  .x_expand(x_expand[7]),
  .y_expand(y_expand[7]),
  .multi_color_mode(multi_color_mode[7]),
  .sprite_multi_0(sprite_multi_color_0),
  .sprite_multi_1(sprite_multi_color_1),
  .primary_color(sprite_primary_color_7),

  .data(data_in[7:0]),
  .sprite_enabled(sprite_enabled[7]),
  .show_pixel(show_pixel_sprite_7),
  .output_pixel(out_pixel_sprite_7),
  .request_data(),
  .request_line_offset(sprite_7_offset)
    );

//always @(posedge clk_in)
//  if (store_sprite_pixel_byte && sprite_data_region_offset[6:4] == 0)
//    sprite_0_data <= {sprite_0_data[15:0], data_in[7:0]};

//always @(posedge clk_in)
//  if (store_sprite_pixel_byte && sprite_data_region_offset[6:4] == 1)
//    sprite_1_data <= {sprite_1_data[15:0], data_in[7:0]};

assign sprite_data_region = (x_pos > 368 && x_pos < 496);
assign sprite_data_region_offset = {1'b0, x_pos} - 368;

assign data_out = data_out_reg;
assign y_pos_minus_7 = {1'b0,y_pos} - /*0*/5;
assign y_pos_real = (y_pos_minus_7 > 400) ? (10'd312 + y_pos_minus_7) : y_pos_minus_7;
assign visible_vert = (y_pos > 55 & y_pos < 255) ? 1 : 0;
assign visible_horiz = cycle_in_line[6:1] >=5 & cycle_in_line[6:1] < 45;
assign c64_reset = (reset_counter > 8000000) & (reset_counter < 8000020) ? 1 : 0;
assign reset = reset_counter < 8000000;
assign WE_char_buf = (cycle_in_line[6:1] >= 4) & visible_vert & (cycle_in_line[6:1] <=43) & (clk_counter == 3) & (char_line_num == 0);
assign frame_sync =  y_pos > 299; 
assign blank_signal = y_pos < 16 | y_pos > 299 | x_pos > 403 ? 1 : 0;
assign screen_enabled = screen_control_1[4];
assign is_equal_raster = {screen_control_1[7],rasterline_ref} == y_pos_real[8:0];
assign irq = raster_int & int_enabled[0];
assign multicolor_data = screen_control_2[4] && !(!char_buffer_out_delayed[11] && !screen_control_1[5]);
assign sprite_byte_num = sprite_data_region_offset[3:2] + 2'b11;

always @(posedge clk_1_mhz)
is_equal_raster_delayed <= is_equal_raster;

always @(posedge clk_1_mhz)
if (we & (addr_in == 6'h19))
  raster_int <= raster_int & ~reg_data_in[0];
else
  raster_int <= raster_int | (is_equal_raster & !is_equal_raster_delayed);

always @(posedge clk_1_mhz)
     case (addr_in)
       6'h00: data_out_reg <= sprite_0_xpos;
       6'h01: data_out_reg <= sprite_0_ypos;
       6'h02: data_out_reg <= sprite_1_xpos;
       6'h03: data_out_reg <= sprite_1_ypos;
       6'h04: data_out_reg <= sprite_2_xpos;
       6'h05: data_out_reg <= sprite_2_ypos;
       6'h06: data_out_reg <= sprite_3_xpos;
       6'h07: data_out_reg <= sprite_3_ypos;
       6'h08: data_out_reg <= sprite_4_xpos;
       6'h09: data_out_reg <= sprite_4_ypos;
       6'h0a: data_out_reg <= sprite_5_xpos;
       6'h0b: data_out_reg <= sprite_5_ypos;
       6'h0c: data_out_reg <= sprite_6_xpos;
       6'h0d: data_out_reg <= sprite_6_ypos;
       6'h0e: data_out_reg <= sprite_7_xpos;
       6'h0f: data_out_reg <= sprite_7_ypos;
       6'h10: data_out_reg <= sprite_msb_x;
       6'h15: data_out_reg <= sprite_enabled;

       6'h1d: data_out_reg <= x_expand;
       6'h17: data_out_reg <= y_expand;
       6'h1b: data_out_reg <= sprite_priority;
       6'h1c: data_out_reg <= multi_color_mode;
       6'h25: data_out_reg <= sprite_multi_color_0;
       6'h26: data_out_reg <= sprite_multi_color_1;
       6'h27: data_out_reg <= sprite_primary_color_0;
       6'h28: data_out_reg <= sprite_primary_color_1;
       6'h29: data_out_reg <= sprite_primary_color_2;
       6'h2a: data_out_reg <= sprite_primary_color_3;
       6'h2b: data_out_reg <= sprite_primary_color_4;
       6'h2c: data_out_reg <= sprite_primary_color_5;
       6'h2d: data_out_reg <= sprite_primary_color_6;
       6'h2e: data_out_reg <= sprite_primary_color_7;


       6'h20: data_out_reg <= {4'b0,border_color};
       6'h21: data_out_reg <= {4'b0,background_color};
       6'h22: data_out_reg <= {4'b0,extra_background_color_1};
       6'h23: data_out_reg <= {4'b0,extra_background_color_2};
       6'h11: data_out_reg <= {y_pos_real[8],screen_control_1[6:0]};
       6'h12: data_out_reg <= {y_pos_real[7:0]};
       6'h16: data_out_reg <= screen_control_2;
       6'h18: data_out_reg <= mem_pointers;
       6'h19: data_out_reg <= {7'h0,raster_int};
       6'h1a: data_out_reg <= int_enabled;
     endcase
     
always @(posedge clk_1_mhz)
begin
  if (we & addr_in == 6'h00)
    sprite_0_xpos <= reg_data_in[7:0];
  else if (we & addr_in == 6'h01)
    sprite_0_ypos <= reg_data_in[7:0];
  else if (we & addr_in == 6'h02)
     sprite_1_xpos <= reg_data_in[7:0];
  else if (we & addr_in == 6'h03)
     sprite_1_ypos <= reg_data_in[7:0];
  else if (we & addr_in == 6'h04)
     sprite_2_xpos <= reg_data_in[7:0];
  else if (we & addr_in == 6'h05)
     sprite_2_ypos <= reg_data_in[7:0];
  else if (we & addr_in == 6'h06)
     sprite_3_xpos <= reg_data_in[7:0];
  else if (we & addr_in == 6'h07)
     sprite_3_ypos <= reg_data_in[7:0];
  else if (we & addr_in == 6'h08)
     sprite_4_xpos <= reg_data_in[7:0];
  else if (we & addr_in == 6'h09)
     sprite_4_ypos <= reg_data_in[7:0];
  else if (we & addr_in == 6'h0a)
     sprite_5_xpos <= reg_data_in[7:0];
  else if (we & addr_in == 6'h0b)
     sprite_5_ypos <= reg_data_in[7:0];
  else if (we & addr_in == 6'h0c)
     sprite_6_xpos <= reg_data_in[7:0];
  else if (we & addr_in == 6'h0d)
     sprite_6_ypos <= reg_data_in[7:0];
  else if (we & addr_in == 6'h0e)
     sprite_7_xpos <= reg_data_in[7:0];
  else if (we & addr_in == 6'h0f)
     sprite_7_ypos <= reg_data_in[7:0];
  else if (we & addr_in == 6'h10)
     sprite_msb_x <= reg_data_in[7:0];
  else if (we & addr_in == 6'h15)
     sprite_enabled <= reg_data_in[7:0];

  else if (we & addr_in == 6'h1d)
     x_expand <= reg_data_in[7:0];
  else if (we & addr_in == 6'h17)
     y_expand <= reg_data_in[7:0];     
  else if (we & addr_in == 6'h1b)
        sprite_priority <= reg_data_in[7:0];     
  else if (we & addr_in == 6'h1c)
     multi_color_mode <= reg_data_in[7:0];
  else if (we & addr_in == 6'h25)
     sprite_multi_color_0 <= reg_data_in[7:0];
  else if (we & addr_in == 6'h26)
     sprite_multi_color_1 <= reg_data_in[7:0];
  else if (we & addr_in == 6'h27)
     sprite_primary_color_0 <= reg_data_in[7:0];
  else if (we & addr_in == 6'h28)
     sprite_primary_color_1 <= reg_data_in[7:0];
  else if (we & addr_in == 6'h29)
     sprite_primary_color_2 <= reg_data_in[7:0];
  else if (we & addr_in == 6'h2a)
     sprite_primary_color_3 <= reg_data_in[7:0];
  else if (we & addr_in == 6'h2b)
     sprite_primary_color_4 <= reg_data_in[7:0];
  else if (we & addr_in == 6'h2c)
     sprite_primary_color_5 <= reg_data_in[7:0];
  else if (we & addr_in == 6'h2d)
     sprite_primary_color_6 <= reg_data_in[7:0];
  else if (we & addr_in == 6'h2e)
     sprite_primary_color_7 <= reg_data_in[7:0];

  else if (we & addr_in == 6'h20)
    border_color <= reg_data_in[3:0];
  else if (we & addr_in == 6'h21)  
    background_color <= reg_data_in[3:0];
  else if (we & addr_in == 6'h22)  
    extra_background_color_1 <= reg_data_in[3:0];
  else if (we & addr_in == 6'h23)  
    extra_background_color_2 <= reg_data_in[3:0];
  else if (we & addr_in == 6'h11)
    screen_control_1 <= reg_data_in[7:0];
  else if (we & addr_in == 6'h12)
    rasterline_ref <= reg_data_in[7:0];
  else if (we & addr_in == 6'h16)
      screen_control_2 <= reg_data_in[7:0];    
  else if (we & addr_in == 6'h18)
      mem_pointers <= reg_data_in[7:0];
  else if (we & addr_in == 6'h1a)
      int_enabled <= reg_data_in[7:0];
    
//  reg_data_in
end

always @(posedge clk_in)
if (sprite_data_region && sprite_data_region_offset[3:0] == 4)
  sprite_data_location <= data_in[7:0];

always @(posedge clk_in)
if (clk_counter == 4)
  char_capture <= char_buffer_out;
     
     
         /*casex (vic_addr)
           14'h1xxx : vic_combined_d = chargen_out;
           default: vic_combined_d = ram_out_2;
         endcase*/


  always @(posedge clk_2_mhz)
    if (!visible_vert)
      char_line_num <= 0;
    else if (cycle_in_line == 125)
      char_line_num <= char_line_num + 1;
      
`ifndef SIM
     always @(posedge clk_in)
        if (c64_reset)
          screen_mem_pos <= 0;
        else if (!visible_vert)
          screen_mem_pos <= 0;
        else if (visible_horiz & char_line_num == 0 & clk_counter == 0)
          screen_mem_pos <= screen_mem_pos + 1;
`else
     always @(posedge clk_in)
//   if (c64_reset)
//     screen_mem_pos <= 0;
   if (!visible_vert)
     screen_mem_pos <= 0;
   else if (visible_horiz & char_line_num == 0 & clk_counter == 0)
     screen_mem_pos <= screen_mem_pos + 1;
`endif

   always @(posedge clk_in)
   if (!visible_vert)
   begin
     char_line_pointer <= 0;
     char_pointer_in_line <= 0;
   end
   else if (visible_horiz & clk_counter == 0)
   begin
     if (char_pointer_in_line < 39)
       char_pointer_in_line <= char_pointer_in_line + 1;
     else begin
       char_pointer_in_line <= 0;
       char_line_pointer <= char_line_num == 7 ? char_line_pointer + 40 : char_line_pointer;
     end
   end
//reg [9:0] char_line_pointer;
// reg [7:0] char_pointer_in_line;

     
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
    char_buffer_out_delayed <= char_capture; 

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

   always @*
     case (sprite_data_region_offset[6:4])
       3'd0: sprite_offset = sprite_0_offset;
       3'd1: sprite_offset = sprite_1_offset;
       3'd2: sprite_offset = sprite_2_offset;
       3'd3: sprite_offset = sprite_3_offset;
       3'd4: sprite_offset = sprite_4_offset;
       3'd5: sprite_offset = sprite_5_offset;
       3'd6: sprite_offset = sprite_6_offset;
       3'd7: sprite_offset = sprite_7_offset;
    endcase

/*always @*
   if (show_pixel_sprite_0)
     color_for_bit_with_sprite = out_pixel_sprite_0;
   else if (show_pixel_sprite_1)
     color_for_bit_with_sprite = out_pixel_sprite_1;
   else if (show_pixel_sprite_2)
     color_for_bit_with_sprite = out_pixel_sprite_2;
   else if (show_pixel_sprite_3)
     color_for_bit_with_sprite = out_pixel_sprite_3;
   else if (show_pixel_sprite_4)
     color_for_bit_with_sprite = out_pixel_sprite_4;
   else if (show_pixel_sprite_5)
     color_for_bit_with_sprite = out_pixel_sprite_5;
   else if (show_pixel_sprite_6)
     color_for_bit_with_sprite = out_pixel_sprite_6;
   else if (show_pixel_sprite_7)
     color_for_bit_with_sprite = out_pixel_sprite_7;
   else
     color_for_bit_with_sprite = color_for_bit;*/
     
always @*
        if (show_pixel_sprite_0 && !sprite_priority[0])
          color_for_bit_with_sprite = out_pixel_sprite_0;
        else if (show_pixel_sprite_1 && !sprite_priority[1])
          color_for_bit_with_sprite = out_pixel_sprite_1;
        else if (show_pixel_sprite_2 && !sprite_priority[2])
          color_for_bit_with_sprite = out_pixel_sprite_2;
        else if (show_pixel_sprite_3 && !sprite_priority[3])
          color_for_bit_with_sprite = out_pixel_sprite_3;
        else if (show_pixel_sprite_4 && !sprite_priority[4])
          color_for_bit_with_sprite = out_pixel_sprite_4;
        else if (show_pixel_sprite_5 && !sprite_priority[5])
          color_for_bit_with_sprite = out_pixel_sprite_5;
        else if (show_pixel_sprite_6 && !sprite_priority[6])
          color_for_bit_with_sprite = out_pixel_sprite_6;
        else if (show_pixel_sprite_7 && !sprite_priority[7])
          color_for_bit_with_sprite = out_pixel_sprite_7;
        else if (pixel_shift_reg[7])
          color_for_bit_with_sprite = color_for_bit;
        else if (show_pixel_sprite_0)
          color_for_bit_with_sprite = out_pixel_sprite_0;
        else if (show_pixel_sprite_1)
          color_for_bit_with_sprite = out_pixel_sprite_1;
        else if (show_pixel_sprite_2)
          color_for_bit_with_sprite = out_pixel_sprite_2;
        else if (show_pixel_sprite_3)
          color_for_bit_with_sprite = out_pixel_sprite_3;
        else if (show_pixel_sprite_4)
          color_for_bit_with_sprite = out_pixel_sprite_4;
        else if (show_pixel_sprite_5)
          color_for_bit_with_sprite = out_pixel_sprite_5;
        else if (show_pixel_sprite_6)
          color_for_bit_with_sprite = out_pixel_sprite_6;
        else if (show_pixel_sprite_7)
          color_for_bit_with_sprite = out_pixel_sprite_7;
        else
          color_for_bit_with_sprite = color_for_bit;
     

   //assign color_for_bit_with_sprite = show_pixel_sprite_0 ? out_pixel_sprite_0 : color_for_bit;
   assign color_for_bit = multicolor_data ? multi_color :    
            (pixel_shift_reg[7] == 1 ? char_buffer_out_delayed[11:8] : background_color);
   assign final_color = (visible_vert & visible_horiz & screen_enabled) ? color_for_bit_with_sprite : border_color;
     
    always @(posedge clk_in)
     if ((reset_counter < 9000000) & locked)
       reset_counter <= reset_counter + 1;
   
   always @(posedge clk_in)
   if (clk_counter == 7)
     pixel_shift_reg <= data_in;
   else begin
     if (multicolor_data & (clk_counter[0]))
       pixel_shift_reg <= {pixel_shift_reg[5:0],2'b0};
     else if (!multicolor_data) 
       pixel_shift_reg <= {pixel_shift_reg[6:0],1'b0};
   end

assign bit_data_pointer = screen_control_1[5] ?
                   {mem_pointers[3],(char_line_pointer + char_pointer_in_line),char_line_num}
                 : {mem_pointers[3:1],char_buffer_out[7:0],char_line_num};
    
     always @*
       if (!sprite_data_region && (clk_counter == 6 | clk_counter == 7))
         addr = bit_data_pointer/*{mem_pointer[3:1],char_buffer_out[7:0],char_line_num}*/;       
       else if (sprite_data_region && (sprite_data_region_offset[3:0] < 3))
         addr = {mem_pointers[7:4], 7'h7f, sprite_data_region_offset[6:4]};
       else if (sprite_data_region)
         addr = {sprite_data_location, (sprite_offset + sprite_byte_num)}; 
       else
         addr =  {mem_pointers[7:4], screen_mem_pos};

assign multi_color = screen_control_1[5] ? multi_color_bitmap_mode : multi_color_text_mode;

always @*
  case (pixel_shift_reg[7:6])
    2'b00: multi_color_bitmap_mode = background_color;
    2'b01: multi_color_bitmap_mode = char_buffer_out_delayed[7:4];
    2'b10: multi_color_bitmap_mode = char_buffer_out_delayed[3:0];
    2'b11: multi_color_bitmap_mode = char_buffer_out_delayed[11:8];
  endcase

always @*
  case (pixel_shift_reg[7:6])
    2'b00: multi_color_text_mode = background_color;
    2'b01: multi_color_text_mode = extra_background_color_1;
    2'b10: multi_color_text_mode = extra_background_color_2;
    2'b11: multi_color_text_mode = {1'b0, char_buffer_out_delayed[10:8]};
  endcase

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
