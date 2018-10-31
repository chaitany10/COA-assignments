//Siddharth Singh and Chaitany Pandiya
//17CO146 and 17CO112
//n-bit adder/subtractor using Verilog
//14 October 2018
`timescale 1ns/100ps
`include "nAddSub.v"
module test_nAddSub;
reg [63:0] rinp1,rinp2;
reg rcarIn;
wire [63:0] rans;
wire rcarOut,roverflow;

nBitAdder ins(rinp1,rinp2,rcarIn,rans,rcarOut,roverflow);
initial
begin
$dumpfile("nAddSub.vcd");
$dumpvars(0,test_nAddSub);
end
initial
begin
rinp1=4321;
rinp2=1234;
rcarIn=0;
#40;
rinp1=4321;
rinp2=1234;
rcarIn=1;
#40;
end
endmodule
