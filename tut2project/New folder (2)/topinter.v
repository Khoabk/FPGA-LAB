module topinter(LEDR,SW);
input [5:0] SW;
output [1:0]LEDR; 
 
 
 RPS uut(LEDR[0],LEDR[1],SW[5],SW[4:3],SW[2:1]);
 // RPS(win,player,rst,a,b);
 endmodule