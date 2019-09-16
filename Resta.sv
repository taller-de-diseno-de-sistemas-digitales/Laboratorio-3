//Dados dos datos de entrada ejecuta la resta del primero menos el segundo
module Resta#(parameter N = 1)
(input logic [N-1:0] a,b,
output logic [N-1:0] c,
output logic negativeflag);

logic cout;
logic ZERO = 0;
logic [N-1:0] s;
COMP_BASE2 #(.N(N)) comp(.a(b),.s(s));
suma #(.N(N)) sum(.a(a),.b(s),.cin(ZERO),.s(c),.cout(cout));
negative_flag Nflag(.in(s[N-1]),.flag(negativeflag));
endmodule 