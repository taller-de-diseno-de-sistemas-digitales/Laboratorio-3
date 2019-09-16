//Dados dos datos de entrada de un tamaño variable se realiza la suma los mismos

module suma #(parameter N = 1)
(input [N-1:0] a, b,
 input cin,
 output [N-1:0] s,
 output cout);
 
 logic [N-1:0] Ncout;
 
 sumador1bit sumador1 (a[0],b[0],cin,s[0],Ncout[0]);
 genvar i;
 generate
	for (i=1; i<N; i=i+1) begin: generate_block_identifier
		 sumador1bit sumador1 (a[i],b[i],Ncout[i-1],s[i],Ncout[i]);
	end
 endgenerate
 assign cout = Ncout[N-1]; 
endmodule 