`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:24:04 11/07/2015
// Design Name:   RAM_Block
// Module Name:   C:/Users/Camilo/Documents/Xilinx_Workspace/Transflineal/RAM_tst.v
// Project Name:  Transflineal
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: RAM_Block
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module RAM_tst;

	// Inputs
	reg clk;
	reg [7:0] Address_w;
	reg [7:0] Address;
	reg W_ref;
	reg W;
	reg [31:0] Data_I;

	// Outputs
	wire [31:0] Data_O;
	wire [15:0] Ref;
	
	reg [8:0] i;
	reg [15:0] ssin;
	reg [15:0] ccos;

	// Instantiate the Unit Under Test (UUT)
	RAM_Block uut (
		.clk(clk),
		.Address(Address), 
		.Address_w(Address_w), 
		.W(W),
		.W_ref(W_ref),
		.Data_I(Data_I), 
		.Data_O(Data_O), 
		.Ref(Ref)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		Address_w = 0;
		Address = 0;
		W = 0;
		W_ref = 0;
		Data_I = 0;
		i = 0;
		ssin = 16'd143;
		ccos = 16'd8191;
		// Wait 100 ns for global reset to finish
		#100;
		// Add stimulus here
		for(i = 0; i <= 255; i = i+1) begin
			ssin = ssin+1;
			if(i == 13) ccos = 16'd8190;
			if(i == 55) ccos = 16'd8189;
			if(i == 89) ccos = 16'd8188;
			if(i == 118) ccos = 16'd8187;
			if(i == 145) ccos = 16'd8186;
			if(i == 169) ccos = 16'd8185;
			if(i == 191) ccos = 16'd8184;
			if(i == 212) ccos = 16'd8183;
			if(i == 231) ccos = 16'd8182;
			if(i == 250) ccos = 16'd8181;
			#3 Address_w = i[7:0];
			#10 Data_I = {ssin,ccos};
			#10 W = 1;
			#10 W = 0;
			#10 Address = i[7:0];
			#10;
		end
		Data_I = 32'd259;
		#10;
		W_ref = 1;
		#10;
		W_ref = 0;
		#100;
		Address = 128;
	end
	
	always #5 clk = !clk;
	
endmodule

