module memory(clk,data_in,address,write,data_store);
input clk,write;  input [4:0]address; input [3:0] data_in;
output [3:0] data_store; reg[3:0] memory_array[31:0];

assign data_store=memory_array[address];

always @(posedge clk)
begin
if(write)memory_array[address]<=data_in;
else memory_array[address]<=0;
end

endmodule  

