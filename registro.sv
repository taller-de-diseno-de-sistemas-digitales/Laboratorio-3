/*Este modulo emula de manera basica un registro, su funcion es la de proporcionar una entrada 
para poder asignar un clock y asi utilizar la herramienta de Time Quest para medir la frecuencia */

module registro#(parameter N = 3)
(input logic [N-1:0] entrada, 
 input logic reset, clk,
 output logic [N-1:0] salida);
always @(posedge clk, posedge reset)
	if(clk) salida <= entrada;
	else salida <= 0;
endmodule
	
				