`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2023 12:03:36 PM
// Design Name: 
// Module Name: fourbit_adder
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


module fourbit_adder(x,y,cin,s,cout);
    input [3:0]x,y;
    input cin;
    output [3:0]s;
    output cout;
    wire [3:1]c;
    //assign cin=0;
    
    full_adder f1(x[0],y[0],cin,s[0],c[1]);
    full_adder f2(x[1],y[1],c[1],s[1],c[2]);
    full_adder f3(x[2],y[2],c[2],s[2],c[3]);
    full_adder f4(x[3],y[3],c[3],s[3],cout);
    
endmodule
