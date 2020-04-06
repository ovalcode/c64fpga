module tape_pwm(
  input [23:0] time_val,
  input load_timer,
  output pwm,
  input clk
    );
    
  reg polarity = 1;
  reg [23:0] load = 100;
  reg [23:0] timer = 100;
  assign pwm = polarity;
    
  always @(posedge clk)
    if (load_timer)
      load <= {1'b0,time_val[23:1]};
  
  always @(posedge clk)
  if (timer > 0)
    timer <= timer - 1;
  else
    timer <= load;
    
  always @(posedge clk)
    if (timer == 0)
      polarity <= ~polarity;
endmodule
