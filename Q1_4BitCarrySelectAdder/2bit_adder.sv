module 2bit_adder (
  input [1:0] a,
  input [1:0] b,
  input c_in,
  output c_out,
  output [1:0] s
)

wire adder1_c_out

full_adder full_adder2 (
  .c_in(c_in),
  .a(a[0]),
  .b(b[0]),
  .c_out(adder1_c_out),
  .s(s[0])
)


full_adder full_adder1 (
  .c_in(adder1_c_out),
  .a(a[1]),
  .b(b[1]),
  .c_out(c_out),
  .s(s[1])
)
