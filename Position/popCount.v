`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:51:57 10/10/2015 
// Design Name: 
// Module Name:    popCount 
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
module popCount(
    input [3:0] in,
    output reg [2:0] pCount
    );
	 
	 always@(*) begin
		case(in)
		0: begin
			pCount <= 0;
		end
		1: begin
			pCount <= 1;
		end
		2: begin
			pCount <= 1;
		end
		3: begin
			pCount <= 2;
		end
		4: begin
			pCount <= 1;
		end
		5: begin
			pCount <= 2;
		end
		6: begin
			pCount <= 2;
		end
		7: begin
			pCount <= 3;
		end
		8: begin
			pCount <= 1;
		end
		9: begin
			pCount <= 2;
		end
		10: begin
			pCount <= 2;
		end
		11: begin
			pCount <= 3;
		end
		12: begin
			pCount <= 2;
		end
		13: begin
			pCount <= 3;
		end
		14: begin
			pCount <= 3;
		end
		15: begin
			pCount <= 4;
		end
		default: begin
			pCount <= 0;
		end
		endcase
	 end
	 
endmodule
