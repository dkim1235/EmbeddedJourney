module model #(parameter
  DATA_WIDTH = 32
) (
  input clk,
  input resetn,
  input [DATA_WIDTH-1:0] din,
  output logic [DATA_WIDTH-1:0] dout
);

reg [DATA_WIDTH-1:0] first = 0;
reg [DATA_WIDTH-1:0] second = 0;

//not reset edge triggered. 
always @(posedge clk) begin
  if (~resetn) begin
    first <= 0;
    second <= 0;
  end else begin
    if (din > first) begin
      first <= din;
    end else if (din <= first && din > second) begin
      second <= din;
    end 
  end
end

assign dout = second;


endmodule
