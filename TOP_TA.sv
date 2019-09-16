//Modulo que une la ALU con los registros con el objetivo de poder medir la frecuencia de trabajo
module TOP_TA(input logic [31:0] a,b,
					input logic clk,reset,
					input logic [31:0] aluControl,
					output logic [31:0] y);
					
logic out1;
logic out2;
logic out3;
logic neg,cero,acarreo;

registro #(32) r1(.entrada(a), .clk(clk), .reset(reset),.salida(out1));
registro #(32) r2(.entrada(b), .clk(clk), .reset(reset),.salida(out2));
ALU #(.N(32)) ALU1(.A(out1),.B(out2),.ALUControl(aluControl),.Y(out3),
.negativo(neg),.cero(cero),.acarreo(acarreo));
registro #(32) r3(.entrada(out3), .clk(clk), .reset(reset),.salida(y));
endmodule
