module ram16k(
    input load,clk,
    input [15:0]value,
    input [13:0] address,
    output reg [15:0]out
);
reg [15:0] register_array [16383:0];

always@(posedge clk) begin
    if (load)begin
        register_array[address]<=value;
    end
    out<=register_array[address];
end
endmodule