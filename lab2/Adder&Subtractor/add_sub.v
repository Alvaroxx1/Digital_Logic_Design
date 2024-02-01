`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/17/2023 12:46:04 PM
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

module add_sub(x, y, cin, s, cout);
    input [3:0]x,y;
    input cin;
    output [3:0]s;
    output cout;
    wire c0,c1,c2;
    wire [3:0] w;
    
    assign w[0] = y[0] ^ cin;
    assign w[1] = y[1] ^ cin;
    assign w[2] = y[2] ^ cin;
    assign w[3] = y[3] ^ cin;
    
    full_adder f1(x[0],w[0],cin,s[0],c0);
    full_adder f2(x[1],w[1],c0,s[1],c1);
    full_adder f3(x[2],w[2],c1,s[2],c2);
    full_adder f4(x[3],w[3],c2,s[3],cout);
    
endmodule    


module full_adder(x,y,cin,s,cout);
    input cin,x,y;
    output s,cout;
    
    wire [2:0] w;
    
    half_adder h1(x,y,w[1],w[0]);
    half_adder h2(w[1],cin,s,w[2]);
    
    assign cout = w[0] | w[2];
endmodule

module half_adder(x,y,s,cout);
input x,y;
output s,cout;

assign s = x ^ y;
assign cout = x & y;

endmodule
