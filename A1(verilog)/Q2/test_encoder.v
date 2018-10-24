//Siddharth Singh and Chaitany Pandiya
//17CO146
//16X4 encoder testbench using Verilog
//14 October 2018
`timescale 1ns/100ps
`include "encoder.v"
module test_encoder;
wire [0:3] a;
reg [0:15] d;
reg en;
encoder ins(a,d,en);
integer i;
initial
begin
  $dumpfile("encoder.vcd");           //to create gtkwave
  $dumpvars(0,test_encoder);
end
initial
begin
  en=1'b1;
for(i=0;i<=15;i++)
      begin
          d=0;
          d[i]=1;
        #20;
      end
end
initial begin              //displaying desired values
	$monitor("input=%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b output=%b%b%b%b",d[15],d[14],d[13],d[12],d[11],d[10],d[9],d[8],d[7],d[6],d[5],d[4],d[3],d[2],d[1],d[0],a[3],a[2],a[1],a[0]);

#300 $finish;        //after every 20 ns input changes and there are 15 combination of input so after 300 ns program terminates
end
endmodule
