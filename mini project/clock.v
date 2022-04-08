module Clock(
    input Clk_1sec,  
    reset,
	 key0,
	 key1,
	 key2,
	 key3,
    output reg [5:0] seconds,
    output reg [5:0] minutes,
    output reg [4:0] hours);	 
	 
   always @(posedge(Clk_1sec) or posedge(reset))
   begin
        if(reset == 1'b1) 
		  begin
				if(key3==1'b1)
					begin
				seconds <= 59;
				minutes <= 59;
				hours <= 23;
					end
				else
					begin  
            seconds <= 0;
            minutes <= 0;
            hours <= 0; 
					end
					end
				
				
        else if(Clk_1sec == 1'b1)
	  begin  
		  if(key0==1'b1)
		  begin
            seconds <= seconds + 1; 
	//minute count start			
				if(seconds == 59)
				begin 
					if(key1==1'b1)
					begin
						seconds <= 0; 
						minutes <= minutes + 1; 
	// hour count start
							if(minutes == 59)
								begin
								minutes <= 0; 
									if(key2==1'b1) 
										begin
										hours = hours + 1; 
											if(hours ==  23)
												begin  
													hours <= 0; 
												end 
										end
						  
								end
					end
				end //end minute
        end
		  else if(key3==1'b1)
				begin
				seconds<=seconds-1;
					if(seconds == 0)
						begin
							seconds<=59;
							minutes<=minutes-1;
							if(minutes == 0)
							begin
								minutes<=59;
								hours<=hours-1;
								if(hours==0)
								begin
								hours<=23;
								end
							end
						end
				end
		  
	  end 
end    

endmodule
