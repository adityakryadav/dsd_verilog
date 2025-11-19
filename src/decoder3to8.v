module decoder3to8(
    input  wire [2:0] in,
    output wire [7:0] out
);
    assign out = 8'b0000_0001 << in;
endmodule