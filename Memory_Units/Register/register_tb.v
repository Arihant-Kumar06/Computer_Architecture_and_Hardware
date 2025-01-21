module register_tb;
reg [15:0]t_val;
reg t_load,t_clk;
wire [15:0]t_out;
register my_register(.val(t_val), .load(t_load), .clk(t_clk), .out(t_out));
initial begin
    t_clk=0;
    forever #5 t_clk=~t_clk;  
    end
initial begin 
    $monitor("t_val=%b, t_load=%b, t_clk=%b, t_out=%b", t_val, t_load, t_clk, t_out);
    t_val=16'b0000000000000011;
    t_load=1'b0;
    #10;
    t_val=16'b0000000000000011;
    t_load=1'b1;
    #10;
    t_val=16'b0000000000001111;
    t_load=1'b0;
    #10;
    t_val=16'b0000000000001111;
    t_load=1'b1;
    #10;

    $finish;
end 
endmodule

