module interface(CLOCK_50,KEY,HEX0);
input CLOCK_50; input [1:0]KEY;
output [6:0]HEX0; wire [3:0]seg;
clock_devider uut(.clk(CLOCK_50),.stop(KEY[0]),.add(KEY[1]),.seg(seg));
led7_decoder(seg,HEX0);

endmodule