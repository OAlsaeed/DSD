`timescale 1ns / 1ps

`timescale 1ns / 1ps

module tb_fulladder;

logic c1, x, y, sout, cout;

// Assuming and4gate is defined elsewhere
fulladder dut( c1, x, y, sout, cout );

// Testbench logic
initial begin
  // Display header
  $display("Time\t x\t y\t c\t s\t cout");
  $display("----------------------------");
  
  // Apply test vectors with $display statements
  x = 0; y = 0; c1 = 0; #10;
  $display("%0t\t %b\t %b\t %b\t %b\t %b", $time, x, y, c1, sout, cout);
  x = 0; y = 0; c1 = 1; #10;
  $display("%0t\t %b\t %b\t %b\t %b\t %b", $time, x, y, c1, sout, cout);
    x = 0; y = 1; c1 = 0; #10;
  $display("%0t\t %b\t %b\t %b\t %b\t %b", $time, x, y, c1, sout, cout);
    x = 0; y = 1; c1 = 1; #10;
  $display("%0t\t %b\t %b\t %b\t %b\t %b", $time, x, y, c1, sout, cout);
    x = 1; y = 0; c1 = 0; #10;
  $display("%0t\t %b\t %b\t %b\t %b\t %b", $time, x, y, c1, sout, cout);
    x = 1; y = 0; c1 = 1; #10;
  $display("%0t\t %b\t %b\t %b\t %b\t %b", $time, x, y, c1, sout, cout);
    x = 1; y = 1; c1 = 0; #10;
  $display("%0t\t %b\t %b\t %b\t %b\t %b", $time, x, y, c1, sout, cout);
    x = 1; y = 1; c1 = 1; #10;
  $display("%0t\t %b\t %b\t %b\t %b\t %b", $time, x, y, c1, sout, cout);
 

  // End simulation
  $finish;
end

endmodule

