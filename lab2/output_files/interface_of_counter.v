module interface_of_counter(KEY,SW,LEDR);

input [3:0]KEY;
input [5:0]SW;
output [4:0]LEDR;

 downcounter uut(SW[3:0],SW[4],SW[5],KEY[3],LEDR[0],LEDR[4:1]);
 //downcounter(data,dec,load,clk,zero,out);
 endmodule