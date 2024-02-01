`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/22/2023 07:09:26 AM
// Design Name: 
// Module Name: dual_counter
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


module dual_counter(clk, reset, segment, anode);

    input clk, reset;
    output [7:0] segment;
    output [1:0] anode;
    wire [7:0] segment_one, segment_two;
    
    reg enable_clk;
    reg [31:0] div;
    wire [3:0] bcd_one, bcd_two;
    wire c_out_one, c_out_two;
    
    //up_counter(btnclk, reset, bcd, c_out);
    up_counter upcounter(div[23], reset, bcd_one, c_out_one);
    bcd_decoder decoder(bcd_one, segment_one);
    
    up_counter upcounter_two(c_out_one, reset, bcd_two, c_out_two);
    bcd_decoder decoder_two(bcd_two, segment_two);
    
    enable enable(enable_clk, reset, segment_two, segment_one, segment, anode);
    
    always @(posedge clk, posedge reset)
        if(reset) begin
            div <= 0;
            enable_clk <= 0;
        end
        else 
        begin
            if(div[23] == 1'b1)
                div <= 0;
            else div <= div + 1;
            
            if(div[18] == 1'b1) 
                enable_clk <= 1;       
            else enable_clk <= 0;     
            
       end
endmodule
