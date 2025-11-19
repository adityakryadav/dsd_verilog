module d_ff(
    input  wire clk,
    input  wire d,
    output reg  q,
    output wire nq
);
    always @(posedge clk) begin
        q <= d;
    end
    assign nq = ~q;
endmodule