module peripheral_spi_master(clk , rst , d_in , cs , addr , rd , wr, d_out,mosi ,miso, sck, ss);
  
	  input clk;
	  input rst;
	  input [15:0]d_in;
	  input cs;
	  input [3:0]addr; // 4 LSB from j1_io_addr
	  input rd;
	  input wr;
	  output reg [15:0]d_out;
	  
	  input miso;
	  output mosi, sck, ss;
	  

//------------------------------------ regs and wires-------------------------------

	reg [4:0] s; 	//selector mux_4  and write registers

	reg [7:0] data_in=0;
	reg start=0;

	wire [7:0] data_out;
	wire busy;
	wire new_data;
	wire mosi;
	wire miso;
	wire sck;
	wire ss;


//------------------------------------ regs and wires-------------------------------




	always @(*) begin//------address_decoder------------------------------
		case (addr)
			4'h0:begin s = (cs && wr) ? 5'b00001 : 5'b00000 ;end //dMOSI
			4'h2:begin s = (cs && wr) ? 5'b00010 : 5'b00000 ;end //start

			4'h4:begin s = (cs && rd) ? 5'b00100 : 5'b00000 ;end //data_out
			4'h6:begin s = (cs && rd) ? 5'b01000 : 5'b00000 ;end //busy
			4'h8:begin s = (cs && rd) ? 5'b10000 : 5'b00000 ;end //new_data
			default:begin s = 5'b00000 ; end
		endcase
	end//------------------address_decoder--------------------------------




	always @(negedge clk) begin//-------------------- escritura de registros 

		data_in   = (s[0]) ? d_in[7:0] : data_in;	//Write Registers
		start     =  s[1] ; 								//Write Registers

	end//------------------------------------------- escritura de registros



	always @(negedge clk) begin//-----------------------mux_4 :  multiplexa salidas del periferico
		case (s[4:2])
			3'b001: d_out[15:0]  = {8'hFF, data_out} ;
			3'b010: d_out[0]    = busy ;
			3'b100: d_out[0]    = new_data ;
			default: d_out      = 0 ;
		endcase
	end//-----------------------------------------------mux_4



	spi_master spi_m (.busy(busy), .clk(clk), .rst(rst), .data_in(data_in), .start(start), .data_out(data_out), .new_data(new_data), .miso(miso), .mosi(mosi), .sck(sck), .ss(ss));

endmodule