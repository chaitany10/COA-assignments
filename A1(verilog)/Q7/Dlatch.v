`include "SRlatch.v"
module dLatch(d,clk,reset,q,q1);
    input d,clk,reset;
    output q,q1;
    reg r,s;
    always @(clk,d,reset)
    begin
       r = ~d & clk;
       s = d & clk;
    end
    srLatch srl(r,s,reset,q,q1);
endmodule
