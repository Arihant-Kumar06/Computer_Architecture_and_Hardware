module mux16(
    input [15:0]x,y,
    input sel,
    output [15:0]out
);
assign out=(sel==1'b0)?x:y;
endmodule