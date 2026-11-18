`timescale 1ns/1ps
`include "spi_controller.v"

module spi_tb;

    // Inputs to DUT (driven by testbench)
    reg CLK2;
    reg MISO2;

    // Outputs from DUT (monitored by testbench)
    wire MOSI2;
    wire SS2;
    wire SCLK2;

    // Instantiate the Device Under Test (DUT)
    spi_controller dut (
        .MOSI(MOSI2),
        .MISO(MISO2),
        .SS(SS2),
        .SCLK(SCLK2),
        .CLK(CLK2)
    );

    // Clock generation (50 MHz -> 20ns period)
    initial begin
        CLK2 = 1'b0;
        forever #10 CLK2 = ~CLK2;
    end

    // Stimulus and waveform dumping
    initial begin
        $dumpfile("test_spi.vcd");
        $dumpvars(0, spi_tb);

        // Initialize inputs
        MISO2 = 1'b0;

        // Add your test stimulus here
        #200;

        // End simulation
        $finish;
    end

endmodule



