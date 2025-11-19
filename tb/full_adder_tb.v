`timescale 1ns/1ps
module full_adder_tb;
    reg a, b, cin;
    wire sum, cout;

    full_adder dut(.a(a), .b(b), .cin(cin), .sum(sum), .cout(cout));

    integer i;
    initial begin
        $display("Time a b cin | sum cout");
        for (i = 0; i < 8; i = i + 1) begin
            {a, b, cin} = i[2:0];
            #1;
            $display("%4t  %b %b  %b  |  %b    %b", $time, a, b, cin, sum, cout);
            #9;
        end
        $finish;
    end
endmodule