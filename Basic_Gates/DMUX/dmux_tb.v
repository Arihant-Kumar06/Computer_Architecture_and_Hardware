module dmux_tb;
reg t_in,t_z;
wire t_x,t_y;
dmux my_dmux(.in(t_in),.z(t_z),.x(t_x),.y(t_y));
initial
begin
$monitor(t_in,t_z,t_x,t_y);
t_in=1'b1;
t_z=1'b0;
#10
t_in=1'b1;
t_z=1'b1;
end
endmodule