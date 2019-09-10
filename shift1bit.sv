module shift1bit(input sel,dir,A_in, Cin_i,Cin_d,
					  output A_out, Cout_i, Cout_d);
logic s1,s2,s3,s4,s5;

and n1(s1,A_in,~dir);
and n2(s2,sel,Cin_i);
and n3(s3,Cin_d,~dir);
and n4(s4,Cin_i,dir);
and n5(Cout_d,A_in,dir);
and n6(s5,s2,dir);
or  n7(A_out,s3,s4);
or  n8(Cout_i,s1,s5);
			
endmodule 