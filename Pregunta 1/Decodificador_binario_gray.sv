module Decodificador_binario_gray (input logic A, B, C, D, output logic siete_segmentos);

	
	wire [6:0] segments_from_bcd_units;
	logic dec_result[3:0];
	
	
	
	// Instancia del decodificador 
	decodificador deco (
		.A(A),
		.B(B),
		.C(C),
		.D(D),
		.s3(dec_result[3]),
		.s2(dec_result[2]),
		.s1(dec_result[1]),
		.s0(dec_result[0])
	);
	


endmodule 