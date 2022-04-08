module morse_code_ver2(clk,reset,load,letter,b_out);
input clk,reset,load;
input [2:0]letter;
output  b_out;
reg [15:0]data_in,data_in2;
reg state,next_state,hzout,en;
reg [24:0]count;
reg b_out1;

initial
begin
count=0;
data_in=0;
data_in2=0;
state=0;
next_state=0;
en=0;
b_out1=0;
end


always @(posedge clk)
begin
  if(count>249999999)count<=0;
   else count<=count+1;
	
	hzout<=(count>12499999)?1:0;
  
  
 end
 







parameter A = 16'b0100011100000000, A1=3'b0, //state encoding
B = 16'b0001110101010000,           B1=3'b001,
C = 16'b0001110100011101,           C1=3'b010,
D = 16'b0001110101000000,           D1=3'b011,
E = 16'b0100000000000000,           E1=3'b100,
F = 16'b0101000111010000,           F1=3'b101,
G = 16'b0001110001110100,           G1=3'b110,
H = 16'b0101010100000000,           H1=3'b111;




always @(negedge load/*,data_in2*/)
begin
//en=0;
     case(letter)
	   A1: data_in=A;
		B1: data_in=B;
	   C1: data_in=C;
		D1: data_in=D;
	   E1: data_in=E;
		F1: data_in=F;
	   G1: data_in=G;
		H1: data_in=H;
		default : data_in=0;
		endcase
//if(data_in2==0)en=1;
end


always @(load,data_in2)
if(load==0)en=1;
else if(data_in2==data_in)  en=0;
//else en=en;
 
 
 always @(posedge hzout,negedge reset)
  begin
  if(reset==0)data_in2<=0;
  else
  begin
     if(data_in2==0&&en==1)
	    data_in2<=data_in;
	  else
	   data_in2 <=data_in2<<1; 
	end	
		
  end
		  
	  
	     
//assign b_out=data_in2[15];





/*

always @(posedge clk)
begin
  if(count>249)count<=0;
   else count<=count+1;
	
	hzout<=(count>12499999)?1:0;
  
  
 end*/
 
 
 
 
 always @(posedge hzout,negedge reset)
 if(reset==0)state<=0; else state<=next_state;
 
 
 
 always @(state,data_in2)
  begin
  
  b_out1=0;
 
  
 // data_in=data_in<<1;
  
   next_state=data_in2[15];
  if(state==1)
   b_out1=1;
  
  end
  
  assign b_out=b_out1;
  
  
  endmodule
 
 
 
 
 
 
 