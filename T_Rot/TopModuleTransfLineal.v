`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:53:19 10/20/2015 
// Design Name: 
// Module Name:    TopModuleTransfLineal 
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
module TopModuleTransfLineal(
	 input clk,
	 input rst,
    input enable,
	 input [15:0] AcX,
    input [15:0] AcY,
    input [15:0] AcZ,
    input Theta,
    output reg [31:0] XAc,
    output reg [31:0] YAc,
    output reg [31:0] ZAc,
    output reg Busy
	 );
	 
	 wire busy1; 				// Multiplicador
	 wire[31:0] answer; 		// Multiplicador
	 reg [15:0]A; 				// Multiplicador
	 reg [15:0]B; 				// Multiplicador
	 reg enable1; 				// Multiplicador
	 reg [31:0]mmult; 		// Res 1
	 reg [31:0]mmult2; 		// Res 2
	 reg [31:0]mmult3; 		// Res 3
	 reg [31:0]mmult4; 		// Res 4
	 	 
	 // Flip-Flops
	 reg [31:0]mmult_d; 		// Res 1
	 reg [31:0]mmult2_d; 	// Res 2
	 reg [31:0]mmult3_d; 	// Res 3
	 reg [31:0]mmult4_d; 	// Res 4
	 
	 
	 wire busy2; 				// SD
    reg enable2; 				// SD
	 //wire [15:0]sd_coseno; 	// SD
	 //wire [15:0]sd_seno; 	// SD
	 parameter [15:0] sd_coseno = 16'd5792; 		// SD
	 parameter [15:0] sd_seno   = 16'd5793; 		// SD
	 parameter [15:0] m_sin		 = -16'd5793;
	 reg [15:0]coseno; 		// SD
	 reg [15:0]seno; 			// SD
	 reg [15:0]address; 		// SD
	 reg sdCos;					// SD
	 reg sdSen;					// SD
	 
	 reg [31:0] XA_d;
	 reg [31:0] YA_d;
	 
	 reg [5:0]state; 			// 
	 reg [5:0]nstate; 		// 
	 
	 // State Machine Encoding	 
	 localparam reset 		= 0,
					Wait 			= 1,
					sdcos			= 3,
					Waitcoseno	= 4,
					rtacoseno	= 5,
					sdseno		= 6,
					Waitseno		= 7,
					rtaseno		= 8,
					mult			= 9,
					Waitmult		= 10,
					rtamult		= 11,
					mult2			= 12,
					Waitmult2	= 13,
					rtamult2		= 14,
					mult3			= 15,
					Waitmult3	= 16,
					rtamult3		= 17,
					mult4			= 18,
					Waitmult4	= 19,
					rtamult4		= 20,
					suma			= 21;

	 booth_mult multi(.clk(clk),.rst(rst),.en(enable1),.A(A),.B(B),.R(answer),.busy(busy1));
	 
	  
	  //Star Combinational Block 
	  always @(*) begin
			case (state)
				reset:begin
					Busy <= 1;
					enable1 	<= 0;
					enable2 	<= 0;
					sdCos 	<= 0;
					sdSen 	<= 0;
					A 			<= 0;
					B 			<= 0;
					address	<= 0;
					XAc <= XA_d;
					YAc <= YA_d;
					nstate 	<= Wait;
				end
				
				Wait:begin
					Busy <= 0;
					if (!enable)
						nstate 	<= Wait;
					else
						nstate 	<= sdcos;		
				end		
				
				sdcos:begin
					Busy <= 1;
					enable1 	<= 0;
					enable2 	<= 1;
					sdCos 	<= 0;
					sdSen 	<= 0;
					A 			<= 0;
					B 			<= 0;
					address	<= Theta;
					XAc <= XA_d;
					YAc <= YA_d;
					if (busy2)
						nstate 	<= Waitcoseno;
					else
						nstate 	<= Waitcoseno;		
					
				end
				Waitcoseno: begin
					Busy <= 1;
					enable1 	<= 0;
					enable2 	<= 0;
					sdCos 	<= 0;
					sdSen 	<= 0;
					A 			<= 0;
					B 			<= 0;
					address	<= Theta;
					XAc <= XA_d;
					YAc <= YA_d;
					if (!busy2)
						nstate 	<= rtacoseno;
					else
						nstate 	<= rtacoseno;		
						
				end
				rtacoseno:begin
					Busy <= 1;
					enable1 	<= 0;
					enable2 	<= 0;
					sdCos 	<= 0;
					sdSen 	<= 0;
					A 			<= 0;
					B 			<= 0;
					address	<= Theta;
					coseno	<= sd_coseno;
					XAc <= XA_d;
					YAc <= YA_d;
					nstate 	<= sdseno;					
				end
				sdseno:begin
					Busy <= 1;
					enable1 	<= 0;
					enable2 	<= 1;
					sdCos 	<= 0;
					sdSen 	<= 0;
					A 			<= 0;
					B 			<= 0;
					address	<= Theta;
					XAc <= XA_d;
					YAc <= YA_d;
					if (busy2)
						nstate 	<= Waitseno;
					else
						nstate 	<= Waitseno;					
				end
				Waitseno:begin
					Busy <= 1;
					enable1 	<= 0;
					enable2 	<= 0;
					sdCos 	<= 0;
					sdSen 	<= 0;
					A 			<= 0;
					B 			<= 0;
					address	<= Theta;
					XAc <= XA_d;
					YAc <= YA_d;
					if (!busy2)
						nstate 	<= rtaseno;
					else
						nstate 	<= rtaseno;		
					
				end
				rtaseno:begin
					Busy <= 1;
					enable1 	<= 0;
					enable2 	<= 0;
					sdCos 	<= 0;
					sdSen 	<= 0;
					A 			<= 0;
					B 			<= 0;
					address	<= Theta;
					seno	<= sd_seno;
					XAc <= XA_d;
					YAc <= YA_d;
					
					nstate 	<= mult;		
					
				end
				
						
				mult:begin
					Busy <= 1;
					enable1 	<= 1;
					enable2 	<= 0;
					sdCos 	<= 0;
					sdSen 	<= 0;
					A 			<= AcX;
					B 			<= sd_seno;
					address	<= 0;
					XAc <= XA_d;
					YAc <= YA_d;
					
					if (busy1)
						nstate 	<= Waitmult;
					else
						nstate 	<= mult;		
					
				end
				Waitmult:begin
					Busy <= 1;
					enable1 	<= 0;
					enable2 	<= 0;
					sdCos 	<= 0;
					sdSen 	<= 0;
					A 			<= AcX;
					B 			<= sd_seno;
					address	<= 0;
					XAc <= XA_d;
					YAc <= YA_d;
					
					if (!busy1)
						nstate 	<= rtamult;
					else
						nstate 	<= Waitmult;		
					
				end
				rtamult:begin
					Busy <= 1;
					enable1 	<= 0;
					enable2 	<= 0;
					sdCos 	<= 0;
					sdSen 	<= 0;
					A 			<= AcX;
					B 			<= sd_seno;
					address	<= 0;
					mmult		<= answer;
					mmult2	<= 0;
					mmult3	<= 0;
					mmult4	<= 0;
					XAc <= XA_d;
					YAc <= YA_d;
					nstate 	<= mult2;					
					
				end
			 
					
				mult2:begin
					Busy <= 1;
					enable1 	<= 1;
					enable2 	<= 0;
					sdCos 	<= 0;
					sdSen 	<= 0;
					A 			<= AcX;
					B 			<= sd_coseno;
					address	<= 0;
					mmult		<= mmult_d;
					mmult2	<= 0;
					mmult3	<= 0;
					mmult4	<= 0;
					XAc <= XA_d;
					YAc <= YA_d;
					
					if (busy1)
						nstate 	<= Waitmult2;
					else
						nstate 	<= mult2;		
					
				end
				Waitmult2:begin
					Busy <= 1;
					enable1 	<= 0;
					enable2 	<= 0;
					sdCos 	<= 0;
					sdSen 	<= 0;
					A 			<= AcX;
					B 			<= sd_coseno;
					address	<= 0;
					mmult		<= mmult_d;
					mmult2	<= 0;
					mmult3	<= 0;
					mmult4	<= 0;
					XAc <= XA_d;
					YAc <= YA_d;
					
					if (!busy1)
						nstate 	<= rtamult2;
					else
						nstate 	<= Waitmult2;		
					
				end
				rtamult2:begin
					Busy <= 1;
					enable1 	<= 0;
					enable2 	<= 0;
					sdCos 	<= 0;
					sdSen 	<= 0;
					A 			<= AcX;
					B 			<= sd_coseno;
					address	<= 0;
					mmult		<= mmult_d;
					mmult2	<= answer;
					mmult3	<= 0;
					mmult4	<= 0;
					XAc <= XA_d;
					YAc <= YA_d;
					nstate 	<= mult3;		
					
				end
					
				mult3:begin
					Busy <= 1;
					enable1 	<= 1;
					enable2 	<= 0;
					sdCos 	<= 0;
					sdSen 	<= 0;
					A 			<= AcY;
					B 			<= m_sin;
					address	<= 0;
					mmult		<= mmult_d;
					mmult2	<= mmult2_d;
					mmult3	<= 0;
					mmult4	<= 0;
					XAc <= XA_d;
					YAc <= YA_d;
					
					if (busy1)
						nstate 	<= Waitmult3;
					else
						nstate 	<= mult3;		
				end
				
				Waitmult3:begin
					Busy <= 1;
					enable1 	<= 0;
					enable2 	<= 0;
					sdCos 	<= 0;
					sdSen 	<= 0;
					A 			<= AcY;
					B 			<= m_sin;
					address	<= 0;
					mmult		<= mmult_d;
					mmult2	<= mmult2_d;
					mmult3	<= 0;
					mmult4	<= 0;
					XAc <= XA_d;
					YAc <= YA_d;
					
					if (!busy1)
						nstate 	<= rtamult3;
					else
						nstate 	<= Waitmult3;		
					
				end
				
				rtamult3:begin
					Busy <= 1;
					enable1 	<= 0;
					enable2 	<= 0;
					sdCos 	<= 0;
					sdSen 	<= 0;
					A 			<= AcY;
					B 			<= m_sin;
					address	<= 0;
					mmult		<= mmult_d;
					mmult2	<= mmult2_d;
					mmult3	<= answer;
					mmult4	<= 0;
					XAc <= XA_d;
					YAc <= YA_d;
					nstate 	<= mult4;		
					
				end
				mult4:begin
					Busy <= 1;
					enable1 	<= 1;
					enable2 	<= 0;
					sdCos 	<= 0;
					sdSen 	<= 0;
					A 			<= AcY;
					B 			<= sd_coseno;
					address	<= 0;
					mmult		<= mmult_d;
					mmult2	<= mmult2_d;
					mmult3	<= mmult3_d;
					mmult4	<= 0;
					XAc <= XA_d;
					YAc <= YA_d;
					
					if (busy1)
						nstate 	<= Waitmult4;
					else
						nstate 	<= mult4;		
					
				end
				Waitmult4:begin
					Busy <= 1;
					enable1 	<= 0;
					enable2 	<= 0;
					sdCos 	<= 0;
					sdSen 	<= 0;
					A 			<= AcY;
					B 			<= sd_coseno;
					address	<= 0;
					mmult		<= mmult_d;
					mmult2	<= mmult2_d;
					mmult3	<= mmult3_d;
					mmult4	<= 0;
					XAc <= XA_d;
					YAc <= YA_d;
					if (!busy1)
						nstate 	<= rtamult4;
					else
						nstate 	<= Waitmult4;					
				end
				
				rtamult4:begin
					Busy <= 1;
					enable1 	<= 0;
					enable2 	<= 0;
					sdCos 	<= 0;
					sdSen 	<= 0;
					A 			<= AcY;
					B 			<= sd_coseno;
					address	<= 0;
					mmult		<= mmult_d;
					mmult2	<= mmult2_d;
					mmult3	<= mmult3_d;
					mmult4	<= answer;
					nstate 	<= suma;
					XAc <= XA_d;
					YAc <= YA_d;
				end
				
				suma:begin
					Busy <= 1;
					XAc = (mmult2 + mmult3)>>13;//mmult2+((!mmult3)+1);
					YAc = (mmult + mmult4)>>13; // X >> 13  == X / (2^13)
					nstate 	<= Wait;
				end
		 endcase
	end

	
	always@(negedge clk) begin
	 mmult_d  <= mmult; 	// Res 1
	 mmult2_d <= mmult2; 	// Res 2
	 mmult3_d <= mmult3; 	// Res 3
	 mmult4_d <= mmult4; 	// Res 4
	 XA_d <= XAc;
	 YA_d <= YAc;
	end
	
	always@(posedge clk) begin
		if(rst) state <= reset;
		else state <= nstate;
	end
	
endmodule
