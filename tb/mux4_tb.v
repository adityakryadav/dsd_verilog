`timescale 1ns/1ps
module mux4_tb;
    reg [3:0] d;
    reg [1:0] sel;
    wire y;

    mux4 dut(.d(d), .sel(sel), .y(y));

    integer i;
    initial begin
        d = 4'b1010;
        $display("Time sel d | y");
        for (i = 0; i < 4; i = i + 1) begin
            sel = i[1:0];
            #1;
            $display("%4t  %b  %b | %b", $time, sel, d, y);
            #9;
        end
        d = 4'b0101;
        for (i = 0; i < 4; i = i + 1) begin
            sel = i[1:0];
            #1;
            $display("%4t  %b  %b | %b", $time, sel, d, y);
            #9;
        end
        $finish;
    end
endmodule