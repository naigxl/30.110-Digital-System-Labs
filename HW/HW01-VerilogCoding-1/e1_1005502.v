`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/25/2024 06:45:35 PM
// Design Name: 
// Module Name: nor_rs
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


module nor_rs(q,qb,r,s);
    output q,qb;
    input r,s;
    
nor #1 g1(q,r,qb);
nor #1 g2(qb,q,s);

endmodule
