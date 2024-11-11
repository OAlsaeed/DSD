`timescale 1ns / 1ps


module tb_halfadder;

logic a, b, c, s;

// Assuming and4gate is defined elsewhere
halfadder dut(s,c,a,b);

// Testbench logic
initial begin
  // Display header
  $display("Time\t a\t b\t c\t s\t ");
  $display("----------------------------");
  
  // Apply test vectors with $display statements
  a = 0; b = 0;  #10;
  $display("%0t\t %b\t %b\t %b\t %b\t", $time, a, b, c, s);

  a = 0; b = 1;  #10;
  $display("%0t\t %b\t %b\t %b\t %b\t", $time, a, b, c, s);

  a = 1; b = 0; #10;
  $display("%0t\t %b\t %b\t %b\t %b\t", $time, a, b, c, s);

  a = 1; b = 1;  #10;
  $display("%0t\t %b\t %b\t %b\t %b\t", $time, a, b, c, s);


  // End simulation
  $finish;
end

endmodule

