module byteslicer(
  input wire clk,
  input wire data_valid,
  output wire data_valid_out,
  output wire [7:0] byte_out,
  output wire ack,
  input wire [31:0] data_in,
  input wire restart,
  input wire read
    );
    
parameter STATE_INIT = 0;
parameter STATE_LOADED = 1;
parameter STATE_SHIFT_1 = 2;
parameter STATE_SHIFT_2 = 3;
parameter STATE_SHIFT_3 = 4;
    
reg [3:0] state = 0;
reg [31:0] data_reg;
(* ASYNC_REG = "TRUE" *) reg data_valid_0, data_valid_1;

assign ack = state == STATE_INIT & data_valid_1;
assign byte_out = data_reg[31:24];
assign data_valid_out = state != STATE_INIT;

always @(posedge clk)
begin
  data_valid_0 <= data_valid;
  data_valid_1 <= data_valid_0;
end

always @(posedge clk)
if (state == STATE_INIT & data_valid_1)
  data_reg <= data_in;
else if ((state == STATE_LOADED | state == STATE_SHIFT_1 | STATE_SHIFT_2 | STATE_SHIFT_3) & read)
  data_reg <= {data_reg[23:0],8'h0};

always @(posedge clk)
if (restart)
  state <= STATE_INIT;
else case (state)
  STATE_INIT: state <= data_valid_1 ? STATE_LOADED : STATE_INIT;
  STATE_LOADED: state <= read ? STATE_SHIFT_1 : STATE_LOADED;
  STATE_SHIFT_1: state <= read ? STATE_SHIFT_2 : STATE_SHIFT_1;
  STATE_SHIFT_2: state <= read ? STATE_SHIFT_3 : STATE_SHIFT_2;
  STATE_SHIFT_3: state <= read ? STATE_INIT : STATE_SHIFT_3;
endcase

endmodule

