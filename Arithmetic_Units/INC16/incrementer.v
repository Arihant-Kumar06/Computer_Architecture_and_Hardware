module full_adder (
    input a, b, cin,         
    output sum, cout         
);
    assign sum = a ^ b ^ cin;  
    assign cout = (a & b) | (b & cin) | (a & cin);  
endmodule

module adder(
    input [15:0]x,y,
    input cin,
    output [15:0]sum,
    output cout
);
wire carry;
full_adder fa0(x[0],y[0],cin,sum[0],carry0);
full_adder fa1(x[1],y[1],carry0,sum[1],carry1);
full_adder fa2(x[2],y[2],carry1,sum[2],carry2);
full_adder fa3(x[3],y[3],carry2,sum[3],carry3);
full_adder fa4(x[4],y[4],carry3,sum[4],carry4);
full_adder fa5(x[5],y[5],carry4,sum[5],carry5);
full_adder fa6(x[6],y[6],carry5,sum[6],carry6);
full_adder fa7(x[7],y[7],carry6,sum[7],carry7);
full_adder fa8(x[8],y[8],carry7,sum[8],carry8);
full_adder fa9(x[9],y[9],carry8,sum[9],carry9);
full_adder fa10(x[10],y[10],carry9,sum[10],carry10);
full_adder fa11(x[11],y[11],carry10,sum[11],carry11);
full_adder fa12(x[12],y[12],carry11,sum[12],carry12);
full_adder fa13(x[13],y[13],carry12,sum[13],carry13);
full_adder fa14(x[14],y[14],carry13,sum[14],carry14);
full_adder fa15(x[15],y[15],carry14,sum[15],cout);
endmodule

module incrementer(
    input [15:0]x,
    output [15:0]sum,
    output cout
);
wire [15:0]y= 16'b0000000000000001;
wire cin=1'b0;
adder my_adder(
    .x(x),
    .y(y),
    .cin(cin),
    .sum(sum),
    .cout(cout)
);
endmodule