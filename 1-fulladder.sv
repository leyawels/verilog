//testbench
module fa_tb;
  reg a,b,cin;
  wire s,c;
  fa fa1(a,b,cin,s,c);
  initial
    begin
      $monitor("Time=%d\ta=%b\tb=%b\tcin=%b\ts=%b\tc=%b",$time,a,b,cin,s,c);
      a=0;
      b=0;
      cin=0;
      #10 a=1;
      #10 b=1;
      #10 cin=1;
      #10 $stop;
    end
endmodule

  //design 
module fa(a,b,cin,s,c);
  input a,b,cin;
  output s,c;
  assign s=a^b^cin;
  assign c=a&b | b&cin | a&cin;
endmodule
