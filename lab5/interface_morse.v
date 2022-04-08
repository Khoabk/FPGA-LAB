module interface_morse(CLOCK_50,KEY,SW,LEDR);
input CLOCK_50;
input [1:0]KEY;
input [2:0]SW;
output [1:0]LEDR;




 morse_code_ver2 uut(.clk(CLOCK_50),.reset(KEY[0]),.load(KEY[1]),.letter(SW[2:0]),.b_out(LEDR[0]));
 
 endmodule