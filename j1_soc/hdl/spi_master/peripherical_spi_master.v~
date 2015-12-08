module peripheral_spi_master(clk , rst , d_in , cs , addr , rd , wr, d_out,mosi ,miso, sck, ss);
  
	//entradas y salidas j1
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

	//registros modulo peripheral 

	reg [5:0] s; 	//selector mux_4  and write registers

	reg [7:0] data_in=0;
	reg start=0;
	reg reset=0;
 
	wire [7:0] data_out;
	wire busy;
	wire new_data;

	//salidas fisicas

	wire mosi;
	wire miso;
	wire sck;
	wire ss;


//------------------------------------ regs and wires-------------------------------




	always @(*) begin//------address_decoder------------------------------
		case (addr)
		   //se asignan direcciones 
			//direcciones de escritura
			4'h0:begin s = (cs && wr) ? 6'b000001 : 6'b000000 ;end //dMOSI
			4'h2:begin s = (cs && wr) ? 6'b000010 : 6'b000000 ;end //start
			4'h4:begin s = (cs && wr) ? 6'b000100 : 6'b000000 ;end //reset

			//direcciones de lectura
			4'h6:begin s = (cs && rd) ? 6'b001000 : 6'b000000 ;end //dMISO
			4'h8:begin s = (cs && rd) ? 6'b010000 : 6'b000000 ;end //busy
			4'hA:begin s = (cs && rd) ? 6'b100000 : 6'b000000 ;end //avail
			default:begin s = 6'b000000 ; end
		endcase
	end//------------------address_decoder--------------------------------




	always @(negedge clk) begin//-------------------- escritura de registros 

		data_in   = (s[0]) ? d_in[7:0] : data_in;	//dMISO //Write Registers
		start     =  s[1] ; //Write Registers
		reset	  =  s[2] ; //Write Registers

	end//------------------------------------------- escritura de registros




	always @(negedge clk) begin//-----------------------mux_4 :  multiplexa salidas del periferico
		case (s[5:3])
			3'b001: d_out[7:0]  = data_out ; //dMOSI
			3'b010: d_out[0]    = busy ;
			3'b100: d_out[0]    = new_data ; //avail
			default: d_out      = 0 ;
		endcase
	end//-----------------------------------------------mux_4



	spi_master spi_m (.clk(clk), .rst(reset), .data_in(data_in), .start(start), .data_out(data_out), .busy(busy), .new_data(new_data), .miso(miso), .mosi(mosi), .sck(sck), .ss(ss));  // se instancia modulo crc16

endmodule
