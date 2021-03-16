// decodificador que recebe as saídas do circuito principal
// e as transforma em sinais para o display de 7-seguimentos
// e o buzzer sonoro
module decoder(
	aceito,
	comprometido,
	recusado,
	seg_a,
	seg_b,
	seg_c,
	seg_d,
	seg_e,
	seg_f,
	seg_g,
	sound_buzzer
);

	// declaração das entradas e saídas
	input aceito,  comprometido, recusado;
	output seg_a, seg_b, seg_c, seg_d, seg_e, seg_f, seg_g, sound_buzzer;
	
	reg [2:0] sel;
	reg [6:0] seguimentos;
	reg [0:0] buzzer;
	
	// lógica
	always @ (sel)
	begin
	
		sel [2] = aceito;
		sel [1] = comprometido;
		sel [0] = recusado;
	
		case(sel)
			3'b100 : seguimentos = 7'b1110111; // mensagem aceito (letra "A")
			3'b010 : seguimentos = 7'b1001110; // mensarem comprometido (letra "C")
			3'b001 : seguimentos = 7'b0000101; // mensagem recusado (letra "r")
			default: seguimentos = 7'b0000000;
		endcase
		
		case(sel)
			3'b001 : buzzer = 1'b1; // sinal sonoro para o caso recusado
			default: buzzer = 1'b0;
		endcase
	end
	
	assign {seg_a, seg_b, seg_c, seg_d, seg_e, seg_f, seg_g} = seguimentos;
	assign sound_buzzer = buzzer;
endmodule
