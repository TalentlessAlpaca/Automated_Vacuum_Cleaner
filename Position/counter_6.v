`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:27:26 10/10/2015 
// Design Name: 
// Module Name:    counter_6 
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
module counter_6(
    input stim,
	 input rst,
    output reg [5:0] count
    );
	 
	 always@(posedge stim) begin
		if(!rst)count <= count + 1;
	 end
	 
	 always@(*) begin
		if(rst) count <= 0;
	 end
	 
endmodule
