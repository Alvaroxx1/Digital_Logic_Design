`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2023 04:09:08 PM
// Design Name: 
// Module Name: half_adder
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


module half_adder(x,y,s,c);
    input x,y;
    output s,c;
    
    // Behavioral Level 
    reg s,c;
    always @(x,y)begin
        assign s = x ^ y;
        assign c = x & y;
    end
    
//    //Gate Level
//    xor x1(s,x,y);
//    and a1(c,x,y);

//    // Data Flow Level
//    assign s = x ^ y;
//    assign c = x & y;
    
    
endmodule
