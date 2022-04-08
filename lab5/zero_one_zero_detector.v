module zero_one_zero_detector(input clk, input bits1, input reset, output reg detector);
// reg [24:0] count=0;
 //reg hzout=0;
 reg[2:0] state=0,next_state=0;

  parameter A = 3'b000, //state encoding
B = 3'b001,
C = 3'b101,
D = 3'b111;

reg bits=0;

/* always @(posedge clk)
begin
  if(count>249999999)count<=0;
   else count<=count+1;
	 
	hzout<=(count>12499999)?1:0;
  
  
 end*/
 
 /*always @(bits1,clk)
 if(e)
 begin
  bits<=bits1;
  e=0;
 end 
 else if(clk==1) e=1;*/
 
 
 
 
 //always @(posedge clk)
 /*always@(bits1)
 begin
 if(start==0)start=1;
 if(e)
 begin
 bits=bits1;
 start=0;
 
 end
 
 end*/
 
 /*always @(posedge clk,negedge start)
 if(start==0)e<=0;
 else e<=1;*/
 
 
 
 always @(negedge clk)
 bits<=bits1;
 
 
 always @(posedge clk/* hzout*/,negedge reset)
 if(reset==0)state<=0; else state <=next_state;
 

 
always @(state,bits)
begin
/*if(state==next_state)
 e=1;
 else e=0;*/

detector=0;
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
	 else begin next_state=D;   end 
   end

D: begin 
    if(bits) begin   next_state=C;    end
	 else begin next_state=B;  detector=1; end 
   end
  
default : begin next_state=next_state;  detector=detector; end


endcase





end
 


endmodule