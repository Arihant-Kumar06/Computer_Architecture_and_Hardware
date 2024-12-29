module mux(x,y,z,out);
input x,y,z;
output out;
    assign out=(z==1'b1)?x:y;
endmodule