module interface_010_detector(KEY,LEDR,SW);
//input CLOCK_50;
input [2:0]KEY;
input  [1:0]SW;
output [1:0]LEDR;




 zero_one_zero_detector uut(.clk(KEY[2]), .bits1(SW[0]), .reset(KEY[0]), .detector(LEDR[0]));
 
 
 endmodule