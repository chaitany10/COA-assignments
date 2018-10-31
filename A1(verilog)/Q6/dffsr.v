//submitted by Siddharth Singh(17CO146) & Chaitany Pandiya(17C0112)
module d1(Q,Qn,D,C);
	input D,C;
	output Q,Qn;
	wire S,R,w1,w2,w3;
	nand(S,C,w1);//Referred diagram in the book 
	nand(R,C,S,w2);
	nand(w1,w2,S);
	nand(w2,R,D);
	nand(Q,S,Qn);
	nand(Qn,R,Q);
endmodule
