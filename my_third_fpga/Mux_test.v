`timescale 1ns/1ns
module Mux_test();
   reg a,b,c,e;
	reg [7:0]i;
	reg [2:0]j;
	wire y,y_inverted;
	integer k,t;
	multiplexer8_1 Mux1(y,y_inverted,i,a,b,c,e);
	//to demonstrate the soundness of 8-1 multiplexer, each port of i will consecutively load 
	// a distinct three-bit serie according to it's position in i as {a,b,c} switches to it.
	initial begin
	  i=0; {e,a,b,c}=0;
	  
	 
	  for(k=0;k<9;k=k+1)
	    begin
		 j=k;
		 for(t=0;t<3;t=t+1)
		   begin
			 {e,a,b,c}=k;
			//each i[k] will load a three-bit distinct serie 
		  i[k]=j[2-t];
	
	$monitor("i[7]=%d, i[6]=%d, i[5]=%d, i[4]=%d, i[3]=%d, i[2]=%d, i[1]=%d, i[0]=%d, a=%d, b=%d, c=%d, e=%d, y=%d,y_inverted=%d",i[7],i[6],i[5],i[4],i[3],i[2],i[1],i[0],a,b,c,e,y,y_inverted); 
		  
			#10;
			 end
			  i[k]=0;
		 end
	 end
	  
	
	endmodule