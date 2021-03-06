module minute_counter2(clk,reset,switch,add,deduct,seg/*,trigger*/);
input clk,reset,add,deduct,switch;
output [13:0]seg;
//output [5:0]trigger;
reg [5:0]second;

reg mode;

reg start,e;

reg start2,e2;



reg[31:0]count_down;
wire [7:0] bcd; 




//assign trigger=second;



initial 
begin
	start = 1'b0;
	e = 1'b1;
	mode=0;
	start2=1'b0;
	e2=1'b0;
	
	count_down = 28'b0;
	second = 6'b0;
end

always @(negedge switch)
if(mode==0)mode=1;
else mode=0;




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




always @(posedge clk,negedge reset)
begin





if(!reset) second <= 0;

else    


  if(start==0&&mode==0)

      begin 
      //  e <= 1;  
		  
	   
	   	if(count_down==2999999999)
		   begin
			
		   if(second==59)second<=0;
			else second<=second+1;
			count_down<=0;
			
		    end
		   else count_down<=count_down+1;


     end

	  
	  
	  
	  
  else   if(start==0&&e==0&&mode==1)e<=1;
  
  
  else 	if(start==1 &&e &&mode==1) 
		
		  begin
		
	   	e	<=	0;  
	   	if(second==59)second<=0;
	 	
	   	else second<=second+1;
		
	     end
		  
		  
  else if(start2==0)e2<=1;		  

  else 	if(start2==1 && e2) 
		
		  begin
		
	   	e2	<=	0;  
	   	if(second==0)second<=59;
	 	
	   	else second<=second-1;
		
	     end
 
  

end




bin_to_bcd3 uut(second,bcd);

led7_decoder hex0(bcd[3:0],seg[6:0]);

led7_decoder hex1(bcd[7:4],seg[13:7]);

 
 



endmodule
