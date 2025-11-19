`timescale 1ns/1ps
module sr_latch_tb;
    reg s, r;
    wire q, nq;

    sr_latch dut(.s(s), .r(r), .q(q), .nq(nq));

    initial begin
        $display("Time s r | q nq");
        s = 0; r = 0; #1; $display("%4t %b %b | %b  %b", $time, s, r, q, nq);
        s = 1; r = 0; #1; $display("%4t %b %b | %b  %b", $time, s, r, q, nq);
        s = 0; r = 0; #1; $display("%4t %b %b | %b  %b", $time, s, r, q, nq);
        s = 0; r = 1; #1; $display("%4t %b %b | %b  %b", $time, s, r, q, nq);
        s = 0; r = 0; #1; $display("%4t %b %b | %b  %b", $time, s, r, q, nq);
        s = 1; r = 1; #1; $display("%4t %b %b | %b  %b", $time, s, r, q, nq);
        $finish;
    end
endmodule