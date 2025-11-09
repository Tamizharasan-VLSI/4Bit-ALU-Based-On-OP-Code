`include "adder.v"
`include "subtractor.v"
`include "multiplier.v"
`include "divider.v"

module alu #(parameter width = 4)
  (input clk, rst,
   input [width-1:0] a,b,
   input [2:0] OP_code,
   output reg [2*width-1:0] result);
  
  wire [width-1:0] add_out, sub_out, div_out;
  wire [2*width-1:0] mul_out;

  adder #(width) add_inst (.a(a), .b(b), .sum(add_out));
  subtractor #(width) sub_inst (.a(a), .b(b), .result(sub_out));
  multiply #(width) mul_inst (.a(a), .b(b), .result(mul_out));
  divide #(width) div_inst (.a(a), .b(b), .result(div_out));

  always @(posedge clk or posedge rst) begin
    if (rst)
      result <= 0;
    else begin
      case (OP_code)
        3'b000: result <= add_out;
        3'b001: result <= sub_out;
        3'b010: result <= mul_out;
        3'b011: result <= div_out;
        default: result <= 0;
      endcase
    end
  end
endmodule
