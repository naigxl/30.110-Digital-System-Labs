`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/09/2024 08:55:21 PM
// Design Name: 
// Module Name: decade_counter
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


module decade_counter(
    input clk,
    input rst,
    output reg [3:0] count,
    output reg ten
);

always @(posedge clk) begin
    if (rst) begin
        // Reset the counter if the reset signal is asserted
        count <= 4'b0000;
        ten <= 4'b0000;
    end else begin
        // Check if the count is at its maximum value
        if (count == 4'b1001) begin
            
            ten <= 4'b0001;
        end else begin
            count <= count + 4'b0001;
            ten <= 4'b0000;
    end
end

endmodule
        

