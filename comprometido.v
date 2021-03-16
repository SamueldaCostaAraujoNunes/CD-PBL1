// circuito responsável pelo caso comprometido
module comprometido(a, b, c, d, e, or1);
	// declaração das entradas e saídas
	input a, b, c, d, e;
	output or1;
	wire out_and2, out_and3, out_and4, out_and5, out_and6;
	
	// lógica
	and
		and2 (out_and2, ~a, b, c, d, e),
		and3 (out_and3, a, ~b, c, d, e),
		and4 (out_and4, a, b, ~c, d, e),
		and5 (out_and5, a, b, c, ~d, e),
		and6 (out_and6, a, b, c, d, ~e);
	
	assign or1 = out_and2 | out_and3 | out_and4 | out_and5 | out_and6;
	// um lote comprometido apenas uma entrada em nível lógico baixo
	// e as outras em nível lógico alto
endmodule
