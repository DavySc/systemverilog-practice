module synchronizer (
	input logic [3:0] d,
	input logic clk,
	output logic q
);

	logic n1;
always_ff @(posedge clk)
begin
	n1 <= d;
	q <= n1;
end
	
endmodule
