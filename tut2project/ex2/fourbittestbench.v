`timescale 1ns/1ns
module fourbittestbench();
  /* reg [7:0]A; reg [7:0]B; reg cin;
	wire c; wire [7:0] s;
	integer k,i,j,f=0;
	  \8bitadder fba1(cin,A,B,c,s);
	
	initial begin
     $monitor("Printed by monitor command!, A=%d, B=%d, Cin=%d => S=%d, Cout=%d",A,B,cin,s,c);
	 for(k=0;k<2;k=k+1)
		begin
		  for(i=0;i<50;i=i+1)
		    begin
			   for(j=0;j<50;j=j+1)
			     begin
				     cin=k;
				     A=i;
				     B=j; 
					  #5;
					
				  end
			 end	
		end 
		
		
	
		end
		*/
	/* reg[4:0]a;
		wire[6:0]b;
		top_interface uut(a[4:0],b);
		integer k=0;
		initial begin
		for(k=0;k<10;k=k+1)
		begin
		 a[4]=1;
		 a[3:0]=k;
		
		#5;
		end
		end/*
		
		
		
	//	reg[3:0]A,B;
		//reg Cin;
		/*reg [3:0]sum;
		reg Cout;
		wire [7:0]bcd;
		integer k;
		
		// \4bitadder1 uut1(Cin,A,B,Cout,S);
   // bin_to_bcd uut2(Cout,sum,bcd);

initial begin
 for(k=0;k<32;k=k+1)
  begin
   {Cout,sum}=k;
	#5;
  end
end*/


reg[3:0]a,b;
reg cin,en;
wire [13:0]seg;
integer i,j,k;


//top_interface uut({cin,en,a,b},seg[13:7],seg[6:0]);

bin_to_7seg uut1(a,b,cin,en,seg);
initial begin
en=0;
#100 en=1;
#100 en=0;
for(i=0;i<2;i=i+1)
  for(j=0;j<16;j=j+1)
   for(k=0;k<16;k=k+1)
	begin
	cin=i;
	a=j;b=k;
	#5;
	end
	

end
		
initial
begin
#300 en=0; #300 en=1;
end		
		
	
		
		
endmodule