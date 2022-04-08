module hour_counter_ver2(clk,minute,/*switch*/mode,add,deduct,hour1/*,seg*/);
input clk,minute,/*switch*/mode,add,deduct;
output [5:0]hour1;
//output [13:0]seg;
reg /*mode,*/en;
reg [5:0]hour;

reg start,e;

reg start2,e2;

wire [7:0]bcd;

initial
begin
//mode=1'b0;
hour=6'b0;
en=1'b0;
start=0;
e=0;
start2=0;
e2=0;

end


/*always@(negedge switch)
mode<=~mode;*/




always @(add)
begin
if(add==0) start=1;
else  start=0;
end


always @(deduct)
begin
if(deduct==0) start2=1;
else start2=0;
end





always@(posedge clk)
begin



 if(mode==0)
begin
  
   if(minute!=1)en<=1;

     else if(minute==1&&en)
     begin
     en<=0;
	  
     if(hour==23)hour<=0;else hour<=hour+1;
  
     end

end

else if(start==0&&e==0)e<=1;
  
  else if(start==1&&e)
  
        begin
		  
		  	e	<=	0;  
	   	if(hour==23)hour<=0;
	 	
	   	else hour<=hour+1;
		  
		  
		 
		  end
		
	else if(start2==0)e2<=1;

   else if(start2==1&&e2)
	
	     begin
		  
		   	e2	<=	0;  
	   	if(hour==0)hour<=23;
	 	
	   	else hour<=hour-1;
		  
		  
		 
		  end  


end

assign hour1=hour;


/*bin_to_bcd3 uut(hour,bcd);

led7_decoder hex0(bcd[3:0],seg[6:0]);

led7_decoder hex1(bcd[7:4],seg[13:7]);*/












endmodule
