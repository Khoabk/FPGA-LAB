module interface_3(CLOCK_50,SW,KEY,HEX1,HEX0,LEDR);

input CLOCK_50;
input [1:0]KEY;
input [1:0]SW;

output [6:0]HEX1,HEX0;
output [1:0]LEDR;








// clock_divider2 uut(.clk_in(CLOCK_50),.mode(SW[0]),.clk_out(clk_out1));


 second_counter2 uut1(.clk(CLOCK_50),.mode(SW[0]),.add(KEY[1]),.deduct(KEY[0]),.seg({HEX1,HEX0}),.trigger(LEDR[0]));
 
 endmodule