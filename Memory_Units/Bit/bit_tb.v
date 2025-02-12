module bit_tb;
reg t_val,t_load,t_clk;
wire t_out;
bit my_bit(.val(t_val), .load(t_load), .clk(t_clk), .out(t_out));
initial begin
    t_clk=0;
    forever #5 t_clk=~t_clk;  
    end
initial begin 
    $monitor("t_val=%b, t_load=%b, t_clk=%b, t_out=%b", t_val, t_load, t_clk, t_out);
    t_val=1'b1;
    t_load=1'b0;
    #10;
    t_val=1'b1;
    t_load=1'b1;
    #10;
    t_val=1'b0;
    t_load=1'b0;
    #10;
    t_val=1'b0;
    t_load=1'b1;
    #10;

    $finish;
end 
endmodule

