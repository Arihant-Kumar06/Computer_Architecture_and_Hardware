module fulladder(
    input a, b, c,
    output sum, carry
);
    wire tempsum, tempcarry1, tempcarry2;

    assign tempsum = a ^ b;             
    assign tempcarry1 = a & b;       
    assign sum = tempsum ^ c;            
    assign tempcarry2 = tempsum & c;     
    assign carry = tempcarry1 | tempcarry2;
endmodule