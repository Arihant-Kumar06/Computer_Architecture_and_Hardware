module alu_tb;
reg [15:0]t_a,t_b;
reg t_zx,t_zy,t_nx,t_ny,t_no;
reg [1:0]t_f;
wire [15:0]t_out;
wire t_zr,t_ng;
alu my_alu(.a(t_a), 
            .b(t_b), 
            .zx(t_zx), 
            .zy(t_zy), 
            .nx(t_nx), 
            .ny(t_ny), 
            .f(t_f), 
            .no(t_no), 
            .out(t_out),
            .zr(t_zr),
            .ng(t_ng));
initial begin
    $monitor("t_a=%b, t_b=%b, t_zx=%b, t_zy=%b, t_nx=%b, t_ny=%b, t_f=%b, t_no=%b, t_out=%b, t_zr=%b, t_ng=%b",t_a, t_b, t_zx, t_zy, t_nx, t_ny, t_f, t_no, t_out, t_zr, t_ng);
    t_a=16'b0000000000000001;
    t_b=16'b0000000000000001;
    t_zx=1'b0;
    t_zy=1'b0;
    t_nx=1'b0;
    t_ny=1'b0;
    t_f=2'b00;
    t_no=1'b0;
    #10;
    t_a=16'b0000000000000001;
    t_b=16'b0000000000000001;
    t_zx=1'b1;
    t_zy=1'b0;
    t_nx=1'b0;
    t_ny=1'b0;
    t_f=2'b00;
    t_no=1'b0;
    #10;
    t_a=16'b0000000000000001;
    t_b=16'b0000000000000001;
    t_zx=1'b0;
    t_zy=1'b1;
    t_nx=1'b0;
    t_ny=1'b0;
    t_f=2'b00;
    t_no=1'b0;
    #10;
    t_a=16'b0000000000000001;
    t_b=16'b0000000000000001;
    t_zx=1'b0;
    t_zy=1'b0;
    t_nx=1'b0;
    t_ny=1'b0;
    t_f=2'b00;
    t_no=1'b0;
    #10;
    t_a=16'b0000000000000001;
    t_b=16'b0000000000000001;
    t_zx=1'b0;
    t_zy=1'b0;
    t_nx=1'b0;
    t_ny=1'b0;
    t_f=2'b01;
    t_no=1'b0;
    #10;
    t_a=16'b0000000000000001;
    t_b=16'b0000000000000001;
    t_zx=1'b0;
    t_zy=1'b0;
    t_nx=1'b1;
    t_ny=1'b0;
    t_f=2'b11;
    t_no=1'b0;
    #10;

    $finish;

end
endmodule
