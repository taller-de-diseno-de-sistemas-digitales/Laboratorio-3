module registro#(parameter N = 3)
(input logic [N-1:0] entrada, 
 input logic reset, clk,
 output logic [N-1:0] salida);
always @(posedge clk, posedge reset)
	if(clk) salida <= entrada;
	else salida <= 0;
endmodule
	
				