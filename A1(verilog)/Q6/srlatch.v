module sr_latch_gated(Q,Qn,S,R);
   output Q,Qn;
   input S,R;

   wire S1,R1;

   nor(Q,R,Qn);
   nor(Qn,S,Q);
endmodule

