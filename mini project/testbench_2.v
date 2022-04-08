`timescale 1ns/1ps
module testbench_2();
reg clk,reset,add,deduct,mode;
wire trigger;
wire [13:0] seg;



initial begin
clk=0;
reset=1;
add=1;
deduct=1;
mode=0;

#6000
$stop;
end

initial begin #20 add=0; #2 add=1; #100 mode=1;#5 add=0; #1 add=1; #19 add=0; #1 add=1; #2 mode=0;   end 



always #1 clk=~clk;


second_counter2 uut(clk,mode,add,deduct,seg,trigger);

//seccond_counter uut(clk,reset,add,deduct,seg,trigger);

//clock_devider uut(clk,clk_out);
 
 
endmodule