module mealy_010_detector(clk,bits1,reset,detect);
input clk,bits1,reset;
output detect;

//reg [24:0]count=0;
//reg hzout=0;
reg[2:0] state,next_state;
reg bits=0;

 parameter A = 3'b000, //state encoding
B = 3'b001,
C = 3'b101;


 /*always @(posedge clk)
begin
  if(count>249999999)count<=0;
   else count<=count+1;
	
	hzout<=(count>12499999)?1:0;
  
  
 end*/
 always @(posedge clk)
  bits<=bits1;
 
 
 always @(posedge clk/*hzout*/,negedge reset)
 if(reset==0)state<=0; else state <=next_state;
 
 
always @(state,bits)
begin


//next_state=A;




case(state)

A: begin 
    if(bits)   next_state=A;    
	 else  next_state=B;    
   end

B: begin 
    if(bits)   next_state=C;    
	 else  next_state=B;   
   end
	
C: begin 
    if(bits)  next_state=A;    
	 else begin next_state=B;   end 
   end


  
default : begin next_state=A;  end


endcase





end

 
 
 
 assign detect=(state==C&&bits==0)?1:0;
 
 
 
 endmodule