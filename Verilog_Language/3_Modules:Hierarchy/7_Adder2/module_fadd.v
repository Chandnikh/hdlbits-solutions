module top_module (
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire s0, s1;
    add16 a1 (a[15:0], b[15:0], 1'b0, sum[15:0], s0);
    add16 a2 (a[31:16], b[31:16], s0, sum[31:16], s1);
endmodule

module add1 ( input a, input b, input cin,   output sum, output cout );
	assign sum = a^b^cin;
    assign cout = (a&b)|(b&cin)|(cin&a);
endmodule
