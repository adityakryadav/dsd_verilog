`timescale 1ns/1ps
module t_ff_tb;
    reg clk;
    reg t;
    wire q, nq;

    t_ff dut(.clk(clk), .t(t), .q(q), .nq(nq));

    initial begin
        clk = 0; forever #5 clk = ~clk;
    end

    initial begin
        $display("Time t | q nq");
        t=0; @(posedge clk); #1; $display("%4t %b | %b %b", $time, t, q, nq);
        t=1; @(posedge clk); #1; $display("%4t %b | %b %b", $time, t, q, nq);
        t=1; @(posedge clk); #1; $display("%4t %b | %b %b", $time, t, q, nq);
        t=0; @(posedge clk); #1; $display("%4t %b | %b %b", $time, t, q, nq);
        $finish;
    end
endmodule