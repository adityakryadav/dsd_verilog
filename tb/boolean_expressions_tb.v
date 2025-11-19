`timescale 1ns/1ps
module boolean_expressions_tb;
    reg a, b, c;
    wire y1, y2, y3;

    boolean_expressions dut(.a(a), .b(b), .c(c), .y1(y1), .y2(y2), .y3(y3));

    integer i;
    initial begin
        $display("Time a b c | y1 y2 y3");
        for (i = 0; i < 8; i = i + 1) begin
            {a, b, c} = i[2:0];
            #1;
            $display("%4t  %b %b %b |  %b  %b  %b", $time, a, b, c, y1, y2, y3);
            #9;
        end
        $finish;
    end
endmodule