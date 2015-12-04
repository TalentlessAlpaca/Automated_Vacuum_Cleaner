`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:23:37 11/08/2015 
// Design Name: 
// Module Name:    Integradorv2 
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
module Integradorv2(
    input [15:0] a,
    input [15:0] dt,
    input enable,
    input rst,
    input clk,
    output reg [31:0] v,
    output reg busy
    );
	 	
	 wire ready;
	 reg en;
	 reg [31:0] pv;
	 reg [31:0] vd;
	 reg [31:0] pvd;
	 reg [31:0] varI;
	 wire [31:0] varS;
	 reg rest;
	 initial rest <= 1'b1;
	 initial v = 32'h0000;
	 	 booth_mult Multi(.clk(clk),.rst(rest), .en(en),.A(dt),.B(varI),.busy(ready),.R(varS));
	 
	 //--------------------------------Modulo states
	
	 
	 
	 	 localparam 
						reset 	= 5'd0,
						ini	   = 5'd1,
						mulv		= 5'd2,
						check_1  = 5'd3,
						afterv	= 5'd4,
						end_state= 5'd5;
						
						

						
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
				 v  <= 32'd0;
				 pv <= 32'd0;
				 busy <= 1'd1;
				 en <= 1'd0;
				 varI <= 32'd0;
				 rest <= 1'd1;
				 next_state <= ini;
			end
			
			ini: begin
				 busy <= 1'd0;
				 v  <= vd;
				 pv <= pvd;
				 en <= 1'd0;
				 varI <= 1'd0;
				 rest <= 1'd1;
				
				if (!enable) next_state <= ini;
					else 		next_state <= mulv;
			
			end
			
			mulv: begin
				 v  <= vd;
				 pv <= pvd;
			  	 busy <= 1'd1;
				 en <= 1'b1;
				 rest <=1'b0;
				 varI <= a;
				 next_state <= check_1;
			end
			
			check_1: begin
				 v  <= vd;
			  	 busy <= 1'd1;
				 en <= 1'b0;
				 rest <= 1'b0;
				 varI <= a;
			
				if (!ready) begin
				next_state <= afterv;
				pv <= v + varS;
				end
					else begin
					pv <= pvd;
					next_state <= check_1;
					end
					
			end
			
			afterv: begin
			v  <= vd;
			pv <= pvd;
			busy <= 1'd1;
			varI <= a;
			
			rest <= 1'b1;
			en <= 1'd0;
			next_state <= end_state;
				
			end
						
			end_state:begin
				
				 pv <= pvd;
				 en <= 1'd0;
				 rest <=1'b1;
				 varI <= a;
				 v <= pv;
				 busy <= 1'd0;
					if (!enable) next_state <= end_state;
					else 		next_state <= ini;
			end
			
			default: begin
				 pv <= pvd;
				 en <= 1'd0;
				 rest <= 1'b1;
				 varI <= a;
				 v <= vd;
				 busy <= 1'd0;
				 next_state <= ini;
			end
		endcase
	 end
	 
	always @(negedge clk)begin
	pvd <= pv;
	vd <= v;
	end

endmodule
