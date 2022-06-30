module counter(
  output [7: 0] out,
  input         clk,
  input         rst
);

  reg [7: 0] out;
  wire       clk, rst;

  always @(posedge clk or posedge rst) begin
    if (rst) 
      out <= 0;
    else
      out <= out + 1;
  end
endmodule // counter
  

