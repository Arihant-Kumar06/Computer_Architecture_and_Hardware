//Simple Implementation Using 512 Registers of width 8-bit 

  module ram512(
     input wire load,clk,
     input wire [15:0] value,
     input wire [8:0] address,
     output reg [15:0]out
    );
    reg [15:0] register_array[511:0];
    always @(posedge clk)begin
     if(load)begin
         register_array[address]<=value;
     end
     out<=register_array[address];
end
endmodule 

/*Implementation Using 8 RAM64.
This implementation requires 8 RAM64, a multiplexer to show the correct output and a decoder to decide which RAM64 module to use.
*/

/*
module ram64(
    input wire load,clk,
    input wire [5:0]address,
    input wire [7:0]value,
    output reg [7:0]out
);
//declaring 64 registers each 8 bits width 
reg [7:0]register_array [63:0]; 

always@(posedge clk) begin
    if (load)begin
        register_array[address]<=value;
    end
    out<=register_array[address];
end
endmodule

module mux8way(
    input [7:0]a,b,c,d,e,f,g,h,
    input [2:0]sel,
    output reg [7:0]out
);
always @(*) begin
   case (sel)
    3'b000:out=a;
    3'b001:out=b;
    3'b010:out=c;
    3'b011:out=d;
    3'b100:out=e;
    3'b101:out=f;
    3'b110:out=g;
    3'b111:out=h;   
   endcase
end
endmodule

module Decoder(
    input [2:0] in,
    output reg [7:0] out
);
    always @(*) begin
        out = 8'b00000000;
        case (in)
            3'b000: out[0] = 1;
            3'b001: out[1] = 1;
            3'b010: out[2] = 1;
            3'b011: out[3] = 1;
            3'b100: out[4] = 1;
            3'b101: out[5] = 1;
            3'b110: out[6] = 1;
            3'b111: out[7] = 1;
        endcase
    end
endmodule

module ram512(
    input  load, clk,
    input  [7:0] value,
    input  [8:0] address,
    output [7:0] out
); 
wire [7:0] ram_out [7:0];
wire [7:0] enable;

Decoder decoder(
    .in(address[8:6]),
    .out(enable)
);
genvar i;
generate
    for (i=0;i<8;i=i+1)begin 
        ram64 ram(.value(value),
                  .address(address[5:0]),
                  .load(enable[i]&load),
                  .clk(clk),
                  .out(ram_out[i]));
    end
    
endgenerate
mux8way my_mux(
        .a(ram_out[0]),.b(ram_out[1]),.c(ram_out[2]),.d(ram_out[3]),.e(ram_out[4]),.f(ram_out[5]),.g(ram_out[6]),.h(ram_out[7]),
        .sel(address[8:6]),
        .out(out)
    );
endmodule
*/