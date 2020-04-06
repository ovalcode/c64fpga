`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.05.2019 20:31:14
// Design Name: 
// Module Name: cia
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


module cia(
  output [7:0] port_a_out,
  input [7:0] port_a_in,
  output [7:0] port_b_out,
  input [7:0] port_b_in,
  input [3:0] addr,
  input we,
  input chip_select,
  input clk,
  input [7:0] data_in,
  input flag1,
  output reg [7:0] data_out,
  output irq
    );
    
  reg [7:0] slave_reg_0 = 0;
  reg [7:0] slave_reg_1 = 0;
  reg [7:0] slave_reg_2 = 0;
  reg [7:0] slave_reg_3 = 0;
  reg [7:0] slave_reg_4 = 255;
  reg [7:0] slave_reg_5 = 255;
  reg [7:0] slave_reg_6 = 255;
  reg [7:0] slave_reg_7 = 255;  
  reg [7:0] slave_reg_14 = 255;
  reg [7:0] slave_reg_15 = 255;

  reg [4:0] int_mask = 0;
  reg [4:0] int_stat = 0;
  wire write_cra;
  wire write_crb;
  wire timer_a_overflow;
  wire timer_b_overflow;
  
  wire [15:0] counter_a_val;
  wire started_status_a;
  wire runmode_status_a; 

  wire [15:0] counter_b_val;
  wire started_status_b;
  wire runmode_status_b; 

  
  assign write_cra = we & (addr == 14) ? 1 : 0;
  assign write_crb = we & (addr == 15) ? 1 : 0;
  assign irq = (int_stat & int_mask) ? 1 : 0;
  
  assign port_a_out = slave_reg_0;
  assign port_b_out = slave_reg_1;
  
  always @(posedge clk)
  if (chip_select & !we & (addr == 13))
    int_stat <= 0;
  else
    int_stat <= int_stat | {flag1, 1'b0, 1'b0, timer_b_overflow, timer_a_overflow};
  
  
  always @(posedge clk)
  if(!we)
  case (addr)
    0: data_out <= /*(slave_reg_0 & slave_reg_2) |
                   (port_a_in & ~slave_reg_2);*/
                   port_a_in;
    1: data_out <= /*(slave_reg_1 & slave_reg_3) |
                   (port_b_in & ~slave_reg_3);*/
                   port_b_in;
    2: data_out <= slave_reg_2;
    3: data_out <= slave_reg_3;
    4: data_out <= counter_a_val[7:0];
    5: data_out <= counter_a_val[15:8];
    6: data_out <= counter_b_val[7:0];
    7: data_out <= counter_b_val[15:8];
    13: data_out <= {irq, 2'b0, int_stat};
    14: data_out <= {slave_reg_14[7:5],
                     1'b1,
                     runmode_status_a,
                     slave_reg_14[2],
                     slave_reg_14[1],
                     started_status_a
    };
    15: data_out <= {slave_reg_15[7:5],
                     1'b1,
                     runmode_status_b,
                     slave_reg_15[2],
                     slave_reg_15[1],
                     started_status_b
    };

  endcase
  
  always @(posedge clk)
  if (we)
  case (addr)
    0: slave_reg_0 <= data_in;
    1: slave_reg_1 <= data_in;
    2: slave_reg_2 <= data_in;
    3: slave_reg_3 <= data_in;
    4: slave_reg_4 <= data_in;
    5: slave_reg_5 <= data_in;
    6: slave_reg_6 <= data_in;
    7: slave_reg_7 <= data_in;
    13: if (data_in[7]) 
          int_mask <= int_mask | data_in[4:0];
        else
          int_mask <= int_mask & ~data_in[4:0];
    14: slave_reg_14 <= data_in;
    15: slave_reg_15 <= data_in;
  endcase
  
  timer timer_a(
    .reload_val({slave_reg_5,slave_reg_4}),
    .force_reload(write_cra & data_in[4]),
    .new_started(data_in[0]),
    .new_runmode(data_in[3]),
    .write_control(write_cra),
    .clk(clk),
    .counter_out(counter_a_val),
    .started_status(started_status_a),
    .runmode_status(runmode_status_a), 
    .overflow(timer_a_overflow)
      );

  timer timer_b(
    .reload_val({slave_reg_7,slave_reg_6}),
    .force_reload(write_crb & data_in[4]),
    .new_started(data_in[0]),
    .new_runmode(data_in[3]),
    .write_control(write_crb),
    .clk(clk),
    .counter_out(counter_b_val),
    .started_status(started_status_b),
    .runmode_status(runmode_status_b), 
     .overflow(timer_b_overflow)
      );

endmodule
