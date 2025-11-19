`timescale 1ns/1ps
module counter_tb;
    localparam N = 4;
    reg clk, rst, en, up;
    wire [N-1:0] q;

    counter #(N) dut(.clk(clk), .rst(rst), .en(en), .up(up), .q(q));

    initial begin
        clk = 0; forever #5 clk = ~clk;
    end

    initial begin
        $display("Time rst en up | q");
        rst=1; en=0; up=1; @(posedge clk); #1; $display("%4t %b %b %b | %b", $time, rst, en, up, q);
        rst=0; en=1; up=1; repeat (5) @(posedge clk); #1; $display("%4t %b %b %b | %b", $time, rst, en, up, q);
        en=1; up=0; repeat (3) @(posedge clk); #1; $display("%4t %b %b %b | %b", $time, rst, en, up, q);
        en=0; repeat (2) @(posedge clk); #1; $display("%4t %b %b %b | %b", $time, rst, en, up, q);
        rst=1; @(posedge clk); #1; $display("%4t %b %b %b | %b", $time, rst, en, up, q);
        $finish;
    end
endmodule