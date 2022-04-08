`timescale 1ns/1ns
module schematic_testbench();
/*reg a,b,c;
wire s,cout;
 schematic_fulladder uut(
	.A(a),
	.B(b),
	.Cin(c),
	.Cout(cout),
	.S(s)
);*/



reg [3:0]a;
reg [3:0]b;
reg c;
wire [3:0]s;
wire cout;
  \4bitadder uut (
	.Cin(c),
	.A(a),
	.B(b),
	.Cout(cout),
	.S(s)
);
  initial begin
  
 /* a=0;
  b=1;
  c=1;
  #10;*/
  
  
  end
  
  
  
  
  
  
  
  endmodule