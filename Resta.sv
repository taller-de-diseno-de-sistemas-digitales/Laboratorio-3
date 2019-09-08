module Resta#(parameter N = 1)
(input logic [N-1:0] a,b,
output logic [N-1:0] c);

logic cout;
logic ZERO = 0;
logic [N-1:0] s;
COMP_BASE2 #(.N(N)) comp(.a(b),.s(s));
suma #(.N(N)) sum(.a(a),.b(s),.cin(ZERO),.s(c),.cout(cout));
endmodule 