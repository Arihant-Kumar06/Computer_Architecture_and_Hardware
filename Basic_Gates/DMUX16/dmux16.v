module dmux(
    input [15:0]in,
    input z,
    output reg [15:0]x,y
);

always @(*) begin
    if(z==0)
    begin
        x=in;
        y=16'b0000000000000000;
    end
    if(z==1)
    begin
        x=16'b0000000000000000;;
        y=in;
    end;

end
endmodule