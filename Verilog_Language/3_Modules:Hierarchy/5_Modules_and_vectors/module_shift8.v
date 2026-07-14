`default_nettype none
module top_module ( 
    input clk, 
    input [7:0] d, 
    input [1:0] sel, 
    output [7:0] q 
);
    wire [7:0] s0, s1, s2;
    my_dff8 d0 (.clk(clk), .d(d), .q(s0));
    my_dff8 d1 (.clk(clk), .d(s0), .q(s1));
    my_dff8 d2 (.clk(clk), .d(s1), .q(s2));
    
    always @(*)
        begin
        case (sel)
            2'b00 : q <= d;
            2'b01 : q <= s0;
            2'b10 : q <= s1;
            2'b11 : q <= s2;
        endcase
        end
endmodule
