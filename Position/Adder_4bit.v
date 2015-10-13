`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:38:44 10/10/2015 
// Design Name: 
// Module Name:    Adder_4bit 
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
module Adder_4bit(
    input [3:0] a,
    input [3:0] b,
    input [4:0] o
    );
	 
	 wire[3:0] co;
	 assign co[0] = 0;
	 full_Adder_1 lsb(.a(a[0]),.b(b[0]),.c(co[0]),.o(o[0]),.co(co[1]));
	 full_Adder_1 ib1b(.a(a[1]),.b(b[1]),.c(co[1]),.o(o[1]),.co(co[2]));
	 full_Adder_1 ib2b(.a(a[2]),.b(b[2]),.c(co[2]),.o(o[2]),.co(co[3]));
	 full_Adder_1 msb(.a(a[3]),.b(b[3]),.c(co[3]),.o(o[3]),.co(o[4]));
	 
endmodule
