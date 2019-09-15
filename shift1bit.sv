module shift1bit(input dir,A_in, Cin_i,Cin_d,
					  output A_out);
logic s1,s2;

and n1(s1,Cin_d,~dir);
and n2(s2,Cin_i,dir);
or  n4(A_out,s1,s2);
		
endmodule 