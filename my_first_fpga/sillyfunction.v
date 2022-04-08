module sillyfunction(x,y,s,m);
 //  input[2:0] S;
    //input E;
	//input [7:0] I;
	//output Z, Z_inverted;
	input x,y,s;
	output m;
	
//	not u0(s_inverted,s);
//	and u1(n1,s_inverted,x);
//	and u2(n2,s,y);
//	or u3(m,n1,n2);
assign m= (x&!s)|(y&s);
	
endmodule