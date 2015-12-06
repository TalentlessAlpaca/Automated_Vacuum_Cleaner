`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:15:20 11/07/2015
// Design Name:   Top_BackBox
// Module Name:   C:/Users/Camilo/Documents/Xilinx_Workspace/Transflineal/TOP_Rotation_tst.v
// Project Name:  Transflineal
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Top_BackBox
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TOP_Rotation_tst;

	// Inputs
	reg clk;
	reg rst;
	reg [15:0] AcX;
	reg [15:0] AcY;
	reg [15:0] AcZ;
	reg [31:0] theta;
	reg enable;
	reg [7:0] Address_w;
	reg W;
	reg W_ref;
	reg [31:0] Data_I;

	// Outputs
	wire busy;
	wire [31:0] XAc;
	wire [31:0] YAc;
	wire [31:0] ZAc;
	
	reg [15:0] ssin;
	reg [15:0] ccos;
	
	// Other
	reg[8:0] i;

	// Instantiate the Unit Under Test (UUT)
	Top_BackBox uut (
		.clk(clk), 
		.rst(rst), 
		.AcX(AcX), 
		.AcY(AcY),
		.AcZ(AcZ),
		.theta(theta), 
		.enable(enable), 
		.Address_w(Address_w), 
		.W(W),
		.W_ref(W_ref),
		.Data_I(Data_I), 
		.busy(busy), 
		.XAc(XAc), 
		.YAc(YAc), 
		.ZAc(ZAc)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 1;
		AcX = 1000;
		AcY = 1000;
		AcZ = 1000;
		theta = 130;
		enable = 0;
		Address_w = 0;
		W_ref = 0;
		W = 0;
		Data_I = 0;
		ssin = -16'd138;
		ccos = 16'd8191;
		i = 0;

		// Wait 100 ns for global reset to finish
		#100;
		// Add stimulus here
		// Load RAM Values
		/*
		for(i = 0; i <= 255; i = i+1) begin
			ssin = ssin+1;
			if(i == 13) 		begin ccos = 16'd8190; end
			else if(i == 55) 	begin ccos = 16'd8189; end
			else if(i == 89) 	begin ccos = 16'd8188; end
			else if(i == 118) begin ccos = 16'd8187; end
			else if(i == 145) begin ccos = 16'd8186; end
			else if(i == 169) begin ccos = 16'd8185; end
			else if(i == 191) begin ccos = 16'd8184; end
			else if(i == 212) begin ccos = 16'd8183; end
			else if(i == 231) begin ccos = 16'd8182; end
			else if(i == 250) begin ccos = 16'd8181; end
			else					begin ccos = ccos; end
			#3 Address_w = i[7:0];
			#20 Data_I = {ssin,ccos};
			#20 W = 1;
			#20 W = 0;
		end
		Data_I = 32'd259;
		#10;
		W_ref = 1;
		#20;
		W_ref = 0;
		*/
		
		for(i = 0; i <= 255; i = i+1) begin
			ssin = ssin+1;
			if(i == 0) 			begin ccos = 16'd8191; end
			else if(i == 45) 	begin ccos = 16'd8192; end
			else					begin ccos = ccos; end
			#3 Address_w = i[7:0];
			#20 Data_I = {ssin,ccos};
			#20 W = 1;
			#20 W = 0;
		end
		Data_I = 32'd0;
		#10;
		W_ref = 1;
		#20;
		W_ref = 0;
		
		// Perform Transformations
		rst = 0;
		#100;
		enable = 0;
		i = 0;
		#100;
		theta = -1;
		AcX = -1;
		AcY = -1;
		#10;
		enable = 1;
		while(!busy) #10;
		while(busy) #10;
		enable = 0;
		/*
		for(i = 0; i <= 255; i = i+1) begin
			theta = theta+1;
			while(!busy) #1;
			while(busy) #1;
		end
		*/
	end
	
	always #5 clk = ~clk;
	
endmodule

