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
// CREATED		"Fri May 08 22:20:35 2020"

module testor(
	pin_name1,
	pin_name2,
	pin_name3
);


input wire	pin_name1;
input wire	pin_name2;
output wire	pin_name3;

wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;





half_adder	b2v_inst(
	.a(pin_name1),
	.b(pin_name2),
	.s(SYNTHESIZED_WIRE_1),
	.c(SYNTHESIZED_WIRE_0));

assign	pin_name3 = SYNTHESIZED_WIRE_0 | SYNTHESIZED_WIRE_1;


endmodule
