module keep_high(clk,start,stop,zero_or_one,numbit,a_or_b);
input clk,start,stop; input [4:1] zero_or_one; 
input [2:0] numbit; reg [7:0] count=0;
output a_or_b; reg run=0; reg [4:1] buffer;
integer i=0,k=0,j=0;    

assign a_or_b =(k)?1:0;

always @(count,stop,start)
if(!stop)i<=0;
else if(!start)i<=0; 
else if(count==0)
if(i<=j)
i<=i+1;



always @(negedge start,negedge stop)
 if(!start)begin run<=1;  buffer<=zero_or_one; j<=numbit; end
 else if(!stop) run<=0;



always @(posedge clk,negedge stop, negedge start)
begin
if(!stop) begin  k<=0;  count<=0;end    
else
begin
if(!start) count<=0;
if(run)
    if(i>j)k<=0;
	 else
    case(buffer[i])
	 
	    1'b1: if(count< 99)begin  if(count<=49)k<=0;else k<=1; count<=count+1; end else count<=0;
		 
		 1'b0: if(count< 49)begin if(count<=24)k<=0; else k<=1; count<=count+1; end else count<=0;
	 
	endcase
	
	
	

end
end
endmodule