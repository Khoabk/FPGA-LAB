module full_adder(A,B,C_in,S_out,C_out);
	input A,B,C_in;
	output S_out,C_out;
	wire S_out1_temp,C_out1_temp,C_out2_temp;
	// half_adder(S,C,A,B);
	
	//Implelent Full-adder as showed in Figure 2 of Tut2
	// first half adder
	half_adder first_half_adder(.A(A),
	                            .B(B),
										 .S(S_out1_temp),
										 .C(C_out1_temp));
	//Second hafl adder									 
	half_adder second_half_adder(.A(S_out1_temp),
	                            .B(C_in),
										 .S(S_out),
										 .C(C_out2_temp));
	// Carry out signal
	or u0(C_out, C_out1_temp, C_out2_temp);
	
endmodule 