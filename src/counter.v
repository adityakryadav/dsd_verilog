module counter #(parameter N = 4) (
    input  wire        clk,
    input  wire        rst,
    input  wire        en,
    input  wire        up,
    output reg  [N-1:0] q
);
    always @(posedge clk) begin
        if (rst) begin
            q <= {N{1'b0}};
        end else if (en) begin
            if (up)
                q <= q + 1'b1;
            else
                q <= q - 1'b1;
        end
    end
endmodule