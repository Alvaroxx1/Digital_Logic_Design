`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/22/2023 06:16:46 AM
// Design Name: 
// Module Name: full_up_counter_a
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


module full_up_counter(clk, btn, reset, segment, anodes);

    input clk, btn, reset;
    output [7:0] segment;
    output [7:0] anodes;
    
    reg [31:0] count_div;
    wire [3:0] digit;
    wire btnclk;
    
    debounce debounce(count_div[20], btn, reset, btnclk);
    up_counter upcounter(btnclk, reset, digit);
    bcd_decoder decoder(digit, segment);
    assign anodes = 8'b00000001;
    
    always @(posedge clk, posedge reset)
        if(reset) count_div <= 0;
        else 
        begin
            if(count_div[23] == 1'b1)
                count_div <= 0;
            else count_div <= count_div + 1;
           
        end
endmodule
