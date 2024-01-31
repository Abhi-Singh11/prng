`timescale 1ns / 1ps
module D_FF(
    input D,
    input clk,
    input reset,
    output reg Q
    );
    always @(posedge clk or posedge reset)
    begin
    if (reset==1'b0)    
        Q<=1'b0;
    else
        Q<=D;
    end

module prng(
input clk,reset,
output [7:0]Q
);
wire Z;
wire [7:0]z;

assign Q = z;
 
        D_FF D1 (Z,clk,reset,z[0]);    
        D_FF D2 (z[0],clk,reset,z[1]);
        D_FF D3 (z[1],clk,reset,z[2]);
        D_FF D4 (z[2],clk,reset,z[3]);
        D_FF D5 (z[3],clk,reset,z[4]);
        D_FF D6 (z[4],clk,reset,z[5]);
        D_FF D7 (z[5],clk,reset,z[6]);
        D_FF D8 (z[6],clk,reset,z[7]);

xnor(Z,z[0],z[2],z[3],z[6],z[7]);
endmodule