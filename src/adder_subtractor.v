module adder_subtractor #(parameter N = 8) (
    input  wire [N-1:0] a,
    input  wire [N-1:0] b,
    input  wire         sub,
    output wire [N-1:0] y,
    output wire         carry_out,
    output wire         overflow
);
    wire [N-1:0] b_eff = sub ? ~b : b;
    wire         cin   = sub;
    wire [N:0]   sum   = {1'b0, a} + {1'b0, b_eff} + cin;

    assign y         = sum[N-1:0];
    assign carry_out = sum[N];
    assign overflow  = (~(a[N-1] ^ b_eff[N-1])) & (a[N-1] ^ y[N-1]);
endmodule