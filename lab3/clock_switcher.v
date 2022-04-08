module clock_switcher(clk,reset,numbit,en,hzin,hzout);
input clk,reset,en;   input[3:0] hzin; input[2:0]numbit;
output  hzout;   reg[27:0] count=0;   reg run=0; reg[3:0] store; reg [2:0]load;
integer k=0,i=0;
assign hzout= (i==0)?(count>249)?1:0:(i==1)?(count>749)?1:0:0;   //(count>24999999/i)?1:0;
always @(count)
begin
if(count==0)
if(k<load)
begin
i<=store[k];
k<=k+1;
end
else
begin
 i<=2;
 
end
end
 always @ (negedge en)
 begin
 run<=1;
 load<=numbit;
 store<=hzin;
 end

always @(posedge clk, negedge reset)
begin
  if(!reset)
  count <=0;
  
  else if(run)
   begin
      case(i)
	    1'd0:if(count>499)count<=0; else count <=count+1;
		 1'd1:if(count>1499)count<=0; else count <=count+1;
      default: count<=0;   
	  endcase
 end
end	 
	 
 
endmodule