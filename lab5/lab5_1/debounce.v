`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/22/2023 06:17:05 AM
// Design Name: 
// Module Name: debounce
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


module debounce(clk, btn, reset, debounce);

    input clk, btn, reset;
    output debounce;
    
    wire one, two, three;
    dfflop a(clk, btn, one, reset);
    dfflop b(clk, one, two, reset);
    dfflop c(clk, two, three, reset);
    assign debounce = one & two & three;
   
endmodule

module dfflop(clk, d, q, reset);
    
    input clk, d, reset;
    output reg q;
    
    always @(posedge clk)
    begin
        if(reset) q <= 1'b0;
        else q <= d;
    end

endmodule
