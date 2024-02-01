`timescale 1ns / 1ps

module seven_segment(SW_A, SW_B, anodes, led_a, led_b);

    input [7:4] SW_A;
    input [3:1] SW_B;
    output reg [7:0] anodes;
    output reg [7:0] led_a, led_b;
    
    // 0 - F

    always @(SW_A)
        case (SW_A)
            4'b0000: {led_a, led_b} = {8'b11111100, 8'b11111100}; // "0"     
            4'b0001: {led_a, led_b} = {8'b01100000, 8'b01100000}; // "1" , 
            4'b0010: {led_a, led_b} = {8'b11011010, 8'b11011010}; // "2" 
            4'b0011: {led_a, led_b} = {8'b11110010, 8'b11110010}; // "3" 
            4'b0100: {led_a, led_b} = {8'b01100110, 8'b01100110}; // "4" 
            4'b0101: {led_a, led_b} = {8'b10110110, 8'b10110110}; // "5" 
            4'b0110: {led_a, led_b} = {8'b10111110, 8'b10111110}; // "6" 
            4'b0111: {led_a, led_b} = {8'b11100000, 8'b11100000}; // "7" 
            4'b1000: {led_a, led_b} = {8'b11111110, 8'b11111110}; // "8"     
            4'b1001: {led_a, led_b} = {8'b11110110, 8'b11110110}; // "9" 
            4'b1010: {led_a, led_b} = {8'b11101110, 8'b11101110}; // A
            4'b1011: {led_a, led_b} = {8'b00111110, 8'b00111110}; // B
            4'b1100: {led_a, led_b} = {8'b10011100, 8'b10011100}; // C
            4'b1101: {led_a, led_b} = {8'b01111010, 8'b01111010}; // D
            4'b1110: {led_a, led_b} = {8'b10011110, 8'b10011110}; // E
            4'b1111:  {led_a, led_b} = {8'b10001110, 8'b10001110}; // F
        default:  {led_a, led_b} = {8'b11111100, 8'b11111100}; // "0
        endcase
    // Switch - Display Numbers
    always @(SW_B)
        case (SW_B)
            3'b000: anodes = 8'b00000001;
            3'b001: anodes = 8'b00000010;
            3'b010: anodes = 8'b00000100;
            3'b011: anodes = 8'b00001000;
            3'b100: anodes = 8'b00010000;
            3'b101: anodes = 8'b00100000;
            3'b110: anodes = 8'b01000000;
            3'b111: anodes = 8'b10000000;
    endcase
  
endmodule
  

