module spi_controller(
    output reg MOSI,
    output reg SS,
    input CLK,
    output SCLK,
    input MISO
);
 
    

    initial begin
        MOSI = 1'b0;
        SS = 1'b0;
    end

    assign SCLK = CLK;
    always @(posedge CLK) begin
        MOSI <= ~MOSI;
    end

endmodule 
