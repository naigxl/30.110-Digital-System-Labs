`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/11/2024 08:05:33 PM
// Design Name: 
// Module Name: nibbleadd
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


module nibbleadd(
    input [7:0]A,
    input [7:0]B,
    input ctrl,
    output reg [4:0]q
);
    
    always @(*)
    begin
        if(ctrl == 0)
           q = A[3:0] + B[3:0];
        else if(ctrl == 1)
           q = A[7:4] + B[7:4];
    end
endmodule
