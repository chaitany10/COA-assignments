//Siddharth Singh and Chaitany Pandiya
//17CO146 and 17CO112
//1 bit ALU using Verilog
//24 October 2018
`include "mux4.v"
`include "FA.v"
`include "mux2.v"
module ALU_1_bit(result,zflag,a,b,Ainvert,Binvert,op,cin,cout);

  output result,zflag;                         //Output declared as result and zero flag
  output cout;
  input a,b,Ainvert,Binvert,cin;                 //Input is a,b,Ainvert,Binvert,cin

  input [1:0]op;                                    //operation mux select lines

  wire _a,_b,_and,_or,_sum,_carry,less,t,less1;     //wires used in connection   

  FA f4(less1,t,a,b,1'b1);                          //Full Adder module called to subtract a and b 
  or(zflag,less1,1'b0);                         //zero-flag is set

  mux2 f1(Ainvert,a,~a,_a);                         //Now mux1 is called to select a or a'
  mux2 f2(Binvert,b,~b,_b);                         //mux2 is called to select b or b'

  and (_and,_a,_b);                                 //and operation done and wire _and sent to 00 of operation mux
  or (_or,_a,_b);                                   //or operation done and wire _or sent to 01 of operation mux

  FA f3(_sum,cout,_a,_b,cin);                   //add/sub operation done and wire _sum sent to 10 of operation mux
  FA f6(less,t,_a,_b,1'b1);                         //slt operation done and wire less sent to 11 of operation mux

  mux4 f5(op,_and,_or,_sum,less,result);             //Operation mux is called

endmodule
