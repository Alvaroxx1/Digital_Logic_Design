`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/22/2023 07:02:38 AM
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


module up_counter(btnclk, reset, bcd, c_out);

    input btnclk, reset;
    output reg [3:0] bcd;
    output reg c_out;
    
    always @(posedge btnclk, posedge reset)
    begin 
        if(reset) begin
        bcd <= 4'b0000;
        c_out <= 1'b0;
        end
    
        
        else if(btnclk) begin
            if (bcd >= 9) 
            begin
                c_out <= 1'b1;
                bcd <= 4'b0000;
            end
            else begin
                c_out <= 1'b0;
                bcd <= bcd + 1;
            end     
        end
    end
endmodule
