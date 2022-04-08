module clock_devider(clk,reset,hzin,hzout,seg);
input clk,reset;   input[3:0]hzin;
output  hzout; output [13:0]seg;   reg[27:0] count=0;
   wire [7:0] c;


always @(posedge clk)
begin
  if(!reset) count <=0;
  else begin
    if(count>49999999/hzin)count<=0;
	 else count <=count +1;
	end
end
 bin_to_bcd2 uut(hzin,c);
 led7_decoder uu1(c[3:0],seg[6:0]);
 led7_decoder uu2(c[7:4],seg[13:7]);

assign hzout=(count>24999999/hzin)?1:0;
endmodule
  
  
  