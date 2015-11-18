`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:55:01 11/04/2015 
// Design Name: 
// Module Name:    c_escritura 
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
module c_escritura(
	input clk,
   	input rst,
	input start,
	input[15:0] data_in,
	imput [7:0] data_response,
	output[47:0] data_out,
  	output busy,
	imput crc;
	input crcdone;
	output ack,
	output cs
);

parameter c_escritura = 011000;  // comando de escritura 

assign start=cs;
	
       always @(posedge clk) begin 	  
			if (reset == 1'b1) begin
				ch <= 0;
				ack <= 0;	
				busy <=0;
				data out <= 3'h000;
       reset <=1’b0;
			end
			else begin
				if (start)
					busy <=1;
					crc instcrc( //falta colocar eltiempo qe tarda crc en dar la respuesta
						.ack(crcdone),
						.init_crc(1),
						.crc_dat_in(data_in)
						.crc_dat_o(crc)
					)
       data_out <= {0},{1},{c_escritura},{2´h00},{data_in},{crc},{1};
					
       end

			end
			if (ack) begin	
       spi instspi(
					.mosi(data_out),
					.cs(1),
					.miso(data_response)
				)
				if (dataresponse !== 7b’0000000)
					reset <=1;
				end
			end
		end

endmodule
