module zero_flag #(  parameter N = 4  )	
(	input logic [N-1:0] in,
	output flag);
	
	parameter ONE = 1;
	logic [N-1:0] inverse;
	logic [N-4:0] temp;
	NOT_Gate #(.N(N)) g1 (.a(in),.s(inverse));
	AND_Gate #(.N(ONE)) g2 (.a(inverse[0]),.b(inverse[1]),.s(temp[0]));
	
	genvar i;
	generate
	for (i=2; i<N-2; i=i+1) begin: generate_block_identifier
		AND_Gate #(.N(ONE)) g2 (.a(temp[i-2]),.b(inverse[i]),.s(temp[i-1]));	 
	end
 endgenerate
	AND_Gate #(.N(ONE)) g3 (.a(temp[N-4]),.b(inverse[N-1]),.s(flag));
endmodule 