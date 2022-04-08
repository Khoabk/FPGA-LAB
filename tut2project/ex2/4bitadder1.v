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
// CREATED		"Fri May 08 20:35:57 2020"

module \4bitadder1 (
	Cin,
	A,
	B,
	Cout,
	S
);


input wire	Cin;
input wire	[3:0] A;
input wire	[3:0] B;
output wire	Cout;
output wire	[3:0] S;

wire	[3:0] s_ALTERA_SYNTHESIZED;
wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;





schematic_fulladder	b2v_F0(
	.A(A[0]),
	.B(B[0]),
	.Cin(Cin),
	.S(s_ALTERA_SYNTHESIZED[0]),
	.Cout(SYNTHESIZED_WIRE_0));


schematic_fulladder	b2v_F1(
	.A(A[1]),
	.B(B[1]),
	.Cin(SYNTHESIZED_WIRE_0),
	.S(s_ALTERA_SYNTHESIZED[1]),
	.Cout(SYNTHESIZED_WIRE_1));


schematic_fulladder	b2v_F2(
	.A(A[2]),
	.B(B[2]),
	.Cin(SYNTHESIZED_WIRE_1),
	.S(s_ALTERA_SYNTHESIZED[2]),
	.Cout(SYNTHESIZED_WIRE_2));


schematic_fulladder	b2v_F3(
	.A(A[3]),
	.B(B[3]),
	.Cin(SYNTHESIZED_WIRE_2),
	.S(s_ALTERA_SYNTHESIZED[3]),
	.Cout(Cout));

assign	S = s_ALTERA_SYNTHESIZED;

endmodule
