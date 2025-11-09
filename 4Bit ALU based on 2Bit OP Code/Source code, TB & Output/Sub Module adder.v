module adder #(parameter width = 4)
  (
    input [width - 1:0]a,b,
   output reg [width - 1:0] sum);
  
  assign sum = a + b;
  
endmodule


