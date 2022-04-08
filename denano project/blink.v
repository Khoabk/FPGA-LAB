module blink (
   input FPGA_CLK1_50,
	input [0:0] KEY,
	output [0:0] LED
);

parameter FULL_COUNT = 50_000_000;

localparam HALF_COUNT = FULL_COUNT/2;

reg [31:0] counter;

wire sys_clk =FPGA_CLK1_50;

wire rst =KEY[0];

always @(posedge sys_clk) begin
  if (!rst) begin
    counter <= 0;
	end
	else begin
	if (counter >=FULL_COUNT) counter <=0;
	else counter <=counter +1;
	end
	end
	
	assign LED[0] = counter < HALF_COUNT;
	
	endmodule
	
	
