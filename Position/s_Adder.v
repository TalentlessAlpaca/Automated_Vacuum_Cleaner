`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:13:06 10/10/2015 
// Design Name: 
// Module Name:    s_Adder 
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
module s_Adder(
    input [15:0] a,
    input [15:0] b,
    output o,			// 1 if overflow
    output reg [15:0] r	// a+b
    );
	 
	 assign o = r[15]^(a[15]~^b[15]);
	 
	 reg[16:0] sum;
	 
	 always@(*) begin
		sum <= a+b;
		r   <= sum[15:0];
	 end
	 
endmodule
