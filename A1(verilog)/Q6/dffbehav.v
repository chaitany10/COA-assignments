//submitted by Siddharth Singh(17CO146) & Chaitany Pandiya(17C0112)
module d(q,q1,d,c);
output q,q1;
 input d,c;
 reg q,q1;
	initial 
	   begin
		   q=1'b0; q1=1'b1;//initial value of q qnd q1
	   end
	always @ (posedge c)//always change at posedge of clock
	   begin 
		 q=d;
		 q1= ~d;
	   end
endmodule
