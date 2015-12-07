`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:16:53 12/06/2015 
// Design Name: 
// Module Name:    Peripheral_timer 
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
module Peripheral_clk_generator (clk , rst , d_in , cs , addr , rd , wr, d_out );
    
	 input clk;
    input rst;
    input [15:0] d_in;
    input cs;
    input [3:0] addr;
    input rd;
    input wr;
    output reg [15:0] d_out;
    
//--------------------------------------

	reg [5:0] s; 	//selector mux_4  and write registers

	reg [31:0] limit;
	reg [31:0] count;
	reg en=0;

	wire clk_0;	
	wire done;

//----------------------------------------

always @(*) begin
case (addr)
4'h0:begin s = (cs && wr) ? 6'b000001 : 6'b000000 ;end //limit
4'h2:begin s = (cs && wr) ? 6'b000010 : 6'b000000 ;end //count
4'h4:begin s = (cs && wr) ? 6'b000100 : 6'b000000 ;end //init

4'h6:begin s = (cs && rd) ? 6'b001000 : 6'b000000 ;end //done
4'h8:begin s = (cs && rd) ? 6'b010000 : 6'b000000 ;end //clk_0
default:begin s = 6'b000000 ; end
endcase
end

//----------------------------------------

always @(negedge clk) begin

limit    = (s[0]) ? d_in : limit;	//Write Registers
count    = (s[1]) ? d_in : count;	//Write Registers
en = s[2] ; // (s[2]) ? d_in : init;	//Write Registers

end


//----------------------------------------

always @(negedge clk) begin
case (s[5:3])
3'b001: d_out[0] = done ;
3'b010: d_out    = clk_0 ;
default: d_out   = 0 ;
endcase
end//-----------------------------------------------mux_4

//----------------------------------------

clk_generator c_g ( .clk(clk), .rst(rst), .limit(limit), .count(count), .en(en), .clk_0(clk_0), .done(done) );


endmodule
