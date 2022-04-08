module multiplexer2_1(y,i1,i2,a);
input i1,i2,a;
output y;
   assign y=(i1&~a|i2&a);
	
endmodule