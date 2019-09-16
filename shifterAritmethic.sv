module shifterAritmethic #(parameter N=1)
(input [N-1:0] D,
 input sel,
 output [N-1:0] O
);

logic [(N-1)*2:0] sout;
genvar i;
generate
	for(i=0; i<N-1; i=i+1) begin: generate_block
	shifterAritmethic2bit shifter1 (.D1(Di+1),.D0(D[i]),.s(s),.O1(),.O0());
	end
endgenerate
 
 
endmodule 