`timescale 1ns/1ns
module RPS_testbench();
reg clk,rst;
//wire clk_out;
wire win, player;
wire [1:0]p0guess;
wire [1:0]p1guess;
wire [3:0]count1;
   block_counter2 uut(
	rst,
	clk,
	win,
	player,
	count1
);
   
	initial
	$monitor("clk=%d, rst=%d, win=%d, player=%d, p0guess=%d, p1guess=%d, count=%d",clk,rst,win,player,count1);
	

  initial begin
   rst=1;
	clk=0;
  end
  always #10 clk=~clk;  
  
  initial begin
  #50 rst=0;
  #50 rst=1;
  #100 rst=0;
  #50 rst=1;
  end
  initial  #1000 $stop;
 
  
  
  
  endmodule