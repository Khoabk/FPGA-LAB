module onehotfsm (
input clk , // Clock
input w, // Clock Enable
input rstn , // Asynchronous r e s e t a c t i v e low
output reg z // oupu t
) ;




parameter A = 9'b000000001 ;
parameter B = 9'b000000010 ;
parameter C = 9'b000000100 ;
parameter D = 9'b000001000 ;
parameter E = 9'b000010000 ;
parameter F = 9'b000100000 ;
parameter G = 9'b001000000 ;
parameter H = 9'b010000000 ;
parameter I = 9'b100000000 ;



reg [8:0] state,next_state;

//reg hzout=0;
reg [24:0]count;

/*always @(posedge clk)
begin
  if(count>249999999)count<=0;
   else count<=count+1;
	
	hzout<=(count>12499999)?1:0;
  
  
 end*/


always @( posedge clk /*hzout*/ or negedge rstn ) begin
if ( ! rstn ) state <= A;
else state <= next_state ;
end



always @(*) begin

z=0;

next_state=A;

case(state)

A: begin
    
	 
	 if(w)next_state =F;
	 else next_state =B;
	 
    end
	
B:  begin

     
	  if(w)next_state =F;
	  else next_state =C;

    end
	 
C:  begin
     
	  
	  if(w)next_state =F;
	  else next_state =D;



    end
	 
D:  begin
     
	  
	  if(w)next_state =F;
	  else next_state =E;



    end
	 
E:  begin
     
	  z=1;
	  if(w)next_state =F;
	  else next_state =E;



    end

F:  begin
     
	  
	  if(w)next_state =G;
	  else next_state =B;



    end
	 
G:  begin
     
	  
	  if(w)next_state =H;
	  else next_state =B;



    end	
	 
H:  begin
     
	  
	  if(w)next_state =I;
	  else next_state =B;

    end
	 
I:  begin
     
	  z=1;
	  if(w)next_state =I;
	  else next_state =B;

    end
	 
default: begin
  
  next_state =A;
  
  
   end	
   endcase	
	 

end
endmodule