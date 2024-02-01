`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/22/2023 06:17:31 AM
// Design Name: 
// Module Name: up_counter
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


module up_counter(clk, reset, bcd);

    input clk, reset;
    output reg [3:0] bcd;
    
    always @(posedge clk,posedge reset)
    begin 
        if(reset) bcd <= 4'b0000;
        else if(clk) begin
            if (bcd >= 9) 
            begin
                bcd <= 4'b0000;
            end
            else bcd <= bcd + 1;     
        end
    end
endmodule
