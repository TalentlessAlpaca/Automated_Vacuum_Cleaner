`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:03:52 10/10/2015 
// Design Name: 
// Module Name:    full_Adder_1 
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
module full_Adder_1(
    input a,
    input b,
    input c,
    output reg o,
    output reg co
    );
	 
	 reg [1:0] sum;
	 
	 always @(*) begin
		sum <= a+b+c;
		o <= sum[0];
		co <= sum[1];
	 end
	 
endmodule
