module clock_divider2(clk_in,mode,clk_out);

input clk_in,mode;
output clk_out;


reg [27:0]count;


initial 
count=28'd0;


always @(posedge clk_in,posedge mode)
begin

if(mode==1) count<=count;

   
	 
else 
    
	  if(count>49999999)count<=0;
     else count<=count+1;
	 

end


assign clk_out=(count>24999999)?1:0;



endmodule