module top_module (
    input in1,
    input in2,
    input in3,
    output out);
    wire s;
    assign s = ~(in1^in2);
    assign out = s^in3;
endmodule
