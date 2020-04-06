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
  output [7:0] c_data_debug,
  output [7:0] cpu_data_debug,
  output we_debug,
  output [15:0] addr_b,
  output [7:0] data_b,
  output [8:0] x_pos_debug,
  output [6:0] cycle_in_line_debug,
  output [2:0] clk_counter_debug,
  //=============================
  output c64reset_debug,
  output flag1_debug,
  output flag1_delayed_debug,
  output irq_debug,
  output addr_debug,
  //=============================
  input proc_rst,
  input reset_cpu,
  input locked,
  output proc_rst_neg,
  output clk_2_mhz_debug,
  output [23:0] out_rgb,
  output blank_signal,
  output wire [31:0] ip2bus_mst_addr,
  output wire [11:0] ip2bus_mst_length,
  output wire clk_1_mhz,
  input wire pwm,
  input wire [4:0] joybits,
  input wire [4:0] joybits2,   
  input wire flag1,
  output wire [31:0] ip2bus_mstwr_d,
  output wire [4:0] ip2bus_inputs,
  input wire [5:0] ip2bus_otputs,
  input wire [31:0] slave_0_reg, //row 3 - row 0
  input wire [31:0] slave_1_reg, // row 7 - row 4
  input wire tape_button,
  output wire motor_control,
  output wire [12:0] count_in_buf,
  output wire read,
  output wire [15:0] audio_out

    );
    //`define SIM
    `ifdef SIM
      `define kernel_file "/home/johan/Documents/roms/kernel.hex"
    `else
      `define kernel_file "/home/johan/Documents/roms/kernel.hex"
    `endif
    wire we;
    wire we_raw;

    wire frame_sync;

    reg [7:0] reg_1_6510 = 8'h37;
    reg [7:0] ram [65535:0];
    reg [3:0] color_ram [999:0];
    reg flag1_delayed;
    wire [15:0] addr_ram_in;
    wire [7:0] ram_data_in;
    wire [15:0] addr_2_ram_in;
    wire color_ram_write_enable;
    reg [7:0] ram_out;
    reg [7:0] ram_out_2;
    wire [7:0] cia_2_port_a;
    wire [7:0] cia_2_data_out;
    reg [3:0] color_ram_out;
    reg [3:0] color_ram_out2;
    reg [15:0] addr_counter_1;
    reg [15:0] addr_counter_2;
    reg [31:0] reset_counter = 0;
    reg [24:0] portb_reset_counter = 0;
    wire [15:0] portb_add;
    reg [8:0] x_pos;
    reg [8:0] y_pos;
    reg [15:0] combined_d_out;
    reg [7:0] cycle_in_line;
    wire [7:0] line_counter;
    reg [15:0] raster_cnt;
    reg [2:0] clk_counter;
    wire irq;
    wire io_enabled;
    //reg io_address;
    wire do_io_write;
    wire irq_vic;
//    reg [2:0] clk_div;
    reg [7:0] vic_combined_d;
    wire reset;
    //wire clk_1_mhz;
    wire clk_2_mhz;
    wire c64_reset;
    wire [15:0] addr;
    wire [7:0] cia_1_data_out;
    wire [7:0] vic_reg_data_out;
    wire [7:0] ram_in;
    reg [15:0] addr_delayed;
    wire [7:0] kernel_out;
    wire [7:0] basic_out;
    wire [13:0] vic_addr;
    wire [15:0] temp_addr; 
(* equivalent_register_removal = "no" *)
    reg [2:0] clk_div_counter = 0;
(* equivalent_register_removal = "no" *)
    reg [2:0] clk_div_counter_cycle = 0;
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
    //reg [15:0] counter_60_hz;
    //reg int_occ = 0;
    wire write_pin;
    wire [7:0] keyboard_control;
    wire [7:0] keyboard_result;
    wire [4:0] key_joy_merged;
    wire reset_custom;
    wire [15:0] portb_raw;
    reg [15:0] addr_2_delay;
    reg [1:0] test_2_bits = 2'b11;

    assign c_data_debug = combined_d_out;
    assign cpu_data_debug = ram_in;
    assign we_debug = we_raw;

    
    always @(posedge clk_2_mhz)
    if (test_2_bits[0])
      test_2_bits <= ~test_2_bits;
    
    always @(posedge clk_2_mhz)
    addr_2_delay <= addr;

    assign reset_custom = reset_counter < 350000000;
    always @(posedge axi_clk_in)
    if (reset_counter < 400000000)
      reset_counter <= reset_counter + 1;

    assign io_enabled = reg_1_6510[2] && !(reg_1_6510[1:0] == 0);
    //assign io_address = 
    //assign clk_counter_debug = clk_div_counter;
    assign motor_control = reg_1_6510[5];
    assign color_ram_write_enable = we & io_enabled & (addr >= 16'hd800 & addr < 16'hdbe8);

    /*always @*
        casex (addr)
          16'hd020, 16'hd021, 16'hd022, 16'hd023, 16'hd011, 16'hd019, 16'hd01a,
          16'hd016, 16'hd018, 16'hd012, 16'b1101_10xx_xxxx_xxxx,
          16'hdcxx, 16'hddxx: io_address = 1;
          default: io_address = 0;
        endcase*/

    assign do_io_write = io_enabled & /*io_address*/((addr >= 16'hd000) && (addr < 16'he000));
    
    assign key_joy_merged = ~(~keyboard_result[4:0] | ~joybits2);
    
    always @(posedge clk_1_mhz)
    if (reset_cpu)
      reg_1_6510 <= 8'h37;
    else if (we & (addr == 1))
      reg_1_6510 <= ram_in;
    
    keyboard key_inst(
      .key_matrix_0(slave_0_reg),
      .key_matrix_1(slave_1_reg),
      .keyboard_control_byte(keyboard_control),
      .keyboard_result_byte(keyboard_result)
        );
        
    cia cia_1(
          .port_a_out(keyboard_control),
          .port_a_in({3'b111, joybits}),
          .port_b_in({keyboard_result[7:5],key_joy_merged}),
          .addr(addr[3:0]),
          .we(we & io_enabled & (addr[15:8] == 8'hdc)),
          .clk(clk_1_mhz),
          .chip_select(addr[15:8] == 8'hdc & io_enabled),
          .data_in(ram_in),
          .data_out(cia_1_data_out),
          .flag1(flag1 & !flag1_delayed),
//          .flag1(0),
          .irq(irq)
            );

    cia cia_2(
          .port_a_out(cia_2_port_a),
          //.port_b_in(keyboard_result),
          .port_a_in(8'b11111111),
          .port_b_in(8'b11111111),
          .addr(addr[3:0]),
          .we(we & io_enabled & (addr[15:8] == 8'hdd)),
          .clk(clk_1_mhz),
          .chip_select(addr[15:8] == 8'hdd & io_enabled),
          .data_in(ram_in),
          .data_out(cia_2_data_out)
          //.flag1(flag1 & !flag1_delayed),
//          .flag1(0),
          //.irq(irq)
            );

MOS6581 sid(
    .audio_out(audio_out),
    .addr(addr[4:0]),
    .data(ram_in),       // TODO: inout
    .n_cs(!(we & io_enabled & (addr[15:8] == 8'hd4))),
    .rw(0),
    .clk(clk_1_mhz), .clk_en(1), .n_reset(!c64_reset)
);

    always @(posedge clk_1_mhz)
      flag1_delayed <= flag1;

    always @(negedge axi_clk_in)
        do_sample <= (cont_bits == 3) & target_logic_level;
        
    /*always @(posedge clk_1_mhz)
    if (c64_reset | counter_60_hz == 0)
      counter_60_hz <= 16666;
    else
      counter_60_hz <= counter_60_hz - 1;
    */

    /*always @(posedge clk_1_mhz)
    if (c64_reset)
      int_occ <= 0;
    else if (counter_60_hz == 0)
      int_occ <= 1;
    else if (addr == 16'hdc0d & we == 0)                  
      int_occ <= 0;*/        
        
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

    always @(posedge clk)
      clk_div_counter_cycle <= clk_div_counter_cycle + 1; 
      

    always @(negedge clk)
      clk_1_enable <= (clk_div_counter == 7);

    always @(negedge clk)
      clk_2_enable <= (clk_div_counter == 2) | (clk_div_counter == 6) ;

    assign portb_raw = {~cia_2_port_a[1:0]/*2'b0*//*test_2_bits*/,vic_addr};
    assign portb_add = (clk_div_counter_cycle == 7) ? {portb_raw[15:1],~addr[0]} : portb_raw;
 
//    assign portb_add = /*(portb_reset_counter < 3900000) ? portb_reset_counter[15:0] :*/ {/*~cia_2_port_a[1:0]*/2'b0,vic_addr}; 
//    assign clk_1_mhz = x_pos[2];
//    assign clk_2_mhz = x_pos[1];
    assign clk_2_mhz_debug = clk_2_mhz;
    assign proc_rst_neg = !proc_rst;
//    assign ram_data_in = 5;
//    assign addr_ram_in = addr_counter_1;
//    assign addr_2_ram_in = addr_counter_2;
    assign addr_a = addr;
    assign addr_b = {~cia_2_port_a[1:0],vic_addr};
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
    
`ifdef SIM
    cpu mycpu ( clk_1_mhz, proc_rst, addr, combined_d_out, ram_in, we_raw, (irq || irq_vic)/*0*/, 1'b0, 1'b1 );
`else
    cpu mycpu ( clk_1_mhz, (c64_reset | reset_cpu)/*reset_custom*/, addr, combined_d_out, ram_in, we_raw, (irq || irq_vic)/*0*/, 1'b0, 1'b1 );
`endif    

assign we = ((clk_div_counter_cycle != 6) && (clk_div_counter_cycle != 2)  /*&& !reset_custom*/) ? we_raw : 0;
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
      
//        .x_pos_debug(x_pos_debug),
//        .cycle_in_line_debug(cycle_in_line_debug),  
        .clk_in(clk),
        .locked(locked),
        .irq(irq_vic),
        .clk_counter(clk_div_counter_cycle),
    //  input reset,
    //  output clk_1_mhz,
        .clk_2_mhz(clk_2_mhz),
        .blank_signal(blank_signal),
        .frame_sync(frame_sync),
        .data_in({color_ram_out2,vic_combined_d}),
        .c64_reset(c64_reset),
        .addr(vic_addr),
        .out_rgb(out_rgb),
        .clk_1_mhz(clk_1_mhz),
        .addr_in(addr[5:0]),
        .reg_data_in(ram_in),
        .we(we & io_enabled & (addr[15:10] == 6'h34)),
        .data_out(vic_reg_data_out)

        );

`ifndef SIM        
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
`endif

    always @(posedge clk_2_mhz)
    if (portb_reset_counter < 4000000)
      portb_reset_counter <= portb_reset_counter + 1;
    

//cycle_in_line

    always @(posedge clk_1_mhz)
      if (cycle_in_line < 63)
        cycle_in_line <= cycle_in_line + 1;
      else begin
        cycle_in_line <= 0;
        if (raster_cnt < 250)
          raster_cnt <= raster_cnt + 1;
        else
          raster_cnt <= 0;
      end

    //raster_cnt
    /*always @(posedge clk_1_mhz)
          if (raster_cnt == 20000)
            raster_cnt <= 0;
          else
            raster_cnt <= raster_cnt + 1;*/
    
    assign line_counter = (raster_cnt > 19800) ? 0 : 1;  
    /*always @(posedge clk_1_mhz)
      if (c64_reset)
        line_counter <= 0;
      else
        line_counter <= line_counter + 1;*/

/*    always @(posedge clk)
    if (reset_counter < 9000000)
      reset_counter <= reset_counter + 1;*/
      
    always @*
        casex (addr_delayed)
          16'b1: combined_d_out = {reg_1_6510[7:5], tape_button, reg_1_6510[3:0]};/*{ram_out[7:6], motor_control, tape_button, ram_out[3:0]};*/
          16'b101x_xxxx_xxxx_xxxx : if (reg_1_6510[1:0] == 2'b11)
                                      combined_d_out = basic_out;
                                    else
                                      combined_d_out = ram_out;
          16'b111x_xxxx_xxxx_xxxx : if (reg_1_6510[1])
                                      combined_d_out = kernel_out;
                                    else
                                      combined_d_out = ram_out;
          16'b1101_00xx_xxxx_xxxx : combined_d_out = io_enabled ? vic_reg_data_out : ram_out;
          //16'hd012: combined_d_out = io_enabled ? raster_cnt : ram_out;
          16'b1101_10xx_xxxx_xxxx: combined_d_out = io_enabled ? color_ram_out : ram_out;
          16'hdcxx: combined_d_out = io_enabled ? (/*(addr_delayed == 16'hdc00) ? 255 : */cia_1_data_out) : ram_out;
          16'hddxx: combined_d_out = io_enabled ? cia_2_data_out : ram_out;
//          16'b1101_10xx_xxxx_xxxx : combined_d_out = color_ram_out;
          default: combined_d_out = ram_out;
        endcase
        
    rom #(
         .ROM_FILE(`kernel_file)
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
        if (we & !do_io_write) 
        begin
         ram[addr] <= ram_in;
         ram_out <= ram_in;
        end
        else 
        begin
         ram_out <= ram[addr];
        end 
       end 

     always @ (posedge clk_1_mhz)
       begin
        if (color_ram_write_enable) 
        begin
         color_ram[addr[9:0]] <= ram_in[3:0];
         color_ram_out <= ram_in[3:0];
        end
        else 
        begin
         color_ram_out <= color_ram[addr[9:0]];
        end 
       end 

    always @ (posedge clk_2_mhz)
       begin
         color_ram_out2 <= color_ram[/*{2'b0,vic_addr}*/portb_add[9:0]]; 
//         ram_out_2 <= ram[temp_addr]; 
       end 
   
    always @ (posedge clk_2_mhz)
       begin
         ram_out_2 <= ram[/*{2'b0,vic_addr}*/portb_add]; 
//         ram_out_2 <= ram[temp_addr]; 
       end 
       
always @*
//         casex (vic_addr)
//           14'h1xxx : vic_combined_d = chargen_out;
//           default: vic_combined_d = ram_out_2;
//         endcase
if ((vic_addr[13:12] == 2'b1) & cia_2_port_a[0])
  vic_combined_d = chargen_out;
else
  vic_combined_d = ram_out_2;

initial begin
      $readmemh("/home/johan/ee2.txt", ram) ;
    end 

endmodule
