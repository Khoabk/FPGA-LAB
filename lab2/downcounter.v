module downcounter(data,dec,load,clk,zero,out);
input [3:0]data; input clk,dec,load;
output reg[3:0]out;
output reg zero;


//clock_devider uut(clk,rest,clk_out);

initial zero<=0;
always @(posedge clk)

   if(load) out<=data;
  else if(dec&&out) out<=out-1;
  
  
always @(out)
 if(!out) zero<=1;
else zero<=0; 
  
  
  
  
  

  endmodule
