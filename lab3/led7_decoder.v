module led7_decoder(in,seg);
 input [3:0]in;
 reg [3:0]in1;
output [6:0]seg;



assign seg[0]=(in[2]&~in[1]&~in[0]|~in[3]&~in[2]&~in[1]&in[0]);
assign seg[1]=(in[2]&~in[1]&in[0]|in[2]&in[1]&~in[0]);
assign seg[2]=(~in[3]&~in[2]&in[1]&~in[0]);
assign seg[3]=(~in[3]&~in[2]&~in[1]&in[0]|in[2]&~in[1]&~in[0]|in[2]&in[1]&in[0]);
assign seg[4]=(in[2]&~in[1]|in[0]);
assign seg[5]=(~in[3]&~in[2]&in[0]|in[1]&in[0]|in[1]&~in[2]);
assign seg[6]=(~in[3]&~in[2]&~in[1]|in[2]&in[1]&in[0]);
endmodule