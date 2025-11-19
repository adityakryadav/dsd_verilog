`timescale 1ns/1ps
module full_subtractor_tb;
    reg a, b, bin;
    wire diff, bout;

    full_subtractor dut(.a(a), .b(b), .bin(bin), .diff(diff), .bout(bout));

    integer i;
    initial begin
        $display("Time a b bin | diff bout");
        for (i = 0; i < 8; i = i + 1) begin
            {a, b, bin} = i[2:0];
            #1;
            $display("%4t  %b %b  %b  |  %b    %b", $time, a, b, bin, diff, bout);
            #9;
        end
        $finish;
    end
endmodule