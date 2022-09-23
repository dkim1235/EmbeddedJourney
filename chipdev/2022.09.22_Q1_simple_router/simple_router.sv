module model #(parameter
  DATA_WIDTH = 32
) (
  input  [DATA_WIDTH-1:0] din,
  input  din_en,
  input  [1:0] addr,
  output logic [DATA_WIDTH-1:0] dout0,
  output logic [DATA_WIDTH-1:0] dout1,
  output logic [DATA_WIDTH-1:0] dout2,
  output logic [DATA_WIDTH-1:0] dout3
);

always_comb begin
  if (din_en == 1'b0) begin
    dout0 = 0;
    dout1 = 0;
    dout2 = 0;
    dout3 = 0;
  end else begin
    case (addr)
      2'b00: begin
        dout0 = din;
        dout1 = 0;
        dout2 = 0;
        dout3 = 0;
      end
      2'b01: begin
        dout0 = 0;
        dout1 = din;
        dout2 = 0;
        dout3 = 0;
      end
      2'b10: begin
        dout0 = 0;
        dout1 = 0;
        dout2 = din;
        dout3 = 0;
      end
      2'b11: begin
        dout0 = 0;
        dout1 = 0;
        dout2 = 0;
        dout3 = din;
      end
      default: begin
        dout0 = 0;
        dout1 = 0;
        dout2 = 0;
        dout3 = 0;
      end
    endcase
  end
end

endmodule
