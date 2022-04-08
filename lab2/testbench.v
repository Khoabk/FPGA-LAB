`timescale 1ns/1ns
module testbench();
/*reg[3:0]data;
reg clk,dec,load,rest;
//wire clk_out;
wire [3:0]out;
wire zero;
   downcounter uut(data,dec,rest,load,clk,zero,out);
   
	
 initial begin	
 rest=0;
#40 rest=1; 
 end	

  initial begin
 load=1;
 clk=0;
 data=7;
  dec=1;
 #60 dec=0;
 #120 dec=1; data=10;
  end
  always #20 clk=~clk;  
  
 /* initial begin
  #50 rst=0;
  #50 rst=1;
  #100 rst=0;
  #50 rst=1;
  end*/
/*  initial #1500 $stop;
  initial
  begin 
   #90 load=0;
   #500 load=1;
  end*/
  
/*  reg [3:0]data,accum;
  reg clk,rst;
  reg [2:0] opcode;
  wire [3:0] out;*/
 /* reg [12:0] SW;
  wire [3:0]LEDR;
  
  interface uut(SW,LEDR);
  
 // alu uut(.clk(SW[12]),.rst(SW[11]),.out(LEDR[3:0]),.opcode(SW[2:0]),.data(SW[6:3]),.accum(SW[10:7]));
initial begin 
 SW[6:3]=7; SW[10:7]=2;
 SW[11]=0;
 SW[2:0]=0;
 SW[12]=0;
//alu uut(.clk(SW[12]),.rst(SW[11]),.out(LEDR[3:0]),.opcode(SW[2:0]),.data(SW[10:7]),.accum(SW[6:3]));
 end
 always #20 SW[12]=~SW[12];
 always #40 SW[2:0] =SW[2:0]+1;
 initial begin #50 SW[11]=1; #20 SW[11]=0;end
 
 initial #2000 $stop;
 
 /*reg clk,rest;
 wire clk_out;
 clock_devider uut(clk,rest,clk_out);
 
 initial 
 begin
 rest=0;
 clk=0;
 end
 always #20 clk=~clk;
 initial #2000 $stop;
 initial #30 rest=1;*/
 
reg clk,stop,start;
reg [2:0]SW;
wire a_or_b;
wire [3:0]data; 
//wire clk_out;
/*wire win, player;
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
	

  
  always #10 clk=~clk;  
  
  initial begin
  #50 rst=0;
  #50 rst=1;
  #100 rst=0;
  #50 rst=1;
  end
  
  initial  #1000 $stop;
 */
  initial begin
 SW=3'b000;
  
	clk=0;
	stop=1;
   start=1; 
	#10 start=0;
	#5 start=1;
	#15000
	  stop=0;
	  #5 stop=1;
	  
  end
  initial begin
	#20000 start =0;
	#5 start=1;
  end
  always #20 clk=~clk;
  
  
  
   morse_code uut(clk,SW,start,stop,a_or_b,data);
 //clock_switcher1 uut(clk,reset,en,hzout);
 // keep_high1 uut(clk,start,stop,zero_or_one,numbit,a_or_b);
 //keep_high uut(clk,zero_or_one,reset,numbit,a_or_b,k_out,count,zero_or_one1,i);
 // clock_devider uut(clk,reset,hzin,hzout);
 // clock_devider(clk,reset,hzin,hzout);
 
   
  //initial #30000000000 $stop;
  
  endmodule