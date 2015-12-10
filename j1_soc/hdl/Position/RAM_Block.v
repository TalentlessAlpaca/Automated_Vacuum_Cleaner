`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:15:01 11/07/2015 
// Design Name: 
// Module Name:    RAM_Block 
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
module RAM_Block(
	 input clk,
    input [7:0] Address_w,
	 input W_ref,
	 input [7:0] Address,
    input W,
    input [31:0] Data_I,
    output reg [31:0] Data_O,
 (* KEEP = "TRUE" *)   output reg [15:0] Ref
    );
	 
	 reg [31:0] Mem [255:0];
	 
	 always@(negedge clk) begin
		if(W) Mem[Address_w] <= Data_I;
		else Data_O <= Mem[Address];
	 end
	 
	 always@(negedge clk) begin
		if(W_ref) Ref <= Data_I[15:0];
		else Ref <= Ref;
	 end
	 
endmodule
