`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:53:36 10/10/2015 
// Design Name: 
// Module Name:    RSC 
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
module RSC(
    input [31:0] a,
	 output lsb_a,
    output reg [31:0] o
    );
	 
	 assign lsb_a = a[0];
	 
	 always @(*) begin
		o 		<= a>>1;
		o[31] <= a[31];
	 end
	 
endmodule
