`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:10:04 11/19/2015 
// Design Name: 
// Module Name:    crc 
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
module crc_7( 

	input start,
	input clk,
	input [31:0] data_in,
	output [7:0] data_out,
	output done
	);

	localparam polinomio = 8'b10001001 ;
	
	reg rdone;
	reg [31:0] r_data;
	reg [7:0] proceso;
	initial rdone = 1'b0;
	
	localparam INIT = 3'd0, GET = 3'd1, COMP = 3'd2, XOR = 3'd3, CORRER = 3'd4, SEND = 3'd5; 
	reg[2:0] state;
	initial state = INIT;
	
	reg[6:0] cont;
	
	assign data_out = proceso;
	assign done = rdone;
	
	always @(posedge clk or negedge clk) begin
		case(state)
		
			INIT : begin
				cont <= 6'd0;
				rdone <= 1'b0; 
				if (start) begin
					r_data <= data_in;
					state = GET;
				end	
			end
			
			GET : begin
				proceso <= r_data[31:31-8];
				state = COMP;
			end
			
			COMP : begin
				
				r_data <= r_data << 1;// CORRER R_DATA
				
				cont <= cont + 1'b1;
				if(proceso[7])
					state = XOR;
				else
					state = CORRER;
			end
			
			XOR : begin
				proceso <= proceso ^ polinomio;
				state = CORRER;
			end
			
			CORRER : begin
				r_data <= {proceso[7:0], r_data[31-7-1:0], 1'b0};
				if (cont == 6'd31)
					state = SEND;
				else
					state = GET;
			end
			
			SEND : begin
				rdone <= 1'b1;
				state = INIT;
			end
			
		endcase
	end

	
endmodule
