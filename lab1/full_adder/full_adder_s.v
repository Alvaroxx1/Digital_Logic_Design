`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2023 05:14:56 PM
// Design Name: 
// Module Name: full_adder_s
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


module full_adder_s();
    reg x,y,cin;
    wire s,cout;
    full_adder uut(.x(x), .y(y), .cin(cin), .s(s), .cout(cout));

    integer i,j,k;
    initial begin
        for (i = 0; i < 2; i = i + 1) begin
            x = i;
            for (j = 0; j < 2; j = j + 1) begin
                y = j;
                for(k=0; k<2; k = k+1)begin
                    cin = k;
                    #10;
                end
            end
        end
        $finish;
    end
endmodule
