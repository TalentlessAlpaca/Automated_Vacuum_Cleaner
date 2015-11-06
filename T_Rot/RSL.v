`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:55:58 10/10/2015 
// Design Name: 
// Module Name:    RSL 
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
module RSL(
    input [31:0] a,
    input stim,
    output reg [31:0] out
    );
	 
	 always@(posedge stim) begin
		out <= a>>1;
	 end
	 
endmodule
