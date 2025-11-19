`timescale 1ns/1ps
module half_subtractor_tb;
    reg a, b;
    wire diff, borrow;

    half_subtractor dut(.a(a), .b(b), .diff(diff), .borrow(borrow));

    integer i;
    initial begin
        $display("Time a b | diff borrow");
        for (i = 0; i < 4; i = i + 1) begin
            {a, b} = i[1:0];
            #1;
            $display("%4t  %b %b |  %b    %b", $time, a, b, diff, borrow);
            #9;
        end
        $finish;
    end
endmodule