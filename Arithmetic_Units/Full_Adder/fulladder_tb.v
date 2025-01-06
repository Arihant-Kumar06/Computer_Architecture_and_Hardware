module fulladder_tb;
wire t_sum,t_carry;
reg t_a,t_b,t_c;
fulladder my_adder(.a(t_a), .b(t_b), .c(t_c), .sum(t_sum), .carry(t_carry));
initial begin
    $monitor("t_a=%b, t_b=%b, t_c=%b, t_sum=%b, t_carry=%b", t_a, t_b, t_c, t_sum, t_carry);

    t_a=1'b0;
    t_b=1'b0;
    t_c=1'b0;
    #10
    t_a=1'b0;
    t_b=1'b0;
    t_c=1'b1;
    #10
    t_a=1'b0;
    t_b=1'b1;
    t_c=1'b0;
    #10
    t_a=1'b0;
    t_b=1'b1;
    t_c=1'b1;
end 
endmodule