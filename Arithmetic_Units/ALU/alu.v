module alu(
    input [15:0]a,b,
    input zx,zy,nx,ny,no,
    input [1:0]f,
    output reg [15:0] out,
    output reg zr,ng
);
reg [15:0]x,y,out1;
always @(*) begin
    x=a;
    y=b;
if (zx) begin
    x=16'b0;
end
if(zy)begin
    y=16'b0;
end
if(nx)begin
    x=~x;
end
if(ny)begin
    y=~y;
end
case (f)
    2'b00: out1=x+y;
    2'b01: out1=x-y;
    2'b10: out1=x&y;
    2'b11: out1=x|y;
endcase
out=(no==0)?out1:~out1;
zr = (out==16'b0) ? 1'b1 : 1'b0;
ng=out[15];
end
endmodule