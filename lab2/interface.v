module interface(KEY,SW,LEDR);
input [3:0]KEY;
input [11:0]SW;
output [3:0]LEDR;

alu uut(.clk(KEY[3]),.rst(SW[11]),.out(LEDR[3:0]),.opcode(SW[2:0]),.data(SW[10:7]),.accum(SW[6:3]));
// alu(clk,rst,out,opcode,data,accum);

endmodule