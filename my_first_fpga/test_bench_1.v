`timescale 1ns/1ns
module test_bench_1();
   reg a_in,b_in,c_in;
	wire y_out;
	integer i;
	
	
	sillyfunction tut(a_in,b_in,c_in,y_out);
	//Another way: sillyfunction tut(.a(a_in),.b(b_in),.c(c_in),.y(y_out)); 
	
	
	
	initial begin 
	  $monitor("Printed by monitor command!, a=%d,b=%d,c=%d => y=%d", a_in,b_in,c_in,y_out);
     for(i=0;i<8;i=i+1)
	    begin 
		  {a_in,b_in,c_in}=i;
		  #10;
		 end    
	end
	
endmodule
	