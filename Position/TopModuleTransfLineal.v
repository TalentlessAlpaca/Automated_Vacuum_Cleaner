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
	 input [15:0] sdseno,
	 input [15:0] sdcoseno,
    output reg [31:0] XAc,
    output reg [31:0] YAc,
    output [31:0] ZAc,
    output reg Busy
	 );
	 
	 assign ZAc = AcZ;
	 
	 wire busy1; 				// Multiplicador
	 wire[31:0] answer; 		// Multiplicador
	 reg [15:0]A; 				// Multiplicador
	 reg [15:0]B; 				// Multiplicador
	 reg enable1; 				// Multiplicador
	 reg [31:0]mmult; 		// X*sin
	 reg [31:0]mmult2; 		// X*cos
	 reg [31:0]mmult3; 		// Y*sin
	 reg [31:0]mmult4; 		// Y*cos
	 	 
	 // Flip-Flops
	 reg [31:0]mmult_d; 		// X*sin
	 reg [31:0]mmult2_d; 	// X*cos
	 reg [31:0]mmult3_d; 	// Y*sin
	 reg [31:0]mmult4_d; 	// Y*cos
	 
	 (* KEEP = "TRUE" *)reg [31:0] XA_d;
	 (* KEEP = "TRUE" *)reg [31:0] YA_d;
	 
	 reg [5:0]state; 			// 
	 reg [5:0]nstate; 		// 
	 
	 // State Machine Encoding	 
	 localparam reset 		= 0,
					Wait 			= 1,
					sdcos			= 3,
					mult			= 4,
					Waitmult		= 5,
					rtamult		= 6,
					mult2			= 7,
					Waitmult2	= 8,
					rtamult2		= 9,
					mult3			= 10,
					Waitmult3	= 11,
					rtamult3		= 13,
					mult4			= 14,
					Waitmult4	= 15,
					rtamult4		= 16,
					suma			= 17;

	 booth_mult multi(.clk(clk),.rst(rst),.en(enable1),.A(A),.B(B),.R(answer),.busy(busy1));
	 
	  
	  //Star Combinational Block 
	  always @(*) begin
			case (state)
				reset:begin
					Busy <= 1;
					enable1 		<= 0;
					A 				<= 0;
					B 				<= 0;
					XAc 			<= 0;
					YAc 			<= 0;
					mmult 		<= 0; 		
					mmult2 		<= 0; 
					mmult3 		<= 0; 		
					mmult4 		<= 0; 	
				
					nstate 	<= Wait;
				end
				
				Wait:begin
					Busy 			<= 0;
					enable1 		<= 0;
					A 				<= 0;
					B 				<= 0;
					XAc 			<= XA_d;
					YAc 			<= YA_d;
					mmult 		<= 0; 		
					mmult2 		<= 0; 
					mmult3 		<= 0; 		
					mmult4 		<= 0; 
					
					if (!enable)
						nstate 	<= Wait;
					else
						nstate 	<= mult;		
				end		
				
				
				mult:begin
					Busy 		<= 1;
					enable1 	<= 1;
					A 			<= AcX;
					B 			<= sdseno;
					XAc 		<= XA_d;
					YAc 		<= YA_d;
					mmult 		<= 0; 		
					mmult2 		<= 0; 
					mmult3 		<= 0; 		
					mmult4 		<= 0; 	
					
					if (busy1)
						nstate 	<= Waitmult;
					else
						nstate 	<= mult;		
					
				end
				Waitmult:begin
					Busy 		<= 1;
					enable1 	<= 0;
					A 			<= AcX;
					B 			<= sdseno;
					XAc 		<= XA_d;
					YAc 		<= YA_d;					
					mmult 		<= 0; 		
					mmult2 		<= 0; 
					mmult3 		<= 0; 		
					mmult4 		<= 0; 	
					
					
					if (!busy1)
						nstate 	<= rtamult;
					else
						nstate 	<= Waitmult;		
					
				end
				rtamult:begin
					Busy 		<= 1;
					enable1 	<= 0;
					A 			<= AcX;
					B 			<= sdseno;
					mmult		<= answer;
					mmult2	<= 0;
					mmult3	<= 0;
					mmult4	<= 0;
					XAc 		<= XA_d;
					YAc		<= YA_d;
					nstate 	<= mult2;					
					
				end
			 
					
				mult2:begin
					Busy 		<= 1;
					enable1 	<= 1;
					A 			<= AcX;
					B 			<= sdcoseno;
					mmult		<= mmult_d;
					mmult2	<= 0;
					mmult3	<= 0;
					mmult4	<= 0;
					XAc 		<= XA_d;
					YAc		<= YA_d;
					
					if (busy1)
						nstate 	<= Waitmult2;
					else
						nstate 	<= mult2;		
					
				end
				Waitmult2:begin
					Busy 		<= 1;
					enable1 	<= 0;
					A 			<= AcX;
					B 			<= sdcoseno;
					mmult		<= mmult_d;
					mmult2	<= 0;
					mmult3	<= 0;
					mmult4	<= 0;
					XAc 		<= XA_d;
					YAc 		<= YA_d;
					
					if (!busy1)
						nstate 	<= rtamult2;
					else
						nstate 	<= Waitmult2;		
					
				end
				rtamult2:begin
					Busy 		<= 1;
					enable1 	<= 0;
					A 			<= AcX;
					B 			<= sdcoseno;
					mmult		<= mmult_d;
					mmult2	<= answer;
					mmult3	<= 0;
					mmult4	<= 0;
					XAc 		<= XA_d;
					YAc 		<= YA_d;
					nstate 	<= mult3;		
					
				end
					
				mult3:begin
					Busy 		<= 1;
					enable1 	<= 1;
					A 			<= AcY;
					B 			<= sdseno;
					mmult		<= mmult_d;
					mmult2	<= mmult2_d;
					mmult3	<= 0;
					mmult4	<= 0;
					XAc 		<= XA_d;
					YAc 		<= YA_d;
					
					if (busy1)
						nstate 	<= Waitmult3;
					else
						nstate 	<= mult3;		
				end
				
				Waitmult3:begin
					Busy 		<= 1;
					enable1 	<= 0;
					A 			<= AcY;
					B 			<= sdseno;
					mmult		<= mmult_d;
					mmult2	<= mmult2_d;
					mmult3	<= 0;
					mmult4	<= 0;
					XAc 		<= XA_d;
					YAc 		<= YA_d;
					
					if (!busy1)
						nstate 	<= rtamult3;
					else
						nstate 	<= Waitmult3;		
					
				end
				
				rtamult3:begin
					Busy 		<= 1;
					enable1 	<= 0;
					A 			<= AcY;
					B 			<= sdseno;
					mmult		<= mmult_d;
					mmult2	<= mmult2_d;
					mmult3	<= answer;
					mmult4	<= 0;
					XAc 		<= XA_d;
					YAc 		<= YA_d;
					nstate 	<= mult4;		
					
				end
				mult4:begin
					Busy 		<= 1;
					enable1 	<= 1;
					A 			<= AcY;
					B 			<= sdcoseno;
					mmult		<= mmult_d;
					mmult2	<= mmult2_d;
					mmult3	<= mmult3_d;
					mmult4	<= 0;
					XAc 		<= XA_d;
					YAc 		<= YA_d;
					
					if (busy1)
						nstate 	<= Waitmult4;
					else
						nstate 	<= mult4;		
					
				end
				Waitmult4:begin
					Busy 		<= 1;
					enable1 	<= 0;
					A 			<= AcY;
					B 			<= sdcoseno;
					mmult		<= mmult_d;
					mmult2	<= mmult2_d;
					mmult3	<= mmult3_d;
					mmult4	<= 0;
					XAc 		<= XA_d;
					YAc 		<= YA_d;
					if (!busy1)
						nstate 	<= rtamult4;
					else
						nstate 	<= Waitmult4;					
				end
				
				rtamult4:begin
					Busy 		<= 1;
					enable1 	<= 0;
					A 			<= AcY;
					B 			<= sdcoseno;
					mmult		<= mmult_d;
					mmult2	<= mmult2_d;
					mmult3	<= mmult3_d;
					mmult4	<= answer;
					nstate 	<= suma;
					XAc 		<= XA_d;
					YAc 		<= YA_d;
				end
				
				suma:begin
					Busy 		<= 1;
					XAc 		<= (mmult2+((~mmult3)+1))>>13;//mmult2+((!mmult3)+1);
					YAc 		<= (mmult + mmult4)>>13; // X >> 13  == X / (2^13)
					enable1 	<= 0;
					A 			<= 0;
					B 			<= 0;
					mmult		<= mmult_d;
					mmult2	<= mmult2_d;
					mmult3	<= mmult3_d;
					mmult4	<= mmult4_d;
					nstate 	<= Wait;
				end
				
				default: begin
					Busy 		<= 1;
					enable1 	<= 0;
					A 			<= 0;
					B 			<= 0;
					mmult		<= mmult_d;
					mmult2	<= mmult2_d;
					mmult3	<= mmult3_d;
					mmult4	<= mmult4_d;
					nstate 	<= 0;
					XAc 		<= 0;
					YAc 		<= 0;
				end
		 endcase
	end

	
	always@(negedge clk) begin
	 mmult_d  <= mmult; 		// Res 1
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
