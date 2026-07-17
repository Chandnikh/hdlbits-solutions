`default_nettype none //disables implicit wire declarations
module top_module(
    input a,
    input b,
    input c,
    input d,
    output out,
    output out_n   ); 
	wire s0,s1,s2;
    assign s0 = a&b;
    assign s1 = c&d;
    assign s2 = s0|s1;
    assign out = s2;
    assign out_n =~s2;
endmodule
