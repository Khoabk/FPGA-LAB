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
// CREATED		"Sun May 10 20:02:13 2020"

module block_counter(
	rst,
	clk,
	win,
	player,
	p0guess,
	p1guess
);


input wire	rst;
input wire	clk;
output wire	win;
output wire	player;
output wire	[1:0] p0guess;
output wire	[1:0] p1guess;

wire	[3:0] count;
wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;





clock_devider	b2v_inst2(
	.clk_in(clk),
	.rst(rst),
	.clk_out(SYNTHESIZED_WIRE_0));
	defparam	b2v_inst2.COUNTER_THRESHOLE = 0;


mod10_counter	b2v_inst3(
	.clk(SYNTHESIZED_WIRE_0),
	.rst(rst),
	.count(count));

assign	SYNTHESIZED_WIRE_1 =  ~rst;


RPS	b2v_inst5(
	.rst(SYNTHESIZED_WIRE_1),
	.a(count[3:2]),
	.b(count[1:0]),
	.win(win),
	.player(player),
	.p0guess(p0guess),
	.p1guess(p1guess));


endmodule
