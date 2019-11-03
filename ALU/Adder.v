module Adder(in1,in2,out,flags);
  input [15:0] in1,in2;
  output [15:0] out;
  
  //assume that flags corresponds to C,N,Z,V respectively
  output [3:0] flags;
  wire [16:0] internal_wire;
  
  //an internal wire that would hold the complete addition result
  assign internal_wire = in1 + in2;
  
  //the output wire that would hold the actual result
  assign out = internal_wire[15:0];
  
  //use the flag_setting module
  flag_module flags_add(in1, in2, C, out, 0000);
  
endmodule
