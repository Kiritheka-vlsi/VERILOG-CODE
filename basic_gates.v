
module verilog_basic1(
input wire a,
input wire b,
output wire c,
output wire d,
output wire e,
output wire f,
output wire g,
output wire h,
output wire i
);
assign c = a|b;
assign d = ~a;
assign e = ~(a&b);
assign f = ~(a|b);
assign g = a^b;
assign h =~(a^b);
assign i =a&b;
endmodule

