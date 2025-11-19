`timescale 1ns/1ps
module decoder2to4_tb;
    reg  [1:0] in;
    wire [3:0] out;

    decoder2to4 dut(.in(in), .out(out));

    integer i;
    initial begin
        $display("Time in | out");
        for (i = 0; i < 4; i = i + 1) begin
            in = i[1:0];
            #1;
            $display("%4t %02b | %b", $time, in, out);
            #9;
        end
        $finish;
    end
endmodule