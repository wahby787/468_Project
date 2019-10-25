module Test_Shift;
  reg [15:0] in;
  wire [15:0] out;
  
  initial
  begin
    $display($time, " Test My Design");
    in = 1;
#10 in = 2;
#10 in = 15;
#10 in = 50;
  end
  
  initial
  begin
    $monitor($time, " num.=%d, shift=%d", in, out);
  end
  
  //Shift_R #(1) r(in,out);
  //Shift_L #(1) l(in,out);
  //Rotate_R #(1) ror(in,out);
  Rotate_L #(1) rol(in,out);

endmodule