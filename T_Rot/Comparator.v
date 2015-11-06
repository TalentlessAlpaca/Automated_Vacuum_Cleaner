`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:32:51 10/10/2015 
// Design Name: 
// Module Name:    Comparator 
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
module Comparator(
    input [4:0] A,
    input [4:0] B,
    output reg L,
    output reg E,
    output reg G
    );
	 
	 always@(*) begin
		L <= A<B;
		G <= A>B;
		E <= L~^G;
	 end
	 
endmodule
