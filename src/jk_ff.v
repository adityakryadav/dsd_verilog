module jk_ff(
    input  wire clk,
    input  wire j,
    input  wire k,
    output reg  q,
    output wire nq
);
    always @(posedge clk) begin
        case ({j, k})
            2'b10: q <= 1'b1;       // Set
            2'b01: q <= 1'b0;       // Reset
            2'b11: q <= ~q;         // Toggle
            2'b00: q <= q;          // Hold
        endcase
    end
    assign nq = ~q;
endmodule