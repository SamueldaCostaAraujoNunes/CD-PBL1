// parte principal, responsável por conectar as partes do circuito
module main(
	in_a,
	in_b,
	in_c,
	in_d,
	in_e,
	lote_aceito,
	lote_comprometido,
	lote_recusado,
	seg_a,
	seg_b,
	seg_c,
	seg_d,
	seg_e,
	seg_f,
	seg_g,
	sound_buzzer
);

	// declaração das entradas, saídas e wires
	input in_a, in_b, in_c, in_d, in_e;
	output lote_aceito, lote_comprometido, lote_recusado;
	// sinais para o display de 7-seguimentos
	output wire seg_a, seg_b, seg_c, seg_d, seg_e, seg_f, seg_g;
	output wire sound_buzzer; // sinal para o alarme sonoro
	wire out_aceito, out_comprometido, out_recusado; 
	
	// logica
	assign lote_aceito = out_aceito;
	assign lote_comprometido = out_comprometido;
	assign lote_recusado = out_recusado;
	
	aceito(in_a, in_b, in_c, in_d, in_e, out_aceito);
	comprometido(in_a, in_b, in_c, in_d, in_e, out_comprometido);
	recusado(out_aceito, out_comprometido, out_recusado);
	
	decoder(out_aceito, out_comprometido, out_recusado, 
	        seg_a, seg_b, seg_c, seg_d, seg_e, seg_f, seg_g, sound_buzzer);
endmodule
