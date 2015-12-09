`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:35:41 11/02/2015 
// Design Name: 
// Module Name:    adder 
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
module adder_64(
    input [64:0] A,
    input [31:0] B,
    output reg [64:0] R
    );
	 
	 always @(*) begin
		R[64:33] <= A[64:33] + B;
		R[32:0]	<= A[32:0];
	 end
	 
endmodule
