module and16gate_tb;
wire [15:0]t_out;
reg [15:0]t_x,t_y;
and16gate my_gate(.x(t_x), .y(t_y), .out(t_out));
initial begin
    $monitor("t_x=%b, t_y=%b, t_out=%b", t_x, t_y, t_out);
    
    t_x=16'b0000000000000000;
    t_y=16'b0000000000000000;
    #10
    t_x=16'b0000000000000001;
    t_y=16'b0000000000000001;
    #10
    t_x=16'b0001001001100011;
    t_y=16'b0010010001100010;
    #10
    t_x=16'b0000000000000001;
    t_y=16'b0000000000000000;
end
endmodule