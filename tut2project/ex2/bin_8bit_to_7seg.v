module bin_8bit_to_7seg(input [7:0]a,b,input cin,en, output [20:0]seg);
wire [8:0]sum;
wire [11:0]bcd;


 \8bitadder (cin,a,b,sum[8],sum[7:0]);
 // \8bitadder (Cin,A,B,Cout,S);
 
 bin_to_bcd2(sum[7:0],sum[8],bcd[11:0]);
 
// bin_to_bcd2(input [7:0]a,input  b,output reg [11:0]c);

//bin_to_bcd uut1(sum[4],sum[3:0],bcd);

led7_decoder lsb(en,bcd[3:0],seg[6:0]);
led7_decoder middleguy(en,bcd[7:4],seg[13:7]);
led7_decoder  msb(en,bcd[11:8],seg[20:14]);
endmodule
