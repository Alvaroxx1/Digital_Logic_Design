`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2023 05:14:38 PM
// Design Name: 
// Module Name: full_adder
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


module full_adder(x,y,cin,s,cout);
    input x,y,cin;
    output s,cout;
//    wire s1,c1,c2,c3;

//    // Behavioral Level
//    //
//    reg s,cout;
//    reg s1,c1,c2,c3;
//    always @ (x,y,cin)begin
//        s1 = x ^ y; 
//        c1 = x & y;
//        c2 = x & cin;
//        c3 = y & cin;
//        s = s1 ^ cin;
//        cout = c1 ^ c2 ^ c3;
//    end

    //Gate Level
    xor(s1,x,y);
    xor(s,s1,cin);
    and(c1,x,y);
    and(c2,x,cin);
    and(c3,y,cin);
    or(cout,c1,c2,c3);
    
//    //Data Flow Level
//    assign s1 = x ^ y;
//    assign c1 = x & y;
//    assign c2 = x & cin;
//    assign c3 = y & cin;
//    assign s = s1 ^ cin;
//    assign cout = c1 ^ c2 ^ c3;
    
endmodule
