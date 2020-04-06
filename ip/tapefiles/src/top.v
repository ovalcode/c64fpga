`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.04.2019 14:58:35
// Design Name: 
// Module Name: top
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


module top(
  input wire clk,
  input wire clk_1_mhz,
  input wire restart,
  input wire reset,
  output wire [31:0] ip2bus_mst_addr,
  output wire [11:0] ip2bus_mst_length,
  input wire [31:0] ip2bus_mstrd_d,
  output wire [4:0] ip2bus_inputs,
  input wire [5:0] ip2bus_otputs,
  input wire motor_control,
  output wire pwm
    );
    
wire data_valid_read_word;
wire [7:0] byte_data;
wire [31:0] r_word_data_out;
wire ack_byte_slice;
wire data_valid_byte;
wire ack_sample_assem;
wire [23:0] timer_val;
wire load_timer;
    
read_word r_word(
      .clk(clk),
      .restart(restart),
      .reset(reset),
//      .count_in_buf(),
      .ack(ack_byte_slice),
      .ip2bus_mst_addr(ip2bus_mst_addr),
      .ip2bus_mst_length(ip2bus_mst_length),
      .ip2bus_mstrd_d(ip2bus_mstrd_d),
      //not used
//      .axi_d_out(),
      //not used
      .data_wire_out(r_word_data_out),
      .ip2bus_inputs(ip2bus_inputs),
      .ip2bus_otputs(ip2bus_otputs),
//      .empty(),
//      .read(),
//      .reset_1_mhz(),
      .data_valid(data_valid_read_word)
        );
        
byteslicer byte_slice(
          .clk(clk_1_mhz),
          .data_valid(data_valid_read_word),
          .byte_out(byte_data),
          .ack(ack_byte_slice),
          .data_in(r_word_data_out),
          .restart(restart),
          .data_valid_out(data_valid_byte),
          .read(ack_sample_assem)
            );
        
sample_assembler samp_assem(
              .clk(clk_1_mhz),
              .data_valid(data_valid_byte),
              .data(byte_data),
              .ack(ack_sample_assem),
              .pwm(pwm),
              .timer_val(timer_val),
              .load_timer(load_timer),
              //.tape_out(),
              .restart(restart)
                );
        
tape_pwm t_pwm(
                  .time_val(timer_val),
                  .load_timer(load_timer),
                  .pwm(pwm),
                  .motor_control(motor_control),
                  .clk(clk_1_mhz)
                    );
    
endmodule
