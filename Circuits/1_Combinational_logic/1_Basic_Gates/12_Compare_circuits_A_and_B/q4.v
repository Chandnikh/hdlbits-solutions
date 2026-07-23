module top_module (input x, input y, output z);
	wire s0,s1,s2,s3,s4,s5;
    A IA1 (x,y,s0);
    B IB1 (x,y,s1);
    A IA2 (x,y,s2);
    B IB2 (x,y,s3);
    assign s4 = s0 | s1;
    assign s5 = s2 & s3;
    assign z = s4 ^ s5;
endmodule

module A (input x, input y, output z);
    assign z = (x^y)&x;
endmodule

module B ( input x, input y, output z );
    assign z = ~(x^y);
endmodule

