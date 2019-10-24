module Shift_R(in,out);
  input [15:0] in;
  output [15:0] out;
  parameter N = 0;
  assign out = (in >> N); 
endmodule