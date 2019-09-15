module shifter1posicion #(parameter N=2) 
(input [N-1:0] Ain,
 input sel,  dir,
 output [N-1:0] Aout 
);

logic ZERO=0;
logic y;

mux2_1 mux (.sel(sel),.A(Ain[N-1]),.B(ZERO),.Y(y));

shift1bit shift1(.dir(dir),.A_in(Ain[0]),.Cin_i(Ain[1]),.Cin_d(ZERO),
.A_out(Aout[0]));

genvar i;
genvar j;
generate
	for (i=1; i<N-1; i=i+1) begin: generate_block_identifier
		shift1bit shift1(.dir(dir),.A_in(Ain[i]),.Cin_i(Ain[i+1]),.Cin_d(Ain[i-1]),
		.A_out(Aout[i]));		 
	end
endgenerate
shift1bit shift2(.dir(dir),.A_in(Ain[N-1]),.Cin_i(y),.Cin_d(Ain[N-2]),
.A_out(Aout[N-1]));
endmodule

