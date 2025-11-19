module boolean_expressions(
    input  wire a,
    input  wire b,
    input  wire c,
    output wire y1,
    output wire y2,
    output wire y3
);
    assign y1 = (~a & b) | (a & c);
    assign y2 = a ^ b ^ c;
    assign y3 = (a | b) & ~c;
endmodule