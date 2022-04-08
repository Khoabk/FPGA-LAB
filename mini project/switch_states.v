module switch_states(clk,switch,add,deduct,hour1,minute1,second1);
input clk,switch,add,deduct;
output [13:0]hour1,minute1,second1;

wire trigger1,trigger2;

reg mode1;
reg [5:0]operator;
reg [1:0]count;

initial begin
count=2'b00;
end



always @(negedge switch)
if(count==3)count<=0;
else count<=count+1;



always @(*)
begin
 mode1=1;
  operator=6'b111111;
 case (count) 
     2'b00 :   
	         begin
	           mode1=0;
				  operator=6'b111111;
				  
				 end
	 
	 
     2'b01  :
	         begin
				  operator[5:2]=4'b1111;
				  operator[1:0]={deduct,add};
				   //operator=6'b111011;
					
				end
	 
	 
     2'b10 :  
	         begin
				  operator[3:2]={deduct,add};
				  {operator[5],operator[4],operator[1],operator[0]}=4'b1111;
				   // operator=6'b111110;
				/*	operator[3]=deduct;
					operator[2]=add;*/
					
				end
			  
     2'b11 : 
            begin
				  operator[5:4]={deduct,add};
				  {operator[3],operator[2],operator[1],operator[0]}=4'b1111;
				  //  operator=6'b011111;
				end
	 
                    
                  
    default    :  
	       begin 
			     mode1=0;
				  operator=6'b111111;
         	end
			 
			 
  endcase

  
end






seccond_counter second(.clk(clk),.mode(mode1),.add(operator[0]),.deduct(operator[1]),.seg(second1),.trigger(trigger1));


minute_counter minute(.clk(clk),.second(trigger1),.mode(mode1),.add(operator[2]),.deduct(operator[3]),.seg(minute1),.trigger(trigger2));


 hour_counter hour(.clk(clk),.minute(trigger2),.mode(mode1),.add(operator[4]),.deduct(operator[5]),.seg(hour1));
 
 
 
 endmodule