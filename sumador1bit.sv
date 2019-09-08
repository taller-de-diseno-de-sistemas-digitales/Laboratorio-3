module sumador1bit (input logic a,b,cin,
							output logic s, cout);
								
logic s1,s2,s3;
xor n1(s1,a,b);
xor n2(s,s1,cin);
and n3(s2,cin,s1);
and n4(s3,a,b);
or  n5(cout,s3,s2);

endmodule 