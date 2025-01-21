module register(
    input wire [15:0]val,
    input wire load, clk,
    output reg [15:0]out  
);
always @(posedge clk) begin 
    if (load)
    out<=val;
    else 
    out=out;
end
endmodule