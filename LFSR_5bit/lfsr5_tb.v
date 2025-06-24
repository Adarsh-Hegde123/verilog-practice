`timescale 1ns / 1ps
module lfsr5_tb;
reg clk,reset;
wire [4:0]q ;
lfsr5 uut (.clk(clk),.reset(reset),.q(q));

initial begin
    clk=0;
    forever #5 clk=~clk;
end

initial begin
    reset=1; #10
    reset=0;#50
    reset=1;#10
    reset=0;#100
    $finish;
    end
 endmodule

