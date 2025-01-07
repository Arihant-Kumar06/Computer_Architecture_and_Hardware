module dmux4way(
    input [15:0]in,
    input [1:0]z,
    output reg [15:0]out1,out2,out3,out4
);

always @(*) begin
    out1=16'b0;
    out2=16'b0;
    out3=16'b0;
    out4=16'b0;
    case (z)
     2'b00 :out1=in;
     2'b01 :out2=in;
     2'b10 :out3=in;
     2'b11 :out4=in;
    endcase

end
endmodule