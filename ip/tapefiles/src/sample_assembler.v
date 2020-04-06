module sample_assembler(
  input wire clk,
  input wire data_valid,
  input wire [7:0] data,
  output wire ack,
  input wire pwm,
  output reg [23:0] timer_val,
  //output tape_out,
  input wire restart,
  output wire load_timer
    );
    
parameter STATE_START = 0;
parameter STATE_LOADED = 1;
parameter STATE_LOADED_1 = 2;
parameter STATE_LOADED_2 = 3;
parameter STATE_LOADED_3 = 4;


reg [3:0] state = 0;
reg pwm_0, pwm_1;
reg three_byte_sample = 0;
wire neg_edge;

//assign tape_out = pwm;
assign neg_edge = !pwm_0 & pwm_1;
assign load_timer = neg_edge & (state == STATE_LOADED); 

always @(posedge clk)
begin
  pwm_0 <= pwm;
  pwm_1 <= pwm_0;
end

assign ack = state == STATE_START | (state == STATE_LOADED_1 & data_valid) | (state == STATE_LOADED_2 & data_valid) | (state == STATE_LOADED_3 & data_valid);

always @(posedge clk)
if (state == STATE_START & data_valid & data != 0)
  timer_val <= {data, 3'b0};
else if ((state == STATE_LOADED_1 | state == STATE_LOADED_2 | state == STATE_LOADED_3) & data_valid)
  timer_val <= {data, timer_val[23:8]};

always @(posedge clk)
if (restart)
  state <= STATE_START;
else case(state)
  STATE_START: begin
                 three_byte_sample <= 0;
                 if (data_valid & data != 0) 
                   state <= STATE_LOADED;
                 else if (data_valid)
                   state <= STATE_LOADED_1;
               end
  STATE_LOADED_1: if (data_valid)
                  begin
                    //three_byte_sample <= 1;             
                    state <= STATE_LOADED_2;
                  end     
    //state <= data_valid ? STATE_LOADED : STATE_START;
  STATE_LOADED_2: if (data_valid)
                   state <= STATE_LOADED_3;
                       
  STATE_LOADED_3: if (data_valid)
                   state <= STATE_LOADED;    

  
  STATE_LOADED: begin
    state <= neg_edge ? STATE_START : STATE_LOADED;
    three_byte_sample <= 0;
  end
endcase
endmodule

