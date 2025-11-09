// // Code your testbench here
// // or browse Examples


module tb;
  parameter width = 4;
  reg clk, rst;
  reg [width-1:0] a, b;
  reg [2:0] OP_code;
  wire [2*width-1:0] result;
  
  alu #(width) dut (clk, rst, a, b, OP_code, result);
  
  always #5 clk = ~clk;
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, tb);
    clk = 1;
    rst = 1;
    #10;
    rst = 0;
    
    a = 4'd5; b = 4'd3; OP_code = 3'b000; #10;
    $display("ADD: %0d + %0d = %0d", a, b, result);
    
    a = 4'd9; b = 4'd4; OP_code = 3'b001; #10;
    $display("SUB: %0d - %0d = %0d", a, b, result);
    
    a = 4'd2; b = 4'd3; OP_code = 3'b010; #10;
    $display("MUL: %0d * %0d = %0d", a, b, result);
    
    a = 4'd8; b = 4'd2; OP_code = 3'b011; #10;
    $display("DIV: %0d / %0d = %0d", a, b, result);
    
    a = 4'd5; b = 4'd0; OP_code = 3'b011; #10;
    $display("DIV by 0: %0d / %0d = %0d", a, b, result);
    
    #10 $finish;
  end
endmodule
