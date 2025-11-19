`timescale 1ns/1ps
module jk_ff_tb;
    reg clk;
    reg j, k;
    wire q, nq;

    jk_ff dut(.clk(clk), .j(j), .k(k), .q(q), .nq(nq));

    initial begin
        clk = 0; forever #5 clk = ~clk;
    end

    initial begin
        $display("Time j k | q nq");
        j=0; k=0; @(posedge clk); #1; $display("%4t %b %b | %b %b", $time, j, k, q, nq);
        j=1; k=0; @(posedge clk); #1; $display("%4t %b %b | %b %b", $time, j, k, q, nq);
        j=0; k=0; @(posedge clk); #1; $display("%4t %b %b | %b %b", $time, j, k, q, nq);
        j=0; k=1; @(posedge clk); #1; $display("%4t %b %b | %b %b", $time, j, k, q, nq);
        j=1; k=1; @(posedge clk); #1; $display("%4t %b %b | %b %b", $time, j, k, q, nq);
        j=1; k=1; @(posedge clk); #1; $display("%4t %b %b | %b %b", $time, j, k, q, nq);
        $finish;
    end
endmodule