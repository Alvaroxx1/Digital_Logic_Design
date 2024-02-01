`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/17/2023 01:45:02 PM
// Design Name: 
// Module Name: add_sub_s
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


module add_sub_s();
    reg [3:0]x,y;
    reg cin;
    wire [3:0]s;
    
    add_sub uut(x,y,cin,s,cout);
    integer i,j,k;
    initial begin
        for(i=0; i<8; i = i + 1)begin
            for(j=0; j<8; j = j+1)begin
                for(k=0; k<2; k = k+1)begin
                x = i;
                y = j;
                cin = k;
                #10;                
                end
            end
        end
        //$finish;
    end       
endmodule
