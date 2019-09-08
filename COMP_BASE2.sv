module COMP_BASE2 #(parameter N=1)(input [N-1:0]a,
												output [N-1:0]s);


logic s1;
genvar i;
generate
	for(i=1;i)												
NOT_Gate(s1,a);
sumador1bit(s,1,s1);
endmodule;
