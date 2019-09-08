module suma_tb();

parameter size = 1;
logic [size-1:0] a,b,s;
logic cin,cout;

suma #(.N(size)) DUT (.a(a),.b(b),.cin(cin),.s(s),.cout(cout));
initial begin
	#10
	a = 1'b1; b = 1'b1; cin = 1'b0;
	#10
	a = 1'b1; b = 1'b0; cin = 1'b0;
	#10
	a = 1'b0; b = 4'b0; cin = 1'b1;
	#10
	a = 1'b0; b = 4'b1; cin = 1'b0;
	
	#10 $stop;
end

endmodule 