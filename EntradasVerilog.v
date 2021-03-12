// Copyright (C) 2018  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details.

// PROGRAM		"Quartus Prime"
// VERSION		"Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"
// CREATED		"Fri Mar 12 13:45:14 2021"

module EntradasVerilog(
	IN_A,
	IN_B,
	IN_C,
	IN_D,
	IN_E,
	LOTE_COMPROMETIDO,
	LOTE_ACEITO,
	LOTE_RECUSADO,
	OUT_A,
	OUT_B,
	OUT_C,
	OUT_D,
	OUT_E,
	OUT_F,
	OUT_G
);


input wire	IN_A;
input wire	IN_B;
input wire	IN_C;
input wire	IN_D;
input wire	IN_E;
output wire	LOTE_COMPROMETIDO;
output wire	LOTE_ACEITO;
output wire	LOTE_RECUSADO;
output wire	OUT_A;
output wire	OUT_B;
output wire	OUT_C;
output wire	OUT_D;
output wire	OUT_E;
output wire	OUT_F;
output wire	OUT_G;

wire	aceito;
wire	comprometido;
wire	gnd;
wire	not_comprometido;
wire	NOT_IN_A;
wire	NOT_IN_B;
wire	NOT_IN_C;
wire	NOT_IN_D;
wire	NOT_IN_E;
wire	not_recusado;
wire	recusado;
wire	vcc;
wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_6;




assign	SYNTHESIZED_WIRE_0 = IN_C & NOT_IN_A & IN_B & IN_D & IN_E & vcc;

assign	not_recusado =  ~recusado;

assign	NOT_IN_A =  ~IN_A;

assign	NOT_IN_B =  ~IN_B;

assign	NOT_IN_C =  ~IN_C;

assign	NOT_IN_D =  ~IN_D;

assign	NOT_IN_E =  ~IN_E;

assign	comprometido = SYNTHESIZED_WIRE_0 | SYNTHESIZED_WIRE_1 | SYNTHESIZED_WIRE_2 | SYNTHESIZED_WIRE_3 | SYNTHESIZED_WIRE_4 | gnd;

assign	aceito = IN_C & IN_A & IN_B & IN_D & IN_E & vcc;



assign	SYNTHESIZED_WIRE_5 =  ~aceito;

assign	SYNTHESIZED_WIRE_6 =  ~comprometido;

assign	recusado = SYNTHESIZED_WIRE_5 & SYNTHESIZED_WIRE_6;

assign	SYNTHESIZED_WIRE_2 = IN_C & IN_A & NOT_IN_B & IN_D & IN_E & vcc;

assign	SYNTHESIZED_WIRE_1 = NOT_IN_C & IN_A & IN_B & IN_D & IN_E & vcc;

assign	SYNTHESIZED_WIRE_3 = IN_C & IN_A & IN_B & NOT_IN_D & IN_E & vcc;

assign	SYNTHESIZED_WIRE_4 = IN_C & IN_A & IN_B & IN_D & NOT_IN_E & vcc;

assign	not_comprometido =  ~comprometido;

assign	LOTE_COMPROMETIDO = comprometido;
assign	LOTE_ACEITO = aceito;
assign	LOTE_RECUSADO = recusado;
assign	OUT_A = not_recusado;
assign	OUT_B = aceito;
assign	OUT_C = aceito;
assign	OUT_D = comprometido;
assign	OUT_E = vcc;
assign	OUT_F = not_recusado;
assign	OUT_G = not_comprometido;
assign	gnd = 0;
assign	vcc = 1;

endmodule
