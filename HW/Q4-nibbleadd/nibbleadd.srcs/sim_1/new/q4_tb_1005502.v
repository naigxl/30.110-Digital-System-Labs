`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/11/2024 08:23:49 PM
// Design Name: 
// Module Name: nibbleadd_tb
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


module nibbleadd_tb;

    // Inputs
    reg [7:0] A, B;
    reg ctrl;
    
    // Outputs
    wire [4:0] q;
    
    // Instantiate the nibbleadd module
    nibbleadd uut(
        .A(A),
        .B(B),
        .ctrl(ctrl),
        .q(q)
);
    

    // Test stimulus
    initial begin
        // Test case 1: ctrl = 0, sum of lowest 4 bits
        A = 8'b00101100;
        B = 8'b00011010;
        ctrl = 0;
        #10;
        if (q !== 8'b01000) $display("Test case 1 failed! q = %b", q);
        else $display("Test case 1 passed.");

        // Test case 2: ctrl = 1, sum of upper 4 bits
        A = 8'b11010101;
        B = 8'b10101010;
        ctrl = 1;
        #10;
        if (q !== 8'b10111) $display("Test case 2 failed! q = %b", q);
        else $display("Test case 2 passed.");

        // Add more test cases as needed

        $stop;
    end
endmodule
