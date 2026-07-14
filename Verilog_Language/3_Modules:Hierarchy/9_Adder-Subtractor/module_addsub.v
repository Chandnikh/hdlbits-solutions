`default_nettype none
module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    wire [31:0] b_sig;
    wire s0,s1;
    assign b_sig = b^{32{sub}};
    add16 a0 ( a[15:0], b_sig[15:0], sub, sum[15:0], s0 );	
    add16 a1 ( a[31:16], b_sig[31:16], s0, sum[31:16], s1 );	
endmodule
