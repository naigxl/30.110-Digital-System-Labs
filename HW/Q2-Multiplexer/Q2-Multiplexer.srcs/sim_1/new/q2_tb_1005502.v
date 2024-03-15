`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/09/2024 10:48:46 PM
// Design Name: 
// Module Name: tb_multiplexer
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


module tb_multiplexer();

reg [1:0] A, B, C, D;
reg [1:0] SEL;

// Outputs
wire [1:0] X;

  // Instantiate the multiplexer module
multiplexer multiplexer_u0(
    .A(A),
    .B(B),
    .C(C),
    .D(D),
    .SEL(SEL),
    .X(X)
  );

  // Stimulus generation
  initial begin
    // Test case 1: SEL = 00
    A = 2'b00; B = 2'b01; C = 2'b10; D = 2'b11; SEL = 2'b00;
    #10;
    
    // Test case 2: SEL = 01
    A = 2'b00; B = 2'b01; C = 2'b10; D = 2'b11; SEL = 2'b01;
    #10;
    
    // Test case 3: SEL = 10
    A = 2'b00; B = 2'b01; C = 2'b10; D = 2'b11; SEL = 2'b10;
    #10;
    
    // Test case 4: SEL = 11
    A = 2'b00; B = 2'b01; C = 2'b10; D = 2'b11; SEL = 2'b11;
    #10;
    
    // Add more test cases as needed

    $finish;
  end

endmodule
