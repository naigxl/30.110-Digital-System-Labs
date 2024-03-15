`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/11/2024 06:19:17 PM
// Design Name: 
// Module Name: demultiplexer
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


module demultiplexer(
    input [1:0]A,
    input [1:0]SEL,
    output reg [1:0]W,
    output reg [1:0]X,
    output reg [1:0]Y,
    output reg [1:0]Z
    );
    
always @(SEL or A) begin
  case (SEL)
    2'b00: begin
      W <= (SEL == 2'b00) ? A[1] : 2'b00;
      X <= 2'b00;
      Y <= 2'b00;
      Z <= 2'b00;
    end
    2'b01: begin
      X <= (SEL == 2'b01) ? A[1] : 2'b00;
      W <= 2'b00;
      Y <= 2'b00;
      Z <= 2'b00;
    end
    2'b10: begin
      Y <= (SEL == 2'b10) ? A[1] : 2'b00;
      W <= 2'b00;
      X <= 2'b00;
      Z <= 2'b00;
    end
    2'b11: begin
      Z <= (SEL == 2'b11) ? A[1] : 2'b00;
      W <= 2'b00;
      X <= 2'b00;
      Y <= 2'b00;
    end
    default: begin
      // Default case, should not happen
      W <= 2'b00;
      X <= 2'b00;
      Y <= 2'b00;
      Z <= 2'b00;
    end
  endcase
end

endmodule
