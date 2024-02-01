`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/22/2023 07:03:52 AM
// Design Name: 
// Module Name: enable
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


module enable(clk, reset, segment_one, segment_two, segment, anodes);

    input clk, reset;
    input [7:0] segment_one, segment_two;
    output reg [7:0] segment;
    output reg [1:0] anodes;
    
    reg counter;

    always @(posedge clk, posedge reset)
    begin
        if(reset)begin
            counter <= 1'b0;
            anodes <= 2'b01;
            segment <= segment_one;
        end 
        else 
        if (counter == 1'b0) begin
            counter <= 1'b1;
            anodes <= 2'b01;
            segment <= segment_one;
            
        end
        else begin
            counter <= 1'b0;
            anodes <= 2'b10;       
            segment <= segment_two;        
        end
        
    end

endmodule
