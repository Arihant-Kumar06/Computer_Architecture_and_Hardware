module ram512_tb;
reg [15:0]t_value;
reg t_load,t_clk;
reg [8:0]t_address;
wire [15:0]t_out;
ram512 my_ram512(.value(t_value), .load(t_load), .clk(t_clk), .address(t_address), .out(t_out));
initial begin
    t_clk=0;
    forever #5 t_clk=~t_clk;  
    end
initial begin 
    $monitor("t_value=%b, t_load=%b, t_clk=%b, t_address=%b, t_out=%b", t_value, t_load, t_clk, t_address, t_out);
    t_value=16'b0000000000000011;
    t_load=1'b1;
    t_address=9'b010000011; // Writing into register 131.
    #10;
    t_value=16'b0000000000001111;
    t_address=9'b001101101; //Writing into register 109.
    #10;
    
    t_load=1'b0;
    t_address=9'b010000011; //Reading from register 131.
    #10;
    t_address=9'b001101101; //Reading form register 109.
    #10;
    
    $finish;
end 
endmodule

