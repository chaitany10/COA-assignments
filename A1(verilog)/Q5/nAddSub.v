//Siddharth Singh and Chaitany Pandiya
//17CO146 and 17CO112
//n-bit adder/subtractor using Verilog
//14 October 2018
`include "fullAdder.v"
module nBitAdder(inp1,inp2,carIn,ans,carOut,overflow);
    parameter n=64;
    input [n-1:0] inp1,inp2;
    input carIn;
    output [n-1:0] ans;
    output carOut,overflow;
    wire [n-1:0] carry;
    wire [n-1:0] inp3;

    genvar i;
    for(i=0;i<n;i=i+1)
      xor (inp3[i],inp2[i],carIn);

    generate
      for(i=0;i<n;i=i+1)
        begin
        if(i==0)
        fullAdder fa(inp1[0],inp3[0],carIn,ans[0],carry[0]);
        else
        fullAdder fa(inp1[i],inp3[i],carry[i-1],ans[i],carry[i]);
        end
        assign carOut=carry[n-1];
        assign overflow=carry[n-1]^carry[n-2];
    endgenerate
  endmodule
