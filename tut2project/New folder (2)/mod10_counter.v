module mod10_counter(clk,rst,count);
	input clk,rst;
	output reg [3:0] count;
	wire [4:0] count_out;
	
	initial //Initial added because of reset will disable clk_in before it can active
		begin
			count = 0;
		end
		
	always@(posedge clk)
		begin
			if(!rst) // synchronous reset, active low
				begin
					count <= 4'b0;
				end
			else
				begin
					if(count>=9) // reset count to 0
						count <= 4'b0;
					else 
						count <= count_out; // mean count[3:0] = count_out[3:0]
				end
		end
	// adder_4bit(A,B,C_in,S_out,C_out);
	adder_4bit u0(.A(4'b0), // no need A value, set to 0
				  .B(count),
				  .C_in(1'b1), // increase "count" by 1
				  .S_out(count_out[3:0]),
				  .C_out(count_out[4]));
	
endmodule 