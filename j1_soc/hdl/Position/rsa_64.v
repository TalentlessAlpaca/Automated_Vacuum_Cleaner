`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:58:36 11/02/2015 
// Design Name: 
// Module Name:    rsa 
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
module rsa_64(
    input clk,
	 input en,
    input shift,
    input [64:0] in,
    output reg [64:0] out
    );
	 
	 initial out <= 0;
	 
	 always @ (negedge clk) begin
		if(en) begin
			if(shift) begin
				out[63:0] <= in >> 1;
				out[64] <= in[64];
			end else out <= in;
		end else out <= out;
	 end
	 
endmodule
