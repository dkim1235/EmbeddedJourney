module full_adder (
  input c_in,
  input a,
  input b,
  output c_out,
  output s
);

assign ab_xor = a^b;
assign s = ab_xor ^ c_in;
assign ab_and = a & b;
assign c_and = ab_xor & c_in;
assign c_out = ab_and | c_and;

endmodule
