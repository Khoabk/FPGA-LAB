module bin_to_bcd3(input [5:0]a,output reg [3:0]c,output reg [3:0]b);

reg[5:0] i;
 

always @ (a) begin  
i=a;
c[3:0]<=i%10;
b[3:0]<=i/10;
  end
endmodule