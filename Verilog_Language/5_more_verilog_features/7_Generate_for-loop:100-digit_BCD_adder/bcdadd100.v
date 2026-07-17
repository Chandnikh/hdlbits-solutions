module top_module(
    input [399:0] a, b,
    input cin,
    output cout,
    output [399:0] sum );
    wire cin_wire [100:0];
    assign cin_wire [0] = cin;
    genvar i;
    generate 
        for (i=0; i < 100; i++) begin : gen_bcd
            bcd_fadd (a[4*i+3:4*i], b[4*i+3:4*i], cin_wire[i], cin_wire[i+1], sum[4*i+3:4*i]);
        end
    endgenerate
    assign cout = cin_wire[100];
endmodule
