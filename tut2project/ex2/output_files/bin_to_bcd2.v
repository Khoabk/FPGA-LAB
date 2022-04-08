module bin_to_bcd2(input [7:0]a,input  b,output reg [11:0]c);
integer i=a+b;

always @ (a,b) begin  
  
   
c[3..0]=i%10;
c[7..4]=(i/10)%10;
c[11..8]=(i/100);

 /*if (en) 
     begin
      case(in)
      4'd0: out=63;  
      4'd1:out=6;    
      4'd2:out=91;
	   4'd3:out=79;   
      4'd4:out=102;    
      4'd5:out=109;
		4'd6:out=125;   
      4'd7:out=7;    
      4'd8:out=127;
		4'd9:out=111;
      default  : out = 0;    
    endcase
  end
  else out=0;*/
 
 
  end
endmodule


