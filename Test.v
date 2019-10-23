module Test;
  reg [15:0] in1,in2;
  wire [15:0] out;
  
  initial
  begin
    $display($time, " TestMy Design");
    in1=2; in2=3;
#10 in1=1; in2=3;
#10 in1=6; in2=2; 
#10 in1=5; in2=9; 
#10 in1=10; in2=10; 
#10 in1=10; in2=6; 
  end
  
  initial
  begin
  $monitor($time, " 1stnum.=%d, 2ndnum.=%d, Sum=%d", in1, in2, out);
  end
  
  Adder A(in1, in2, out);
  
endmodule
