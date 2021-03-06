module morse_code(CLOCK_50,SW,KEY1,KEY0,LEDR,data1,count_out);
input CLOCK_50,KEY1,KEY0;
input [2:0]SW;  output [7:0] count_out;
output [1:0]LEDR; output [3:0]data1;
reg [2:0] numbit; reg [3:0]data;
  assign data1=data;
  keep_high1 uut(CLOCK_50,KEY1,KEY0,data,numbit,LEDR[0],count_out);

always @(negedge KEY1)
begin
if(!KEY1)
    case(SW)
	 
	    3'b000: begin  numbit<=2; data<=4'bxx10; end     //A
		 
		 3'b001: begin  numbit<=4; data<=4'b0001; end     //B
		 
		 3'b010: begin  numbit<=4; data<=4'b0101; end     //C
		 
	    3'b011: begin  numbit<=3; data<=4'bx001; end     //D
		 
		 3'b100: begin  numbit<=1; data<=4'bxxx0; end     //E
		 
	    3'b101: begin  numbit<=4; data<=4'b0100; end     //F
		 
		 3'b110: begin  numbit<=3; data<=4'bx011; end     //G 
		 
		 3'b111: begin  numbit<=4; data<=4'b0000; end     //H
		 
	endcase

end
endmodule