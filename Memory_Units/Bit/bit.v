module bit (
    input wire val,load,clk,
    output reg out
);
always @(posedge clk)begin
    if (load)
    out<=val;
    else
    out=out;
end
endmodule 