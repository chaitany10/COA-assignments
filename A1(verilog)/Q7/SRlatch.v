module srLatch(r,s,reset,q,q1);
	input r,s,reset;
	output q,q1; 
	reg q,q1;
	initial
	begin
		q=1'b0;
		q1=1'b1;
	end
	always @(reset, s, r)
	  begin
	  case({reset, s, r})
	     {1'b1, 1'b1, 1'b0}: begin q=1'b0; q1=1'b1; end//if reset passed clear the register
		 {1'b0, 1'b0, 1'b0}: begin q=q; q1=q1; end
		 {1'b0, 1'b0, 1'b1}: begin q=1'b0; q1=1'b1; end
		 {1'b0, 1'b1, 1'b0}: begin q=1'b1; q1=1'b0; end
		 {1'b0, 1'b1, 1'b1}: begin q=1'bx; q=1'bx; end
	endcase
	end
endmodule
