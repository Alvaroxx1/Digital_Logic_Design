`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2023 04:08:16 PM
// Design Name: 
// Module Name: half_adder_s
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


module half_adder_s();
    reg x,y;
    wire s,c;
    half_adder uut(.x(x), .y(y), .s(s), .c(c));
    integer i,j;
    initial begin
        for(i=0;i<2;i=i+1)begin
            x=i;
            for(j=0;j<2;j=j+1)begin
                y = j;
                #10;
            end
        end
        $finish;
    end
endmodule
