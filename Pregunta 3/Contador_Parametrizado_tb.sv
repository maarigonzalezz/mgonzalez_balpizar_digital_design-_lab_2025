`timescale 1ns/1ps
module Contador_Parametrizado_tb();

    // Señales de prueba
    logic clk;
    logic reset;
    logic [5:0] initial_value;
    logic cont;  // enable del contador
    
    // Salidas para displays de 7 segmentos
    logic [6:0] seg1_2bits, seg0_2bits;
    logic [6:0] seg1_4bits, seg0_4bits;
    logic [6:0] seg1_6bits, seg0_6bits;

    // Salidas del contador
    logic [1:0] count2;
    logic [3:0] count4;
    logic [5:0] count6;

    // Instancias del contador parametrizado
    Contador_Parametrizado #(2) uut2 (
        .clk(clk),
        .reset(reset),
        .initial_value(initial_value[1:0]),
        .cont(cont),
        .seg1(seg1_2bits),
        .seg0(seg0_2bits),
        .count(count2)
    );

    Contador_Parametrizado #(4) uut4 (
        .clk(clk),
        .reset(reset),
        .initial_value(initial_value[3:0]),
        .cont(cont),
        .seg1(seg1_4bits),
        .seg0(seg0_4bits),
        .count(count4)
    );

    Contador_Parametrizado #(6) uut6 (
        .clk(clk),
        .reset(reset),
        .initial_value(initial_value),
        .cont(cont),
        .seg1(seg1_6bits),
        .seg0(seg0_6bits),
        .count(count6)
    );

    // Tarea para mostrar los displays de 7 segmentos
    task display_7seg(input [6:0] seg);
        begin
            case (seg)
                7'b1000000: $write("0");
                7'b1111001: $write("1");
                7'b0100100: $write("2");
                7'b0110000: $write("3");
                7'b0011001: $write("4");
                7'b0010010: $write("5");
                7'b0000010: $write("6");
                7'b1111000: $write("7");
                7'b0000000: $write("8");
                7'b0010000: $write("9");
                default:    $write("X");
            endcase
            $write("\n");
        end
    endtask

    initial begin
        // Inicialización
        clk = 0;
        reset = 0;
        cont = 0;
		  

        // ---------------------------
        // Prueba contador 2 bits
        // ---------------------------
        initial_value = 6'b000000; // valor inicial 0
        $display("=== Prueba contador 2 bits ===");
		  $display("Valor inicial 0");
        reset = 1; #10;
        reset = 0; #10;
        cont = 1;    // habilita incremento
        // Simula un flanco de subida de clk
        clk = 0; #5;
        clk = 1; #5;
        clk = 0; #5;
        cont = 0;    // deshabilita
        $display("Valor final (2 bits): %b", count2);
		  display_7seg(seg0_2bits);
		  $write("\n");
		  cont = 1;    // habilita incremento
        // Simula un flanco de subida de clk
        clk = 0; #5;
        clk = 1; #5;
        clk = 0; #5;
        cont = 0;    // deshabilita
        $display("Valor final (2 bits): %b", count2);
		  display_7seg(seg0_2bits);
		  $write("\n");
		  cont = 1;    // habilita incremento
        // Simula un flanco de subida de clk
        clk = 0; #5;
        clk = 1; #5;
        clk = 0; #5;
        cont = 0;    // deshabilita
        $display("Valor final (2 bits): %b", count2);
		  display_7seg(seg0_2bits);
		  $write("\n");

        // ---------------------------
        // Prueba contador 4 bits
        // ---------------------------
        initial_value = 6'b000101; // valor inicial 5
        $display("=== Prueba contador 4 bits ===");
		  $display("Valor inicial 5");
        reset = 1; #10;
        reset = 0; #10;
        cont = 1;
        clk = 0; #5;
        clk = 1; #5;
        clk = 0; #5;
        cont = 0;
        $display("Valor final (4 bits): %b", count4);
		  display_7seg(seg1_4bits);
		  display_7seg(seg0_4bits);
		  $write("\n");
		  cont = 1;
        clk = 0; #5;
        clk = 1; #5;
        clk = 0; #5;
        cont = 0;
        $display("Valor final (4 bits): %b", count4);
		  display_7seg(seg1_4bits);
		  display_7seg(seg0_4bits);
		  $write("\n");
		  cont = 1;
        clk = 0; #5;
        clk = 1; #5;
        clk = 0; #5;
        cont = 0;
        $display("Valor final (4 bits): %b", count4);
		  display_7seg(seg1_4bits);
		  display_7seg(seg0_4bits);
		  $write("\n");

        // ---------------------------
        // Prueba contador 6 bits
        // ---------------------------
        initial_value = 6'b011110; // valor inicial 30
        $display("=== Prueba contador 6 bits ===");
		  $display("Valor inicial 30");
        reset = 1; #10;
        reset = 0; #10;
        cont = 1;
        clk = 0; #5;
        clk = 1; #5;
        clk = 0; #5;
        cont = 0;
        $display("Valor final (6 bits): %b", count6);
		  display_7seg(seg1_6bits);
		  display_7seg(seg0_6bits);
		  $write("\n");
        cont = 1;
        clk = 0; #5;
        clk = 1; #5;
        clk = 0; #5;
        cont = 0;
        $display("Valor final (6 bits): %b", count6);
		  display_7seg(seg1_6bits);
		  display_7seg(seg0_6bits);
		  $write("\n");
        cont = 1;
        clk = 0; #5;
        clk = 1; #5;
        clk = 0; #5;
        cont = 0;
        $display("Valor final (6 bits): %b", count6);
		  display_7seg(seg1_6bits);
		  display_7seg(seg0_6bits);
		  $write("\n");
        cont = 1;
        clk = 0; #5;
        clk = 1; #5;
        clk = 0; #5;
        cont = 0;
        $display("Valor final (6 bits): %b", count6);
		  display_7seg(seg1_6bits);
		  display_7seg(seg0_6bits);

        $stop;
    end


endmodule
