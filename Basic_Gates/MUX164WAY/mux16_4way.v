module mux4way(
    input [15:0]a,b,c,d,
    input [1:0]sel,
    output reg [15:0]out
);
always @(*) begin
    if(sel==2'b00)begin
        out=a;
    end else if(sel==2'b01)begin
        out=b;
    end else if(sel==2'b10)begin
        out=c;
    end else begin 
        out=d;
    end
end
endmodule