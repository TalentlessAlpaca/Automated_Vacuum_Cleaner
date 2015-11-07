`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:35:05 11/02/2015 
// Design Name: 
// Module Name:    comp 
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
module comp(
    input [15:0] A,
    output [15:0] C
    );
	 
	 assign C = (~A)+1'b1;
	 
endmodule
