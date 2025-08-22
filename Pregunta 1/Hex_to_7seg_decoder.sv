module Hex_to_7seg_decoder (
    input  logic [3:0] hex_in,      // Entrada de 4 bits 
    output logic [6:0] segments_out // Salida para 7 segmentos (g,f,e,d,c,b,a)
                                    
);

    // Asignación de bits de entrada
    logic s3, s2, s1, s0;
    assign s3 = hex_in[3];
    assign s2 = hex_in[2];
    assign s1 = hex_in[1];
    assign s0 = hex_in[0];

   
    // Segmento 'a' 
    assign segments_out[0] = (~s3 & ~s2 & ~s1 & ~s0) | 
                             (~s3 & ~s2 &  s1 & ~s0) | 
                             (~s3 & ~s2 &  s1 &  s0) | 
                             (~s3 &  s2 & ~s1 &  s0) | 
                             (~s3 &  s2 &  s1 & ~s0) | 
                             (~s3 &  s2 &  s1 &  s0) | 
                             ( s3 & ~s2 & ~s1 & ~s0) | 
                             ( s3 & ~s2 & ~s1 &  s0) | 
                             ( s3 & ~s2 &  s1 & ~s0) | 
                             ( s3 &  s2 & ~s1 & ~s0) | 
                             ( s3 &  s2 &  s1 & ~s0) | 
                             ( s3 &  s2 &  s1 &  s0);  

    // Segmento 'b' 
    assign segments_out[1] = (~s3 & ~s2 & ~s1 & ~s0) | 
                             (~s3 & ~s2 & ~s1 &  s0) | 
                             (~s3 & ~s2 &  s1 & ~s0) | 
                             (~s3 & ~s2 &  s1 &  s0) | 
                             (~s3 &  s2 & ~s1 & ~s0) | 
                             (~s3 &  s2 &  s1 &  s0) | 
                             ( s3 & ~s2 & ~s1 & ~s0) | 
                             ( s3 & ~s2 & ~s1 &  s0) | 
                             ( s3 & ~s2 &  s1 & ~s0) | 
                             ( s3 &  s2 & ~s1 &  s0);  

    // Segmento 'c' 
    assign segments_out[2] = (~s3 & ~s2 & ~s1 & ~s0) | 
                             (~s3 & ~s2 & ~s1 &  s0) | 
                             (~s3 & ~s2 &  s1 &  s0) | 
                             (~s3 &  s2 & ~s1 & ~s0) | 
                             (~s3 &  s2 & ~s1 &  s0) | 
                             (~s3 &  s2 &  s1 & ~s0) | 
                             (~s3 &  s2 &  s1 &  s0) | 
                             ( s3 & ~s2 & ~s1 & ~s0) | 
                             ( s3 & ~s2 & ~s1 &  s0) | 
                             ( s3 & ~s2 &  s1 & ~s0) | 
                             ( s3 & ~s2 &  s1 &  s0) | 
                             ( s3 &  s2 & ~s1 &  s0);  

    // Segmento 'd' 
    assign segments_out[3] = (~s3 & ~s2 & ~s1 & ~s0) | 
                             (~s3 & ~s2 &  s1 & ~s0) | 
                             (~s3 & ~s2 &  s1 &  s0) | 
                             (~s3 &  s2 & ~s1 &  s0) | 
                             (~s3 &  s2 &  s1 & ~s0) | 
                             ( s3 & ~s2 & ~s1 & ~s0) | 
                             ( s3 & ~s2 &  s1 &  s0) | 
                             ( s3 &  s2 & ~s1 & ~s0) | 
                             ( s3 &  s2 & ~s1 &  s0) | 
                             ( s3 &  s2 &  s1 & ~s0);  

    // Segmento 'e' 
    assign segments_out[4] = (~s3 & ~s2 & ~s1 & ~s0) | 
                             (~s3 & ~s2 &  s1 & ~s0) | 
                             (~s3 &  s2 &  s1 & ~s0) | 
                             ( s3 & ~s2 & ~s1 & ~s0) | 
                             ( s3 & ~s2 &  s1 & ~s0) | 
                             ( s3 & ~s2 &  s1 &  s0) | 
                             ( s3 &  s2 & ~s1 & ~s0) | 
                             ( s3 &  s2 & ~s1 &  s0) | 
                             ( s3 &  s2 &  s1 & ~s0) | 
                             ( s3 &  s2 &  s1 &  s0);  

    // Segmento 'f' 
    assign segments_out[5] = (~s3 & ~s2 & ~s1 & ~s0) | 
                             (~s3 &  s2 & ~s1 & ~s0) | 
                             (~s3 &  s2 & ~s1 &  s0) | 
                             (~s3 &  s2 &  s1 & ~s0) | 
                             ( s3 & ~s2 & ~s1 & ~s0) | 
                             ( s3 & ~s2 & ~s1 &  s0) | 
                             ( s3 & ~s2 &  s1 & ~s0) | 
                             ( s3 & ~s2 &  s1 &  s0) | 
                             ( s3 &  s2 & ~s1 & ~s0) | 
                             ( s3 &  s2 &  s1 & ~s0) | 
                             ( s3 &  s2 &  s1 &  s0);  

    // Segmento 'g' 
    assign segments_out[6] = (~s3 & ~s2 &  s1 & ~s0) | 
                             (~s3 & ~s2 &  s1 &  s0) | 
                             (~s3 &  s2 & ~s1 & ~s0) | 
                             (~s3 &  s2 & ~s1 &  s0) | 
                             (~s3 &  s2 &  s1 & ~s0) | 
                             ( s3 & ~s2 & ~s1 & ~s0) | 
                             ( s3 & ~s2 & ~s1 &  s0) | 
                             ( s3 & ~s2 &  s1 & ~s0) | 
                             ( s3 & ~s2 &  s1 &  s0) | 
                             ( s3 &  s2 & ~s1 &  s0) | 
                             ( s3 &  s2 &  s1 & ~s0) | 
                             ( s3 &  s2 &  s1 &  s0);  

endmodule