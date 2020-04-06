module tape_pwm(
  input wire [23:0] time_val,
  input wire load_timer,
  input wire motor_control,
  output wire pwm,
  input wire clk
    );
    
  reg polarity = 1;
  reg [23:0] load = 100;
  reg [23:0] timer = 100;
  assign pwm = polarity;
    
  always @(posedge clk)
    if (load_timer)
      load <= {1'b0,time_val[23:1]};
  
  always @(posedge clk)
  if (timer > 0 & !motor_control)
    timer <= timer - 1;
  else if (timer == 0)
    timer <= load;
    
  always @(posedge clk)
    if (timer == 0)
      polarity <= ~polarity;
endmodule
