module second_counter2(clk,mode,add,deduct,seg,trigger);
input clk,mode,add,deduct;
output trigger;
output [13:0]seg;


reg hzout;
reg en,stop;
reg [5:0]count1,count2;

reg [27:0]count_clk;

wire[7:0] bcd;
wire [5:0] result;

initial 
begin
count1=6'b000000;
count2=6'b000000;
en=1'b0;
stop=1'b0;
count_clk=0;
hzout=0;
end





always @(posedge clk,posedge mode)
begin

if(mode==1) count_clk<=count_clk;

   
	 
else 
 begin
    
	  if(count_clk>49999999)count_clk<=0;
     else count_clk<=count_clk+1;
	 
	 hzout=(count_clk>24999999)?1:0;
	 
 end
end











always @(count2,add,deduct)
begin

if(mode==0)count1=count2;
else 

	begin
	   
		if(add==0)count1=(count1==59)?0:count1+1;
		
		else if(deduct==0)count1=(count1==0)?59:count1-1;
	
	
	end


end

always@(posedge mode,posedge stop)
begin
if(stop==1) en<=0;
else en<=1;

end




always @(posedge hzout,negedge mode)
 begin
  
 stop <=0;  
if(mode==0)
 
 if(en)begin  count2<=count1; stop<=1; end
 
 else  count2<=count1+1;
 
 
 end
 
 
 assign result=(mode==0)?count2:count1;
 assign trigger=(result==0)?1:0;
 
 
 bin_to_bcd3 uut(result,bcd);
 led7_decoder uut1(bcd[3:0],seg[6:0]);
 led7_decoder uut2(bcd[7:4],seg[13:7]);
 
 
 
 endmodule





