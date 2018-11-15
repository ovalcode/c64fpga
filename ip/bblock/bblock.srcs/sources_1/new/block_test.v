`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.03.2018 11:12:03
// Design Name: 
// Module Name: block_test
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


module block_test(
  input clk,
  input axi_clk_in,
  output [15:0] addr_a,
  output [7:0] data_a,
  output [15:0] addr_b,
  output [7:0] data_b,
  input proc_rst,
  output proc_rst_neg,
  output clk_2_mhz_debug,
  output [23:0] out_rgb,
  output blank_signal,
  output wire [31:0] ip2bus_mst_addr,
  output wire [11:0] ip2bus_mst_length,
  output wire [31:0] ip2bus_mstwr_d,
  output wire [4:0] ip2bus_inputs,
  input wire [5:0] ip2bus_otputs,
  input wire [31:0] slave_0_reg, //row 3 - row 0
  input wire [31:0] slave_1_reg, // row 7 - row 4
  output wire [12:0] count_in_buf,
  output wire read

    );
    
    wire we;

    wire frame_sync;

    reg [7:0] ram [65535:0];
    wire [15:0] addr_ram_in;
    wire [7:0] ram_data_in;
    wire [15:0] addr_2_ram_in;
    reg [7:0] ram_out;
    reg [7:0] ram_out_2;
    reg [15:0] addr_counter_1;
    reg [15:0] addr_counter_2;
    reg [24:0] reset_counter = 0;
    reg [24:0] portb_reset_counter = 0;
    wire [15:0] portb_add;
    reg [8:0] x_pos;
    reg [8:0] y_pos;
    reg [15:0] combined_d_out;
    reg [7:0] line_counter;
    reg [2:0] clk_counter;
//    reg [2:0] clk_div;
    reg [7:0] vic_combined_d;
    wire reset;
    wire clk_1_mhz;
    wire clk_2_mhz;
    wire c64_reset;
    wire [15:0] addr;
    wire [7:0] ram_in;
    reg [15:0] addr_delayed;
    wire [7:0] kernel_out;
    wire [7:0] basic_out;
    wire [13:0] vic_addr;
    wire [15:0] temp_addr; 
    reg [2:0] clk_div_counter = 0;
    reg clk_1_enable;
    reg clk_2_enable;
    wire [7:0] chargen_out;
    reg [1:0] cont_bits = 0;    
    reg target_logic_level = 0;
    reg do_sample;
    wire [15:0] pixel_16_bit;
//    wire [23:0] out_rgb;
    reg [15:0] pixel_16_bit_delay;
    reg pixel_sample_offset = 0;
//    wire blank_signal;
//    wire frame_sync;
    reg [31:0] full_reg;
    reg [15:0] counter_60_hz;
    reg int_occ = 0;
    reg [7:0] keyboard_control_byte;
    wire [7:0] keyboard_result_byte;
    wire write_pin;
    
    wire [7:0] keyboard_row_0;
    wire [7:0] keyboard_row_1;
    wire [7:0] keyboard_row_2;
    wire [7:0] keyboard_row_3;
    wire [7:0] keyboard_row_4;
    wire [7:0] keyboard_row_5;
    wire [7:0] keyboard_row_6;
    wire [7:0] keyboard_row_7;     

    assign keyboard_row_0 = slave_0_reg[7:0];
    assign keyboard_row_1 = slave_0_reg[15:8];
    assign keyboard_row_2 = slave_0_reg[23:16];
    assign keyboard_row_3 = slave_0_reg[31:24];
    assign keyboard_row_4 = slave_1_reg[7:0];
    assign keyboard_row_5 = slave_1_reg[15:8];
    assign keyboard_row_6 = slave_1_reg[23:16];
    assign keyboard_row_7 = slave_1_reg[31:24];
    
    assign keyboard_result_byte = (~keyboard_control_byte[0] ? keyboard_row_0 : 0) |           
                                  (~keyboard_control_byte[1] ? keyboard_row_1 : 0) |
                                  (~keyboard_control_byte[2] ? keyboard_row_2 : 0) |
                                  (~keyboard_control_byte[3] ? keyboard_row_3 : 0) |
                                  (~keyboard_control_byte[4] ? keyboard_row_4 : 0) |
                                  (~keyboard_control_byte[5] ? keyboard_row_5 : 0) |
                                  (~keyboard_control_byte[6] ? keyboard_row_6 : 0) |
                                  (~keyboard_control_byte[7] ? keyboard_row_7 : 0);
    

    always @(posedge clk_1_mhz)
    if (addr == 16'hdc00 & we)
      keyboard_control_byte <= ram_in;
    
    always @(negedge axi_clk_in)
        do_sample <= (cont_bits == 3) & target_logic_level;
        
    always @(posedge clk_1_mhz)
    if (c64_reset | counter_60_hz == 0)
      counter_60_hz <= 16666;
    else
      counter_60_hz <= counter_60_hz - 1;
      

    always @(posedge clk_1_mhz)
    if (c64_reset)
      int_occ <= 0;
    else if (counter_60_hz == 0)
      int_occ <= 1;
    else if (addr == 16'hdc0d & we == 0)                  
      int_occ <= 0;        
        
    assign write_pin = do_sample ? !blank_signal & pixel_sample_offset : 0;  
         
    assign pixel_16_bit = {out_rgb[23:19],out_rgb[15:10],out_rgb[7:3]};
    
    always @(posedge clk)
      if (frame_sync)
        pixel_sample_offset <= 0;
      else if (!blank_signal)
        pixel_sample_offset <= ~pixel_sample_offset;
    
    always @(posedge clk)      
      pixel_16_bit_delay <= pixel_16_bit;
      
      //NB!! connect to ipburst
  // always @(posedge axi_clk_in)
  //   if (target_logic_level & do_sample & !blank_signal & pixel_sample_offset)
  //     full_reg <= {pixel_16_bit_delay,pixel_16_bit};
    
    always @(posedge axi_clk_in)
    if (cont_bits == 3)
      target_logic_level <= ~target_logic_level;
      
    always @(posedge axi_clk_in)
    if (clk == target_logic_level)
      cont_bits <= cont_bits + 1;
    else
      cont_bits <= 0;

    always @(posedge clk_1_mhz)
      addr_delayed <= addr;
      
    always @(posedge clk)
      clk_counter <= clk_counter + 1;
      
    always @(posedge clk)
      clk_div_counter <= clk_div_counter + 1; 
      

    always @(negedge clk)
      clk_1_enable <= (clk_div_counter == 7);

    always @(negedge clk)
      clk_2_enable <= (clk_div_counter == 2) | (clk_div_counter == 6) ;

      assign portb_add = (portb_reset_counter < 3900000) ? portb_reset_counter[15:0] : {2'b0,vic_addr}; 
//    assign clk_1_mhz = x_pos[2];
//    assign clk_2_mhz = x_pos[1];
    assign clk_2_mhz_debug = clk_2_mhz;
    assign proc_rst_neg = !proc_rst;
//    assign ram_data_in = 5;
//    assign addr_ram_in = addr_counter_1;
//    assign addr_2_ram_in = addr_counter_2;
    assign addr_a = addr;
    assign addr_b = {2'b0,vic_addr};
    assign data_a = ram_out;
    assign data_b = ram_out_2;
    assign temp_addr = 16'h409;
//    assign clk_1_mhz = clk_counter[2];
//    assign clk_2_mhz = clk_counter[1];
    
       BUFGCE BUFGCE_1_mhz (
       .O(clk_1_mhz),   // 1-bit output: Clock output
       .CE(clk_1_enable), // 1-bit input: Clock enable input for I0
       .I(clk)    // 1-bit input: Primary clock
    );

       BUFGCE BUFGCE_2_mhz (
       .O(clk_2_mhz),   // 1-bit output: Clock output
       .CE(clk_2_enable), // 1-bit input: Clock enable input for I0
       .I(clk)    // 1-bit input: Primary clock
    );

//    assign reset = reset_counter < 8000000 ? 1 : 0;
//    assign we = 0;//(reset_counter > 8000000) & (reset_counter < 8000015) ? 1 : 0;
//    assign c64_reset = (reset_counter > 8000000) & (reset_counter < 8000020) ? 1 : 0;
    
    cpu mycpu ( clk_1_mhz, c64_reset, addr, combined_d_out, ram_in, we, int_occ/*0*/, 1'b0, 1'b1 );
    
/*    vicii vic_inst(
      .clk_in(clk),
//      .reset(),
      .c64_reset(c64_reset),
      .clk_1_mhz(clk_1_mhz),
      .clk_2_mhz(clk_2_mhz),
      .addr(vic_addr)
        );*/

/*vic_test vic_inst
(
  .clk_in(clk),
//  .reset(),
  .clk_1_mhz(clk_1_mhz),
  .clk_2_mhz(clk_2_mhz),
  .c64_reset(c64_reset),
  .addr(vic_addr)
    );*/
    
vic_test_3 vic_inst
    (
      /*.clk_in(clk),
    //  input reset,
    //  output clk_1_mhz,
      .clk_2_mhz(clk_2_mhz),
      .c64_reset(c64_reset),
      .data_in({14'd4,vic_combined_d}),
      .addr(vic_addr)*/
      
        .clk_in(clk),
        .clk_counter(clk_div_counter),
    //  input reset,
    //  output clk_1_mhz,
        .clk_2_mhz(clk_2_mhz),
        .blank_signal(blank_signal),
        .frame_sync(frame_sync),
        .data_in({14'd4,vic_combined_d}),
        .c64_reset(c64_reset),
        .addr(vic_addr),
        .out_rgb(out_rgb)

        );
        
    burst_block burst_tst(
            .clk(axi_clk_in),
            .reset(proc_rst),
            .write(/*target_logic_level & do_sample & !blank_signal & pixel_sample_offset*/write_pin),
            .next_frame(frame_sync),
            .write_data({pixel_16_bit_delay,pixel_16_bit}), 
            .count_in_buf(count_in_buf),
            //output src ready
            //-----------------------------------------
            .ip2bus_mst_addr(ip2bus_mst_addr),
            .ip2bus_mst_length(ip2bus_mst_length),
            .ip2bus_mstwr_d(ip2bus_mstwr_d),
            .ip2bus_inputs(ip2bus_inputs),
            .ip2bus_otputs(ip2bus_otputs),
            .read(read)
              );


    always @(posedge clk_2_mhz)
    if (portb_reset_counter < 4000000)
      portb_reset_counter <= portb_reset_counter + 1;
    
    always @(posedge clk_1_mhz)
      if (c64_reset)
        line_counter <= 0;
      else
        line_counter <= line_counter + 1;

/*    always @(posedge clk)
    if (reset_counter < 9000000)
      reset_counter <= reset_counter + 1;*/
      
    always @*
        casex (addr_delayed)
          16'b101x_xxxx_xxxx_xxxx : combined_d_out = basic_out;
          16'b111x_xxxx_xxxx_xxxx : combined_d_out = kernel_out;
          16'hd012: combined_d_out = line_counter;
          16'hdc01: combined_d_out = ~keyboard_result_byte;
//          16'b1101_10xx_xxxx_xxxx : combined_d_out = color_ram_out;
          default: combined_d_out = ram_out;
        endcase
        
    rom #(
         .ROM_FILE("/home/johan/Documents/roms/kernel.hex")
        ) kernel(
          .clk(clk_1_mhz),
          .addr(addr[12:0]),
          .rom_out(kernel_out)
            );
        
        rom #(
         .ROM_FILE("/home/johan/Documents/roms/basic.hex")
        ) basic(
          .clk(clk_1_mhz),
          .addr(addr[12:0]),
          .rom_out(basic_out)
            );

    rom #(
           .ROM_FILE("/home/johan/Documents/roms/chargen.hex"),
           .ADDR_WIDTH(12)
          ) chargen(
            .clk(clk_2_mhz),
            .addr(vic_addr[12:0]),
            .rom_out(chargen_out)
              );

      
    /*always @(posedge clk_1_mhz)
      if (reset)
        addr_counter_1 <= 0;
      else
        addr_counter_1 <= addr_counter_1 + 1;*/

//    always @(posedge clk)
//      clk_div <= clk_div + 1;

/*  always @(posedge clk)
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
  end*/

    
    always @(posedge clk_2_mhz)
      if (addr_counter_2 < 16'h500)
        addr_counter_2 <= addr_counter_2 + 1;
      else
        addr_counter_2 <= 16'h400;
            
     always @ (posedge clk_1_mhz)
       begin
        if (we) 
        begin
         ram[addr] <= ram_in;
         ram_out <= ram_in;
        end
        else 
        begin
         ram_out <= ram[addr];
        end 
       end 
   
    always @ (posedge clk_2_mhz)
       begin
         ram_out_2 <= ram[/*{2'b0,vic_addr}*/portb_add]; 
//         ram_out_2 <= ram[temp_addr]; 
       end 
       
always @*
         casex (vic_addr)
           14'h1xxx : vic_combined_d = chargen_out;
           default: vic_combined_d = ram_out_2;
         endcase


initial begin
      $readmemh("/home/johan/ee2.txt", ram) ;
    end 

endmodule