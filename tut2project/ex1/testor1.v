module testor1(
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
