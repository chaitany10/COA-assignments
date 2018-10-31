//submitted by Siddharth Singh(17CO146) & Chaitany Pandiya(17C0112)
`include "dFlipFlop.v"
module register(d,clk,reset,q,q1);
    input [31:0]d;
    input clk,reset;
    output [31:0]q,q1;
    genvar i;
    generate
    for (i=0;i<32;i=i+1) 
           begin
               dFlipFlop dff(d[i],clk,reset,q[i],q1[i]); //for each bit send to dflipflop to store
           end
    endgenerate
    
endmodule
