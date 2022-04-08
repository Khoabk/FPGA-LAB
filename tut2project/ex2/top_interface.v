module top_interface(SW,HEX0);
input [4:0] SW;
output [6:0] HEX0;
//anode version
led7_decoder uut(SW[4],SW[3:0],HEX0);

endmodule