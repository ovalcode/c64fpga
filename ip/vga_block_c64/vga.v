`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.04.2018 08:11:16
// Design Name: 
// Module Name: vga
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


module vga(
  input clk,
  input clk_axi,
  input reset,
  output vert_sync,
  output horiz_sync,
  output [4:0] red,
  output [5:0] green,
  output [4:0] blue,
  output wire [31:0] ip2bus_mst_addr,
  output wire [11:0] ip2bus_mst_length,
  input wire [31:0] ip2bus_mstrd_d,
  output wire [4:0] ip2bus_inputs,
  input wire [5:0] ip2bus_otputs,
//  output wire axi_empty_debug,
//  output wire buffer_empty_debug,
//  output wire buffer_full_debug,
//  output wire [15:0] shift_16_debug,
//  output wire [10:0] vert_pos_debug,
//  output wire [10:0] horiz_pos_debug,
//  output wire trigger_restart_debug,
//  output buffer_read_debug,
//  output buffer_write_debug,

//     output wire [3:0] next_word_read_debug,
//     output wire [3:0] next_word_write_debug,
//     output equal_debug,
//     output next_add_read_enable_debug,
//     output next_add_write_enable_debug,
//     output set_status_debug,
     output rst_status
//     output status_debug,
//     output preset_full_debug,
//     output preset_empty_debug

 
    );

parameter HORIZ_RES = 1360;
parameter VERT_RES = 767;
parameter HORIZ_BACK_PORCH = 248;//208;
parameter HORIZ_FRONT_PORCH = 48;//72;
parameter HORIZ_SYNC = 112;//136;
parameter VERT_BACK_PORCH = 38;//3;
parameter VERT_FRONT_PORCH = 1;//22;
parameter VERT_SYNC = 3;//5;

parameter TOTAL_HORIZ_RES = HORIZ_RES + HORIZ_BACK_PORCH + HORIZ_SYNC + HORIZ_FRONT_PORCH;
parameter TOTAL_VERT_RES = VERT_RES + VERT_BACK_PORCH + VERT_SYNC + VERT_FRONT_PORCH;
parameter HORIZ_SYNC_START = HORIZ_RES + HORIZ_FRONT_PORCH;
parameter HORIZ_SYNC_END = HORIZ_SYNC_START + HORIZ_SYNC;          
parameter VERT_SYNC_START = VERT_RES + VERT_FRONT_PORCH;
parameter VERT_SYNC_END = VERT_SYNC_START + VERT_SYNC;          

parameter WAIT_START_VSYNC = 2'd0;
parameter RESET_CYCLE = 2'd1;
parameter GET_SET = 2'd2;
parameter WAIT_END_VSYNC = 2'd3;
parameter RESTART_STATE_WAIT = 2'd0; 
parameter RESTART_STATE_RESTART = 2'd1; 
parameter RESTART_STATE_END = 2'd2;

parameter STATE_16_SHIFT_IDLE = 2'd0;
parameter STATE_16_SHIFT_STORED = 2'd1;
parameter STATE_16_SHIFT_SHIFTED = 2'd2;

reg [10:0] horiz_pos = 0;
reg [10:0] vert_pos = 0;

reg [10:0] horiz_pos_next;
reg [10:0] vert_pos_next;


reg [7:0] pixel_shift_reg;
wire [2:0] pixel_in_char;
wire [15:0] out_pixel;
wire [15:0] out_pixel_buffer;
wire [15:0] out_pixel_buffer_final;
wire buffer_full;
(* ASYNC_REG = "TRUE" *) reg vert_sync_delayed_1, vert_sync_delayed_2, vert_sync_delayed_3,vert_sync_delayed_4,vert_sync_delayed_5;
reg [1:0] state = 2'b0;
reg [1:0] state_shift_reg = 2'b0;

reg [10:0] horiz_pos_buffer = 0;
reg [10:0] vert_pos_buffer = 0;
reg [1:0] trigger_restart_state = 0;
reg [8:0] restart_counter;
wire axi_buffer_empty;
wire read_from_axi;
reg [31:0] shift_reg_16_bit;
wire [31:0] axi_read_data;

//assign buffer_read_debug = (vert_pos < VERT_RES) & (horiz_pos < HORIZ_RES);
//assign buffer_write_debug = (state_shift_reg == STATE_16_SHIFT_STORED | state_shift_reg == STATE_16_SHIFT_SHIFTED) & !buffer_full;


//assign axi_empty_debug =  axi_buffer_empty;
//assign buffer_empty_debug = 
//assign buffer_full_debug = buffer_full;
//assign shift_16_debug = shift_reg_16_bit[31:16];
//assign vert_pos_debug = vert_pos;
//assign horiz_pos_debug = horiz_pos;
//assign trigger_restart_debug = trigger_restart_state == RESTART_STATE_RESTART;



assign read_from_axi = !axi_buffer_empty & !buffer_full & (state_shift_reg == STATE_16_SHIFT_IDLE | state_shift_reg == STATE_16_SHIFT_SHIFTED) ? 1 : 0;

always @(posedge clk_axi)
  if (read_from_axi)
    shift_reg_16_bit <= {axi_read_data[31:16], axi_read_data[15:0]}/*axi_read_data*/;
  else if (state_shift_reg == STATE_16_SHIFT_STORED & !buffer_full)
    shift_reg_16_bit <= {shift_reg_16_bit[15:0], 16'b0};

always @(posedge clk_axi)
  case (state_shift_reg)
    2'd0: state_shift_reg <= !axi_buffer_empty & !buffer_full ? STATE_16_SHIFT_STORED : STATE_16_SHIFT_IDLE;      
    2'd1: state_shift_reg <= buffer_full ? STATE_16_SHIFT_STORED : STATE_16_SHIFT_SHIFTED;
    2'd2: /*state <= STATE_IDLE*/
                   if (buffer_full)
                     state_shift_reg <= STATE_16_SHIFT_SHIFTED;
                   else if (axi_buffer_empty)
                     state_shift_reg <= STATE_16_SHIFT_IDLE;
                   else
                     state_shift_reg <= STATE_16_SHIFT_STORED;      
  endcase


always @(posedge clk_axi)
if (state == RESET_CYCLE)
begin
  horiz_pos_buffer <= 0;
  vert_pos_buffer <= 0;
end else
if (buffer_full)
begin
  //do nothing
end else
if (horiz_pos_buffer < 1359)
  horiz_pos_buffer <= horiz_pos_buffer + 1;
else begin
  horiz_pos_buffer <= 0;
  if (vert_pos_buffer < 767)
  begin
    vert_pos_buffer <= vert_pos_buffer + 1;
  end else
  begin
    vert_pos_buffer <= 0;  
  end
end


//state:
//wait for start of vsync
//reset cycle
//wait for end of vsync

aFifo
  #(.DATA_WIDTH(16))
  my_fifo
     //Reading port
    (.Data_out(out_pixel_buffer), 
//     .Empty_out(buffer_empty_debug),
           .ReadEn_in((vert_pos_next > 100)  & (vert_pos_next < 384) &
                           (horiz_pos_next > 100) & (horiz_pos_next < 505)),

     .RClk(clk),        
     //Writing port.	 
     .Data_in(/*out_pixel*/shift_reg_16_bit[31:16]),  
     .Full_out(buffer_full),
     .WriteEn_in(/*state != GET_SET*/(state_shift_reg == STATE_16_SHIFT_STORED | state_shift_reg == STATE_16_SHIFT_SHIFTED) & !buffer_full),
     .WClk(clk_axi),
	 
     .Clear_in(/*state == RESET_CYCLE)*/trigger_restart_state == RESTART_STATE_RESTART)
     
//     .next_word_read_debug(next_word_read_debug),
//     .next_word_write_debug(next_word_write_debug),
//     .equal_debug(equal_debug),
//     .next_add_read_enable_debug(next_add_read_enable_debug),
//     .next_add_write_enable_debug(next_add_write_enable_debug),
//     .set_status_debug(set_status_debug),
//     .rst_status(rst_status)
//     .status_debug(status_debug),
//     .preset_full_debug(preset_full_debug),
//     .preset_empty_debug(preset_empty_debug)

     );

//TODO: Data In
/*
take over outpixel functionality
extend case statement to two characters
extend selector of case statement to also include horizontal pos bit 

*/

//NB!! change to take output of buffer

burst_read_block my_read_block(
          .clk(clk_axi),
          .reset(reset),
          //.write(),
          .restart(trigger_restart_state == RESTART_STATE_RESTART),
          //.write_data(ram[current_address]), 
          .count_in_buf(),
          //output src ready
          //-----------------------------------------
          .ip2bus_mst_addr(ip2bus_mst_addr),
          .ip2bus_mst_length(ip2bus_mst_length),
          .ip2bus_mstrd_d(ip2bus_mstrd_d),
          .ip2bus_inputs(ip2bus_inputs),
          .ip2bus_otputs(ip2bus_otputs),
          .axi_d_out(axi_read_data),
          .empty(axi_buffer_empty),
          .read(read_from_axi/*!empty & byte_num == 0*/)
            );


assign red = out_pixel_buffer_final[15:11];
assign green = out_pixel_buffer_final[10:5];
assign blue = out_pixel_buffer_final[4:0];

//NB!! pixel in char is only used to know when to reload shift register
assign pixel_in_char = horiz_pos_buffer[2:0]; 
//NB!! change to take pixel in char + reuse for populating buffer
//assign out_pixel = (vert_pos < VERT_RES) & (horiz_pos < HORIZ_RES) ? (pixel_shift_reg[7] ? 16'hffff : 0) : 0;
//assign out_pixel_buffer_final = (vert_pos < VERT_RES) & (horiz_pos < HORIZ_RES) ? out_pixel_buffer : 0;
 assign out_pixel_buffer_final = (vert_pos > 100)  & (vert_pos < 384) &
                                (horiz_pos > 100) & (horiz_pos < 505)
                                ? out_pixel_buffer : 0;

assign out_pixel = pixel_shift_reg[7] ? 16'hffff : 0;

always @(posedge clk_axi)
begin
  vert_sync_delayed_1 <= vert_sync;
  vert_sync_delayed_2 <= vert_sync_delayed_1;   
  vert_sync_delayed_3 <= vert_sync_delayed_2;
  vert_sync_delayed_4 <= vert_sync_delayed_3;
  vert_sync_delayed_5 <= vert_sync_delayed_4;  
end

always @(posedge clk_axi)
  case (state)
    WAIT_START_VSYNC: state <= vert_sync_delayed_5 ? RESET_CYCLE : WAIT_START_VSYNC;  
    RESET_CYCLE: state <= GET_SET;
    GET_SET: state <= WAIT_END_VSYNC; 
    WAIT_END_VSYNC: state <= vert_sync_delayed_5 ? WAIT_END_VSYNC : WAIT_START_VSYNC;    
  endcase
  
  
always @(posedge clk_axi)
  if (trigger_restart_state == RESTART_STATE_WAIT)
    restart_counter <= 400;
  else if (trigger_restart_state == RESTART_STATE_RESTART)
    restart_counter <= restart_counter == 0 ? 0 : restart_counter - 1;
  
always @(posedge clk_axi)
  case (trigger_restart_state)
    RESTART_STATE_WAIT : trigger_restart_state <= vert_sync_delayed_5 ? RESTART_STATE_RESTART : RESTART_STATE_WAIT;
    RESTART_STATE_RESTART : trigger_restart_state <= restart_counter == 0 ? RESTART_STATE_END : RESTART_STATE_RESTART;   
    RESTART_STATE_END : trigger_restart_state <= vert_sync_delayed_5 ? RESTART_STATE_END : RESTART_STATE_WAIT;   
  endcase   
  

always @(posedge clk)
if (horiz_pos < TOTAL_HORIZ_RES - 1)
  horiz_pos <= horiz_pos + 1;
else begin
  horiz_pos <= 0;
  if (vert_pos < TOTAL_VERT_RES - 1)
  begin
    vert_pos <= vert_pos + 1;
  end else
  begin
    vert_pos <= 0;  
  end
end

always @*
if (horiz_pos < TOTAL_HORIZ_RES - 1)
begin
  horiz_pos_next = horiz_pos + 1;
  vert_pos_next = vert_pos;
end
else begin
  horiz_pos_next = 0;
  if (vert_pos < TOTAL_VERT_RES - 1)
  begin
    vert_pos_next = vert_pos + 1;
  end else
  begin
    vert_pos_next = 0;  
  end
end

always @(posedge clk_axi)
  if (buffer_full)
  begin
  end
  else
  if (pixel_in_char == 0)
  begin
  //pixel_shift_reg <= 0;
    case ({horiz_pos_buffer[3],vert_pos_buffer[2:0]})
      4'h0 : pixel_shift_reg <= 8'h18;
      4'h1 : pixel_shift_reg <= 8'h3C;
      4'h2 : pixel_shift_reg <= 8'h66;
      4'h3 : pixel_shift_reg <= 8'h7E;
      4'h4 : pixel_shift_reg <= 8'h66;
      4'h5 : pixel_shift_reg <= 8'h66;
      4'h6 : pixel_shift_reg <= 8'h66;
      4'h7 : pixel_shift_reg <= 8'h00;
      4'h8 : pixel_shift_reg <= 8'h7c;
      4'h9 : pixel_shift_reg <= 8'h66;
      4'ha : pixel_shift_reg <= 8'h66;
      4'hb : pixel_shift_reg <= 8'h7c;
      4'hc : pixel_shift_reg <= 8'h66;
      4'hd : pixel_shift_reg <= 8'h66;
      4'he : pixel_shift_reg <= 8'h7c;
      4'hf : pixel_shift_reg <= 8'h00;      
    endcase
  end    
  else
    pixel_shift_reg <= {pixel_shift_reg[6:0], 1'b0};   

assign vert_sync = vert_pos >= VERT_SYNC_START & vert_pos < VERT_SYNC_END;  
assign horiz_sync = horiz_pos >= HORIZ_SYNC_START & horiz_pos < HORIZ_SYNC_END;

  


//resolution -> 1360x768 
//pixel clock: 84.75MHz
//Horizontal blank: 416 pixels
//Horizontal front porch: 72 pixels
//Horizontal Sync: 136 pixels
//Horizontal Back Porch: 208 Pixels
//Vertical Blank: 30 lines
//V Front Porch: 3 lines
//Ver Sync: 5 lines
//V Back Porch: 22 lines 

//Front porch -> portion of signal before sync pulse
//Back porch -> portion of signal after sync pulse    
    
endmodule

