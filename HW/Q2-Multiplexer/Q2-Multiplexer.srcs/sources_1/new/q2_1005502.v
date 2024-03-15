`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/09/2024 10:46:21 PM
// Design Name: 
// Module Name: multiplexer
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


module multiplexer(
    input [1:0]A,
    input [1:0]B,
    input [1:0]C,
    input [1:0]D,
    input [1:0]SEL,
    output [1:0]X
);

  // Define internal signals
  reg [1:0] mux_output;

  // Multiplexer logic using case statements
  always @* begin
    case (SEL)
      2'b00: mux_output = A;
      2'b01: mux_output = B;
      2'b10: mux_output = C;
      2'b11: mux_output = D;
      default: mux_output = 2'b00; // Default case for safety
    endcase
  end

  // Output assignment
  assign X = mux_output;
endmodule
