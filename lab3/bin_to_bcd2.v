module bin_to_bcd2(input [3:0]a,output reg [7:0]c);

reg[3:0] i;
 

always @ (a) begin  
i=a;
c[3:0]<=i%10;
c[7:4]<=i/10;
  end
endmodule