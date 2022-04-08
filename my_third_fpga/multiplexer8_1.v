module multiplexer8_1(y,y_inverted,i,a,b,c,e);
input [7:0]i;
input a,b,c,e;
output y,y_inverted;
   
	multiplexer2_1 a1(n1,i[0],i[1],c);
	multiplexer2_1 a2(n2,i[2],i[3],c);
	multiplexer2_1 a3(n3,i[4],i[5],c);
	multiplexer2_1 a4(n4,i[6],i[7],c);
	multiplexer2_1 a5(n5,n3,n4,b);
	multiplexer2_1 a6(n6,n1,n2,b);
	multiplexer2_1 a7(n7,n6,n5,a);
	
	assign y=~e&n7;
	assign y_inverted=e|~n7;
	
endmodule