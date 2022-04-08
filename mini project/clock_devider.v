module clock_devider(clk,stop,add,seg);

input clk,stop,add;      reg hzout; reg [3:0]count2=0,count1=0; reg stop1=0;
output [3:0] seg;   reg[27:0] count=0; 
   
	
	/*always @(negedge stop)
	  if(stop1==0)stop1=1;
	  else stop1=0;

always @(posedge clk)
begin
   if(stop1==1)
    begin if(count>49999999)count<=0;
	 else count <=count +1;
    hzout=(count>24999999)?1:0;	
	end
	 
	
	
end
   
	
always @(*)
  begin
  if(add==0)count1=count2+1;
  else if(count1<count2) count1=count2;
  end
 
 
 always @(posedge hzout,posedge stop1)
     
    if(count2<count1)count2=count1; else if(count2< 9)count2=count2+1;else count2=0;
 
 assign seg=(stop1==0)?count1:count2;*/
 
endmodule
  
  
  