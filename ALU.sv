module halfadder (
    output s, 
    output c, 
    input a, 
    input b
);
    xor (s, a, b);  
    and (c, a, b);  
endmodule

module fulladder (
    input c1, 
    input x, 
    input y, 
    output sout, 
    output cout
);
    wire s1, c2, c3;
    halfadder H1 (s1, c2, x, y);  
    halfadder H2 (sout, c3, c1, s1);  
    or (cout, c3, c2);  
endmodule

module fulladder_fourbit (
    
    input M, 
    input A0, A1, A2, A3, 
    input B0, B1, B2, B3, 
    output cout, 
    output S0, S1, S2, S3
);
    wire c0, c1, c2;
    wire X0, X1, X2, X3;

    xor (X0, M, B0);  
    xor (X1, M, B1);
    xor (X2, M, B2);
    xor (X3, M, B3);

    fulladder H1 (M, A0, X0, S0, c0);
    fulladder H2 (c0, A1, X1, S1, c1);
    fulladder H3 (c1, A2, X2, S2, c2);
    fulladder H4 (c2, A3, X3, S3, cout);
endmodule

module alu (
    input logic [3:0] a,    
    input logic [3:0] b,    
    input logic [1:0] alu_op,
    output logic [3:0] alu_out  
);

    wire [3:0] add_sub, shift, and_op;
    wire [3:0] mux1_out;
    wire M;
    wire cout;
    wire [3:0] S;

    assign M = alu_op[0];

    fulladder_fourbit adder_subtractor (       
        .M(M),           
        .A0(a[0]), .A1(a[1]), .A2(a[2]), .A3(a[3]),
        .B0(b[0]), .B1(b[1]), .B2(b[2]), .B3(b[3]),
        .cout(cout), 
        .S0(S[0]), .S1(S[1]), .S2(S[2]), .S3(S[3])
    );
    
    assign add_sub = S;  

    assign shift = a << b;  
    
    assign and_op = a & b;  
    
    assign mux1_out = (alu_op[0] == 1'b0) ? add_sub : shift;
    assign alu_out = (alu_op[1] == 1'b0) ? mux1_out : and_op;

endmodule
