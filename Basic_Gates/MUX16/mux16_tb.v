module mux16_tb;
wire [15:0]t_out;
reg [15:0]t_x,t_y;
reg t_sel;
mux16 my_gate(.x(t_x), .y(t_y), .sel(t_sel), .out(t_out));
initial begin
    $monitor("t_x=%b, t_y=%b, t_sel=%b t_out=%b", t_x, t_y, t_sel, t_out);
    t_x=16'b0000000000000000;
    t_y=16'b0101010101010101;
    t_sel=0;
    #10
    t_x=16'b0000000000000000;
    t_y=16'b0101010101010101;
    t_sel=1;
    #10
    t_x=16'b1001000100010010;
    t_y=16'b1111111111111111;
    t_sel=0;
    #10
    t_x=16'b1001000100010010;
    t_y=16'b1111111111111111;
    t_sel=1;

end
endmodule