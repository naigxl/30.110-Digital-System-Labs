`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/09/2024 09:05:33 PM
// Design Name: 
// Module Name: decade_counter_tb
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


module decade_counter_tb();

reg clk;
reg rst;
wire [3:0] count;
wire ten;

decade_counter decade_counter_u0(
    .clk(clk),
    .rst(rst),
    .count(count),
    .ten(ten)
);

    // Clock generation
    initial begin
        clk = 0;
        forever #10 clk = ~clk; // Toggle the clock every 10 time units
    end

    // Test scenario
    initial begin
        // Initial conditions
        rst = 1; // Assert reset
        #20 rst = 0; // De-assert reset after 20 time units

        // Wait for a few cycles
        

        // Test for 1 complete count cycle
        rst = 0; // Release reset
        #300; // Wait for 20 clock cycles

        // Display the results
        $display("count = %b, ten = %b", count, ten);

        // Finish the simulation
        $finish;
    end
    
endmodule
