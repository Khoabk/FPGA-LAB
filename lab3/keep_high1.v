module keep_high1(clk,start,stop,signal,a_or_b);
input clk,start,stop; 
input[2:0] signal; 
output a_or_b;
//output[2:0] i_out;    

   
reg [27:0] count=0; 
reg run=0; reg [3:0] buffer; 
reg [3:0] data; 

integer i=0,k=0,j=0,numbit=0;    
assign a_or_b =(k)?1:0;
//assign i_out=i;



always @(signal)
begin
case(signal)
	 
	    3'b000: begin  numbit=2; data=4'bxx10; end     //A
		 
		 3'b001: begin  numbit=4; data=4'b0001; end     //B
		 
		 3'b010: begin  numbit=4; data=4'b0101; end     //C
		 
	    3'b011: begin  numbit=3; data=4'bx001; end     //D
		 
		 3'b100: begin  numbit=1; data=4'bxxx0; end     //E
		 
	    3'b101: begin  numbit=4; data=4'b0100; end     //F
		 
		 3'b110: begin  numbit=3; data=4'bx011; end     //G 
		 
		 3'b111: begin  numbit=4; data=4'b0000; end     //H
		 
	endcase



end





//always @(*)
//if(!stop) i=0; 
//else if(count==0)
//     if(i<=j)
//      i=i+1;



always @(negedge start,negedge stop)
 if(!start)begin if(!run) begin buffer<=data; j<=numbit;end run<=1;end 
 else if(!stop) run<=0;
 else run<=0;



always @(posedge clk,negedge stop)
begin
if(!stop) begin  k<=0;  count<=0; i=0; end    
else
if(run)
    if(i==j)k<=0;
	 else
    case(buffer[i])
	 
	    1'b1: if(count<149999999)
			begin  
				if(count<=74999999)
					k<=0;
				else 
				k<=1; 
				count<=count+1; 
			end 
			else 
			begin 
			count<=0; 
			i<=i+1; end
		 
		 1'b0: if(count<49999999)begin if(count<=24999999)k<=0; else k<=1; count<=count+1; end else begin  count<=0; i<=i+1; end
	 
	endcase
	//if(count<149)begin  if(count<=74)k<=0;else k<=1; count<=count+1; end else begin i<=i+1; count<=0; end
	
	 
	


end
endmodule