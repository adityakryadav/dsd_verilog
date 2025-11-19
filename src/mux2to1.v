module mux2to1(
    input  wire [1:0] d,
    input  wire       sel,
    output wire       y
);
    assign y = d[sel];
endmodule