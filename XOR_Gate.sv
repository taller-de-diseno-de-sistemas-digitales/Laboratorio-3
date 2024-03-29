module XOR_Gate#(parameter N=1)
(input [N-1:0] a,b,
 output [N-1:0] s
 );	
genvar i;
generate
	for(i=0; i<N; i=i+1) begin: generate_block
		xor n1(s[i],a[i],b[i]);
	end
endgenerate	
endmodule

