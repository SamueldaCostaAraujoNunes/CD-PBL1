// circuito responsável pelo caso recusado
module recusado(aceito, comprometido, nand1);
	// declaração das entradas e saídas
	input aceito, comprometido;
	output nand1;
	
	// lógica
	assign nand1 = ~aceito & ~comprometido;
	// um lote rejeitado pode ser identificado caso os sinais do
	// circuito de aceito e rejeitado possuam nível lógico baixo
endmodule
