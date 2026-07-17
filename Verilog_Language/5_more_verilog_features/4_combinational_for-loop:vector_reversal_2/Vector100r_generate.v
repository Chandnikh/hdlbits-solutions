module top_module( 
    input [99:0] in,
    output [99:0] out
);
    genvar i;
    generate
        for(i=0;i<100;i++) begin : gen_rev //generate for requires a begin end block
        assign out[i] = in[99-i];
        end
    endgenerate
endmodule
