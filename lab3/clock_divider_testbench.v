`timescale 1ns/1ps
module clock_divider_testbench();
/*reg clk,start,stop; 
reg [2:0]signal; 
//reg [2:0]SW;
wire a_or_b;
initial  begin
clk=0;
start=1;
stop=1;
signal=6;
#5 start=0;
#2 start=1;

end

initial
#800000000 $stop;


always #1 clk=~clk;




 keep_high1 uut(clk,start,stop,signal,a_or_b);

/*reg clk,start,stop;
reg [2:0] signal;
wire a_or_b;


initial begin
clk=0;
start=1;
stop=1;
signal=5;
#5 start=0;
#5 start=1;
 
 


#4000000000
  $stop;
end

always #1 clk=~clk;*/
reg clk,reset;
reg [3:0]hzin;
wire hzout;
wire [6:0] HEX1,HEX0;


initial begin
clk=0;
reset=0;
hzin=14;
#5 reset=1;
#500000000
  $stop;
  end



always #1 clk=~clk;
interface2 uut(.CLOCK2_50(clk),.SW({reset,hzin}),.LEDR(hzout),.HEX1(HEX1),.HEX0(HEX0));
 //clock_devider uut(.CLOCK2_50(clk),.SW[4](reset),.SW[3:0](hzin),.LEDR[0](hzout),HEX1,HEX0);

//clock_devider uut(clk,reset,hzin,hzout,seg);

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
 /* initial begin
  reset =0;
  hzin=0;
  clk=0;
  #50 reset=1; hzin=1;
  #3000000000
  $stop;
  
  end
  initial #1500000000  hzin=2;
	
	
 always #10 clk=~clk;
 
  
 
clock_devider uut(clk,reset,hzin,hzout);*/






 //keep_high1 uut(clk,start,stop,signal,a_or_b);


 // keep_high1 uut(clk,start,stop,signal,a_or_b);
  
  // interface uut (clk,start,stop,signal,a_or_b);
 // keep uut(clk,start,stop,signal,a_or_b,count_out);
  // morse_code uut(clk,SW,start,stop,a_or_b,data,count_out);
 //clock_switcher1 uut(clk,reset,en,hzout);
// keep_high1 uut(clk,start,stop,zero_or_one,numbit,a_or_b,count_out);
 //keep_high uut(clk,zero_or_one,reset,numbit,a_or_b,k_out,count,zero_or_one1,i);
 // clock_devider uut(clk,reset,hzin,hzout);
 // clock_devider(clk,reset,hzin,hzout);

  //initial #30000000000 $stop;
  
  endmodule