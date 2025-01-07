module dmux4way_tb;
reg [15:0]t_in;
reg [1:0]t_z;
wire [15:0]t_out1,t_out2,t_out3,t_out4;
dmux4way my_dmux(.in(t_in),.z(t_z),.out1(t_out1),.out2(t_out2),.out3(t_out3),.out4(t_out4));
initial
begin
$monitor("t_in=%b, t_z=%b, t_out1=%b, t_out2=%b, t_out3=%b, t_out4=%b ", t_in, t_z, t_out1, t_out2, t_out3, t_out4);
t_in=16'b1111000011110000;
t_z=2'b00;
#10;
t_in=16'b1111000011110000;
t_z=2'b01;
#10;
t_in=16'b1111000011110000;
t_z=2'b10;
#10;
t_in=16'b1111000011110000;
t_z=2'b11;
end
endmodule