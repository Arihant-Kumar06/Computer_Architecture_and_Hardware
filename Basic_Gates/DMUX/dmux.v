module dmux(in,z,x,y);
input in,z;
output reg x,y;
always @(*) begin
    if(z==1)
    begin
        x=in;
        y=0;
    end
    if(z==0)
    begin
        x=0;
        y=in;
    end;

end
endmodule