`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    05:19:21 12/05/2015 
// Design Name: 
// Module Name:    position_peripheral 
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
module position_peripheral(
	 // Non-J1 Inputs
    input clk,
    input rst,
    input SDA_in,
    input int_o,
    input clk_frame,
    input [31:0] counter_count,
	 // J1 Signals
    input cs,
    input rd,
    input wr,
    input [4:0] addr,
    input [15:0] d_in,
    output reg [15:0] d_out,
    // Non-J1 Outputs
	 output SDA_oen,
    output SDA_out,
	 output SCL,
    output int_limit,
    output int_en,
    output counter_en,
    output counter_rst,
    output [31:0] clk_freq
    );
	 
	 ////////////////////////// Regs and Wires //////////////////////////
	 reg[4:0] s; // Multiplexer
	 
	 reg 	en, 
			w_ram,
			w_ram_ref;
	 reg [7:0] w_ram_address;
	 reg [15:0] w_ram_data_up, 
					w_ram_data_low;
	 wire busy;
	 wire [31:0] w_ram_data;
	 assign w_ram_data = {w_ram_data_up,w_ram_data_low};
	 
	 wire [15:0] 	vX_up,vX_low,
						vY_up,vY_low,
						
						pX_up,pX_low,
						pY_up,pY_low,
						
						theta_up,theta_low;
	 /////////////////////////////////////////////////////////////////////
	 localparam en_r 					= 5'd1,
					busy_r				= 5'd2,
					w_ram_r				= 5'd3,
					w_ram_ref_r			= 5'd4,
					w_ram_address_r	= 5'd5,
					w_ram_data_up_r 	= 5'd6,
					w_ram_data_low_r 	= 5'd7,
					vX_up_r				= 5'd8,
					vX_low_r				= 5'd9,
					vY_up_r				= 5'd10,
					vY_low_r				= 5'd11,
					pX_up_r				= 5'd12,
					pX_low_r				= 5'd13,
					pY_up_r				= 5'd14,
					pY_low_r				= 5'd15,
					theta_up_r			= 5'd16,
					theta_low_r			= 5'd17;
	 ////////////////////////// Address Decoder //////////////////////////
	 always@(*) begin
		case(addr)
			5'd0: begin
				s <= (cs&&wr)? 5'd1 : 5'd0;
			end
			5'd1: begin
				s <= (cs&&rd)? 5'd2 : 5'd0;
			end
			5'd2: begin
				s <= (cs&&wr)? 5'd3 : 5'd0;
			end
			5'd3: begin
				s <= (cs&&wr)? 5'd4 : 5'd0;
			end
			5'd4: begin
				s <= (cs&&wr)? 5'd5 : 5'd0;
			end
			5'd5: begin
				s <= (cs&&wr)? 5'd6 : 5'd0;
			end
			5'd6: begin
				s <= (cs&&wr)? 5'd7 : 5'd0;
			end
			
			5'd7: begin
				s <= (cs&&wr)? 5'd8 : 5'd0;
			end
			5'd8: begin
				s <= (cs&&rd)? 5'd9 : 5'd0;
			end
			5'd9: begin
				s <= (cs&&rd)? 5'd10 : 5'd0;
			end
			5'd10: begin
				s <= (cs&&rd)? 5'd11 : 5'd0;
			end
			5'd11: begin
				s <= (cs&&rd)? 5'd12 : 5'd0;
			end
			5'd12: begin
				s <= (cs&&rd)? 5'd13 : 5'd0;
			end
			5'd13: begin
				s <= (cs&&rd)? 5'd14 : 5'd0;
			end
			5'd14: begin
				s <= (cs&&rd)? 5'd15 : 5'd0;
			end
			5'd15: begin
				s <= (cs&&rd)? 5'd16 : 5'd0;
			end
			5'd16: begin
				s <= (cs&&rd)? 5'd17 : 5'd0;
			end
			
			default: s <= 5'd0;
		endcase
	 end
	 /////////////////////////////////////////////////////////////////////
	 
	 //////////////////////////  Register Write  /////////////////////////
	 always@(negedge clk) begin
		case(s)
			en_r: begin
				en 				<= d_in[0];
				//busy 				<= busy;
				w_ram 			<= w_ram;
				w_ram_ref 		<= w_ram_ref;
				w_ram_address 	<= w_ram_address;
				w_ram_data_up 	<= w_ram_data_up;
				w_ram_data_low <= w_ram_data_low;
				d_out 			<= 16'h0000;
			end
			
			busy_r: begin
				en 				<= en;
				//busy 				<= d_in[0];
				w_ram 			<= w_ram;
				w_ram_ref 		<= w_ram_ref;
				w_ram_address 	<= w_ram_address;
				w_ram_data_up 	<= w_ram_data_up;
				w_ram_data_low <= w_ram_data_low;
				d_out 			<= {15'd0,busy};
			end
			
			w_ram_r: begin
				en 				<= en;
				//busy 				<= busy;
				w_ram 			<= d_in[0];
				w_ram_ref 		<= w_ram_ref;
				w_ram_address 	<= w_ram_address;
				w_ram_data_up 	<= w_ram_data_up;
				w_ram_data_low <= w_ram_data_low;
				d_out 			<= 16'h0000;
			end
			
			w_ram_ref_r: begin
				en 				<= en;
				//busy 				<= busy;
				w_ram 			<= w_ram;
				w_ram_ref 		<= d_in[0];
				w_ram_address 	<= w_ram_address;
				w_ram_data_up 	<= w_ram_data_up;
				w_ram_data_low <= w_ram_data_low;
				d_out 			<= 16'h0000;
			end
			
			w_ram_address: begin
				en 				<= en;
				//busy 				<= busy;
				w_ram 			<= w_ram;
				w_ram_ref 		<= w_ram_ref;
				w_ram_address 	<= d_in[7:0];
				w_ram_data_up 	<= w_ram_data_up;
				w_ram_data_low <= w_ram_data_low;
				d_out 			<= 16'h0000;
			end
			
			w_ram_data_up_r: begin
				en 				<= en;
				//busy 				<= busy;
				w_ram 			<= w_ram;
				w_ram_ref 		<= w_ram_ref;
				w_ram_address 	<= w_ram_address;
				w_ram_data_up 	<= d_in;
				w_ram_data_low <= w_ram_data_low;
				d_out 			<= 16'h0000;
			end
			
			w_ram_data_low_r: begin
				en 				<= en;
				//busy 				<= busy;
				w_ram 			<= w_ram;
				w_ram_ref 		<= w_ram_ref;
				w_ram_address 	<= w_ram_address;
				w_ram_data_up 	<= w_ram_data_up;
				w_ram_data_low <= d_in;
				d_out 			<= 16'h0000;
			end
			
			
			
			
			vX_up_r: begin
				en 				<= en;
				//busy 				<= busy;
				w_ram 			<= w_ram;
				w_ram_ref 		<= w_ram_ref;
				w_ram_address 	<= w_ram_address;
				w_ram_data_up 	<= w_ram_data_up;
				w_ram_data_low <= w_ram_data_low;
				d_out 			<= vX_up;
			end
			
			vX_low_r: begin
				en 				<= en;
				//busy 				<= busy;
				w_ram 			<= w_ram;
				w_ram_ref 		<= w_ram_ref;
				w_ram_address 	<= w_ram_address;
				w_ram_data_up 	<= w_ram_data_up;
				w_ram_data_low <= w_ram_data_low;
				d_out 			<= vX_low;
			end
			
			vY_up_r: begin
				en 				<= en;
				//busy 				<= busy;
				w_ram 			<= w_ram;
				w_ram_ref 		<= w_ram_ref;
				w_ram_address 	<= w_ram_address;
				w_ram_data_up 	<= w_ram_data_up;
				w_ram_data_low <= w_ram_data_low;
				d_out 			<= vY_up;
			end
			
			vY_low_r: begin
				en 				<= en;
				//busy 				<= busy;
				w_ram 			<= w_ram;
				w_ram_ref 		<= w_ram_ref;
				w_ram_address 	<= w_ram_address;
				w_ram_data_up 	<= w_ram_data_up;
				w_ram_data_low <= w_ram_data_low;
				d_out 			<= vY_low;
			end
			
			pX_up_r: begin
				en 				<= en;
				//busy 				<= busy;
				w_ram 			<= w_ram;
				w_ram_ref 		<= w_ram_ref;
				w_ram_address 	<= w_ram_address;
				w_ram_data_up 	<= w_ram_data_up;
				w_ram_data_low <= w_ram_data_low;
				d_out 			<= pX_up;
			end
			
			pX_low_r: begin
				en 				<= en;
				//busy 				<= busy;
				w_ram 			<= w_ram;
				w_ram_ref 		<= w_ram_ref;
				w_ram_address 	<= w_ram_address;
				w_ram_data_up 	<= w_ram_data_up;
				w_ram_data_low <= w_ram_data_low;
				d_out 			<= pX_low;
			end
			
			pY_up_r: begin
				en 				<= en;
				//busy 				<= busy;
				w_ram 			<= w_ram;
				w_ram_ref 		<= w_ram_ref;
				w_ram_address 	<= w_ram_address;
				w_ram_data_up 	<= w_ram_data_up;
				w_ram_data_low <= w_ram_data_low;
				d_out 			<= pY_up;
			end
			
			pY_low_r: begin
				en 				<= en;
				//busy 				<= busy;
				w_ram 			<= w_ram;
				w_ram_ref 		<= w_ram_ref;
				w_ram_address 	<= w_ram_address;
				w_ram_data_up 	<= w_ram_data_up;
				w_ram_data_low <= w_ram_data_low;
				d_out 			<= pY_low;
			end
			
			theta_up_r: begin
				en 				<= en;
				//busy 				<= busy;
				w_ram 			<= w_ram;
				w_ram_ref 		<= w_ram_ref;
				w_ram_address 	<= w_ram_address;
				w_ram_data_up 	<= w_ram_data_up;
				w_ram_data_low <= w_ram_data_low;
				d_out 			<= theta_up;
			end
			
			theta_low_r: begin
				en 				<= en;
				//busy 				<= busy;
				w_ram 			<= w_ram;
				w_ram_ref 		<= w_ram_ref;
				w_ram_address 	<= w_ram_address;
				w_ram_data_up 	<= w_ram_data_up;
				w_ram_data_low <= w_ram_data_low;
				d_out 			<= theta_low;
			end
			
			default: begin
				en 				<= en;
				//busy 				<= busy;
				w_ram 			<= w_ram;
				w_ram_ref 		<= w_ram_ref;
				w_ram_address 	<= w_ram_address;
				w_ram_data_up 	<= w_ram_data_up;
				w_ram_data_low <= w_ram_data_low;
				d_out 			<= 16'h0000;
			end
		endcase
	 end
	 /////////////////////////////////////////////////////////////////////
	 
	 position_topModule instance_name (
		 .clk(clk), 
		 .rst(rst), 
		 
		 .en(en), 
		 .busy(busy), 
		 .w_ram(w_ram), 
		 .w_ram_ref(w_ram_ref), 
		 .w_ram_address(w_ram_address), 
		 .w_ram_data(w_ram_data), 
		 .vX(vX), 
		 .vY(vY), 
		 .pX(pX), 
		 .pY(pY), 
		 .theta(theta), 
		 
		 .int_o(int_o), 
		 .int_limit(int_limit), 
		 .int_en(int_en), 
		 .counter_count(counter_count), 
		 .counter_en(counter_en), 
		 .counter_rst(counter_rst), 
		 .clk_frame(clk_frame), 
		 .clk_freq(clk_freq), 
		 
		 .SCL(SCL), 
		 .SDA_oen(SDA_oen), 
		 .SDA_in(SDA_in), 
		 .SDA_out(SDA_out)
    );
	 
endmodule
