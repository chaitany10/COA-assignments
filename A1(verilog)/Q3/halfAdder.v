//Siddharth Singh and Chaitany Pandiya
//17CO146
//Hello World program using Verilog
//14 October 2018
module halfAdder(
inputBit1,
inputBit2,
sum,
carry
);
input inputBit1,inputBit2;
output sum,carry;
assign sum=inputBit1^inputBit2;
assign carry=inputBit1&inputBit2;
endmodule
