`timescale 1ns/1ps
module testbenchfinal();
reg[0:3] clk;
integer i;
initial 
begin
clk=6;
#5;
for(i=0;i<16;i=i+1)
begin

clk[3:0]=clk[3:0]<<i;

end


end



 
 
endmodule