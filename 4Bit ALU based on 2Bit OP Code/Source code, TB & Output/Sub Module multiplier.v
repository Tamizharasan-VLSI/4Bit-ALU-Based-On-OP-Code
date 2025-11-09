module multiply #(parameter WIDTH = 4)(
    input  [WIDTH-1:0] a,
    input  [WIDTH-1:0] b,
    output [2*WIDTH-1:0] result
);
    assign result = a * b;
endmodule