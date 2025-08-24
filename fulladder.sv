module fulladder (
	input logic a, b, carry_in,
	output logic sum, carry_out
);

logic intermediate_sum, intermediate_carry;

assign intermediate_sum = a ^ b;
assign intermediate_carry = a & b;

assign sum = intermediate_sum ^ carry_in;
assign carry_out = intermediate_carry  | ( intermediate_sum & carry_in);
	
endmodule
