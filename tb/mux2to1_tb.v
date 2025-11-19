`timescale 1ns/1ps
module mux2to1_tb;
    reg [1:0] d;
    reg sel;
    wire y;

    mux2to1 dut(.d(d), .sel(sel), .y(y));

    initial begin
        $display("Time sel d | y");
        d = 2'b01; sel = 0; #1; $display("%4t  %b  %b | %b", $time, sel, d, y);
        sel = 1; #1; $display("%4t  %b  %b | %b", $time, sel, d, y);
        d = 2'b10; sel = 0; #1; $display("%4t  %b  %b | %b", $time, sel, d, y);
        sel = 1; #1; $display("%4t  %b  %b | %b", $time, sel, d, y);
        d = 2'b00; sel = 0; #1; $display("%4t  %b  %b | %b", $time, sel, d, y);
        sel = 1; #1; $display("%4t  %b  %b | %b", $time, sel, d, y);
        $finish;
    end
endmodule