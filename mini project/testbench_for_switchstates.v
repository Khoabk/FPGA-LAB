`timescale 1ns/1ps

module testbench_for_switchstates();
integer i=0;
reg clk,switch,add,deduct;
wire [13:0]hour,minute,second;

initial
begin
clk=0;
switch=1;
add=1;
deduct=1;

end

initial
begin



//test for basic functionality:


//change from idle to second set up state

#20 switch=0; #1 switch=1;

//test for adding functionality of seccond set up state 
#2 add=0; #2 add=1; #2 add=0; #2 add=1; 

//test for subtractind functionality of seccond set up state 

#2 deduct=0; #2 deduct=1; #2 deduct=0; #2 deduct=1; 

//change from second to minute set up state

#20 switch=0; #1 switch=1;

//test for adding functionality of minute set up state 
#2 add=0; #2 add=1; #2 add=0; #2 add=1; 

//test for subtractind functionality of minute set up state 

#2 deduct=0; #2 deduct=1; #2 deduct=0; #2 deduct=1;

//change from minute to hour set up state

#20 switch=0; #1 switch=1;

//test for adding functionality of hour set up state 
#2 add=0; #2 add=1; #2 add=0; #2 add=1; 


//test for subtractind functionality of hour set up state 

#2 deduct=0; #2 deduct=1; #2 deduct=0; #2 deduct=1; 

//change from hour set up to idle state

#20 switch=0; #1 switch=1;







//test for complex functionality:







//test for idle counting functionality for 1000ns and then change state to second
#1000 switch=0; #1 switch=1;

//at this state second is 10 press deduct 11 times to turn second to 59
for(i=0;i<11;i=i+1)
begin

#2 deduct=0; #2 deduct=1;

end

//change state to minute setup, 
#2 switch=0; #2 switch=1;  

 //minute is still 0 press deduct 1 time to turn minute to 59
  #2 deduct=0; #2 deduct=1;
//change state to hour set up
#2 switch=0; # 2 switch=1;
//change state back to idle mode
#2 switch=0; #2 switch=1;

//run for 100ns till second turns from 59 to 0 then minute will also be triggerd from 59 to 0 hence hour will increase by 1

//after 100ns swich state form idle to hour, press switch 3 times
#100 
for(i=0;i<3;i=i+1)
   begin

#2 switch=0; #2 switch=1; 

end  

//increase hour by 22 so hour will be at 23
for(i=0;i<22;i=i+1)
begin

#2 add=0; #2 add=1;

end

//switch state back to second
#2 switch=0; #2 switch=1; #2 switch=0; #2 switch=1;

//turn second to 57
#2 deduct=0; #2 deduct=1; #2 deduct=0; #2 deduct=1; #2 deduct=0; #2 deduct=1;

//switch state to minute

#2 switch=0; #2 switch=1;

//turn minute to 59
#2 deduct=0; #2 deduct=1;

//switch back to idle
#2 switch=0; #2 switch=1; #2 switch=0; #2 switch=1;



//run for 400ns and stop

#400 $stop;






end



always #1 clk=~clk;






 switch_states uut(clk,switch,add,deduct,hour,minute,second);
 
 
 endmodule