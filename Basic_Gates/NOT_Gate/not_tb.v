module notgate_tb;
wire t_out;
reg t_x;
notgate my_gate(.x(t_x), .out(t_out));
initial begin
    
    $monitor(t_x,t_out);

    t_x=1'b0;
    #10
    t_x=1'b1;
   
end
endmodule