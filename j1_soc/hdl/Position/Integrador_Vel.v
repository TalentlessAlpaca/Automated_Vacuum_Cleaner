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
module Integrador_vel(
    input [15:0] a,
    input [15:0] dt,
    input enable,
    input rst,
    input clk,
    output [31:0] v,
    output reg busy
    );
	 	
	 wire busy_mul;
	 reg en;
	 reg [63:0] acum;
	 reg [63:0] acum_d;
	 wire [31:0] varS;
	 reg rest;
	 
	 localparam k_fac = 32'd20084;
	 localparam disp = 11;
	 
	 assign v = acum[63:32];
	 
	booth_mult Multi(
		.clk(clk),
		.rst(rest),
		.en(en),
		.A(dt),
		.B(a),
		.busy(busy_mul),
		.R(varS)
	);
	
	reg rest_2,en_2;
	wire busy_mul_2;
	wire [63:0] varS_2;
	
	booth_mult_64 Multi64(
		.clk(clk),
		.rst(rest_2),
		.en(en_2),
		.A(varS),
		.B(k_fac),
		.busy(busy_mul_2),
		.R(varS_2)
	);
	 
	 reg div1_rst;
	 reg div_en;
	 reg [63:0] div_A, div_A_d;
	 localparam div_B = 64'd100000;
	 wire div_busy;
	 wire [63:0] div_res;
	 
	 div_64 divider (
		.clk(clk), 
		.rst(div1_rst), 
		.init_in(div_en), 
		.A(div_A), 
		.B(div_B), 
		.Result(div_res), 
		.busy(div_busy)
     );
	 
	 
	 initial begin
		rest 	= 1'b1;
		div1_rst = 1'b1;
		acum = 64'd0;
		acum_d = 64'd0;
		div_A = 64'd0;
	 end
	 
	//--------------------------------Modulo states
	 	 localparam 
					reset 		= 5'd0,
					ini	  		= 5'd1,
					mulv		= 5'd2,
					check_1  	= 5'd3,
					mulq		= 5'd4,
					check_3		= 5'd5,
					div_1		= 5'd6,
					check_2		= 5'd7,
					afterv		= 5'd8,
					end_state	= 5'd9;
						
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
				acum 			<= 32'd0;
				busy 			<= 1'd1;
				en 			<= 1'd0;
				rest 			<= 1'd1;
				
				rest_2			<= 1'b1;
				en_2			<= 1'b0;
				
				div_A			<= 64'd0;
				div1_rst		<= 1'b1;
				div_en		<= 1'b0;
				
				next_state 	<= ini;
			end
			
			ini: begin
				busy 			<= 1'd0;
				acum 			<= acum_d;
				en 				<= 1'd0;
				rest 			<= 1'd0;
				
				rest_2			<= 1'b0;
				en_2			<= 1'b0;
				
				div_A			<= 64'd0;
				div1_rst		<= 1'b0;
				div_en			<= 1'b0;
				
				if (enable) next_state <= mulv;
				else 		next_state <= ini;
			
			end
			
			mulv: begin
				acum 			<= acum_d;
			  	busy 			<= 1'd1;
				en 				<= 1'b1;
				rest 			<= 1'b0;
				
				rest_2			<= 1'b0;
				en_2			<= 1'b0;
				
				div_A			<= 64'd0;
				div1_rst		<= 1'b0;
				div_en			<= 1'b0;
				
				if(busy_mul)	next_state <= check_1;
				else 			next_state <= mulv;
			end
			
			check_1: begin
				acum 		<= acum_d;
			  	busy 		<= 1'd1;
				en 			<= 1'b0;
				
				rest_2		<= 1'b0;
				en_2		<= 1'b0;
				
				rest 		<= 1'b0;
				div_A		<= 64'd0;
				div1_rst	<= 1'b0;
				div_en		<= 1'b0;
				
				if (busy_mul) 	next_state <= check_1;
				else 			next_state <= div_1;
					
			end
			
			mulq: begin
				acum 			<= acum_d;
			  	busy 			<= 1'd1;
				en 				<= 1'b1;
				rest 			<= 1'b0;
				
				rest_2			<= 1'b0;
				en_2			<= 1'b1;
				
				div_A			<= 64'd0;
				div1_rst		<= 1'b0;
				div_en			<= 1'b0;
				
				if(busy_mul_2)	next_state <= check_3;
				else 			next_state <= mulq;
			end
			
			check_3: begin
				acum 			<= acum_d;
			  	busy 			<= 1'd1;
				en 				<= 1'b1;
				rest 			<= 1'b0;
				
				rest_2			<= 1'b0;
				en_2			<= 1'b1;
				
				div_A			<= varS_2<<19;
				div1_rst		<= 1'b0;
				div_en			<= 1'b0;
				
				if(busy_mul_2)	next_state <= check_3;
				else 			next_state <= div_1;
			end
			
			div_1: begin
				busy <= 1'd1;
				en <= 1'b0;
				rest <= 1'b0;
				if(varS[31]) 	div_A <= (~varS)+1;
				else				div_A <= varS;
				div1_rst	<= 1'b0;
				div_en		<= 1'b1;
				
				if(div_busy) next_state <= check_2;
				else next_state <= div_1;
			end
			
			check_2: begin
				busy <= 1'd1;
				en <= 1'b0;
				rest <= 1'b0;
				
				div1_rst	<= 1'b0;
				div_en		<= 1'b1;
				
				if(div_busy) next_state <= check_2;
				else next_state <= afterv;
			end
			
			afterv: begin
				if(clk) 	begin
					//if (varS == 0)		acum <= acum_d;
					if(varS[31]) acum <= acum_d + 1 + ~div_res;
					else					acum <= acum_d + div_res;
				end
				else 		acum <= acum_d;
				busy <= 1'd1;
				rest <= 1'b1;
				en <= 1'd0;
				next_state <= ini;
			end
			/*
			end_state: begin
				en <= 1'd0;
				rest <=1'b1;
				busy <= 1'd0;
				if (!enable) next_state <= end_state;
				else 		next_state <= ini;
			end
			*/
			default: begin
				acum <= acum_d;
				en <= 1'd0;
				rest <= 1'b1;
				busy <= 1'd0;
				next_state <= ini;
			end
		endcase
	 end
	 
	always @(negedge clk)begin
		acum_d <= acum;
		// A_d <= A;
	end

endmodule