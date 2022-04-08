`timescale 1ns/1ns
module testbench();
reg [9:0]SW;
 reg clock; integer i=8,j;
wire [6:0]HEX0,HEX5,HEX1,HEX2,HEX3,HEX4;

initial begin
SW[8:4]=5'b11111;
clock=1;
SW[9]=1;
for(j=0;j<32;j=j+1)
   begin
	SW[8:4]=j;
	SW[3:0]=i;
	
	#2;
	end





#30000000
$stop;


end

//initial #22 SW[9]=0;

always begin #1 clock=~clock; end

  interface_2 uut (clock,SW,HEX5,HEX4,HEX3,HEX2,HEX1,HEX0);
	
	
	endmodule