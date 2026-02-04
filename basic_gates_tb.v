module basic_testbench1;
reg a;
reg b;
wire c,d,e,f,g,h,i;
verilog_basic1 dut(
.a(a),
.b(b),
.c(c),
.d(d),
.e(e),
.f(f),
.g(g),
.h(h),
.i(i)
);
initial begin
$monitor("Time=%0t|a=%b b=%b -> c=%b d=%b e=%b f=%b g=%b h=%b i=%b",
$time,a,b,c,d,e,f,g,h,i);
a=0; b=0;
#10 a=0; b=1;
#10 a=1; b=0;
#10 a=1; b=1;
$finish;
end
endmodule
