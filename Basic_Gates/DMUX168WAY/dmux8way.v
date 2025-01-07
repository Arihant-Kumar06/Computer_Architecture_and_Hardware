module dmux8way(
    input [15:0]in,
    input [2:0]z,
    output reg [15:0]out0,out1,out2,out3,out4,out5,out6,out7
);

always @(*) begin
    out0=16'b0;
    out1=16'b0;
    out2=16'b0;
    out3=16'b0;
    out4=16'b0;
    out5=16'b0;
    out6=16'b0;
    out7=16'b0;
    case (z)
     3'b000 :out0=in;
     3'b001 :out1=in;
     3'b010 :out2=in;
     3'b011 :out3=in;
     3'b100 :out4=in;
     3'b101 :out5=in;
     3'b110 :out6=in;
     3'b111 :out7=in;
    endcase

end
endmodule