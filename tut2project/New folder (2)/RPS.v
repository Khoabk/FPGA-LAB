module RPS(win,player,rst,a,b);
input [1:0] a;
input [1:0] b;
input rst;
output win, player;
assign win=~rst&(a[1]^b[1]|a[0]^b[0]);
assign player=~rst&(a[1]&b[0]|a[0]^b[1]);
endmodule

