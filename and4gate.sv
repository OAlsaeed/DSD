`timescale 1ns / 1ps

module andgate (
input a,
input b,
output f
);
and(f, a, b); // AND gate
endmodule

module and4gate(
input a,
input b,
input c,
input d,
output f
);
logic w1, w2;
andgate G1( .f(w1) , .a(a) , .b(b) );
andgate G2( .f(w2) , .a(c) , .b (d) );
andgate G3( .f(f) , .a(w1) , .b (w2) );
endmodule