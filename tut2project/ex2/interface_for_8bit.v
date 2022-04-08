module interface_for_8bit( SW,HEX0,HEX1,HEX2);
input [17:0]SW;
output [6:0]HEX0,HEX1,HEX2;

  bin_8bit_to_7seg uut(SW[7:0],SW[15:8],SW[16],SW[17],{HEX2,HEX1,HEX0});

//bin_8bit_to_7seg(input [7:0]a,b,input cin,en, output [20:0]seg);
endmodule