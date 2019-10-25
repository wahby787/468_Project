module Rotate_L(in,out);
  input [15:0] in;
  output [15:0] out;
  parameter N = 1;
  assign out = (N==0) ? in : {in[15-N:0],in[15:16-N]}; 
endmodule
