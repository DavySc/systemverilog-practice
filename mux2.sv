module mux2 (
	input logic[3:0] d1, d0,
	input logic[3:0] s,
	output logic y
);

assign y = s ? d1 : d0;
	
endmodule
