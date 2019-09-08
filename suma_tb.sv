module suma_tb();

parameter size = 4;
logic [size-1:0] a,b,s,c;
logic cin,cout;
and n(c,a,b);
suma #(.N(size)) DUT (.a(a),.b(b),.cin(cin),.s(s),.cout(cout));
initial begin
	#10
	a = 4'b1001; b = 4'b0011; cin = 1'b0;
	#10
	a = 4'b0011; b = 4'b1110; cin = 1'b0;
	#10
	a = 4'b1010; b = 4'b1110; cin = 1'b1;
	#10
	a = 4'b1001; b = 4'b0011; cin = 1'b0;
	
	#10 $stop;
end

endmodule 