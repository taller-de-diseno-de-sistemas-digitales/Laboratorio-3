module COMP_BASE2 #(parameter N=1)(input [N-1:0]a,
												output [N-1:0]s);

logic ZERO = 0;
logic cout;
logic [N-1:0] ONE = 1;
logic [N-1:0] r;
NOT_Gate #(.N(N)) n1(.a(a),.s(r));
suma #(.N(N)) s1(.a(r),.b(ONE),.cin(ZERO),.s(s),.cout(cout));
endmodule
