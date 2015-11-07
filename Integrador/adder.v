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
module adder(
    input [32:0] A,
    input [15:0] B,
    output reg [32:0] R
    );
	 
	 always @(*) begin
		R[32:17] <= A[32:17] + B;
		R[16:0]	<= A[16:0];
	 end
	 
endmodule
