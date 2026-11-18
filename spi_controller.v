`timescale 1ns/1ps

module spi_controller(
    output MOSI,
    output SS,
    output wire SCLK,
    input MISO
);
 
    reg clk = 1'b0;
    assign SCLK = clk

    always @(*) begin
        clk = ~clk;
    end

endmodule 
