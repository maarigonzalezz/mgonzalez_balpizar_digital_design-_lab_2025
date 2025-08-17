module Decodificador_binario_gray (input logic A, B, C, D, output logic [7:0] seven_segment_pins);

	
	wire [6:0] segments_from_bcd_units;
	logic [3:0] dec_result;
	
	
	
	// Instancia del decodificador 
	decodificador deco (
		// entradas
		.A(A),
		.B(B),
		.C(C),
		.D(D),
		// salidas
		.s3(dec_result[3]),
		.s2(dec_result[2]),
		.s1(dec_result[1]),
		.s0(dec_result[0])
	);
	
	
	Hex_to_7seg_decoder bcd_decoder_unit (
        .hex_in(dec_result), //entrada, resultado del decodificador
        .segments_out(segments_from_bcd_units) // salida, resultado para 7 segmentos
    );
	
	
	assign seven_segment_pins[0] = ~segments_from_bcd_units[0]; // a
   assign seven_segment_pins[1] = ~segments_from_bcd_units[1]; // b
   assign seven_segment_pins[2] = ~segments_from_bcd_units[2]; // c
   assign seven_segment_pins[3] = ~segments_from_bcd_units[3]; // d
   assign seven_segment_pins[4] = ~segments_from_bcd_units[4]; // e
   assign seven_segment_pins[5] = ~segments_from_bcd_units[5]; // f
   assign seven_segment_pins[6] = ~segments_from_bcd_units[6]; // g
	


endmodule 