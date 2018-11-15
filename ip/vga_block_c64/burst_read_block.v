`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.12.2017 15:28:13
// Design Name: 
// Module Name: top_tb
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


module burst_read_block(
  input wire clk,
  input wire reset,
  //input wire write,
  input wire restart,
  //input wire [31:0] write_data, 
  output reg [12:0] count_in_buf,
  //output src ready
  //-----------------------------------------
  output wire [31:0] ip2bus_mst_addr,
  output reg [11:0] ip2bus_mst_length,
  input wire [31:0] ip2bus_mstrd_d,
  output wire [31:0] axi_d_out,
  output wire [4:0] ip2bus_inputs,
  input wire [5:0] ip2bus_otputs,
  output wire empty,
  input wire read
    );
    
/*
assign ip2bus_mstrd_req = ip2bus_inputs[0];
assign ip2bus_mst_type = ip2bus_inputs[1];
assign ip2bus_mstrd_dst_rdy_n = ip2bus_inputs[2];


assign ip2bus_otputs[0] = bus2ip_mst_cmdack; 
assign ip2bus_otputs[1] = bus2ip_mst_cmplt;
assign ip2bus_otputs[2] = bus2ip_mst_error;
assign ip2bus_otputs[3] = bus2ip_mstrd_src_rdy_n;     
assign ip2bus_otputs[4] = md_error;

*/ 
    
/*
TODO: keep adding addr till end
      when flushing reset addr
      pump data

mst_length -> cater for flush scenarios

input: master_write_dst_rdy = ip2bus_otputs[4];
input: cmd_ack = ip2bus_otputs[0];
output: ip2bus_inputs[0] = mstwrite_req;
output: ip2bus_inputs[1] = mst_type; 
output: ip2bus_mst_addr = axi_start_address;
output: ip2bus_mst_length = 20;
output: ip2bus_mstwr_d = axi_d_out;  
output: ip2bus_inputs[2] = sof;
output: ip2bus_inputs[3] = eof;     
output: ip2bus_inputs[4] = master_write_src_rdy;
input: write_data

simulation:
  check write command -> trigger ack at next clock
  also write cmd -> check number of elements expected
  init dst ready with 1
  after trigger ack wait 3 clock cycles then pull dst ready low
  until not all received -> get element and display on console
*/    
    
    
    reg master_read_dst_rdy; //change to axi name
    wire cmd_ack; // change to axi name
    wire mstread_req;
    wire mst_type;
    reg  [31:0] axi_start_address;
    wire [11:0] burst_len;
    
    //output rem 
    //wire sof;
    //wire eof;
    wire master_read_src_rdy;

    
    
    
    
   /*     //inputs
    wire ip2bus_mstwr_req;
    wire ip2bus_mst_type;
    
    wire ip2bus_mstwr_sof_n;
    wire ip2bus_mstwr_src_rdy_n;
    //outputs
    wire bus2ip_mst_cmdack;
    wire bus2ip_mst_cmplt;
    wire bus2ip_mst_error;
    wire ip2bus_mstwr_eof_n;
    wire bus2ip_mstwr_dst_dsc_n;
    wire bus2ip_mstwr_dst_rdy_n;
    wire md_error;*/

reg [12:0] bytes_to_receive;
//reg [12:0] count_in_buf;
reg [3:0] state;
//reg read = 0;
//wire read;


reg [12:0] axi_data_inc;
wire neg_clk;

parameter
  IDLE = 4'h0,
  INIT_CMD = 4'h1,
  START = 4'h2,
  ACT = 4'h3,
  TRANSMITTING = 4'h4;

//TODO: fiddle  
parameter BURST_THRES = 124;  

//investigate flush -> redunandant
assign burst_len = 12'h14;

assign neg_clk = ~clk;
    
fifo #(
  .DATA_WIDTH(32),
  .ADDRESS_WIDTH(8)
)

   data_buf (
            .clk(clk), 
            .reset(!reset | restart),
            .read(read),
            .write(/*write*/!master_read_src_rdy & bytes_to_receive > 0),
            //NB!! data from axi
            .write_data(/*write_data*/ip2bus_mstrd_d),
            .empty(empty), 
            .full(),            
            .read_data(axi_d_out)
        );

    


//assign axi_out_data = read_data;
//NB!! This signal should change to a write
//and us master_read_src_rdy
assign write = !master_read_src_rdy & bytes_to_receive > 0;
    
always @(posedge clk)
if (!reset | restart)
  count_in_buf <= 0;
else if (!read & write)
  count_in_buf <= count_in_buf + 1;
else if (read & !write)    
  count_in_buf <= count_in_buf - 1;
  
always @(posedge clk)
if (!reset | (restart & bytes_to_receive == 0 & state == 0))  
  state <= 0;
else
  case( state )
  //cater for scenario of flush
    IDLE: if (count_in_buf < BURST_THRES) 
            state <= INIT_CMD;
    INIT_CMD: state <= START;             
    START: if (cmd_ack)
             state <= ACT;
    ACT: if (!master_read_src_rdy)
             state <= TRANSMITTING;
    TRANSMITTING: if (!master_read_src_rdy & bytes_to_receive == 1)
                    state <= IDLE;    
  
  endcase
  
  
always @(negedge clk)
//TODO: add restart
if (!reset | (restart))
begin
  //fiddle
  //TODO: this block should also be called upon flush
  axi_start_address <= 32'h200000;
  axi_data_inc <= 0;
end
else if (state == INIT_CMD)
begin
  axi_start_address <= axi_start_address + axi_data_inc;
  axi_data_inc <= {BURST_THRES,2'b0};
end    

always @(negedge clk)
if (state == INIT_CMD)
  ip2bus_mst_length <= {BURST_THRES,2'b0}; 
  
//else if end of transmission increment  

/*
IDLE
START -> triggered by us
ACK -> triggered when receiving ack
Transmitting -> trigered when receive ready
*/

/*
write req
  -> only high when start
*/

assign mstread_req = (state == START) ? 1 : 0;

/*
mst_type
  -> only high when start
*/

assign mst_type = (state == START) ? 1 : 0;

/*
Data write [31:0]
  -> connected to fifo out
  -> closely tight to fifo write signal
     -> when at least started link line to ready signal
*/

/*
sof
  -> when started + ACK pull low
 
*/
//assign sof = (state == START) | (state == ACT) ? 0 : 1; 

//always @(posedge clk)
//  if ((state == INIT_CMD) | (state == START) | (state == ACT))
//    sof <= 0;
//  else
//    sof <= 1;

//assign eof = (bytes_to_send == 1 & !master_write_dst_rdy) ? 0 : 1; 
/*
eof
  -> when about to send last byte
*/
//always @(posedge clk)
//  if (bytes_to_send == 1)
//    eof <= 0;
//  else
//    eof <= 1;

/*
src ready
 -> when started
 -? else if bigger than started and remaining != 0 then keep ready
 -> else not ready
*/

always @*
  if (state == START)
    master_read_dst_rdy = 0;
  else if (state > START & bytes_to_receive != 0)
    master_read_dst_rdy = 0;
  else
   master_read_dst_rdy = 1;
/*
count to send
if started init to max
if bigger than started & rdy & currentcount != 0
  -> decrement
*/

always @(posedge clk)
 if (state == START)
 //TODO: investigate flush
   bytes_to_receive <= BURST_THRES;
 else if ((state > START) & !master_read_src_rdy & bytes_to_receive != 0) 
   bytes_to_receive <= bytes_to_receive - 1;
   
/*
   assign ip2bus_mstrd_req = ip2bus_inputs[0];
   assign ip2bus_mst_type = ip2bus_inputs[1];
   assign ip2bus_mstrd_dst_rdy_n = ip2bus_inputs[2];
   
   
   assign ip2bus_otputs[0] = bus2ip_mst_cmdack; 
   assign ip2bus_otputs[1] = bus2ip_mst_cmplt;
   assign ip2bus_otputs[2] = bus2ip_mst_error;
   assign ip2bus_otputs[3] = bus2ip_mstrd_src_rdy_n;     
   assign ip2bus_otputs[4] = md_error;
   
   */ 
   
         
assign master_read_src_rdy = ip2bus_otputs[3];
assign cmd_ack = ip2bus_otputs[0];
assign ip2bus_inputs[0] = mstread_req;
assign ip2bus_inputs[1] = mst_type; 
assign ip2bus_mst_addr = axi_start_address;
//TODO: calculation
//assign ip2bus_mst_length = 16;
//NB!! TODO
//assign ip2bus_mstrd_d = axi_d_out;  
//assign ip2bus_inputs[2] = sof;
//assign ip2bus_inputs[3] = eof;     
assign ip2bus_inputs[2] = master_read_dst_rdy;

assign ip2bus_inputs[3] = 1'b0;
assign ip2bus_inputs[4] = 1'b0;
endmodule
