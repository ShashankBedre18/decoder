`timescale 1ns / 1ps

module tb_decoder2to4;

reg A;
reg B;

wire Y0,Y1,Y2,Y3;

integer i;

decoder2to4 uut(
    .A(A),
    .B(B),
    .Y0(Y0),
    .Y1(Y1),
    .Y2(Y2),
    .Y3(Y3)
);

initial begin

$display("A B | Y0 Y1 Y2 Y3");
$monitor("%b %b | %b %b %b %b",A,B,Y0,Y1,Y2,Y3);

for(i=0;i<4;i=i+1)
begin
    {A,B} = i;
    #10;
end

end

endmodule