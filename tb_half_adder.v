module tb;
  reg a, b;
  wire sum, carry;
  
  half_adder a1(a, b, sum, carry);
  
  initial begin
    $dumpfile("dump.vcd"); $dumpvars;
    $monitor("a=%b, b=%b, sum = %b, carry = %b", a, b, sum, carry);
    a = 1'b1; b = 1'b1; 
    #3;
    a = 1'b1; b = 1'b0;
    #5;
    a = 1'b0; b = 1'b0; 
    #10;
    a = 1'b1; b = 1'b1;
    #5;
  end
endmodule
