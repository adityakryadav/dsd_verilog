`timescale 1ns/1ps
module adder_subtractor_tb;
    localparam N = 8;
    reg  [N-1:0] a, b;
    reg          sub;
    wire [N-1:0] y;
    wire         carry_out, overflow;

    adder_subtractor #(N) dut(.a(a), .b(b), .sub(sub), .y(y), .carry_out(carry_out), .overflow(overflow));

    initial begin
        $display("Time sub a b | y carry overflow");
        sub = 0; a = 8'd10; b = 8'd20; #1; $display("%4t  %b  %3d %3d | %3d   %b      %b", $time, sub, a, b, y, carry_out, overflow);
        sub = 1; a = 8'd20; b = 8'd10; #1; $display("%4t  %b  %3d %3d | %3d   %b      %b", $time, sub, a, b, y, carry_out, overflow);
        sub = 0; a = 8'd127; b = 8'd1;  #1; $display("%4t  %b  %3d %3d | %3d   %b      %b", $time, sub, a, b, y, carry_out, overflow);
        sub = 1; a = 8'd128; b = 8'd1;  #1; $display("%4t  %b  %3d %3d | %3d   %b      %b", $time, sub, a, b, y, carry_out, overflow);
        $finish;
    end
endmodule