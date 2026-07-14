module top_module ( input clk, input d, output q );
	wire s1, s2;
    my_dff m1 (.clk(clk), .d(d), .q(s1));
    my_dff m2 (.clk(clk), .d(s1), .q(s2));
    my_dff m3 (.clk(clk), .d(s2), .q(q));
endmodule
