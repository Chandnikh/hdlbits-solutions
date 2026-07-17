`default_nettype none
module top_module (
    input a, b, c, d, e,
    output [24:0] out );//
    wire [24:0] s1,s0;
    assign s0 = {{5{a}},{5{b}},{5{c}},{5{d}},{5{e}}};
    assign s1 = {{5{a,b,c,d,e}}};
    assign out = ~(s0^s1);
endmodule
