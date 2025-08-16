module decodificador ( input logic A, B, C, D, output logic s3, s2, s1, s0);

	assign s3 = A;
	
	assign s2 = A ^ B;
	
	assign s1 = B ^ C;
	
	assign s0 = C ^ D;

endmodule 