module top_module( 
    input [99:0] a, b,
    input cin,
    output [99:0] cout,
    output [99:0] sum );
    wire cin_wire[100:0];
    assign cin_wire[0] = cin;
    genvar i;
    generate
        for (i=0;i<100;i++) begin: gen_add
        fadd (.a(a[i]), .b(b[i]), .cin(cin_wire[i]), .sum(sum[i]), .cout(cin_wire[i+1]));
        assign cout[i] = cin_wire[i+1];
        end
    endgenerate
endmodule

module fadd (input a, b, cin, output sum, cout);
	assign sum = a^b^cin;
    assign cout = (a&b)|(b&cin)|(a&cin);
endmodule
