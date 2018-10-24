//Siddharth Singh and Chaitany Pandiya
//17CO146 and 17CO112
//Hello World program using Verilog
//14 October 2018


module helloWorld(clk);   //input is clock signal
input clk;
always @(clk)             //whenever clock is one msg is printed on the screen
begin
  $display("Hello World! %d\n",$time);    //printing the msg alongwith the timestamp
end
endmodule
