`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/11/2024 06:24:40 PM
// Design Name: 
// Module Name: demultiplexer_tb
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


module demultiplexer_tb;
  wire W, X, Y, Z;
  reg [1:0] A;
  reg [1:0] SEL;

  // Instantiate the demux module
  demultiplexer uut(
    .A(A),
    .SEL(SEL),
    .W(W),
    .X(X),
    .Y(Y),
    .Z(Z)
  );

  initial begin
    $dumpfile("demultiplexer.vcd");
    $dumpvars(0,demultiplexer_tb);
  // Test scenario
  end
  initial begin
    // Initialize inputs
    A = 2'b00;
    SEL = 2'b00;

    // Apply stimulus
    #10 A = 2'b01; SEL = 2'b01;
    #10 A = 2'b10; SEL = 2'b10;
    #10 A = 2'b11; SEL = 2'b11;
    #10 A = 2'b01; SEL = 2'b00;

    // Add more test cases as needed

    // End simulation
    #10 $finish;
  end

endmodule
