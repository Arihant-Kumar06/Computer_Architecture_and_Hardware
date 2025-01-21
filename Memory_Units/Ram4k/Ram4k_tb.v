module ram4k_tb;
reg [15:0]t_value;
reg t_load,t_clk;
reg [11:0]t_address;
wire [15:0]t_out;
ram4k my_ram4k(.value(t_value), .load(t_load), .clk(t_clk), .address(t_address), .out(t_out));
initial begin
    t_clk=0;
    forever #5 t_clk=~t_clk;  
    end
initial begin 
    $monitor("t_value=%b, t_load=%b, t_clk=%b, t_address=%b, t_out=%b", t_value, t_load, t_clk, t_address, t_out);
    t_value=16'b0000000000000011;
    t_load=1'b1;
    t_address=12'b001010000011; // Writing into register 643 .
    #10;
    t_value=16'b0000000000001111;
    t_address=12'b101001101101; //Writing into register 2669.
    #10;
    
    t_load=1'b0;
    t_address=12'b001010000011; //Reading from register 643.
    #10;
    t_address=12'b101001101101; //Reading form register 2669.
    #10;
    
    $finish;
end 
endmodule

