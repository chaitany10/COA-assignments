//submitted by Siddharth Singh(17CO146) & Chaitany Pandiya(17C0112)
`include "dlatch.v"
module dflipflop(Qms,Qnms,C,Dms);
   output Qms,Qnms;
   input C,Dms;
   
   wire y,yn;
	
	d_latch master(y,yn,C,Dms);   //input master latch
   	d_latch slave(Qms,Qnms,~C,y);   //input slave latch
	
endmodule 
