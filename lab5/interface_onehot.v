module interface_onehot( /*CLOCK_50,*/KEY,LEDR,SW );
//input CLOCK_50;
input[1:0]KEY;
input [1:0]SW;
output [1:0]LEDR;


 onehotfsm uut(.clk(KEY[1]),.w(SW[0]),.rstn(KEY[0]),.z(LEDR[0]));
 
 endmodule
