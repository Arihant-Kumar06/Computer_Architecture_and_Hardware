module ram8(
    input wire [15:0]val,
    input wire load,clk,
    input wire [2:0]address,
    output reg [15:0] out
);
reg [15:0] register_array [7:0]; /*This line defines a register array containing 8 registers each of width 8 bits.
                                First[7:0] specifes the witdth of each register and the second [7:0] specifies the number of such registers.*/
always @(posedge clk) begin 
    if (load)begin
    register_array[address] <= val;
    end
    out <= register_array[address];
end
endmodule