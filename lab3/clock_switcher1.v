module clock_switcher1(clk,reset,en,hzout);
input clk,reset,en;
output hzout;
reg [7:0] count=0; 

assign hzout=(count>49)?1:0;



always @(posedge clk,negedge reset)
begin
if(!reset)

count <=0;

else if(en)begin
 if(count>99) count<=0;
 else count<=count+1;
 


end




end

endmodule