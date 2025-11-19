module t_ff(
    input  wire clk,
    input  wire t,
    output reg  q,
    output wire nq
);
    always @(posedge clk) begin
        if (t)
            q <= ~q;
        else
            q <= q;
    end
    assign nq = ~q;
endmodule