`timescale 1ns/1ns
module testbench();
reg v1,v2,v3;
wire y;
integer i;

  majority major1(y,v1,v2,v3);

initial begin
    $monitor("Printed by monitor command!, v1=%d,v2=%d,v3=%d => y=%d",v1,v2,v3,y);
      for(i=0;i<8;i=i+1)
		   begin 
		  {v1,v2,v3}=i;
		  #10;
		 end    
	end







endmodule