module nandgate(x,y,out);
input x,y;
output out;
assign out=!(x&y);
endmodule