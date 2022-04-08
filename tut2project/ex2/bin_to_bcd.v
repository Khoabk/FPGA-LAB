module bin_to_bcd(cout,sum,bcd);
input cout;
input[3:0] sum;
output [7:0]bcd;
assign bcd[7:6]=0;
assign bcd[5]=(sum[3]|sum[2])&cout;
assign bcd[4]=~sum[3]&~sum[2]&cout|sum[3]&sum[2]&~cout|sum[3]&sum[1]&~cout|sum[1]&sum[2]&sum[3]&cout;
assign bcd[3]=sum[3]&~sum[2]&~sum[1]&~cout|(sum[3]&sum[2]&~sum[1]|~sum[3]&~sum[2]&sum[1])&cout;
assign bcd[2]=(~sum[2]&~sum[1]|sum[3]&~sum[2])&cout|(~sum[3]&sum[2]|sum[2]&sum[1])&~cout;
assign bcd[1]=(sum[3]&sum[2]&~sum[1]|~sum[3]&sum[1])&~cout|(~sum[3]&~sum[2]&~sum[1]|~sum[3]&sum[2]&sum[1]|sum[3]&~sum[2]&sum[1])&cout;
assign bcd[0]=sum[0];
endmodule