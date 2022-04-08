module interface2(CLOCK2_50,SW,LEDR,HEX1,HEX0);
input CLOCK2_50;
input [4:0] SW;
output [1:0]LEDR;
output [6:0]HEX1,HEX0;


 clock_devider uut(CLOCK2_50,SW[4],SW[3:0],LEDR[0],{HEX1,HEX0});
 //clock_devider(clk,reset,hzin,hzout,seg);
 endmodule