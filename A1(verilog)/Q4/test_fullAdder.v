//Siddharth Singh and Chaitany Pandiya
//17CO146 and 17CO112
//Hello World program using Verilog
//14 October 2018
`timescale 1ns/100ps
`include "fullAdder.v"
module test_fullAdder;
reg rbit1=0,rbit2=0,rcarry;
wire wsum,wcarry;
fullAdder ins(
rbit1,
rbit2,
rcarry,
wsum,
wcarry
);
initial
begin
    $dumpfile("fullAdder.vcd");
    $dumpvars(0,test_fullAdder);
end
initial
begin
    rbit1=1'b0;
    rbit2=1'b0;
    rcarry=1'b0;
    #10;
    rbit1=1'b0;
    rbit2=1'b0;
    rcarry=1'b1;
    #10;
    rbit1=1'b0;
    rbit2=1'b1;
    rcarry=1'b0;
    #10;
    rbit1=1'b0;
    rbit2=1'b1;
    rcarry=1'b1;
    #10;
    rbit1=1'b1;
    rbit2=1'b0;
    rcarry=1'b0;
    #10;
    rbit1=1'b1;
    rbit2=1'b0;
    rcarry=1'b1;
    #10;
    rbit1=1'b1;
    rbit2=1'b1;
    rcarry=1'b0;
    #10;
    rbit1=1'b1;
    rbit2=1'b1;
    rcarry=1'b1;
    #10;
end
initial begin
$monitor("Time=%0d inputbit1=%b inputbit2=%b inputcarry=%b sum=%b carry=%b",$time,rbit1,rbit2,rcarry,wsum,wcarry);  //display result when a and b are added
#160 $finish;
end
endmodule
