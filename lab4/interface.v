module interface (KEY,SW,HEX5,HEX4,HEX3,HEX2,HEX1,HEX0);
input [3:0] KEY;
input [9:0]SW;
output [6:0]HEX0,HEX1,HEX2,HEX3,HEX4,HEX5;
wire [3:0] out; wire [7:0]c,foraddress, fordata;

 
 ram32x4copy  uut(
	.address(SW[8:4]),
	.clock(KEY[0]),
	.data(SW[3:0]),
	.wren(SW[9]),
	.q(out));
	
	//for output
	 bin_to_bcd2 uut2(out,c);
	 led7_decoder uut3(c[3:0],HEX0);
	led7_decoder uut4(c[7:4],HEX1);
	
   //for data
	 bin_to_bcd2 uut5(SW[3:0],fordata);
	 led7_decoder uut6(fordata[3:0],HEX2);
	led7_decoder uut7(fordata[7:4],HEX3);
	//for address
	  bin_to_bcd3 uut8(SW[8:4],foraddress);
	 led7_decoder uut9(foraddress[3:0],HEX4);
	led7_decoder uut10(foraddress[7:4],HEX5);
	
	endmodule