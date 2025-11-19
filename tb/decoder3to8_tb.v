`timescale 1ns/1ps
module decoder3to8_tb;
    reg  [2:0] in;
    wire [7:0] out;

    decoder3to8 dut(.in(in), .out(out));

    integer i;
    initial begin
        $display("Time in | out");
        for (i = 0; i < 8; i = i + 1) begin
            in = i[2:0];
            #1;
            $display("%4t %03b | %b", $time, in, out);
            #9;
        end
        $finish;
    end
endmodule