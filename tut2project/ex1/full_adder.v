module full_adder(s,c,a,b,cin);
input a,b,cin;
output s,c;
wire s1,c1,c2;

   half_adder h1(s1,c1,a,b);
	half_adder h2(s,c2,s1,cin);
	assign c=c2|c1;
endmodule 