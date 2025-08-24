module flopr (
	input logic [3:0] data,
	input logic clk,
	input logic reset,
	output logic [3:0] q 
);

// async reset
always_ff @(posedge clk, posedge reset) 
    if (reset) q <= 4'b0;
    else q<= data;
endmodule

module flopr (
	input logic [3:0] data,
	input logic clk,
	input logic reset,
	output logic [3:0] q 
);

// sync reset
always_ff @(posedge clk) 
    if (reset) q <= 4'b0;
    else q<= data;
endmodule
