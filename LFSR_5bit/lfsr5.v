`timescale 1ns / 1ps
module lfsr5(clk,reset,q); 
        input clk,reset;
        output reg [4:0] q;
        wire n1,n2;
        xor xor1(n1,1'b0,q[0]);
        xor xor2(n2,q[0],q[3]);
        always@(posedge clk) begin
            if(reset==1'd1)
                q<=4'd1;
            else begin
                q[4]<=n1;
                q[3]<=q[4];
                q[2]<=n2;
                q[1]<=q[2];
                q[0]<=q[1];
            end
        end 
    
    endmodule