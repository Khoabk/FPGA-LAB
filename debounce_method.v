module debounce_method(clk,signal_in,signal_out);
input clk, signal_in;
output signal_out;

reg D1, D2;


initial
begin

D1 <=0;

D2 <=0;

end


assign signal_out = (~D2)&D1;



always @(posedge clk)
begin


D1 <= signal_in;

D2 <= D1;


end





endmodule