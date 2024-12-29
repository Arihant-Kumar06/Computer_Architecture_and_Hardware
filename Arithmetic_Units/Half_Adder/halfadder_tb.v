module halfadder_tb;
wire sum,carry;
reg a,b;
halfadder my_adder(.a(t_a), .b(t_b), .sum(t_sum), .carry(t_carry));
initial begin
    $monitor("t_a=%b, t_b=%b, t_sum=%b, t_carry=%b", t_a, t_b, t_sum, t_carry)

    t_a=1'b0;
    t_b=1'b0;
    #10
    t_a=1'b0;
    t_b=1'b1;
    #10
    t_a=1'b1;
    t_b=1'b0;
    #10
    t_a=1'b1;
    t_b=1'b1;
end 
endmodule