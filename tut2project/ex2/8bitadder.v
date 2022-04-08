module \8bitadder (Cin,A,B,Cout,S);
input[7:0]A;input[7:0]B;input Cin;
output[7:0]S; output Cout; wire C;
\4bitadder uut1(Cin,A[3:0],B[3:0],C,S[3:0]);
\4bitadder uut2(C,A[7:4],B[7:4],Cout,S[7:4]);

endmodule