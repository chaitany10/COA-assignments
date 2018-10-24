//Siddharth Singh and Chaitany Pandiya
//17CO146
//4X16 decoder testbench using Verilog
//14 October 2018
`timescale 1ns/100ps
`include "decoder.v"
module test_decoder;
reg ra,rb,rc,rd,ren;
wire [0:15] rdec;
decoder ins(rdec,ra,rb,rc,rd,ren);  //instance of decoder module
initial
begin
    $dumpfile("decoder.vcd");        //to create gtkwave
    $dumpvars(0,test_decoder);
end
initial
begin
    ra=1'b0;
    rb=1'b0;
    rc=1'b0;
    rd=1'b0;
    ren=1'b0;
    #5;
    ra=1'b0;
    rb=1'b0;
    rc=1'b0;
    rd=1'b1;
    ren=1'b0;
    #5;
    ra=1'b0;
    rb=1'b0;
    rc=1'b1;
    rd=1'b0;
    ren=1'b0;
    #5;
    ra=1'b0;
    rb=1'b0;
    rc=1'b1;
    rd=1'b1;
    ren=1'b0;
    #5;
    ra=1'b0;
    rb=1'b1;
    rc=1'b0;
    rd=1'b0;
    ren=1'b0;
    #5;
    ra=1'b0;
    rb=1'b1;
    rc=1'b0;
    rd=1'b1;
    ren=1'b0;
    #5;
    ra=1'b0;
    rb=1'b1;
    rc=1'b1;
    rd=1'b0;
    ren=1'b0;
    #5;
    ra=1'b0;
    rb=1'b1;
    rc=1'b1;
    rd=1'b1;
    ren=1'b0;
    #5;
    ra=1'b1;
    rb=1'b0;
    rc=1'b0;
    rd=1'b0;
    ren=1'b0;
    #5;
    ra=1'b1;
    rb=1'b0;
    rc=1'b0;
    rd=1'b1;
    ren=1'b0;
    #5;
    ra=1'b1;
    rb=1'b0;
    rc=1'b1;
    rd=1'b0;
    ren=1'b0;
    #5;
    ra=1'b1;
    rb=1'b0;
    rc=1'b1;
    rd=1'b1;
    ren=1'b0;
    #5;
    ra=1'b1;
    rb=1'b1;
    rc=1'b0;
    rd=1'b0;
    ren=1'b0;
    #5;
    ra=1'b1;
    rb=1'b1;
    rc=1'b0;
    rd=1'b1;
    ren=1'b0;
    #5;
    ra=1'b1;
    rb=1'b1;
    rc=1'b1;
    rd=1'b0;
    ren=1'b0;
    #5;
    ra=1'b1;
    rb=1'b1;
    rc=1'b1;
    rd=1'b1;
    ren=1'b0;
    #5;

end
initial begin              //displaying desired values
	$monitor("input=%b%b%b%b output=%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b",ra,rb,rc,rd,rdec[15],rdec[14],rdec[13],rdec[12],rdec[11],rdec[10],rdec[9],rdec[8],rdec[7],rdec[6],rdec[5],rdec[4],rdec[3],rdec[2],rdec[1],rdec[0]);

	#300 $finish;        //after every 20 ns input changes and there are 15 combination of input so after 300 ns program terminates
end
endmodule
