module top_module( 
    input [254:0] in,
    output [7:0] out );
    integer i;
    always @ (*)
        begin
        out = 1'd0;
        for(i = 0; i < 255; i++)
            begin
                if(in[i]==1'b1)
                begin
                out = out + 1'd1;
                end
            end
        end
endmodule
