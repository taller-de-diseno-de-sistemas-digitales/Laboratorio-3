module zero_flag #(parameter N = 4) 
(input [N-1:0] in, output flag);


logic [N-1:0] s1;
NOT_Gate #(.N(N)) g1 (.a(in),.s(s1));
always_comb begin
		flag = &s1;
	end

endmodule 