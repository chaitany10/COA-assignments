//Siddharth Singh and Chaitany Pandiya
//17CO146 and 17CO112
//Hello World program using Verilog
//14 October 2018
`timescale 1ns/100ps
`include "halfAdder.v"
module test_halfAdder;

reg rbit1=0,rbit2=0;
wire wsum,wcarry;
halfAdder ins(
.inputBit1(rbit1),
.inputBit2(rbit2),
.sum(wsum),
.carry(wcarry)
);
initial
begin
    $dumpfile("halfAdder.vcd");
    $dumpvars(0,test_halfAdder);
end
initial
begin
    rbit1=1'b0;
    rbit2=1'b0;
    #10;
    rbit1=1'b0;
    rbit2=1'b1;
    #10;
    rbit1=1'b1;
    rbit2=1'b0;
    #10;
    rbit1=1'b1;
    rbit2=1'b1;
    #10;
end
initial begin
	$monitor("Time=%0d inputBit1=%b inputBit2=%b sum=%b carry=%b",$time,rbit1,rbit2,wsum,wcarry);
#80 $finish;
end
endmodule
