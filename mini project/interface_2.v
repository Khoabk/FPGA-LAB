module interface_2(CLOCK_50,KEY,SW,LEDR,HEX1,HEX0,HEX2,HEX3,HEX4,HEX5);
input CLOCK_50;
output[14:0]LEDR;
input[3:0]KEY,SW;
output [6:0] HEX1,HEX0,HEX2,HEX3,HEX4,HEX5;
wire  trigger,trigger2;

/*wire clock;
assign LEDR[0]=clock;
 clock_devider(.clk(CLOCK_50),.hzout(clock));*/

seccond_counter uut(.clk(CLOCK_50),.switch(KEY[3]),.add(KEY[2]),.deduct(KEY[1]),.seg({HEX1,HEX0}),.trigger(trigger));
//seccond_counter(clk,reset,up_or_down,add,deduct,seg);
//          clock_50,KEY0,SW[0],KEY1,KEY2,{HEX1,HEX0}

 //minute_counter2 uut2(.clk(CLOCK_50),.reset(KEY[0]),.switch(KEY[3]),.add(KEY[2]),.deduct(KEY[1]),.seg({HEX3,HEX2})/*,trigger*/);
 //assign LEDR[1]=trigger;
               
 minute_counter uut2(.clk(CLOCK_50),.second(trigger),.switch(KEY[3]),.add(KEY[2]),.deduct(KEY[1]),.seg({HEX3,HEX2}),.trigger(trigger2));

 
 hour_counter uut3(.clk(CLOCK_50),.minute(trigger2),.switch(KEY[3]),.add(KEY[2]),.deduct(KEY[1]),.seg({HEX5,HEX4}));
					
					

endmodule