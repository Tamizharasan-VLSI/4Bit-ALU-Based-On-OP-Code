
module divide #(parameter WIDTH = 4)(
    input  [WIDTH-1:0] a,
    input  [WIDTH-1:0] b,
    output [WIDTH-1:0] result
);
    assign result = (b != 0) ? (a / b) : 0;
endmodule