`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/27/2023 04:02:01 PM
// Design Name: 
// Module Name: fxf_mult_s
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


module fxf_mult_s();
    reg [3:0] x, y;
    wire [7:0] p;
    integer i,j;
    
    fxf_mult uut (
        .x(x),
        .y(y),
        .p(p)
    );

    initial begin
//        x = 4'b1011;
//        y = 4'b0111;
        for(i=0;i<16;i=i+1)
        begin
        x=i;
            for(j=0;j<16;j=j+1)
            begin
                y=j;
                #2;
            end
        end
//        #100; // Delay for simulation
        #10; // Delay before finishing simulation
        $finish;
    end
endmodule

