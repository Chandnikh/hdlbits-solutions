module top_module ( 
    input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y );
    wire s0,s1,s2,s3;
	assign s0 = p2a & p2b;
    assign s1 = p2c & p2d;
    assign p2y = s0|s1;
    assign s2 = p1a & p1b & p1c;
    assign s3 = p1d & p1e & p1f;
    assign p1y = s2|s3;

endmodule
