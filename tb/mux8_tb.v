`timescale 1ns/1ps
module mux8_tb;
    reg [7:0] d;
    reg [2:0] sel;
    wire y;

    mux8 dut(.d(d), .sel(sel), .y(y));

    integer i;
    initial begin
        d = 8'b1001_0110;
        $display("Time sel d | y");
        for (i = 0; i < 8; i = i + 1) begin
            sel = i[2:0];
            #1;
            $display("%4t  %03b  %b | %b", $time, sel, d, y);
            #9;
        end
        d = 8'b0011_1100;
        for (i = 0; i < 8; i = i + 1) begin
            sel = i[2:0];
            #1;
            $display("%4t  %03b  %b | %b", $time, sel, d, y);
            #9;
        end
        $finish;
    end
endmodule