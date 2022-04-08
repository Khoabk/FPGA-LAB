module minute_counter(clk,second,/*switch*/mode,add,deduct,seg,trigger);

input clk,add,deduct,mode;//switch;
input second;
output [13:0]seg;
output trigger;
wire edge_out;
reg [5:0]minute=0;   
wire [7:0] bcd; 
reg en=0; //mode=0;
reg e3;
reg start,e;
//reg delay;

//reg[4:0] count;

reg start2,e2;


initial begin
start=0;
//delay=0;
e3=0;
e=0;
start2=0;
e2=0;
//count =0;
end



assign trigger=(minute==0&&e3==1)?1:0;



/*always @(posedge switch)
mode=~mode;*/



always @(add)
begin
if(add==0)  start=1; 
else start=0;
end


always @(deduct)
begin
if(deduct==0) start2=1;
else  start2=0;
end


/*always@(posedge clk)
if(delay==1)
 begin
  if(count==0)count<=20;
  else count<=count-1;
 end
 else count<=0;*/



//debounce uut1(clk_50,reset,edge_out);




always @(posedge clk)
begin
	
    if(mode==0)
	 begin
     e3<=0;
     if(second!=1)en<=1;

     else if(second==1&&en)
     begin
     en<=0;
	  
     if(minute==59) begin minute<=0; e3<=1; end else minute<=minute+1;
  
     end
	  
	 end 


 /*else if(mode==0)
 
      if(minute==59)minute<=0;else minute<=minute+1;	*/
		
  else if(start==0&&e==0)e<=1;
  
  else if(start==1&&e)
  
        begin
		  
		  	e	<=	0;  
	   	if(minute==59)minute<=0;
	 	
	   	else minute<=minute+1;
		  
		  
		 
		  end
		
	else if(start2==0)e2<=1;

   else if(start2==1&&e2)
	
	     begin
		  
		   	e2	<=	0;  
	   	if(minute==0)minute<=59;
	 	
	   	else minute<=minute-1;
		  
		  
		 
		  end
		   
		  
		  
		  
		  
		  
		  end
		
   
	
	
	 
	 
	 
	
	 
        

	 






bin_to_bcd4 uut(minute,bcd);

led7_decoder hex0(bcd[3:0],seg[6:0]);

led7_decoder hex1(bcd[7:4],seg[13:7]);

 
 



endmodule
