module clock_devider(clk_in,rst,clk_out);
	input clk_in; // Default clock of DE2i-150 is 50MHz, in dis example generate clock 1Hz
	input rst;
	output reg clk_out;
	reg [31:0] counter;
	
`define SIMULATION // If SIMULATION is defined, then clk_out signal is half of clk_in signal, for simulation only.

`ifdef SIMULATION
	parameter COUNTER_THRESHOLE = 0;
`else
	parameter COUNTER_THRESHOLE = 25000000;
`endif

	always @ (posedge clk_in)
		begin
			if(!rst) // Synchronous reset signal, active low
				begin
					clk_out <= 1'b0; // Non-blocking assignment
					counter <= 32'b0;
				end
			else 
				begin
					if (counter >= COUNTER_THRESHOLE) 
						begin
							clk_out <= ~clk_out;// Non-blocking assignment
							counter <= 0;// Non-blocking assignment, reset counter
						end
					else
						begin
							counter <= counter + 1;// Non-blocking assignment, updating counter value
						end
				end
		end
	
endmodule 