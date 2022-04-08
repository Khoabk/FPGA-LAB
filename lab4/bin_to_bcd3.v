module bin_to_bcd3(input [4:0]a,output reg [7:0]c);

integer i;
 

always @ (a) begin  
i=a;
c[3:0]<=i%10;
c[7:4]<=i/10;
  end
endmodule