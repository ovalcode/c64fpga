`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.06.2019 09:54:45
// Design Name: 
// Module Name: keyboard
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


module keyboard(
  input [31:0] key_matrix_0,
  input [31:0] key_matrix_1,
  input [7:0] keyboard_control_byte,
  output [7:0] keyboard_result_byte
    );
    
    wire [7:0] keyboard_row_0;
    wire [7:0] keyboard_row_1;
    wire [7:0] keyboard_row_2;
    wire [7:0] keyboard_row_3;
    wire [7:0] keyboard_row_4;
    wire [7:0] keyboard_row_5;
    wire [7:0] keyboard_row_6;
    wire [7:0] keyboard_row_7;     

    assign keyboard_row_0 = key_matrix_0[7:0];
    assign keyboard_row_1 = key_matrix_0[15:8];
    assign keyboard_row_2 = key_matrix_0[23:16];
    assign keyboard_row_3 = key_matrix_0[31:24];
    assign keyboard_row_4 = key_matrix_1[7:0];
    assign keyboard_row_5 = key_matrix_1[15:8];
    assign keyboard_row_6 = key_matrix_1[23:16];
    assign keyboard_row_7 = key_matrix_1[31:24];
    
    assign keyboard_result_byte = ~((~keyboard_control_byte[0] ? keyboard_row_0 : 0) |           
                                   (~keyboard_control_byte[1] ? keyboard_row_1 : 0) |
                                   (~keyboard_control_byte[2] ? keyboard_row_2 : 0) |
                                   (~keyboard_control_byte[3] ? keyboard_row_3 : 0) |
                                   (~keyboard_control_byte[4] ? keyboard_row_4 : 0) |
                                   (~keyboard_control_byte[5] ? keyboard_row_5 : 0) |
                                   (~keyboard_control_byte[6] ? keyboard_row_6 : 0) |
                                   (~keyboard_control_byte[7] ? keyboard_row_7 : 0));
    
endmodule
