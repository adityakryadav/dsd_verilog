`timescale 1ns/1ps
module d_ff_tb;
    reg clk;
    reg d;
    wire q, nq;

    d_ff dut(.clk(clk), .d(d), .q(q), .nq(nq));

    initial begin
        clk = 0; forever #5 clk = ~clk;
    end

    initial begin
        $display("Time d | q nq");
        d=0; @(posedge clk); #1; $display("%4t %b | %b %b", $time, d, q, nq);
        d=1; @(posedge clk); #1; $display("%4t %b | %b %b", $time, d, q, nq);
        d=0; @(posedge clk); #1; $display("%4t %b | %b %b", $time, d, q, nq);
        d=1; @(posedge clk); #1; $display("%4t %b | %b %b", $time, d, q, nq);
        $finish;
    end
endmodule