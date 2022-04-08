`timescale 1ns/1ns
module fourbittestbench();
   reg [3:0]A; reg [3:0]B; reg cin;
	wire c; wire [3:0] s;
	integer k,i,j;
	four_bit_adder fba1(s,c,A,B,cin);
	
	initial begin
     $monitor("Printed by monitor command!, A=%d, B=%d, Cin=%d => S=%d, Cout=%d",A,B,cin,s,c);
	 for(k=0;k<2;k=k+1)
		begin
		  for(i=0;i<8;i=i+1)
		    begin
			   for(j=0;j<8;j=j+1)
			     begin
				     cin=k;
				     A=i;
				     B=j;	
					  #5;  
				  end
			 end	
		end
		end
		
		
		
	
	
		
		
endmodule