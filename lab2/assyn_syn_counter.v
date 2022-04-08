module assyn_syn_counter(clk,rst,sync,assync);
input clk,rst;
output reg [3:0] sync,assync;
reg clk_out,rest;
clock_devider uut(clk,rest,clk_out);
initial rest=1;
always @(posedge clk_out)
  begin
    if(rst) sync <=4'b0;
	 else sync <=sync+1;
  end
  
always @(posedge clk_out,posedge rst)
  begin
    if(rst) assync <=4'b0;
	 else assync <=assync+1;
  end
  
  endmodule