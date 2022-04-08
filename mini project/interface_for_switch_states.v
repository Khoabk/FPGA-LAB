module interface_for_switch_states(CLOCK_50,KEY,HEX0,HEX1,HEX2,HEX3,HEX4,HEX5);

input CLOCK_50;
input [2:0]KEY;
output [6:0]HEX0,HEX1,HEX2,HEX3,HEX4,HEX5;





switch_states uut(.clk(CLOCK_50),.switch(KEY[2]),.add(KEY[1]),.deduct(KEY[0]),.hour1({HEX5,HEX4}),.minute1({HEX3,HEX2}),.second1({HEX1,HEX0}));


endmodule