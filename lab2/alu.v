module alu(clk,rst,out,opcode,data,accum);

input clk,rst;
input [2:0]opcode;
input[3:0] data,accum;
output reg [3:0]out;




always @(posedge clk,posedge rst)
begin
  if(rst) out<=0;
  else
  begin
   case(opcode)
	    3'd0:out<=accum+data;
		 3'd1:out<=accum-data;
		 3'd2:out<=accum & data;
		 3'd3:out<=accum |data;
		 3'd4:out<= accum^data;
		 3'd5:out<=~accum;
		 3'd6:out<=data;
      default  : out <=accum;   
	endcase
  end
end
endmodule