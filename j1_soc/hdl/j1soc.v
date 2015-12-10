module j1soc#(
              //parameter   bootram_file     = "../../firmware/hello_world/j1.mem"    // For synthesis            
              parameter   bootram_file     = "../firmware/Hello_World/j1.mem"       // For simulation         
  )(
   uart_tx, ledout,
   sys_clk_i, sys_rst_i, mosi ,miso, sck, ss, SDA, SCL, pwm, adelante, atras, rs, e , data
	);
   
// entradas y salidas fisicas

	input sys_clk_i, sys_rst_i;
	output uart_tx;
	output ledout;

   //spi
	input mosi;
	output miso;
	output sck;
	output ss;
	
	// I2C
	inout SDA;
	output SCL;
	
	//pwm
	output [2:0] pwm ;
	
	// Direccion
	output [1:0] adelante ;
	output [1:0] atras	 ;
	
	//LCD
	
	output rs;
	output e;
	output [7:0] data;
	
	//posicion
	
	output SCL;
	inout SDA;
	wire SDA_oen, SDA_out ;	

	assign SDA = (SDA_oen) ? SDA_out : 1'bz;
	assign SDA_in = SDA;
	
//------------------------------------ regs and wires-------------------------------

   wire                 j1_io_rd;//********************** J1
   wire                 j1_io_wr;//********************** J1
   wire                 [15:0] j1_io_addr;//************* J1
   reg                  [15:0] j1_io_din;//************** J1
   wire                 [15:0] j1_io_dout;//************* J1


 
   reg [1:14]cs;  		// CHIP-SELECT //cantidad de modulos 

   wire			[15:0] mult_dout;  
   wire			[15:0] div_dout;
   wire			uart_dout;	// misma señal que uart_busy from uart.v
   wire			[15:0] dp_ram_dout;
   wire			[15:0] spi_master_dout;
   wire			[15:0] crc_7_dout;
   wire			[15:0] crc_16_dout;
   wire 		[15:0] pwm_dout;
   wire 		[15:0] lcd_dout;
   wire 		[15:0] posicion_dout;
   wire 		[15:0] timmer_dout;
   wire			[15:0] distancia_dout;  
   wire			[15:0] direccion; 
   wire			[15:0] uart_2; 
 

//------------------------------------ regs and wires-------------------------------


	j1 #(bootram_file)  cpu0(sys_clk_i, sys_rst_i, j1_io_din, j1_io_rd, j1_io_wr, j1_io_addr, j1_io_dout);

	peripheral_mult  per_m ( .clk(sys_clk_i), .rst(sys_rst_i), .d_in(j1_io_din), .cs(cs[1]), .addr(j1_io_addr[3:0]), .rd(j1_io_rd), .wr(j1_io_wr), .d_out(mult_dout) );

	peripheral_div  per_d (.clk(sys_clk_i), .rst(sys_rst_i), .d_in(j1_io_din), .cs(cs[2]), .addr(j1_io_addr[3:0]), .rd(j1_io_rd), .wr(j1_io_wr), .d_out(div_dout));

	peripheral_uart  per_u (.clk(sys_clk_i), .rst(sys_rst_i), .d_in(j1_io_din), .cs(cs[3]), .addr(j1_io_addr[3:0]), .rd(j1_io_rd), .wr(j1_io_wr), .d_out(uart_dout), .uart_tx(uart_tx), .ledout(ledout));


	dpRAM_interface dpRm(.clk(sys_clk_i), .d_in(j1_io_dout), .cs(cs[4]), .addr(j1_io_addr[7:0]), .rd(j1_io_rd), .wr(j1_io_wr), .d_out(dp_ram_dout));


	peripheral_spi_master  per_spi (.clk(sys_clk_i), .rst(sys_rst_i), .d_in(j1_io_dout), .cs(cs[5]), .addr(j1_io_addr[3:0]), .rd(j1_io_rd), .wr(j1_io_wr), .d_out(spi_master_dout) , .mosi(mosi) ,.miso(miso), .sck(sck), .ss(ss) ); //se instancia el peripheral de spi

	peripheral_crc_7  per_crc_7 (.clk(sys_clk_i), .rst(sys_rst_i), .d_in(j1_io_dout), .cs(cs[6]), .addr(j1_io_addr[3:0]), .rd(j1_io_rd), .wr(j1_io_wr), .d_out(crc_7_dout) ); //se instancia el peripheral de crc_7

	peripheral_crc_16  per_crc_16 (.clk(sys_clk_i), .rst(sys_rst_i), .d_in(j1_io_dout), .cs(cs[7]), .addr(j1_io_addr[3:0]), .rd(j1_io_rd), .wr(j1_io_wr), .d_out(crc_16_dout) ); //se instancia el peripheral de crc_16

	peripheral_pwm per_pwm (.clk(sys_clk_i),.rst(sys_rst_i),.d_in(j1_io_dout),.d_out(pwm_out),.cs(cs[8]),.addr(j1_io_addr[3:0]),.rd(j1_io_rd),.wr(j1_io_wr),.pwm(pwm));
  
	LCD_Peripheral  per_lcd (.clk(sys_clk_i), .rst(sys_rst_i), .d_in(j1_io_dout), .cs(cs[9]), .addr(j1_io_addr[3:0]), .rd(j1_io_rd), .wr(j1_io_wr), .d_out(lcd_out), .rs(lcd_rs), .e(lcd_e), .data(lcd_data), .int_cnt(int_cnt), .en_cnt(en_cnt), .limit_cnt(limit_cnt) ); 

	position_peripheral (.clk(sys_clk_i), .rst(sys_rst_i), .d_in(j1_io_dout), .cs(cs[10]), .addr(j1_io_addr[3:0]), .rd(j1_io_rd), .wr(j1_io_wr), .d_out(posicion_out), .clk_freq(clk_freq), .counter_rst(counter_rst), .counter_en (counter_en), . int_en(int_en), .int_limit(int_limit), .SCL(SCL), .SDA_out(SDA_out), .SDA_oen(SDA_oen), .counter_count(counter_count), .clk_frame(clk_frame), .int_o(int_o), .SDA_in(SDA_in)); 
  
	peripheral_timmer (.clk(sys_clk_i), .rst(sys_rst_i), .d_in(j1_io_dout), .cs(cs[11]), .addr(j1_io_addr[3:0]), .rd(j1_io_rd), .wr(j1_io_wr),.d_out( timmer_out ));
  
	peripheral_distancia (.clk(sys_clk_i), .rst(sys_rst_i), .d_in(j1_io_dout), .cs(cs[12]), .addr(j1_io_addr[3:0]), .rd(j1_io_rd), .wr(j1_io_wr),.d_out( distancia_out ));
  
	peripheral_direccion per_dir (.clk(sys_clk_i),.rst(sys_rst_i),.d_in(j1_io_dout),.d_out(pwm_out),.cs(cs[13]),.addr(j1_io_addr[3:0]),.rd(j1_io_rd),.wr(j1_io_wr),.adelante(adelante),.atras(atras));
	
	peripheral_uart_2  per_uart (.clk(sys_clk_i), .rst(sys_rst_i), .d_in(j1_io_din), .cs(cs[14]), .addr(j1_io_addr[3:0]), .rd(j1_io_rd), .wr(j1_io_wr), .d_out(d_out), .rx_channel(rx_channel), .tx_channel(tx_channel), .tx_busy(tx_busy), .rx_busy(rx_busy)	) ;
  
  // ============== Chip_Select (Addres decoder) ========================  // se hace con los 8 bits mas significativos de j1_io_addr
	always @*
	begin
		case (j1_io_addr[15:8])				// direcciones - chip_select
			8'h67: cs= 14'b10000000000000; 		//mult
			8'h68: cs= 14'b01000000000000;		//div
			8'h69: cs= 14'b00100000000000;		//uart
			8'h70: cs= 14'b00010000000000;		//dp_ram
			8'h72: cs= 14'b00001000000000;		//spi
			8'h74: cs= 14'b00000100000000;     	//crc_7
			8'h76: cs= 14'b00000010000000;		//crc_16
			8'h60: cs= 14'b00000001000000;		//pwm
			8'h61: cs= 14'b00000000100000;		//lcd
			8'h62: cs= 14'b00000000010000;		//posicion
			8'h63: cs= 14'b00000000001000;		//timmer
			8'h64: cs= 14'b00000000000100;     	//distancia
			8'h65: cs= 14'b00000000000010;     	//direccion	
			8'h65: cs= 14'b00000000000001;     	//Segunda Uart	
			
			default: cs= 14'b0000000000000;
		endcase
	end
  // ============== Chip_Select (Addres decoder) ========================  //




  // ============== MUX ========================  // se encarga de lecturas del J1
	always @*
	begin
		case (cs)
				14'b10000000000000: j1_io_din = mult_dout; 
			14'b01000000000000: j1_io_din = div_dout;
			14'b00100000000000: j1_io_din = uart_dout; 
			14'b00010000000000: j1_io_din = dp_ram_dout; 
			14'b00001000000000: j1_io_din = spi_master_dout; 
			14'b00000100000000: j1_io_din = crc_7_dout;
			14'b00000010000000: j1_io_din = crc_16_dout;
			14'b00000001000000: j1_io_din = pwm_dout;
			14'b00000000100000: j1_io_din = lcd_dout;
			14'b00000000010000: j1_io_din = posicion_dout;	
			14'b00000000001000: j1_io_din = timmer_dout;
			14'b00000000000100: j1_io_din = distancia_dout;	
			14'b00000000000010: j1_io_din = direccion;	
			14'b00000000000001: j1_io_din = uart_2;	
			
			
			default: j1_io_din = 16'h0666;
		endcase
	end
 // ============== MUX ========================  // 

endmodule // top
