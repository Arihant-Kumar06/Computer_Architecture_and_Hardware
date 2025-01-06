module mux4way_tb;
wire [15:0]t_out;
reg [15:0]t_a,t_b,t_c,t_d;
reg [0:1]t_sel;
mux4way my_gate(.a(t_a), .b(t_b), .c(t_c), .d(t_d), .sel(t_sel), .out(t_out));
initial begin
    $monitor("t_a=%b, t_b=%b, t_c=%b, t_d=%b, t_sel=%b, t_out=%b", t_a, t_b, t_c, t_d, t_sel, t_out);
    t_a=16'b0000000000000000;
    t_b=16'b0101010101010101;
    t_c=16'b1010101010101010;
    t_d=16'b1111111111111111;
    t_sel=00;
    #10
    t_a=16'b0000000000000000;
    t_b=16'b0101010101010101;
    t_c=16'b1010101010101010;
    t_d=16'b1111111111111111;
    t_sel=01;
    #10
    t_a=16'b0000000000000000;
    t_b=16'b0101010101010101;
    t_c=16'b1010101010101010;
    t_d=16'b1111111111111111;
    t_sel=10;
    #10
    t_a=16'b0000000000000000;
    t_b=16'b0101010101010101;
    t_c=16'b1010101010101010;
    t_d=16'b1111111111111111;
    t_sel=11;
    
end
endmodule