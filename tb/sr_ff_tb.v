`timescale 1ns/1ps
module sr_ff_tb;
    reg clk;
    reg s, r;
    wire q, nq;

    sr_ff dut(.clk(clk), .s(s), .r(r), .q(q), .nq(nq));

    initial begin
        clk = 0; forever #5 clk = ~clk;
    end

    initial begin
        $display("Time s r q nq");
        s=0; r=0; #2; @(posedge clk); #1; $display("%4t %b %b %b %b", $time, s, r, q, nq);
        s=1; r=0; @(posedge clk); #1; $display("%4t %b %b %b %b", $time, s, r, q, nq);
        s=0; r=0; @(posedge clk); #1; $display("%4t %b %b %b %b", $time, s, r, q, nq);
        s=0; r=1; @(posedge clk); #1; $display("%4t %b %b %b %b", $time, s, r, q, nq);
        s=0; r=0; @(posedge clk); #1; $display("%4t %b %b %b %b", $time, s, r, q, nq);
        s=1; r=1; @(posedge clk); #1; $display("%4t %b %b %b %b", $time, s, r, q, nq);
        $finish;
    end
endmodule