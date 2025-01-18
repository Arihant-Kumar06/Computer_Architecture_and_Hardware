module adder_tb;
wire [15:0]t_sum;
wire t_cout;
reg [15:0]t_x,t_y;
reg t_cin;
adder my_adder(.x(t_x), .y(t_y), .cin(t_cin), .sum(t_sum), .cout(t_cout));
initial
begin
    $monitor("t_x=%b, t_y=%b, t_cin=%b, t_sum=%b, t_cout=%b", t_x, t_y, t_cin, t_sum, t_cout);
    t_x=16'b0000000000000000;
    t_y=16'b0101010101010101;
    t_cin=0;
    #10;
    t_x=16'b0000000000000000;
    t_y=16'b0101010101010101;
    t_cin=1;
    #10;
    t_x=16'b1001000100010010;
    t_y=16'b1111111111111111;
    t_cin=0;
    #10;
    t_x=16'b1001000100010010;
    t_y=16'b1111111111111111;
    t_cin=1;
    #10;

    $finish;
    
end
endmodule