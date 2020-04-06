module read_word(
  input wire clk,
  input wire restart,
  input wire reset,
  output reg [12:0] count_in_buf,
  input ack,
  output wire [31:0] ip2bus_mst_addr,
  output reg [11:0] ip2bus_mst_length,
  input wire [31:0] ip2bus_mstrd_d,
  output wire [31:0] axi_d_out,
  output wire [31:0] data_wire_out,
  output wire [4:0] ip2bus_inputs,
  input wire [5:0] ip2bus_otputs,
  output wire empty,
  input wire read,
  output reset_1_mhz,
  output data_valid
    );

reg master_read_dst_rdy; //change to axi name
wire cmd_ack; // change to axi name
wire mstread_req;
wire mst_type;
reg  [31:0] axi_start_address;
reg  [31:0] data_cap;
reg [31:0] reset_1_counter = 50000000;
wire [11:0] burst_len;
(* ASYNC_REG = "TRUE" *) reg sync_ack_0, sync_ack_1, sync_ack_2;
wire master_read_src_rdy;
reg [12:0] bytes_to_receive;
reg [3:0] state;
reg axi_data_loaded = 0;
reg [12:0] axi_data_inc;
wire neg_clk;
wire pos_edge_ack;

assign data_valid = axi_data_loaded;
assign pos_edge_ack = !sync_ack_2 & sync_ack_1;
assign data_wire_out = {data_cap[7:0], data_cap[15:8], data_cap[23:16], data_cap[31:24]};
assign reset_1_mhz = reset_1_counter > 21000000 ? 1 : 0;

parameter
  IDLE = 4'h0,
  INIT_CMD = 4'h1,
  START = 4'h2,
  ACT = 4'h3,
  TRANSMITTING = 4'h4;

parameter BURST_THRES = 124;  

assign neg_clk = ~clk;

always @(posedge clk)
if (reset_1_counter > 20000000)
  reset_1_counter <= reset_1_counter - 1;

always @(posedge clk)
begin
  sync_ack_0 <= ack;
  sync_ack_1 <= sync_ack_0;
  sync_ack_2 <= sync_ack_1;
end

always @(posedge clk)
 if (restart | pos_edge_ack | reset)
  axi_data_loaded <= 0; 
 else if ((state > START) & !master_read_src_rdy & !axi_data_loaded) 
   axi_data_loaded <= 1;
    
always @(posedge clk)
  if (!master_read_src_rdy & !axi_data_loaded)
    data_cap <= ip2bus_mstrd_d;

always @(posedge clk)
if ((reset | restart) & !axi_data_loaded & state == 0)  
  state <= 0;
else
  case( state )
    IDLE: if (!axi_data_loaded) 
            state <= INIT_CMD;
    INIT_CMD: state <= START;             
    START: if (cmd_ack)
             state <= ACT;
    ACT: if (!master_read_src_rdy)
             state <= TRANSMITTING;
    TRANSMITTING: state <= IDLE;    
  
  endcase  
  
always @(negedge clk)
if (restart | reset)
begin
  axi_start_address <= 32'h200000;
  axi_data_inc <= 0;
end
else if (state == INIT_CMD)
begin
  axi_start_address <= axi_start_address + axi_data_inc;
  axi_data_inc <= 4;
end    

always @(negedge clk)
if (state == INIT_CMD)
  ip2bus_mst_length <= 4; 
  
assign mstread_req = (state == START) ? 1 : 0;

assign mst_type = (state == START) ? 1 : 0;

always @*
  if (state == START)
    master_read_dst_rdy = 0;
  else if (state > START & !axi_data_loaded)
    master_read_dst_rdy = 0;
  else
   master_read_dst_rdy = 1;
         
assign master_read_src_rdy = ip2bus_otputs[3];
assign cmd_ack = ip2bus_otputs[0];
assign ip2bus_inputs[0] = mstread_req;
assign ip2bus_inputs[1] = mst_type; 
assign ip2bus_mst_addr = axi_start_address;
assign ip2bus_inputs[2] = master_read_dst_rdy;

assign ip2bus_inputs[3] = 1'b0;
assign ip2bus_inputs[4] = 1'b0;
endmodule

