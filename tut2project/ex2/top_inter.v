//cathode version
module top_inter(SW,HEX0,HEX1);
input [9:0] SW;
output [6:0]HEX0,HEX1;
bin_to_7seg uut(SW[3:0],SW[7:4],SW[8],SW[9], {HEX1,HEX0});
//bin_to_7seg uut(input [3:0]a,b,input cin,en, output [13:0]seg);
//led7_decoder_cathode uut(SW[0],SW[4:1],HEX0);
endmodule