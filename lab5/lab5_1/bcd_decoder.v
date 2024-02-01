`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/22/2023 06:18:07 AM
// Design Name: 
// Module Name: bcd_decoder
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


module bcd_decoder(bcd, count_div);

    input [3:0] bcd;
    output reg [7:0] count_div;

    always @(bcd)
    begin
        case(bcd)
            4'b0000: count_div <= 8'b11111100;
            4'b0001: count_div <= 8'b01100000;
            4'b0010: count_div <= 8'b11011010;
            4'b0011: count_div <= 8'b11110010;
            4'b0100: count_div <= 8'b01100110;
            4'b0101: count_div <= 8'b10110110;
            4'b0110: count_div <= 8'b10111110;
            4'b0111: count_div <= 8'b11100000;
            4'b1000: count_div <= 8'b11111110;
            4'b1001: count_div <= 8'b11110110;
            default: count_div <= 8'b11111100;
        endcase
    end

endmodule
