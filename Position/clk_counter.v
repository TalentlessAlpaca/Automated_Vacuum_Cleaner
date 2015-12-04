`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:32:45 11/10/2015 
// Design Name: 
// Module Name:    clk_counter 
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
module clk_counter(
    input clk,
    input en,
    input rst,
    output reg [31:0] count
    );
	 
always@(posedge clk) begin
		if(rst) begin
			count <= 31'b0;
		end
		else if (en) begin
			count = count+1;
		end
	 end

endmodule
