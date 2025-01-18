module incrementer_tb;
reg [15:0]t_x;
wire [15:0]t_sum;
wire t_cout;
incrementer my_incrementer(.x(t_x), .sum(t_sum), .cout(t_cout));
initial begin
    $monitor("t_x=%b, t_sum=%b, t_cout=%b", t_x, t_sum, t_cout);
    t_x=16'b0000000000000000;
    #10;
    t_x=16'b0000000000000001;
    #10;
    t_x=16'b0000000000000010;
    #10;
    t_x=16'b1111111111111111;
    #10;

    $finish;
end
endmodule