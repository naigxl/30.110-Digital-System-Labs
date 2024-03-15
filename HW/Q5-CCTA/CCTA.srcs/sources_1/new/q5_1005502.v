`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/11/2024 08:55:25 PM
// Design Name: 
// Module Name: CCTA
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


module CCTA(
    input [3:0]A,
    input [3:0]B,
    input [3:0]C,
    input rst,
    input ctrl,
    output reg [4:0]q
    );
    
    always @(*) begin
        if (rst) begin
            q = 5'b00000;
        end else begin
        if (ctrl == 0)
            q = A + B;
        else if (ctrl == 1)
            q = A - C;
    end
end

endmodule
