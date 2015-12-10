`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:24:17 11/07/2015 
// Design Name: 
// Module Name:    Encoder 
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
module Encoder(
    input [31:0] Theta,
    input [15:0] Ref,
    output reg [7:0] Address
    );
	 
	 reg [7:0] Delta;
	 
	 localparam addrRef = 8'd128;
	 
	   always @(*) begin
			Delta = Theta-Ref;
			Address = addrRef+Delta;
		end


endmodule
