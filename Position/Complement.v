`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:00:04 10/10/2015 
// Design Name: 
// Module Name:    Complement 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Complement(
    input [15:0] in,
    output wire [15:0] out
    );
	 s_Adder conver(.a(~in),.b(16'h1),.r(out));
endmodule
