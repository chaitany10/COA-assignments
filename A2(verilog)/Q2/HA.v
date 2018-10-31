module HA(sum,cy,a,b);                 //Half Adder module

  output sum,cy;
  
  input a,b;
  
  xor (sum,a,b);                            //sum=a xor b, carry=a and b
  
  and (cy,a,b);

endmodule