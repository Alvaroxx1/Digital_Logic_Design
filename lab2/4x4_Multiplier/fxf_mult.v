`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/27/2023 05:26:28 PM
// Design Name: 
// Module Name: fxf_mult
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


module fxf_mult(x,y,p);
    input [3:0]x,y;
    output[7:0] p;
    
    wire [3:0] s1,s2,s3;
    wire [3:0]t0,t1,t2,t3,t4,t5;
    wire c1,c2,c3;
    
    //First 
    assign t0[0] = x[1]&y[0];
    assign t0[1] = x[2]&y[0];
    assign t0[2] = x[3]&y[0];
    assign t0[3] = 1'b0;
    
    assign t1[0] = x[0]&y[1];
    assign t1[1] = x[1]&y[1];
    assign t1[2] = x[2]&y[1];
    assign t1[3] = x[3]&y[1];
    fourbit_fa fa1(t0,t1,0,c1,s1);
    
    //Second
    
    assign t2[0] = s1[1];
    assign t2[1] = s1[2];
    assign t2[2] = s1[3];
    assign t2[3] = c1;
    
    assign t3[0] = x[0]&y[2];
    assign t3[1] = x[1]&y[2];
    assign t3[2] = x[2]&y[2];
    assign t3[3] = x[3]&y[2];
    fourbit_fa fa2(t2, t3, 0, c2, s2);
    //Third
    
    assign t4[0] = s2[1];
    assign t4[1] = s2[2];
    assign t4[2] = s2[3];
    assign t4[3] = c2;
    
    assign t5[0] = x[0]&y[3];
    assign t5[1] = x[1]&y[3];
    assign t5[2] = x[2]&y[3];
    assign t5[3] = x[3]&y[3];
    fourbit_fa fa3(t4, t5, 0, c3, s3);
    
    assign p[0] = x[0] & y[0];
    assign p[1] = s1[0];
    assign p[2] = s2[0];
    assign p[3] = s3[0];
    assign p[4] = s3[1];
    assign p[5] = s3[2];
    assign p[6] = s3[3];
    assign p[7] = c3;
endmodule
