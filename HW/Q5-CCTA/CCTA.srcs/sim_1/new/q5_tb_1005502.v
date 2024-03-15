`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/11/2024 08:58:25 PM
// Design Name: 
// Module Name: CCTA_tb
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


module CCTA_tb;

    // Inputs
    reg [3:0] A, B, C;
    reg rst, ctrl;
    
    // Outputs
    wire [4:0] q;
    
    // Instantiate the CCTA module
    CCTA uut(
        .A(A),
        .B(B),
        .C(C),
        .rst(rst),
        .ctrl(ctrl),
        .q(q)
    );
    
    // Clock generation (if synchronous design)
    reg clk = 0;
    always #5 clk = ~clk;

    // Test stimulus
    initial begin
        // Test case 1: ctrl = 0, sum of A and B
        A = 4'b1101;
        B = 4'b0011;
        C = 4'b0000;
        rst = 0;
        ctrl = 0;
        #10;
        if (q !== 5'b10000) $display("Test case 1 failed! q = %b", q);
        else $display("Test case 1 passed.");

        // Test case 2: ctrl = 1, difference of A and C
        A = 4'b1101;
        B = 4'b0011;
        C = 4'b0100;
        rst = 0;
        ctrl = 1;
        #10;
        if (q !== 5'b10001) $display("Test case 2 failed! q = %b", q);
        else $display("Test case 2 passed.");

        // Additional test cases can be added as needed

        $stop;
    end

endmodule
