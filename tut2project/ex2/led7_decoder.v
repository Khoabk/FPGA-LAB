//common anode version
module led7_decoder(en,in,seg);
input en; input [3:0]in;
output [6:0]seg;

assign seg[0]=~en|(in[2]&~in[1]&~in[0]|~in[3]&~in[2]&~in[1]&in[0]);
assign seg[1]=~en|(in[2]&~in[1]&in[0]|in[2]&in[1]&~in[0]);
assign seg[2]=~en|(~in[3]&~in[2]&in[1]&~in[0]);
assign seg[3]=~en|(~in[3]&~in[2]&~in[1]&in[0]|in[2]&~in[1]&~in[0]|in[2]&in[1]&in[0]);
assign seg[4]=~en|(in[2]&~in[1]|in[0]);
assign seg[5]=~en|(~in[3]&~in[2]&in[0]|in[1]&in[0]|in[1]&~in[2]);
assign seg[6]=~en|(~in[3]&~in[2]&~in[1]|in[2]&in[1]&in[0]);
endmodule