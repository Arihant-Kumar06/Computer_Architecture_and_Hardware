module ram8_tb;
reg [15:0]t_val;
reg t_load,t_clk;
reg [2:0]t_address;
wire [15:0]t_out;
ram8 my_ram8(.val(t_val), .load(t_load), .clk(t_clk), .address(t_address), .out(t_out));
initial begin
    t_clk=0;
    forever #5 t_clk=~t_clk;  
    end
initial begin 
    $monitor("t_val=%b, t_load=%b, t_clk=%b, t_address=%b, t_out=%b", t_val, t_load, t_clk, t_address, t_out);
    t_val=16'b0000000000000011;
    t_load=1'b1;
    t_address=3'b011; // Writing into memory adress 011.
    #10;
    t_val=16'b0000000000001111;
    t_address=3'b101; //Writing into memory address 101.
    #10;
    
    t_load=1'b0;
    t_address=3'b011; //Reading from memory address 011.
    #10;
    t_address=3'b101; //Reading form memory address 101.
    #10;

    $finish;
end 
endmodule

