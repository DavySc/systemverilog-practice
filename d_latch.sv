module d_latch (
	input logic [3:0] d,
	input logic clk,
	output logic q
);

always_latch begin
  if(clk) q <=d;
	
end
	
endmodule
