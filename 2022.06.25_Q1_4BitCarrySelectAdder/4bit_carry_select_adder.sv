module 4bit_carry_select_adder (
  input [3:0] a,
  input [3:0] b,
  input c_in,
  output c_out,
  output [3:0] s,
);

wire c_selector;
wire c_out_pwr, c_out_gnd;
wire [1:0] s_pwr, s_gnd;

2bit_adder 2bit_adder_gnd (
  .a(a[3:2]),
  .b(b[3:2]),
  .c_in(1'b0),
  .c_out(c_out_gnd),
  .s(s_gnd)
)

2bit_adder 2bit_adder_pwr (
  .a(a[3:2]),
  .b(b[3:2]),
  .c_in(1'b1),
  .c_out(c_out_pwr),
  .s(s_pwr)
)

2bit_adder 2bit_adder_selector (
  .a(a[1:0]),
  .b(b[1:0]),
  .c_in(c_in),
  .c_out(c_selector),
  .s(s[1:0])
)

always @(c_selector or a[3:2] or b[3:2]) begin
  case (c_selector) begin
    1'b0: s[3:2] = s_gnd;
    1'b1: s[3:2] = s_pwr;
  endcase
end
assign c_out = c_selector ? c_out_pwr : c_out_gnd;
endmodule

