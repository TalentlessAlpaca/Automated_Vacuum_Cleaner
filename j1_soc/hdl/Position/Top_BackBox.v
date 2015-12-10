`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:35:00 11/07/2015 
// Design Name: 
// Module Name:    Top_BackBox 
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
module Top_BackBox(
    input clk,
    input rst,
    input [15:0] AcX,
    input [15:0] AcY,
	 input [15:0] AcZ,
    input [31:0]theta,
	 input enable,
	 input [7:0]Address_w,
	 input W,
	 input W_ref,
	 input [31:0]Data_I,
	 output busy,
	 output [31:0]XAc,
	 output [31:0]YAc,
	 output [31:0]ZAc
    );
	 
	 wire [7:0] address;
	 wire [15:0] ref;
	 wire [31:0] sin_cos;
	 
	 
	 
	   RAM_Block ram(.clk(clk),.Data_O(sin_cos),.Ref(ref),.Data_I(Data_I),.W(W),.W_ref(W_ref),.Address_w(Address_w),.Address(address));
		Encoder encod(.Theta(theta),.Ref(ref),.Address(address));
		TopModuleTransfLineal rot(.clk(clk),.rst(rst),.enable(enable),.AcX(AcX),.AcY(AcY),.AcZ(AcZ),.sdseno(sin_cos[31:16]),.sdcoseno(sin_cos[15:0]),.XAc(XAc),.YAc(YAc),.ZAc(ZAc),.Busy(busy));
	 
endmodule
