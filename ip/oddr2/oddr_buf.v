module oddr_buf(
  output Mlck_O,
  input clk_in
    );

   ODDR #(
      .DDR_CLK_EDGE("OPPOSITE_EDGE"), // "OPPOSITE_EDGE" or "SAME_EDGE" 
      .INIT(1'b0),    // Initial value of Q: 1'b0 or 1'b1
      .SRTYPE("SYNC") // Set/Reset type: "SYNC" or "ASYNC" 
   ) ODDR_inst (
      .Q(Mlck_O),   // 1-bit DDR output
      .C(clk_in),   // 1-bit clock input
      .CE(1), // 1-bit clock enable input
      .D1(1), // 1-bit data input (positive edge)
      .D2(0), // 1-bit data input (negative edge)
      .R(0),   // 1-bit reset
      .S(0)    // 1-bit set
   );

endmodule
