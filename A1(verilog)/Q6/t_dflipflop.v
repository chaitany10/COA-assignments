//submitted by Siddharth Singh(17CO146) & Chaitany Pandiya(17C0112)
`include "dffsr.v"
`include "dffbehav.v"
`include "dffms.v"
`timescale 1ns/1ps
module testdff;
wire Q,Qn,Qms,Qnms,Qsr,Qnsr;
reg D,C,Dms,Dsr;

d1 sr(Qsr,Qnsr,Dsr,C);
d behav(Q,Qn,D,C);
dflipflop MS(Qms,Qnms,C,Dms);
initial 
begin
		$dumpfile("dff.vcd");    //gtkwave production
		$dumpvars(0, testdff);
		C=0;             //clk set
		forever #1 C=~C;
end
initial 
begin                                //value of d set at regular interval and displayed
		D=0;Dms=0;Dsr=0;
		$monitor("clock=%b, d=%b, q=%b",C,D,Q);
	#8;
		D=1;Dms=1;Dsr=1;
		$monitor("clock=%b, d=%b, q=%b",C,D,Q);
	#8;
		D=0;Dms=0;Dsr=0;
		$monitor("clock=%b, d=%b, q=%b",C,D,Q);
	#8;
		D=1;Dms=1;Dsr=1;
		$monitor("clock=%b, d=%b, q=%b",C,D,Q);
                
end
initial #30 $finish;
endmodule


