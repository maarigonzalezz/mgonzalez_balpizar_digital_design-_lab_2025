module Debounce (
    input  logic clk,
    input  logic btn_in,
    output logic btn_out
);
    logic [15:0] counter;
    logic sync_0, sync_1;
    logic state;

    // Sincronizar
    always_ff @(posedge clk) begin
        sync_0 <= btn_in;
        sync_1 <= sync_0;
    end

    // Filtrar rebotes
    always_ff @(posedge clk) begin
        if (sync_1 != state) begin
            counter <= counter + 1;
            if (counter == 16'hFFFF) begin
                state <= sync_1;
            end
        end else begin
            counter <= 0;
        end
    end

    assign btn_out = state;
endmodule
