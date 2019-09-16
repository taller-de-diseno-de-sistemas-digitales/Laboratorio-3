module zero_flag #(  parameter N = 4  )	
(	input logic [N-1:0] in,
	output flag);
	
	logic [N-4:0] temp;
	genvar i;
	generate
	for (i=1; i<N; i=i+1) begin: generate_block_identifier
		 sumador1bit sumador1 (a[i],b[i],Ncout[i-1],s[i],Ncout[i]);
	end
 endgenerate
endmodule 