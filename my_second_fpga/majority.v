module majority(y,v1,v2,v3);
input v1,v2,v3;
output y;
   
	assign y=v1&v2|v2&v3|v1&v3;



endmodule