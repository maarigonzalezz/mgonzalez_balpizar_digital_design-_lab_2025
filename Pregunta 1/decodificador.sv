module decodificador ( input logic A, B, C, D, output logic s3, s2, s1, s0);

	always_comb begin
        s3 = A;
        s2 = A ^ B;
        s1 = B ^ C;
        s0 = C ^ D;
    end

endmodule 