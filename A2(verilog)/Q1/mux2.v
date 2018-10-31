module mux2(input select,a1,a2,output o);        //2x1 mux made with nand gates
  
  wire t1,t2;
  
  nand(t1,a1,~select);
  
  nand(t2,a2,select);
  
  nand(o,t1,t2);

endmodule