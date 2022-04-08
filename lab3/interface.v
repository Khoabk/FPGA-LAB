module interface (CLOCK_50,SW,LEDR,KEY);

input CLOCK_50;
input [3:0]KEY;
input [17:0]SW;
output [17:0]LEDR;
 //keep_high1 uut(CLOCK_50,KEY1,KEY0,SW,LEDR[0]);
 keep_high1 uut(.clk(CLOCK_50),
				.start(KEY[1]),
				.stop(KEY[0]),
				.signal(SW[2:0]),
				.a_or_b(LEDR[0]));
endmodule