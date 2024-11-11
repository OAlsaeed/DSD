`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/11/2024 03:53:19 PM
// Design Name: 
// Module Name: fulladder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
module halfadder (
    output s, 
    output c, 
    input a, 
    input b
);

    xor (s, a, b);  // XOR for sum
    and (c, a, b);  // AND for carry

endmodule

module fulladder(
input c1,
input x,
input y,
output sout,
output cout

    );
   logic s1;
   logic c2; 
   logic c3;
halfadder H1(s1,c2,x,y);
halfadder H2(sout,c3,c1,s1);
or (cout,c3,c2);

endmodule
