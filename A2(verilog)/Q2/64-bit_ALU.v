//Siddharth Singh and Chaitany Pandiya
//17CO146 and 17CO112
//64 bit ALU using Verilog
//24 October 2018
`include "ALU.v"
module ALU_64_bit(result,zflag1,a,b,Ainvert,Binvert,op,cin,overflow,zflag);
	input [63:0]a,b;
	input cin;
	output overflow;
	input Ainvert,Binvert;
	output [63:0]result;
	output [63:0]zflag1;
	input [1:0]op;
	output reg zflag;
	wire [63:0]carry;
	genvar i;
	always @(*)
	begin	
	if (a-b==64'b0000000000000000000000000000000000000000000000000000000000000000)
		zflag=1;
	else
		zflag=0;
	end
	generate
    	for (i=0;i<64;i=i+1) 
	if(i==0)
	begin
		ALU_1_bit a(result[i],zflag1[i],a[i],b[i],Ainvert,Binvert,op,cin,carry[0]);
	end
	else
           begin
               ALU_1_bit a(result[i],zflag1[i],a[i],b[i],Ainvert,Binvert,op,carry[i-1],carry[i]);
           end
	assign overflow=carry[63]^carry[62];
	endgenerate
	
	
endmodule



















	
