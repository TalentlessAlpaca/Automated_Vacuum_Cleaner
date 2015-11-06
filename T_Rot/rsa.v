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
module rsa(
    input clk,
	 input en,
    input shift,
    input [32:0] in,
    output reg [32:0] out
    );
	 
	 initial out <= 0;
	 
	 always @ (negedge clk) begin
		if(en) begin
			if(shift) begin
				out[31:0] <= in >> 1;
				out[32] <= in[32];
			end else out <= in;
		end else out <= out;
	 end
	 
endmodule
