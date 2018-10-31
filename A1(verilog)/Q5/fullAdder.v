//Siddharth Singh and Chaitany Pandiya
//17CO146
//Hello World program using Verilog
//14 October 2018
`include "halfAdder.v"
module fullAdder(
inputbit1,
inputbit2,
inputcarry,
sum,
carry
);
input inputbit1,inputbit2,inputcarry;
output sum,carry;
wire w1,w2,w3;
halfAdder ha1(inputbit1,inputbit2,w1,w2);
halfAdder ha2(w1,inputcarry,sum,w3);
or g1(carry,w2,w3);
endmodule
