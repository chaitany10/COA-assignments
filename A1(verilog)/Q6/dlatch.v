module d_latch(Q,Qn,G,D);
   output Q,Qn;
   input G,D;   
   
   wire Dn,D1,Dn1;
   
   not(Dn,D);
   nand(D1,G, D);
   nand(Dn1,G, Dn);
   nand(Q,D1,Qn);
   nand(Qn,Dn1,Q);
endmodule

