`timescale 1ns/1ps
module basic_gates_tb;
    reg a, b;
    wire and_y, or_y, nand_y, nor_y, xor_y, xnor_y, not_a, not_b;

    basic_gates dut(
        .a(a), .b(b),
        .and_y(and_y), .or_y(or_y), .nand_y(nand_y), .nor_y(nor_y),
        .xor_y(xor_y), .xnor_y(xnor_y), .not_a(not_a), .not_b(not_b)
    );

    integer i;
    initial begin
        $display("Time a b | AND OR NAND NOR XOR XNOR !a !b");
        for (i = 0; i < 4; i = i + 1) begin
            {a, b} = i[1:0];
            #1;
            $display("%4t  %b %b |  %b   %b   %b    %b   %b    %b   %b", $time, a, b, and_y, or_y, nand_y, nor_y, xor_y, xnor_y, not_a, not_b);
            #9;
        end
        $finish;
    end
endmodule