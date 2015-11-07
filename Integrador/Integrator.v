`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:16:13 10/18/2015 
// Design Name: 
// Module Name:    Integrator 
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
module Integrator(
    input [15:0] acx,
    input [15:0] acy,
    input [15:0] acz,
	 input [15:0] dt,
    input rst,
    input clk,
	 input enable,

    output [15:0] vx,
    output [15:0] vy,
    output [15:0] vz,
    output [15:0] px,
    output [15:0] py,
    output [15:0] pz,
    output bussy
    );
	 
	 
	 wire [15:0] acx,acy,acz,rst,clk, enable;
	 
	 reg [15:0] vx, vy, vz, px, py, pz;
	 reg bussy;
	
	 wire ready;
	 
	 //--------------------------------Internal variables
	 reg en;
	 reg [15:0] pvx, pvy , pvz, ppx, ppy, ppz;
	 reg [15:0] varI;
	 wire [31:0] varS;
	 reg rest;
	 initial rest <=1'b1;
	 
	 	 booth_mult Multi(.clk(clk),.rst(rest), .en(en),.A(dt),.B(varI),.busy(ready),.R(varS));
	 
	 //--------------------------------Modulo states
	
	 
	 
	 	 localparam 
						reset 	= 5'd0,
						ini	   = 5'd1,
						mulvx		= 5'd2,
						check_1  = 5'd3,
						aftervx	= 5'd4,
						mulvy		= 5'd5,
						check_2  = 5'd6,
						aftervy	= 5'd7,
						mulvz 	= 5'd8,
						check_3  = 5'd9,
						aftervz	= 5'd10,
						mulpx  	= 5'd11,
						check_4  = 5'd12,
						afterpx  = 5'd13,
						mulpy    = 5'd14,
						check_5  = 5'd15,
						afterpy  = 5'd16,
						mulpz    = 5'd17,
						check_6  = 5'd18,
						afterpz  = 5'd19,
						end_state= 5'd20;
						
						

						
	 // State Machine Regs
	 reg[4:0] state;
	 reg[4:0] next_state;
	 
	 initial state = 0;
	 initial next_state = 0;
	 
	 
	 
	 always @(posedge clk)begin
	  if(rst) state <= reset;
	  else state <= next_state;  
	  
	 end
	
	always @(*)begin
		case(state)
			reset: begin
				 vx  <=0;
				 vy  <=0;
				 vz  <=0;
				 px  <=0;
				 py  <=0;
				 pz  <=0;
				 //---------------------reinicio de las variables locales
				 pvx <=0;
				 pvy <=0;
				 pvz <=0;
				 ppx <=0;
				 ppy <=0;
				 ppz <=0;
				 bussy <=1;
				 
				 en<=0;
				 next_state <= ini;
			end
			
			ini: begin
				bussy <=1;
			
				
				if (!enable) next_state <= ini;
					else 		next_state <= mulvx;
			
			end
			
			mulvx: begin
			en <= 1'b1;
			rest <=1'b0;
			varI <= acx;
			next_state <= check_1;
			end
			
			check_1: begin
			
			
				if (!ready) begin
				next_state <= aftervx;
				pvx<=varS;
				end
					else 
					next_state <= check_1;
					
					
			end
			
			aftervx: begin
			
			
			rest<=1'b1;
			en<=0;
			next_state <= mulvy;
				
			end
			
			mulvy:begin
					 varI <= acy;
					 rest<=1'b0;
					 en <= 1'b1;
					 next_state <= check_2;
					 end
			check_2:begin
			
				if (!ready) begin
					pvy<=varS;
					next_state <= aftervy;
					end
				else
					next_state <= check_2;
			
			end
			
			aftervy: begin
					en <= 0;
					rest<=1'b1;
					next_state <= mulvz;	
			end
			
			mulvz: begin
							rest<=1'b0;
							en <= 1'b1;
							varI <= acz;
							next_state <= check_3;
					end
					
			check_3:begin
			
				if (!ready) begin
					pvz<=varS;
					next_state <= aftervz;
					end
				else
					next_state <= check_3;
			
			end
			
			aftervz: begin
					en <= 1'b0;
					rest<=1'b1;					
					next_state <= mulpx;

			end
			
			mulpx: begin
			en <= 1'b1;
			rest<=1'b0;
			varI <= pvx;
			next_state <= check_4;
			end
			
			check_4:begin
			
				if (!ready) begin
					ppx<=varS;
					next_state <= afterpx;
					end
				else
					next_state <= check_4;
			
			end
			
			afterpx:begin
					en <= 1'b0;
					rest<=1'b1;
					next_state <= mulpy;
			end
			
			mulpy: begin
					en <= 1'b1;
					rest<=1'b0;
					varI <= pvy;
					next_state = check_5;
					end
		
			check_5:begin
			
				if (!ready) begin
					ppy<=varS;
					next_state <= afterpy;
					end
				else
					next_state <= check_5;
			
			end
			
			afterpy:begin
					en <= 1'b0;
					rest<=1'b1;
					next_state <= mulpz;
			end
			
			mulpz:begin
			en <= 1'b1;
			rest<=1'b0;		 
			varI <= pvz;
			next_state <= check_6;
			end
			
			check_6:begin
			
				if (!ready) begin
					ppz<=varS;
					next_state <= afterpz;
					end
				else
					next_state <= check_6;
			
			end
			
			afterpz:begin
					en <= 1'b0;
					rest<=1'b1;
					next_state <= end_state;
			end
			
			end_state:begin
			
					vx    <= pvx;
					vy    <= pvy;
					vz    <= pvz;
					px    <= ppx;
					py    <= ppy;
					pz    <= ppz;
					bussy <= 0;
					if (!enable) next_state <= end_state;
					else 		next_state <= ini;
			end
		endcase
	 end


endmodule
