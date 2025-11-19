`timescale 1ns/1ps
module priority_encoder8_tb;
    reg  [7:0] in;
    wire       valid;
    wire [2:0] code;

    priority_encoder8 dut(.in(in), .valid(valid), .code(code));

    initial begin
        $display("Time in | valid code");
        in = 8'b0000_0000; #1; $display("%4t %b |   %b     %03b", $time, in, valid, code);
        in = 8'b0000_0001; #1; $display("%4t %b |   %b     %03b", $time, in, valid, code);
        in = 8'b0000_0010; #1; $display("%4t %b |   %b     %03b", $time, in, valid, code);
        in = 8'b1000_0000; #1; $display("%4t %b |   %b     %03b", $time, in, valid, code);
        in = 8'b0100_0100; #1; $display("%4t %b |   %b     %03b", $time, in, valid, code);
        in = 8'b0010_1111; #1; $display("%4t %b |   %b     %03b", $time, in, valid, code);
        $finish;
    end
endmodule