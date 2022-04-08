module bin_to_bcd2(input [7:0]a,input  b,output reg [11:0]c);
reg [8:0]w;
integer i;

always @ (a,b) begin  
  w[8]<=b; w[7:0]<=a;
  i=w; 
c[3:0]<=i%10;
c[7:4]<=(i/10)%10;
c[11:8]<=(i/100); 
  end
endmodule


