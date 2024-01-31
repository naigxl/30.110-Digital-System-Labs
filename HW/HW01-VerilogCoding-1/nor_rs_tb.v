`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/25/2024 06:47:54 PM
// Design Name: 
// Module Name: nor_rs_tb
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


module nor_rs_tb();
    wire q,qb;
    reg r,s;
    
nor_rs dut(q,qb,r,s);

initial begin
    $monitor("s:%b,r:%b,q:%b,qb:%b",s,r,q,qb);
end

initial begin
    s=0;r=1;
    #10 s=0;r=0;
    #10 s=1;r=0;
    #10 s=0;r=0;
    #10 $finish;
end

endmodule
