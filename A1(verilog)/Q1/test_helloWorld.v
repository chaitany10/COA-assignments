//Siddharth Singh and Chaitany Pandiya
//17CO146 and 17CO112
//testbench for helloWorld in verilog
`timescale 1ns/1ps
`include "helloWorld.v"
module hellotest;
reg clk;
helloWorld ins(clk);   //instance of helloWorld
initial                //beginning of 0th clock cycle
begin
  clk=1'b1;
  repeat (99)           //terminates after 100 clock cycles
        #1 clk=~clk;
end
endmodule
