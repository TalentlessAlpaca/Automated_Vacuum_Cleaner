`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:07:43 10/10/2015 
// Design Name: 
// Module Name:    Adder_3bit 
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
module Adder_3bit(
    input [2:0] a,
    input [2:0] b,
    output [3:0] o
    );
	 
	 wire[2:0] co;
	 assign co[0] = 0;
	 full_Adder_1 lsb(.a(a[0]),.b(b[0]),.c(co[0]),.o(o[0]),.co(co[1]));
	 full_Adder_1 ibb(.a(a[1]),.b(b[1]),.c(co[1]),.o(o[1]),.co(co[2]));
	 full_Adder_1 msb(.a(a[2]),.b(b[2]),.c(co[2]),.o(o[2]),.co(o[3]));
	 
endmodule
