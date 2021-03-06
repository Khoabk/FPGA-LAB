module bin_to_7seg(input [3:0]a,b,input cin,en, output [13:0]seg);
wire [4:0]sum;
wire [7:0]bcd;


\4bitadder1 uut (
	cin,
	a,
	b,
	sum[4],
	sum[3:0]
);


bin_to_bcd uut1(sum[4],sum[3:0],bcd);

led7_decoder lsb(en,bcd[3:0],seg[6:0]);
led7_decoder  msb(en,bcd[7:4],seg[13:7]);
endmodule

