module Contador_Parametrizado #(parameter N = 6)(
    input logic clk,
    input logic reset,
    input logic [N-1:0] initial_value,
    input logic cont,       //boton de enable
    output logic [6:0] seg1,  // Display 7 segmentos para las decenas
    output logic [6:0] seg0,  // Display 7 segmentos para las unidades
    output logic [N-1:0] count // Agregado para pruebas
);
    logic [N-1:0] count_internal;
	 logic cont_clean;
	 logic [3:0] unidades, decenas;
	 
	 Debounce db0 (
        .clk(clk),
        .btn_in(cont),
        .btn_out(cont_clean)
    );
	 
	 
    always_ff @(posedge clk or posedge reset) begin
        if (reset)
            count_internal <= initial_value;
        else if (~cont)
            count_internal <= count_internal + 1;
    end
	 
	 // Conversion a decimal (BCD)
    always_comb begin
        unidades = count_internal % 10;
        decenas  = count_internal / 10;
        count = count_internal;
    end

    // Decodificadores de 7 segmentos
    BinTo7Seg display_unidades (
			.bin(unidades), 
			.bin_to_7seg(seg0));
			
    BinTo7Seg display_decenas  (
			.bin(decenas),  
			.bin_to_7seg(seg1));


endmodule
