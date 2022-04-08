module adder_4bit(A,B,C_in,S_out,C_out);
	input [3:0] A,B;
	input C_in;
	output C_out;
	output [3:0] S_out;
	
	wire C_out1_temp,C_out2_temp,C_out3_temp;
	
	// full_adder(A,B,C_in,S_out,C_out);
	// Code below implement 4 bit adder in Figure 3 of tut2
	// First full adder from the right hand-side
	full_adder u0(.A(A[0]),
					  .B(B[0]),
					  .C_in(C_in),
					  .C_out(C_out1_temp),
					  .S_out(S_out[0]));
	//Second Full adder
	full_adder u1(.A(A[1]),
					  .B(B[1]),
					  .C_in(C_out1_temp),
					  .C_out(C_out2_temp),
					  .S_out(S_out[1]));
	//Third Full adder
	full_adder u2(.A(A[2]),
					  .B(B[2]),
					  .C_in(C_out2_temp),
					  .C_out(C_out3_temp),
					  .S_out(S_out[2]));
	//Fourth Full adder
	full_adder u3(.A(A[3]),
					  .B(B[3]),
					  .C_in(C_out3_temp),
					  .C_out(C_out),
					  .S_out(S_out[3]));
	
endmodule