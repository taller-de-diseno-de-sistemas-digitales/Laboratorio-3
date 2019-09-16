module maricarmen (input logic [2:0] A, B,
 input logic [3:0] ALUControl,
 output logic [6:0] salida, salida2,
 output negativo, cero, acarreo);
 
 parameter SIZE = 3;
 logic [SIZE-1:0] Y;
 
ALU #(.N(SIZE)) maricarmen (.A(A),.B(B),.ALUControl(ALUControl),.Y(Y),.negativo(negativo),.cero(cero),.acarreo(acarreo));
Deco7Segments deco1 (.entrada(Y), .salida(salida));
Deco7Segments deco2 (.entrada(acarreo), .salida(salida2));

 
 endmodule 