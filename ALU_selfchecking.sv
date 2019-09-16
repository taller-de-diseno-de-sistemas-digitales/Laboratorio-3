module ALU_selfchecking ();

parameter SIZE = 4;
logic [SIZE -1: 0] A,B,Y;
logic [3:0] ALUControl;
logic negativo, cero, acarreo;

ALU #(.N(SIZE)) DUT (.A(A),.B(B),.ALUControl(ALUControl),.Y(Y),.negativo(negativo),.cero(cero),.acarreo(acarreo));

initial begin

	#10
	A = 4'b1111; B = 4'b0010; ALUControl = 4'b0000;#10 
	assert(Y === 2) else $error("Error salida AND");//0010
	assert(negativo === 0) else $error("Error bandera negativo");
	assert(cero === 0) else $error("Error bandera cero");
	assert(acarreo === 0) else $error("Error bandera acarreo");

	#10
	A = 4'b1111; B = 4'b0010; ALUControl = 4'b0001;#10 
	assert(Y === 15) else $error("Error salida OR");//1111
	assert(negativo === 0) else $error("Error bandera negativo");
	assert(cero === 0) else $error("Error bandera cero");
	assert(acarreo === 0) else $error("Error bandera acarreo");


	#10
	A = 4'b1111; B = 4'b0010; ALUControl = 4'b0010; #10
	assert(Y === 0) else $error("Error salida NOT");//0000
	assert(negativo === 0) else $error("Error bandera negativo");
	assert(cero === 1) else $error("Error bandera cero");
	assert(acarreo === 0) else $error("Error bandera acarreo");
		
	#10
	A = 4'b1111; B = 4'b0010; ALUControl = 4'b0011; #10
	assert(Y === 13) else $error("Error salida XOR");//1101
	assert(negativo === 0) else $error("Error bandera negativo");
	assert(cero === 0) else $error("Error bandera cero");
	assert(acarreo === 0) else $error("Error bandera acarreo");
	
	#10
	A = 4'b1111; B = 4'b0001; ALUControl = 4'b0100; #10
	assert(Y === 0) else $error("Error salida SUMA");//0000
	assert(negativo === 0) else $error("Error bandera negativo");
	assert(cero === 0) else $error("Error bandera cero");
	assert(acarreo === 1) else $error("Error bandera acarreo");
	
	#10
	A = 4'b0001; B = 4'b0010; ALUControl = 4'b0101; #10
	assert(Y === 15) else $error("Error salida RESTA");//1111
	assert(negativo === 1) else $error("Error bandera negativo");
	assert(cero === 0) else $error("Error bandera cero");
	assert(acarreo === 0) else $error("Error bandera acarreo");
	
	#10
	A = 4'b1111; B = 4'b0010; ALUControl = 4'b0110; #10
	assert(Y === 14) else $error("Error salida shift logico izq");//1110
	assert(negativo === 0) else $error("Error bandera negativo");
	assert(cero === 0) else $error("Error bandera cero");
	assert(acarreo === 0) else $error("Error bandera acarreo");
	
	#10
	A = 4'b1111; B = 4'b0010; ALUControl = 4'b0111; #10
	assert(Y === 7) else $error("Error salida shift logico der");//0111
	assert(negativo === 0) else $error("Error bandera negativo");
	assert(cero === 0) else $error("Error bandera cero");
	assert(acarreo === 0) else $error("Error bandera acarreo");
	
	#10
	A = 4'b1011; B = 4'b0010; ALUControl = 4'b1000; #10
	assert(Y === 6) else $error("Error salida shift aritmetico izq");//0110
	assert(negativo === 0) else $error("Error bandera negativo");
	assert(cero === 0) else $error("Error bandera cero");
	assert(acarreo === 0) else $error("Error bandera acarreo");
	
	#10
	A = 4'b1101; B = 4'b0010; ALUControl = 4'b1001; #10
	assert(Y === 14) else $error("Error salida shift aritmetico der");//1110
	assert(negativo === 0) else $error("Error bandera negativo");
	assert(cero === 0) else $error("Error bandera cero");
	assert(acarreo === 0) else $error("Error bandera acarreo");
	
	#10 $stop;


end 
endmodule
