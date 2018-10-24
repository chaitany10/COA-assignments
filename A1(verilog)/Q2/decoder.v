//Siddharth Singh and Chaitany Pandiya
//17CO146
//4X16 decoder using Verilog
//14 October 2018
module decoder(
dec,a,b,c,d,enable
);
output [0:15] dec;       //16-bit output
input      a,b,c,d;      //4-bit input with enable
input enable;
wire  anot,bnot,cnot,dnot,enablenot;
not (anot,a),            //gate level implementation
(bnot,b),
(cnot,c),
(dnot,d),
(enablenot,enable);
nand
(dec[0],anot,bnot,cnot,dnot,enablenot),
(dec[1],anot,bnot,cnot,d,enablenot),
(dec[2],anot,bnot,c,dnot,enablenot),
(dec[3],anot,bnot,c,d,enablenot),
(dec[4],anot,b,cnot,dnot,enablenot),
(dec[5],anot,b,cnot,d,enablenot),
(dec[6],anot,b,c,dnot,enablenot),
(dec[7],anot,b,c,d,enablenot),
(dec[8],a,bnot,cnot,dnot,enablenot),
(dec[9],a,bnot,cnot,d,enablenot),
(dec[10],a,bnot,c,dnot,enablenot),
(dec[11],a,bnot,c,d,enablenot),
(dec[12],a,b,cnot,dnot,enablenot),
(dec[13],a,b,cnot,d,enablenot),
(dec[14],a,b,c,dnot,enablenot),
(dec[15],a,b,c,d,enablenot);
endmodule
