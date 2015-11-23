`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:31:57 11/22/2015 
// Design Name: 
// Module Name:    LCD 
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
module LCD(
    input clk,
    input rst,
    input en,
    input reset,
    input set,
    input clear,
    input off,
    input on,
    input entry_mode,
    input cursor,
    input w_char,
    input int_cnt,
    output reg [15:0] limit_cnt,
    output reg en_cnt,
    output reg rs,
    output reg e,
    output reg [7:0] data
    );
	 
	 reg [5:0] state;
	 reg [7:0] data_d;
	 
	 localparam f_rst		= 0,
					f_idle	= 1,
					f_reset	= 2,
					f_set		= 3,
					f_clear	= 4,
					f_off		= 5,
					f_on		= 6,
					f_entry	= 7,
					f_cursor	= 8,
					f_w_char	= 9;
	 // RESET
	 localparam res_data 	= 10;
	 // SET
	 localparam set_data		= 11;
	 // CLEAR
	 // OFF
	 // ON
	 // ENTRY_MODE
	 // CURSOR
	 // W_CHAR
	 // GENERIC
	 localparam lcd_en		= 30,
					lcd_del_1	= 31,
					lcd_dis		= 32,
					lcd_del_200	= 33;
	 
	 always@(posedge clk) begin
		if(rst) state <= f_rst;
		else begin
			case(state)
			f_rst: state <= f_idle;
			
			f_idle: begin
				if(reset) state <= f_reset;
				else if(set) state <= f_set;
				// Poner el resto de condiciones de entrada...
				else state <= f_idle;
			end
			
			// RESET FUNCTION STATES
			f_reset: state <= res_data;
			
			res_data: state <= lcd_en;
			
			lcd_en: state <= lcd_del_1;
			
			lcd_del_1: begin
				if(int_cnt)	state <= lcd_dis;
				else state <= lcd_del_1;
			end
			
			lcd_dis: state <= lcd_del_200;
			
			lcd_del_200: begin
				if(int_cnt) state <= f_idle;
				else state <= lcd_del_200;
			end
			
			default: state <= f_rst;
			
			endcase
		end
	 end
	 
	 always@(*) begin
		case(state)
			f_rst: begin
				limit_cnt 	<= 0;
				en_cnt		<= 0;
				rs				<= 0;
				e				<=	0;
				data			<= 0;
			end
			f_idle: begin
				limit_cnt 	<= 0;
				en_cnt		<= 0;
				rs				<= 0;
				e				<=	0;
				data			<= 0;
			end
			f_reset: begin
				limit_cnt 	<= 0;
				en_cnt		<= 0;
				rs				<= 0;
				e				<=	0;
				data			<= 0;
			end
			f_set: begin
				limit_cnt 	<= 0;
				en_cnt		<= 0;
				rs				<= 0;
				e				<=	0;
				data			<= 0;
			end
			f_clear: begin
				limit_cnt 	<= 0;
				en_cnt		<= 0;
				rs				<= 0;
				e				<=	0;
				data			<= 0;
			end
			f_off: begin
				limit_cnt 	<= 0;
				en_cnt		<= 0;
				rs				<= 0;
				e				<=	0;
				data			<= 0;
			end
			f_on: begin
				limit_cnt 	<= 0;
				en_cnt		<= 0;
				rs				<= 0;
				e				<=	0;
				data			<= 0;
			end
			f_entry: begin
				limit_cnt 	<= 0;
				en_cnt		<= 0;
				rs				<= 0;
				e				<=	0;
				data			<= 0;
			end
			f_cursor: begin
				limit_cnt 	<= 0;
				en_cnt		<= 0;
				rs				<= 0;
				e				<=	0;
				data			<= 0;
			end
			f_w_char: begin
				limit_cnt 	<= 0;
				en_cnt		<= 0;
				rs				<= 0;
				e				<=	0;
				data			<= 0;
			end
			// RESET
			res_data: begin
				limit_cnt 	<= 0;
				en_cnt		<= 0;
				rs				<= 0;
				e				<=	0;
				data			<= 8'h30;
			end
			
			// GENERIC
			lcd_en: begin
				limit_cnt 	<= 0;
				en_cnt		<= 0;
				rs				<= 0;
				e				<=	1;
				data			<= data_d;
			end
			lcd_del_1: begin
				limit_cnt 	<= 100; // 1ms
				en_cnt		<= 1;
				rs				<= 0;
				e				<=	1;
				data			<= data_d;
			end
			lcd_dis: begin
				limit_cnt 	<= 0;
				en_cnt		<= 0;
				rs				<= 0;
				e				<=	0;
				data			<= data_d;
			end
			lcd_del_200: begin
				limit_cnt 	<= 20000;
				en_cnt		<= 0;
				rs				<= 0;
				e				<=	0;
				data			<= data_d;
			end
		endcase
	 end
	 
	 always@(negedge clk) begin
		data_d <= data;
	 end
	 
endmodule
