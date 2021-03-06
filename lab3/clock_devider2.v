module clock_devider2(clk,reset,hzin,hzout);
input clk,reset;   input[3:0]hzin;
output  hzout;   reg[25:0] count=0; 
integer k, i=0;



parameter onehz=49999999; 
parameter twohz=24999999;
parameter threehz=16666665;
parameter fourhz=12499999;
parameter fivehz=9999999;
parameter sixhz=8333332;
parameter sevenhz=7142856;
parameter eighthz=6249999;
parameter ninehz=5555554;
parameter tenhz=4999999;
parameter elevenhz=4545453;
parameter twelvehz=4166665;
parameter thirdteenhz=3846152;
parameter fourteenhz=3571427;
parameter fifteenhz=3333332;


assign hzout=i?1:0;




always @(hzin,count)
if(count==0)k<=hzin;

always @(posedge clk)
begin
  if(!reset) begin count <=0; i<=0; end
  else
  begin
     
	    case(k)
	 
	    4'd1: if(count<  onehz )begin  if(count<(onehz-1)/2)i<=0;else i<=1; count<=count+1; end else count<=0;   //one hz
		 
		 4'd2: if(count<  twohz )begin  if(count<(twohz-1)/2)i<=0;else i<=1; count<=count+1; end else count<=0;   //two hz
		 
		 4'd3: if(count<  threehz )begin  if(count<(threehz-1)/2)i<=0;else i<=1; count<=count+1; end else count<=0;   //three hz
		 
		 4'd4: if(count<  fourhz )begin  if(count<(fourhz-1)/2)i<=0;else i<=1; count<=count+1; end else count<=0;   //four hz
		 
	    4'd5: if(count<  fivehz )begin  if(count<(fivehz-1)/2)i<=0;else i<=1; count<=count+1; end else count<=0;   //five hz
		 
		 4'd6: if(count<  sixhz )begin  if(count<(sixhz-1)/2)i<=0;else i<=1; count<=count+1; end else count<=0;   //six hz
		 
		 4'd7: if(count<  sevenhz )begin  if(count<(sevenhz-1)/2)i<=0;else i<=1; count<=count+1; end else count<=0;   //seven hz
		 
		 4'd8: if(count<  eighthz )begin  if(count<(eighthz-1)/2)i<=0;else i<=1; count<=count+1; end else count<=0;   //eight hz
		 
		 4'd9: if(count<  ninehz )begin  if(count<(ninehz-1)/2)i<=0;else i<=1; count<=count+1; end else count<=0;   //nine hz
		 
		 4'd10: if(count<  tenhz )begin  if(count<(tenhz-1)/2)i<=0;else i<=1; count<=count+1; end else count<=0;   //ten hz
		 
		 4'd11: if(count<  elevenhz )begin  if(count<(elevenhz-1)/2)i<=0;else i<=1; count<=count+1; end else count<=0;   //eleven hz
		 
		 4'd12: if(count<  twelvehz )begin  if(count<(twelvehz-1)/2)i<=0;else i<=1; count<=count+1; end else count<=0;   //twelve hz
		 
	    4'd13: if(count<  thirdteenhz )begin  if(count<(thirdteenhz-1)/2)i<=0;else i<=1; count<=count+1; end else count<=0;   //thirdteen hz
		 
		 4'd14: if(count<  fourteenhz )begin  if(count<(fourteenhz-1)/2)i<=0;else i<=1; count<=count+1; end else count<=0;   //fourteen hz
		 
		 4'd15: if(count<  fifteenhz )begin  if(count<(fifteenhz-1)/2)i<=0;else i<=1; count<=count+1; end else count<=0;   //fifteen hz
		 
	
		 
		
	 
	endcase
	  
	  
	  
  
  end
  
end
endmodule