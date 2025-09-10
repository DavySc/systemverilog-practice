module fsm (
	input logic clk, reset,
	input logic traffic_a, traffic_b,
	output logic [1:0] l_a, l_b
);
	logic [1:0] state, next_state;
always_ff @(posedge clk, reset)
  if (reset) begin
    state <= 2'b00;
  end
  else begin
  	state <= next_state;
  end
always_comb begin : nextStateLogic
  next_state[1] = state[1] ^ state[0];
  next_state[0] = (~state[1] && ~state[0] && ~traffic_a ) || (state[1] && ~state[0] && ~traffic_b);
	
end

always_comb begin : outputLogic
  l_a[0] = ~state[1] && state[0]; 
  l_a[1] = state[1];
  l_b[0] = ~state[1];
  l_b[1] = state[1] && state[0];
	
end

endmodule
