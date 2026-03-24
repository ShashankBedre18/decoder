`timescale 1ns / 1ps

module tb_decoder_3too8;

reg A,B,C;

wire Y0,Y1,Y2,Y3,Y4,Y5,Y6,Y7;

integer i;
decoder_3too8 uut(
    .A(A),
    .B(B),
    .C(C),
    .Y0(Y0),
    .Y1(Y1),
    .Y2(Y2),
    .Y3(Y3),
    .Y4(Y4),
    .Y5(Y5),
    .Y6(Y6),
    .Y7(Y7)
);

initial begin

$display("A B C | Y0 Y1 Y2 Y3 Y4 Y5 Y6 Y7");

$monitor("%b %b %b | %b %b %b %b %b %b %b %b",
A,B,C,Y0,Y1,Y2,Y3,Y4,Y5,Y6,Y7);

for(i=0;i<8;i=i+1)
begin
    {A,B,C} = i;
    #10;
end

end

endmodule