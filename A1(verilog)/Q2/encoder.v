//Siddharth Singh and Chaitany Pandiya
//17CO146
//16X4 encoder using Verilog
//14 October 2018
module encoder(
a,d,en
);
output [0:3] a;
input [0:15] d;
input en;
wire w1,w2,w3,w4;
or
(w1,d[8],d[9],d[10],d[11],d[12],d[13],d[14],d[15]),
(w2,d[4],d[5],d[6],d[7],d[12],d[13],d[14],d[15]),
(w3,d[2],d[3],d[6],d[7],d[10],d[11],d[14],d[15]),
(w4,d[1],d[3],d[5],d[7],d[9],d[11],d[13],d[15]);
and
(a[3],w1,en),
(a[2],w2,en),
(a[1],w3,en),
(a[0],w4,en);
endmodule
