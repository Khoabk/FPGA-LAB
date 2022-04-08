module testbench_2();
reg clk,w,rsnt;
wire z;
initial
begin
clk=0;
rsnt=1;
w=0;

# 100 w=1;
#30 w=0;
#20 w=1;
#10 w=0;
#60000 $stop;
end

always #1 clk=~clk;




onehotfsm uut(clk,w,rsnt,z);


endmodule