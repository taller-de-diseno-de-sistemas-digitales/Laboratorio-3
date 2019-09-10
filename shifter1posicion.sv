module shifter1posicion #(parameter N=2) 
(input [N-1:0] Ain,
 input sel,  dir,
 output [N-1:0] Aout 
);

logic [N*3-1:0] genCout_d;
logic [N*3-1:0] genCout_i;

logic ZERO=0;

shift1bit shift1(.sel(sel),.dir(dir),.A_in(Ain[0]),.Cin_i(Ain[1]),.Cin_d(ZERO),
.A_out(Aout[0]),.Cout_i(genCout_i[0]),.Cout_d(genCout_d[0]));

genvar i;
generate
	for (i=1; i<N-1; i=i+1) begin: generate_block_identifier
	shift1bit shift1(.sel(sel),.dir(dir),.A_in(Ain[i]),.Cin_i(Ain[i+1]),.Cin_d(Ain[i-1]),
	.A_out(Aout[i]),.Cout_i(genCout_i[i]),.Cout_d(genCout_d[i]));		 
	end
endgenerate
shift1bit shift2(.sel(sel),.dir(dir),.A_in(Ain[N-1]),.Cin_i(Ain[N-1]),.Cin_d(Ain[N-2]),
.A_out(Aout[N-1]),.Cout_i(genCout_i[N-1]),.Cout_d(genCout_d[N-1]));
endmodule

