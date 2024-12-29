module nandgate_tb;
wire t_out;
reg t_x,t_y;
nandgate my_gate(.x(t_x), .y(t_y), .out(t_out));
initial begin
    
    $monitor(t_x,t_y,t_out);

    t_x=1'b0;
    t_y=1'b0;
    #10
    t_x=1'b0;
    t_y=1'b1;
    #10
    t_x=1'b1;
    t_y=1'b0;
    #10
    t_x=1'b1;
    t_y=1'b1;
end
endmodule