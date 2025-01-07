module dmux8way_tb;
reg [15:0]t_in;
reg [2:0]t_z;
wire [15:0]t_out0,t_out1,t_out2,t_out3,t_out4,t_out5,t_out6,t_out7;
dmux8way my_dmux(.in(t_in),.z(t_z),.out0(t_out0),.out1(t_out1),.out2(t_out2),.out3(t_out3),.out4(t_out4),.out5(t_out5),.out6(t_out6),.out7(t_out7));
initial
begin
$monitor("t_in=%b, t_z=%b, t_out0=%b, t_out1=%b, t_out2=%b, t_out3=%b, t_out4=%b, t_out5=%b, t_out6=%b, t_out7=%b ", t_in, t_z, t_out0, t_out1, t_out2, t_out3, t_out4, t_out5, t_out6, t_out7 );
t_in=16'b1111000011110000;
t_z=3'b000;
#10;
t_in=16'b1111000011110000;
t_z=3'b001;
#10;
t_in=16'b1111000011110000;
t_z=3'b010;
#10;
t_in=16'b1111000011110000;
t_z=3'b011;
#10;
t_in=16'b1111000011110000;
t_z=3'b100;
#10;
t_in=16'b1111000011110000;
t_z=3'b101;
#10;
t_in=16'b1111000011110000;
t_z=3'b110;
#10;
t_in=16'b1111000011110000;
t_z=3'b111;
end
endmodule