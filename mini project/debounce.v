module debounce(clk,edge_in,edge_out);
input clk,edge_in;
output edge_out;

reg[24:0] count;
reg hzout;

wire q1;

initial 
begin
count=25'b0;
hzout=1'b0;


end







d_ff uut1(hzout, edge_in, edge_out);





endmodule