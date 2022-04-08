module half_adder(S,C,A,B);
	input A,B;
	output S,C;
	
	and u0(C,A,B);
	xor u1(S,A,B);
	
endmodule 