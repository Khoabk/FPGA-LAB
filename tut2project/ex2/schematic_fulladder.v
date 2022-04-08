// Copyright (C) 2016  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel MegaCore Function License Agreement, or other 
// applicable license agreement, including, without limitation, 
// that your use is for the sole purpose of programming logic 
// devices manufactured by Intel and sold by Intel or its 
// authorized distributors.  Please refer to the applicable 
// agreement for further details.

// PROGRAM		"Quartus Prime"
// VERSION		"Version 16.1.0 Build 196 10/24/2016 SJ Lite Edition"
// CREATED		"Fri May 08 21:23:34 2020"

module schematic_fulladder(
	A,
	B,
	Cin,
	Cout,
	S
);


input wire	A;
input wire	B;
input wire	Cin;
output wire	Cout;
output wire	S;

wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;





half_adder	b2v_inst(
	.a(A),
	.b(B),
	.s(SYNTHESIZED_WIRE_0),
	.c(SYNTHESIZED_WIRE_1));


half_adder	b2v_inst1(
	.a(SYNTHESIZED_WIRE_0),
	.b(Cin),
	.s(S),
	.c(SYNTHESIZED_WIRE_2));

assign	Cout = SYNTHESIZED_WIRE_1 | SYNTHESIZED_WIRE_2;


endmodule
