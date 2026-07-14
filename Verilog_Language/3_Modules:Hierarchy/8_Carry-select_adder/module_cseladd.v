module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire s0,s1,s2;
    wire [15:0] s3,s4;
    add16 a0 ( a[15:0], b[15:0], 1'b0, sum[15:0], s0);
    add16 a1 ( a[31:16], b[31:16], 1'b0, s3[15:0], s1 );
    add16 a2 ( a[31:16], b[31:16], 1'b1, s4[15:0], s2 );
    
    always @ (*)
    begin
    case(s0)
        1'b0: sum[31:16] <= s3[15:0];
        1'b1: sum[31:16] <= s4[15:0];
    endcase
    end

endmodule
