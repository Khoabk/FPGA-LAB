`timescale 1ns/1ps
module testbench();
reg clk;
wire clk_out;



initial begin
clk=0;



#600000000
$stop;
end


always #1 clk=~clk;

clock_devider uut(clk,clk_out);
 
 
endmodule