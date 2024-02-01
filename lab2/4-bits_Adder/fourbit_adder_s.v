`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2023 12:04:06 PM
// Design Name: 
// Module Name: fourbit_adder_s
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


module fourbit_adder_s();

    
    reg [3:0]x,y;
    reg cin;
    wire [3:0]s;
    wire cout;
    fourbit_adder uut(.x(x),.y(y),.cin(cin),.s(s),.cout(cout));
    integer i,j;
    //assign cin = 0;
    initial begin
        cin =0;
        for(i=0; i<16;i=i+1)begin
            for(j=0; j<16; j=j+1)begin
                x=i;
                y=j;
                #10;
            end
        end
        $finish;
    end
endmodule
