module shifterAritmethic2bit(input D1, D0, s,
								  output O1, O0);

logic n1, n2;
and SA1(n1,D1,s);
and SA2(n2,D0,~s);
and SA3(O0,D1,s);
or SA4(O1,n1,n2);

endmodule								  
