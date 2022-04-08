module testbench();
reg clk,reset,load;
reg [2:0]letter;
integer i;
wire b_out;
initial
begin
clk=0;
reset=1;
letter=0;
load=1;
#1 load=0;
#1 load=1;
#3 reset=0;
#2 reset=1;
#1 load=0;
#1 load=1;

for(i=1;i<8;i=i+1)
begin
#15000
 letter=i;
 #1 load=0;
 #1 load=1;



end
/*#1 load=0;
#1 load=1;*/

#6000000 $stop;
end




always #1 clk=~clk;




morse_code_ver2 uut(clk,reset,load,letter,b_out);


endmodule