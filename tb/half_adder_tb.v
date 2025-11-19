`timescale 1ns/1ps
module half_adder_tb;
    reg a, b;
    wire sum, carry;

    half_adder dut(.a(a), .b(b), .sum(sum), .carry(carry));

    integer i;
    initial begin
        $display("Time a b | sum carry");
        for (i = 0; i < 4; i = i + 1) begin
            {a, b} = i[1:0];
            #1;
            $display("%4t  %b %b |  %b    %b", $time, a, b, sum, carry);
            #9;
        end
        $finish;
    end
endmodule