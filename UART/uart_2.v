/ Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module uart_2#(parameter tam_data = 11, parameter read_bit = 4)(
	//* tam_data es el dataño de datos que se van a transmitir y recibir
	//* para este caso 11 datos que correponden a 1 bit START, 8 bits DATOS, 2 bits STOP
	//* read_bit se establece de acuerdo a la velocidad  de tramision de datos respecto
	//* a la velocidad de clock. En este caso, siempre se manejan esas velocidad en un factor 
	//* de 8, por ende, la lectura del bit por el puerto RX se hace a la mitad del tiempo, 
	//* osea 4. Si la relacion aumenta, aumenta este dato configurable, si disminuye, disminuirá este dato
	input clk,		//CLOCK DEL RELOJ DE LA FPGA
	input clk_Hz,	//VELOCIDAD DEL CLOCK
	input tx_Hz,	//VELOCIDAD DE TRANSFERENCIA
	input reset,	//entrada de reseteo del protocolo de transmision
	output tx_busy,		// estado para saber si el canal de transmision esta ocupado
	output rx_busy,		// estado para saber si el canal de lectura esta ocupado
	input  rx_channel,	//canal de lectura 
	output tx_channel,	//canal de escritura (tranmision)
	input  tx_data,		//datos a enviar por canal tx
	output rx_data,		//datos a leer por canal rx
	output rx_clk, 	//*****************solo para simulacion***********************
	output tx_clk 	//*****************solo para simulacion***********************
 );
 
 //GENERO SEÑALES de CLOCK ***************************
	wire [28:0] clk_Hz;	//registro para almacenar velocidad del clock
	wire [28:0] tx_Hz;	//registro para almacenar velocidad de transferencia
	reg [28:0] cont_tx_Hz = 0;	//registro contador de velocidad de transferencia
	wire [28:0] dInc = cont_tx_Hz[28] ? (tx_Hz) : (tx_Hz - clk_Hz);
	wire [28:0] dN = cont_tx_Hz + dInc;
	always @(posedge clk)
	begin
		cont_tx_Hz = dN;
	end
	assign tx_clk = cont_tx_Hz[28]; 
	assign rx_clk = clk; 

//TRANSMISION *******************************+
	reg [3:0] cnt_data = 4'd0;
	wire [tam_data-1:0] tx_data;
	reg tx_busy;
	reg tx_channel = 0;
	always @(posedge tx_clk)
	begin
		if(reset) //Reset e inicio de transmision de datos
		begin
			cnt_data <= 4'd0;
			tx_busy <= 0;
		end
		if(cnt_data ==0) //primer dato a transmitir (bit de START)
		begin
			tx_channel <= tx_data[cnt_data];
			tx_busy <= 1;
			cnt_data <= cnt_data + 1;
		end
		if(cnt_data > 0 && cnt_data < tam_data && tx_busy) //transmision de datos
		begin
			tx_channel <= tx_data[cnt_data];  // St2 - St1 -MSB.....LSB- Start
			cnt_data <= cnt_data + 1;
		end
		if(cnt_data ==tam_data) //Finaliza el envio de datoss
		begin
			tx_channel <= 1;
			//cnt_data <= 0;
			tx_busy <= 0;
		end
	end 

//Lectura *******************************+
	reg [3:0] cnt_read = 4'd0; //contador de datos leidos
	reg [3:0] cnt_rx = 4'd0;	//contador de cuando leer dato
	reg [tam_data-1:0] rx_data=0;
	reg rx_busy;
	
	always @ (posedge rx_clk)
	begin
		if(reset)
		begin
			cnt_read <= 0;
			rx_busy  <= 0;
			cnt_rx   <= 0;
		end
		else begin			
			if(cnt_rx < read_bit && cnt_read < tam_data)
			begin
				rx_busy <= 1;
				cnt_rx  <= cnt_rx + 1;
			end
			if(cnt_rx==read_bit && rx_busy) //transmision de datos
			begin
				rx_data = {rx_channel, rx_data[10:1]};  // St2 - St1 -MSB.....LSB- Start
				cnt_rx  <= cnt_rx + 1;
			end
			if(cnt_rx > read_bit && cnt_rx <= (read_bit + read_bit-1) && rx_busy)
			begin
				if(cnt_rx == (read_bit + read_bit-1) && rx_busy)
				begin
					cnt_read  <= cnt_read + 1;
					cnt_rx  <= 0;
				end
				else begin
					cnt_rx  <= cnt_rx + 1;
				end
			end
			if(cnt_read == tam_data && rx_busy)
			begin
				rx_busy<= 0;
			end
		
		end
	end

endmodule
