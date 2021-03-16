// circuito responsável pelo caso aceito
module aceito(a, b, c, d, e, and1);
	// declaração das entradas e saídas
	input a, b, c, d, e;
	output and1;
	
	// lógica
	assign and1 = a & b & c & d & e;
	// um lote aceito possui todas as entradas em nível lógico alto
endmodule
