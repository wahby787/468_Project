module Rotate_R(in,out);
  input [15:0] in;
  output [15:0] out;
  parameter N = 1;
  assign out = (N==0) ? in : {in[N-1:0],in[15:N]}; 
endmodule
