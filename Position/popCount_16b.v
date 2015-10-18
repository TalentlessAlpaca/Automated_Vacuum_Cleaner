`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:43:18 10/10/2015 
// Design Name: 
// Module Name:    popCount_16b 
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
module popCount_16b(
    input en,
    input [15:0] AA,
    output reg [4:0] O
    );
	 
	 // XOR
	 wire[14:0] A;
	 assign A[14] = AA[15]^AA[14];
	 assign A[13] = AA[14]^AA[13];
	 assign A[12] = AA[13]^AA[12];
	 assign A[11] = AA[12]^AA[11];
	 assign A[10] = AA[11]^AA[10];
	 assign A[9] = AA[10]^AA[9];
	 assign A[8] = AA[9]^AA[8];
	 assign A[7] = AA[8]^AA[7];
	 assign A[6] = AA[7]^AA[6];
	 assign A[5] = AA[6]^AA[5];
	 assign A[4] = AA[5]^AA[4];
	 assign A[3] = AA[4]^AA[3];
	 assign A[2] = AA[3]^AA[2];
	 assign A[1] = AA[2]^AA[1];
	 assign A[0] = AA[1]^AA[0];
	 // Intermediate Signals
	 wire[2:0] pCount_uhub; // 14:11
	 wire[2:0] pCount_lhub; // 11:7
	 wire[2:0] pCount_uhlb; // 7:3
	 wire[2:0] pCount_lhlb; // 3:0,0
	 
	 wire[3:0] sum_downHalf;
	 wire[3:0] sum_upHalf;
	 wire[4:0] c_sum;
	 // Necessary Instances
		// Intermediate Population Counters
		popCount upHalf_upByte  (.in(A[14:11]),      .pCount(pCount_uhub));
		popCount lowHalf_upByte (.in(A[10:7]),       .pCount(pCount_lhub));
		popCount upHalf_lowByte (.in(A[6:3]) ,       .pCount(pCount_uhlb));
		popCount lowHalf_lowByte(.in({A[2:0],1'b0}), .pCount(pCount_lhlb));
		// 3bit Adders
		Adder_3bit aa(.a(pCount_uhub),.b(pCount_lhub),.o(sum_downHalf));
		Adder_3bit ab(.a(pCount_uhlb),.b(pCount_lhlb),.o(sum_upHalf));
		//4bitAdder
		Adder_4bit ca(.a(sum_downHalf),.b(sum_upHalf),.o(c_sum));


	 // Behaviour
	 always@(*) begin
		if(en) O <= c_sum;
		else 	 O <= 4'h0;
	 end

endmodule
