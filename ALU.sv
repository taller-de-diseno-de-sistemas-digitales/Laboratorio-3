module ALU #(parameter N = 4) 
(input logic [N-1:0] A, B,
 input logic [3:0] ALUControl,
 output logic [N-1:0] Y
);

logic [N-1:0] salida_and, salida_or, salida_not, salida_xor, salida_suma,
				  salida_resta, salida_shifter_log_i,salida_shifter_log_d, 
				  salida_shiter_ari_i, salida_shiter_ari_d;

logic ZERO = 0;
logic ONE =1;
logic cout;
parameter shamt = 1;


AND_Gate #(.N(N)) g1 (.a(A),.b(B),.s(salida_and));
OR_Gate #(.N(N)) g2 (.a(A),.b(B),.s(salida_or));
NOT_Gate #(.N(N)) g3 (.a(A),.s(salida_not));
XOR_Gate #(.N(N)) g4 (.a(A),.b(B),.s(salida_xor));
suma #(.N(N)) suma (.a(A),.b(B),.cin(ZERO),.s(salida_suma),.cout(cout));
Resta #(.N(N)) resta (.a(A),.b(B),.c(salida_resta));
shifter #(.N(N),.shamt(shamt)) log_i (.A(A),.B(B),.sel(ZERO),.dir(ZERO),.Aout(salida_shifter_log_i));
shifter #(.N(N),.shamt(shamt)) log_d (.A(A),.B(B),.sel(ZERO),.dir(ONE),.Aout(salida_shifter_log_d));
shifter #(.N(N),.shamt(shamt)) ari_i (.A(A),.B(B),.sel(ONE),.dir(ZERO),.Aout(salida_shifter_ari_i));
shifter #(.N(N),.shamt(shamt)) ari_d (.A(A),.B(B),.sel(ONE),.dir(ONE),.Aout(salida_shifter_ari_d));


always_comb 
	case(ALUControl)
		
		4'b0000: Y = salida_and;
		4'b0001: Y = salida_or;
		4'b0010: Y = salida_not;
		4'b0011: Y = salida_xor;
		4'b0100: Y = salida_suma;
		4'b0101: Y = salida_resta;
		4'b0110: Y = salida_shifter_log_i;
		4'b0111: Y = salida_shifter_log_d;
		4'b1000: Y = salida_shifter_ari_i;
		4'b1001: Y = salida_shifter_ari_d;
		default: Y = salida_suma;
		
	endcase	



endmodule 