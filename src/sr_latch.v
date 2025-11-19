module sr_latch(
    input  wire s,
    input  wire r,
    output wire q,
    output wire nq
);
    assign q  = ~(r | nq);
    assign nq = ~(s | q);
endmodule