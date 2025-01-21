module ram64(
    input wire load,clk,
    input wire [5:0]address,
    input wire [15:0]value,
    output reg [15:0]out
);
//declaring 64 registers each 8 bits width 
reg [15:0]register_array [63:0]; 

always@(posedge clk) begin
    if (load)begin
        register_array[address]<=value;
    end
    out<=register_array[address];
end
endmodule