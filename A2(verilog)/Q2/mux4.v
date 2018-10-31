module mux4(select,a1,a2,a3,a4,o);              //4x1 mux made with nand gates
  
  input [1:0]select;

  input a1,a2,a3,a4;

  output o;

  wire t1,t2,t3,t4;

  nand(t1,a1,~select[1],~select[0]);

  nand(t2,a2,~select[1],select[0]);

  nand(t3,a3,select[1],~select[0]);

  nand(t4,a4,select[1],select[0]);

  nand(o,t1,t2,t3,t4);

endmodule