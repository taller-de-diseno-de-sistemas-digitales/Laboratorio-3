//Modulo que dado una entrada activa un conjunto de salidas para ser mostradas en el 7 segmentos de la FPGA
module Deco7Segments(input logic [3:0] entrada,
						   output logic [6:0] salida );
	always_comb 
	case(entrada) 
							//	 012 3456
					      //  abc_defg
		4'd0:	 salida = 7'b000_0001;
		4'd1:	 salida = 7'b100_1111;
		4'd2:  salida = 7'b001_0010;
		4'd3:  salida = 7'b000_0110;
		4'd4:  salida = 7'b100_1100;
		4'd5:  salida = 7'b010_0100;
		4'd6:  salida = 7'b010_0000;
		4'd7:  salida = 7'b000_1111;
		4'd8:  salida = 7'b000_0000;
		4'd9:  salida = 7'b000_0100;
		4'd10: salida = 7'b000_1000;
		4'd11: salida = 7'b110_0000;
		4'd12: salida = 7'b011_0001;
		4'd13: salida = 7'b100_0010;
		4'd14: salida = 7'b011_0000;
		4'd15: salida = 7'b011_1000;
		default: salida = 7'b111_1111;
	endcase	
						
endmodule