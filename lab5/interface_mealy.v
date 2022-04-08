module interface_mealy(KEY,SW,LEDR);
input [1:0]KEY,SW;
output [1:0]LEDR;



 mealy_010_detector uut(.clk(KEY[0]),.bits1(SW[0]),.reset(KEY[1]),.detect(LEDR[0]));
 
 endmodule