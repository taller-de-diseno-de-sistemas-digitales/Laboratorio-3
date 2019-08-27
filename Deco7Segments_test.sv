module Deco7Segments_test();
	logic [3:0] entrada;
	logic [6:0] salida;
	
	Deco7Segments dut(
		.entrada(entrada),
		.salida(salida)
	);
	
	initial begin
	#10 entrada = 4'b1010;
	#1 $display("entrada = %b, salida = %b", entrada, salida);
	#10 entrada = 4'b0101;
	#1 $display("entrada = %b, salida = %b", entrada, salida);
	#10 entrada = 4'b1101;
	#1 $display("entrada = %b, salida = %b", entrada, salida);
	#10 entrada = 4'b0111;
	#1 $display("entrada = %b, salida = %b", entrada, salida);
	#10 $stop;
	
	end

endmodule
