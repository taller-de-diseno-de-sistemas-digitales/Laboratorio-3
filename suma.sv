module suma#(parameter N=1)
(input [N-1:0]a, b
output [N-1:0]c);
assign c = a + b;
endmodule 