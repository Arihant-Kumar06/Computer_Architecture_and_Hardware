module ram16k_tb;
reg [15:0]t_value;
reg t_load,t_clk;
reg [13:0]t_address;
wire [15:0]t_out;
ram16k my_ram16k(.value(t_value), .load(t_load), .clk(t_clk), .address(t_address), .out(t_out));
initial begin
    t_clk=0;
    forever #5 t_clk=~t_clk;  
    end
initial begin 
    $monitor("t_value=%b, t_load=%b, t_clk=%b, t_address=%b, t_out=%b", t_value, t_load, t_clk, t_address, t_out);
    t_value=16'b0000000000000011;
    t_load=1'b1;
    t_address=14'b01001010000011; // Writing into register 4739 .
    #10;
    t_value=16'b0000000000001111;
    t_address=14'b10101001101101; //Writing into register 10861.
    #10;
    
    t_load=1'b0;
    t_address=14'b01001010000011; //Reading from register 4739.
    #10;
    t_address=14'b10101001101101; //Reading form register 10861.
    #10;

    $finish;
end 
endmodule

