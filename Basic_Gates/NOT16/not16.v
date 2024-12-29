module not16gate(
  input [15:0]x,
output [15:0]out
);
//this is the code when using logical not operator(!)
// assign out[15]=!x[15];
// assign out[14]=!x[14];
// assign out[13]=!x[13];
// assign out[12]=!x[12];
// assign out[11]=!x[11];
// assign out[10]=!x[10];
// assign out[9]=!x[9];
// assign out[8]=!x[8];
// assign out[7]=!x[7];
// assign out[6]=!x[6];
// assign out[5]=!x[5];
// assign out[4]=!x[4];
// assign out[3]=!x[3];
// assign out[2]=!x[2];
// assign out[1]=!x[1];
// assign out[0]=!x[0];


//This is the code when using the bitwise not operator (~)
assign out=~x;
endmodule