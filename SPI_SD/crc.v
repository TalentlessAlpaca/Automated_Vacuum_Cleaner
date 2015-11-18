module CRC(
	input               clk,
	input               reset,
	input [15:0]        crc_dat_i,
	input      	    init_crc,
	output reg [6:0]    crc_dat_o,
	output 		    ack,
)

	reg [2:0] bitcount;
	wire reg [15:0] proceso;	
	reg [6:0] divisor;
	wire [3:0]cont;
	divisor <= 7b1111111;
	always @(posedge clk) begin
		if (reset == 1'b1) begin
				ack      <= 0;
				bitcount <= 3'b000;
				init_crc <= 1'b0;
				proceso  <= 4'h00;
				crc_dat_i <= 4'h00;
				crc_dat_o <= 4'h00;
				cont     <= 4'b0000;
		end 
		else begin
				if (init_crc & ~ack) begin
					if (cont == 4'b1111) begin
 						ack  <= 1'b1;
					end
					if (cont == 4'b0000) begin
						a <=15;
						b <=8;
					end

					proceso <= proceso[a,b]^divisor[6:0];
					a <= a+1;
					b <= b+1;
					cont <= cont+1;
					if (b==0) begin
						ack <=1;
					end
				end

				if (ack) begin
					crc_dat_o <= proceso [6:0];
					ack <= 1'b0;
					cont <= 4'b0000;
				end

		end 
						
	end

endmodule


^
	
