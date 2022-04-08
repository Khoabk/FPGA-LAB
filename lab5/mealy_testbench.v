`timescale 1ns/1ps

module mealy_testbench();
reg clk,bits1,reset;
wire detect;

initial
begin
clk=0;
bits1=0;
reset=1;

#1000 $stop;
end 

initial
begin

#8 bits1=1;
#8 bits1=0;
#8 bits1=1;
#8 bits1=0;
#8 bits1=0;
#8 bits1=0;
#8 bits1=0;
#8 bits1=1;
#8 bits1=1;
#8 bits1=0;
#8 bits1=1;
#8 bits1=0;


end

always #4 clk=~clk;






/*mealy_010_detector*/ zero_one_zero_detector  uut(clk,bits1,reset,detect);



endmodule