module dmux_tb;
reg [15:0]t_in;
reg t_z;
wire [15:0]t_x,t_y;
dmux my_dmux(.in(t_in),.z(t_z),.x(t_x),.y(t_y));
initial
begin
$monitor("t_in=%b, t_z=%b, t_x=%b, t_y=%b ", t_in, t_z, t_x, t_y);
t_in=16'b1111000011110000;
t_z=1'b0;
#10
t_in=16'b1010101010101010;
t_z=1'b1;
#10
t_in=16'b1010101010101010;
t_z=1'b0;
end
endmodule