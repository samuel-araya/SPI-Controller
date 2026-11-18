`timescale 1ns/1ps
`include "spi_controller.v"

module spi_tb;


spi_controller dut(
   
);

initial
      begin
      $dumpfile("test_spi.vcd");
      $dumpvars;
   end

endmodule 



