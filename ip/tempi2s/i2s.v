`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.01.2019 14:47:37
// Design Name: 
// Module Name: i2c
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


module i2s(
  input clk,
  input clk_1_mhz,
  input clk_100_mhz,
  input [15:0] audio_in,
  output clk_reset,
  output clk_1_5_mhz,
  output channel_enable,
  output out_data,
  output mute_en
    );
    
    reg [1:0] clk_div_counter = 0;
    //reg clk_1_enable;
    reg [31:0] clk_reset_counter = 100000000;
    reg [3:0] channel_enable_counter = 0;
    reg [31:0] shift_reg;
    reg [15:0] data_val = 0;
    reg [7:0] sample_mod_counter = 7;
    reg [31:0] data_out_enable = 0;
    reg bclk_int = 0;
    reg prclk_int = 0;
    wire neg_edge;
    (* ASYNC_REG = "TRUE" *) reg sig_48_khz_0, sig_48_khz_1, sig_48_khz_2; 
        
    assign mute_en = 1'b1;
    //assign channel_enable = channel_enable_counter[4];
    assign out_data = shift_reg[31];
    assign clk_reset = clk_reset_counter > 3000000 ? 1 : 0;
    //assign clk_1_5_mhz = clk_div_counter[2];
    assign neg_edge = (clk_div_counter == 3) & (bclk_int == 1) ? 1 : 0;
    assign clk_1_5_mhz = bclk_int;
    assign channel_enable = prclk_int;

    always @(posedge clk_1_mhz)
    begin
       sig_48_khz_0 <= channel_enable;
       sig_48_khz_1 <= sig_48_khz_0;
       sig_48_khz_2 <= sig_48_khz_1; 
    end
    
    always @(posedge clk)
      if (data_out_enable < 1288000000)
       data_out_enable <= data_out_enable + 1;
    
    always @(posedge clk_100_mhz)
    if (clk_reset_counter > 1000000)
      clk_reset_counter <= clk_reset_counter - 1;
    
    
    always @(posedge clk_1_mhz)
    if (!sig_48_khz_1 & sig_48_khz_2)
      data_val <= audio_in;//tape_in ? 30000 : 0;
    /*always @(posedge clk)
    if (channel_enable_counter == 15 & neg_edge)
    begin
      if (sample_mod_counter == 0)
      begin
        sample_mod_counter <= 6;
        data_val <= (data_val == 0) ? 30000 : 0;        
      end
      else
        sample_mod_counter <= sample_mod_counter - 1;
    end*/
    
    always @(posedge /*clk_1_5_mhz*/clk)
    if (channel_enable_counter == 15 & neg_edge)
    begin
      shift_reg <= {data_val, data_val};
      /*data_val <= (data_val == 0) ? 30000 : 0;*/
    end
    else if (neg_edge)
      shift_reg <= {shift_reg[30:0] , 1'b0};
    
    always @(posedge clk/*clk_1_5_mhz*/)
    if (neg_edge)
      channel_enable_counter <= channel_enable_counter + 1;

    always @(posedge clk)
    if (neg_edge & channel_enable_counter == 15)
      prclk_int <= ~prclk_int;
      
    /*always @(negedge clk)
      clk_1_enable <= (clk_div_counter == 7);*/
    always @(posedge clk)
    if (clk_div_counter == 3)
      bclk_int <= ~bclk_int;

    always @(posedge clk)
      if (data_out_enable > 248700000)
        clk_div_counter <= clk_div_counter + 1; 

       /*BUFGCE BUFGCE_1_mhz (
       .O(clk_1_5_mhz),   // 1-bit output: Clock output
       .CE(clk_1_enable), // 1-bit input: Clock enable input for I0
       .I(clk)    // 1-bit input: Primary clock
    );*/

endmodule

