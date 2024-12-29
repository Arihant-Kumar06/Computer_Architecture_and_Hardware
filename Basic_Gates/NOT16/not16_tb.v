module not16gate_tb;
wire [15:0]t_out;
reg [15:0]t_x;
not16gate my_gate(.x(t_x), .out(t_out));
initial begin
    $monitor("t_x=%b,  t_out=%b", t_x, t_out);
    
    t_x=16'b0000000000000000;
   
    #10
    t_x=16'b0000000000000001;
   
    #10
    t_x=16'b0001001001100011;
    
    #10
    t_x=16'b1111111111111110;
    
end
endmodule