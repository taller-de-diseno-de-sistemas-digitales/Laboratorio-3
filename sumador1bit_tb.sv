module sumador1bit_tb();
logic a;
logic b;
logic cin;
logic s;
logic cout;

sumador1bit DUT (.a(a),.b(b),.cin(cin),.s(s),.cout(cout));

initial begin
	#10
	a = 1'b1; b = 1'b1; cin = 1'b1;
	#10 $stop;
end

endmodule 