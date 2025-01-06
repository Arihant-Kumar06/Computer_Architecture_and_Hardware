module or8waygate_tb;
wire t_out;
reg [15:0]t_x;
or8waygate my_gate(.x(t_x), .out(t_out));
initial begin
    $monitor("t_x=%b, t_out=%b", t_x, t_out);
    t_x=16'b0000000000000000;
    #10
    t_x=16'b0010010000100000;
    #10
    t_x=16'b0000001000000001;

end
endmodule
