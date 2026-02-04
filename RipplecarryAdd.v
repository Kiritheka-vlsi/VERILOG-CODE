/*module RipplecarryAdd(
	input wire A0,A1,A2,A3,
	input wire B0,B1,B2,B3,
	input wire Cin,
	output wire C1,C2,C3,C4,
        output wire S0,S1,S2,S3);
	
assign S0 = A0^B0^Cin;
assign C1 = (A0&B0) |(A0^B0)&Cin;
assign S1 = A1^B1^C1;
assign C2 = (A1&B1)|(A1^B1)&C1;
assign S2 = A2^B2^C2;
assign C4 = (A2&B2)|(A2^B2)&C2;
assign S3 = A3^B3^C3;
assign C4 = (A3&B3)| (A3^B3)&C3;
endmodule*/
module RipplecarryAdd (
    input  wire A0, A1, A2, A3,
    input  wire B0, B1, B2, B3,
    input  wire Cin,
    output wire C1, C2, C3, C4,
    output wire S0, S1, S2, S3
);

    // Bit 0 (LSB)
    assign S0 = A0 ^ B0 ^ Cin;
    assign C1 = (A0 & B0) | ((A0 ^ B0) & Cin);

    // Bit 1
    assign S1 = A1 ^ B1 ^ C1;
    assign C2 = (A1 & B1) | ((A1 ^ B1) & C1);

    // Bit 2
    assign S2 = A2 ^ B2 ^ C2;
    assign C3 = (A2 & B2) | ((A2 ^ B2) & C2);

    // Bit 3 (MSB)
    assign S3 = A3 ^ B3 ^ C3;
    assign C4 = (A3 & B3) | ((A3 ^ B3) & C3);

endmodule

