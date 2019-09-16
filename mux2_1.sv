/*MUX utilizado para seleccionar el tipo de desplazamiento (arimtetico o logico) asi como la direccion del mismo
(izquierda o derecha)
*/
module mux2_1 (input sel, A, B,
					output Y);
logic s1, s2;

and n1(s1,sel,A);
and n2(s2,~sel,B);
or  n3(Y,s1,s2);	
	
			
endmodule 