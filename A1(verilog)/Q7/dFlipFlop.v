
`include "Dlatch.v"

module dFlipFlop(d,clk,reset,q,q1);
    input d,clk,reset;
    output q,q1;
    wire qm,qm1;
    dLatch dl1(d,~clk,reset,qm,qm1);//inputed to dlatch
    dLatch dl2(qm,clk,reset,q,q1);//inputted to dlatch
endmodule
