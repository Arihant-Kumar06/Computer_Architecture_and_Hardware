module ram4k(
    input load,clk,
    input [15:0]value,
    input [11:0] address,
    output reg [15:0]out
);
reg [15:0] register_array [4097:0];

always@(posedge clk) begin
    if (load)begin
        register_array[address]<=value;
    end
    out<=register_array[address];
end
endmodule