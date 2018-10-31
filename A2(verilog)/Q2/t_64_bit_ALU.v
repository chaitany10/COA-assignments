//Siddharth Singh and Chaitany Pandiya
//17CO146 and 17CO112
//64 bit ALU testbench using Verilog
//24 October 2018
`include "64-bit_ALU.v"
module t_64_bit_ALU;
reg [63:0]a,b;
wire [63:0]result,zflag1;
reg Ainvert,Binvert;
reg cin;
wire overflow;
wire zflag;
reg [1:0]op;


ALU_64_bit a1(result,zflag1,a,b,Ainvert,Binvert,op,cin,overflow,zflag);

initial begin
$dumpfile("ALU_64_bit.vcd");
$dumpvars(0,t_64_bit_ALU);
end

initial begin

//Inputs set to perform AND Operation

$display("AND Operation");
cin=0;
a=64'b0000000000000000000000000000000000000000000000000000000000000;
b=64'b1111111111111111111111111111111111111111111111111111111111111;
Ainvert=1'b0;
Binvert=1'b0;
op=2'b00;
$monitor("a=%b\nb=%b\nAinvert=%b Binvert=%b op=%b\nresult=%b zero_flag=%b\n\n\n\n\n",a,b,Ainvert,Binvert,op,result,zflag);
#10;
cin=0;
a=64'b1011111111001111111111000011111111111111111000111111111111111111;
b=64'b1111111111111111111111111111111111111111111111111111111111111111;
Ainvert=1'b0;
Binvert=1'b0;
op=2'b00;

$monitor("a=%b\nb=%b\nAinvert=%b Binvert=%b op=%b\nresult=%b zero_flag=%b\n\n\n\n\n",a,b,Ainvert,Binvert,op,result,zflag);
#10;



//Inputs set to perform OR Operation



$display("For OR Operation");
a=64'b0000000000000000000000000000000000000000000000000000000000000;
b=64'b1111111111111111111111111111111111111111111111111111111111111;
Ainvert=1'b0;
Binvert=1'b0;
op=2'b01;
$monitor("a=%b\nb=%b\nAinvert=%b Binvert=%b op=%b\nresult=%b zero_flag=%b\n\n\n\n\n",a,b,Ainvert,Binvert,op,result,zflag);
#10;
#10;


//Inputs set to perform ADD Operation



$display("For ADD opeartion");
a=64'b0000000000000000000000000000000000000000000000000000000000000;
b=64'b1111111111111111111111111111111111111111111111111111111111111;
Ainvert=1'b0;
Binvert=1'b0;
cin=1'b0;
op=2'b10;
$monitor("a=%b\nb=%b\nAinvert=%b Binvert=%b op=%b\nresult=%b zero_flag=%b overflow=%b\n\n\n\n\n",a,b,Ainvert,Binvert,op,result,zflag,overflow);
#10;
cin=0;
a=64'b0111111111111111111111111111111111111111111111111111111111111111;
b=64'b0111111111111111111111111111111111111111111111111111111111111111;


$monitor("a=%b\nb=%b\nAinvert=%b Binvert=%b op=%b\nresult=%b zero_flag=%b overflow=%b\n\n\n\n\n",a,b,Ainvert,Binvert,op,result,zflag,overflow);
#10;



//Inputs set to perform SUB Operation



$display("For SUB opeartion");
a=64'b0000000000000000000000000000000000000000000000000000000000000;
b=64'b1111111111111111111111111111111111111111111111111111111111111;
Ainvert=1'b0;
Binvert=1'b1;
cin=1'b1;
op=2'b10;
$monitor("a=%b\nb=%b\nAinvert=%b Binvert=%b op=%b\nresult=%b zero_flag=%b\n\n\n\n\n",a,b,Ainvert,Binvert,op,result,zflag);
#10;



//Inputs set to perform NAND Operation




$display("For NAND opeartion");
a=64'b0000000000000000000000000000000000000000000000000000000000000;
b=64'b1111111111111111111111111111111111111111111111111111111111111;
Ainvert=1'b1;
Binvert=1'b1;
op=2'b01;
$monitor("a=%b\nb=%b\nAinvert=%b Binvert=%b op=%b\nresult=%b zero_flag=%b\n\n\n\n\n",a,b,Ainvert,Binvert,op,result,zflag);
#10;




//Inputs set to perform NOR Operation






$display("For NOR operation");
a=64'b0000000000000000000000000000000000000000000000000000000000000;
b=64'b1111111111111111111111111111111111111111111111111111111111111;
Ainvert=1'b1;
Binvert=1'b1;
op=2'b00;
$monitor("a=%b\nb=%b\nAinvert=%b Binvert=%b op=%b\nresult=%b zero_flag=%b\n\n\n\n\n",a,b,Ainvert,Binvert,op,result,zflag);
#10;
#10;


//Inputs set to determine whether a>b 



$display("To get the result when a>b");
a=64'b0000000000000000000000000000000000000000000000000000000000000;
b=64'b1111111111111111111111111111111111111111111111111111111111111;
Ainvert=1'b1;
Binvert=1'b0;
cin=1'b1;
op=2'b11;
$monitor("a=%b\nb=%b\nAinvert=%b Binvert=%b carry in=%b op=%b\nresult=%b",a,b,Ainvert,Binvert,cin,op,result);
#10;

end

endmodule
