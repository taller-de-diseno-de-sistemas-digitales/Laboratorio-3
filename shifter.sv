// Se encarga de ejecutar el modulo "shifter1posicion" n veces para completar el desplazamiento deseado
module shifter #(parameter N=2, parameter shamt=1)
(input [N-1:0] A,
 input logic [N-1:0] B, 
 input sel, dir,
 output [N-1:0] Aout);

logic [N*shamt-1:0] temp;
shifter1posicion #(.N(N)) shifter1(.Ain(A),.sel(sel),.dir(dir),.Aout(temp[N-1:0]));

genvar i;
generate
	for (i=1; i < shamt; i=i+1) begin: generate_block_identifier		
		 shifter1posicion #(.N(N)) shifter1(.Ain(temp[N*i-1:N*(i-1)]),.sel(sel),.dir(dir),.Aout(temp[N*(i+1)-1:N*i]));
	end
endgenerate
assign Aout = temp[N*shamt-1:(N*shamt)-N];
endmodule 
 