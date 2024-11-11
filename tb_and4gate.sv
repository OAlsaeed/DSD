`timescale 1ns / 1ps

module tb_and4gate;

logic a, b, c, d, f;


and4gate dut( a, b, c, d, f );


initial begin

  $display("Time\t a\t b\t c\t d\t f");
  $display("----------------------------");
  
  // Apply test vectors with $display statements
  a = 0; b = 0; c = 0; d = 0; #10;
  $display("%0t\t %b\t %b\t %b\t %b\t %b", $time, a, b, c, d, f);

  a = 0; b = 0; c = 0; d = 1; #10;
  $display("%0t\t %b\t %b\t %b\t %b\t %b", $time, a, b, c, d, f);

  a = 0; b = 0; c = 1; d = 0; #10;
  $display("%0t\t %b\t %b\t %b\t %b\t %b", $time, a, b, c, d, f);

  a = 0; b = 0; c = 1; d = 1; #10;
  $display("%0t\t %b\t %b\t %b\t %b\t %b", $time, a, b, c, d, f);

  a = 0; b = 1; c = 0; d = 0; #10;
  $display("%0t\t %b\t %b\t %b\t %b\t %b", $time, a, b, c, d, f);

  a = 0; b = 1; c = 0; d = 1; #10;
  $display("%0t\t %b\t %b\t %b\t %b\t %b", $time, a, b, c, d, f);

  a = 0; b = 1; c = 1; d = 0; #10;
  $display("%0t\t %b\t %b\t %b\t %b\t %b", $time, a, b, c, d, f);

  a = 0; b = 1; c = 1; d = 1; #10;
  $display("%0t\t %b\t %b\t %b\t %b\t %b", $time, a, b, c, d, f);

  a = 1; b = 0; c = 0; d = 0; #10;
  $display("%0t\t %b\t %b\t %b\t %b\t %b", $time, a, b, c, d, f);

  a = 1; b = 0; c = 0; d = 1; #10;
  $display("%0t\t %b\t %b\t %b\t %b\t %b", $time, a, b, c, d, f);

  a = 1; b = 0; c = 1; d = 0; #10;
  $display("%0t\t %b\t %b\t %b\t %b\t %b", $time, a, b, c, d, f);

  a = 1; b = 0; c = 1; d = 1; #10;
  $display("%0t\t %b\t %b\t %b\t %b\t %b", $time, a, b, c, d, f);

  a = 1; b = 1; c = 0; d = 0; #10;
  $display("%0t\t %b\t %b\t %b\t %b\t %b", $time, a, b, c, d, f);

  a = 1; b = 1; c = 0; d = 1; #10;
  $display("%0t\t %b\t %b\t %b\t %b\t %b", $time, a, b, c, d, f);

  a = 1; b = 1; c = 1; d = 0; #10;
  $display("%0t\t %b\t %b\t %b\t %b\t %b", $time, a, b, c, d, f);

  a = 1; b = 1; c = 1; d = 1; #10;
  $display("%0t\t %b\t %b\t %b\t %b\t %b", $time, a, b, c, d, f);

 
  $finish;
end

endmodule


