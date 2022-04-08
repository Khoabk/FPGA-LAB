module four_bit_adder(s,c,a,b,cin);
input [3:0] a;
input [3:0] b;
input cin;
output [3:0] s;
output c;
wire c0,c1,c2;

   full_adder f0(s[0],c0,a[0],b[0],cin);
	full_adder f1(s[1],c1,a[1],b[1],c0);
	full_adder f2(s[2],c2,a[2],b[2],c1);
	full_adder f3(s[3],c,a[3],b[3],c2);
   
	
endmodule 