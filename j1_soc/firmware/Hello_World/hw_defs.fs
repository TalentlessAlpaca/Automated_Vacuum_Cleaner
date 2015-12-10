( Hardware port assignments )

h# FF00 constant mult_a  \ no cambiar estos tres
h# FF02 constant mult_b  \ hacen parte de otras
h# FF04 constant mult_p  \ definiciones

\ memory map multiplier:
h# 6700 constant multi_a	
h# 6702 constant multi_b
h# 6704 constant multi_init
h# 6706 constant multi_done
h# 6708 constant multi_pp_high
h# 670A constant multi_pp_low


\ memory map divider:
h# 6800 constant div_a		
h# 6802 constant div_b
h# 6804 constant div_init
h# 6806 constant div_done
h# 6808 constant div_c


\ memory map uart:
h# 6900 constant uart_busy    \ para lectura de uart (uart_busy)
h# 6902 constant uart_data    \ escritura de datos que van a la uart
h# 6904 constant led     \ led-independiente , se lo deja dentro del mapa de memoria de la uart


\ memory map SPI:
\ se definen las direcciones de memoria de SPI	
h# 7200 constant spi_mosi
h# 7202 constant spi_start
h# 7204 constant spi_reset
h# 7206 constant spi_ss
h# 7208 constant spi_miso
h# 720A constant spi_busy
h# 720C constant spi_avail

\ memory map CRC_7:
\ se definen las direcciones de memoria de CRC_7
h# 7400 constant crc_7_data_in		
h# 7402 constant crc_7_start
h# 7404 constant crc_7_done
h# 7406 constant crc_7_data_out

\ memory map CRC_16:
\ se definen las direcciones de memoria de CRC_16
h# 7600 constant crc_16_data_in_high		
h# 7602 constant crc_16_data_in_low
h# 7604 constant crc_16_start
h# 7606 constant crc_16_done
h# 7608 constant crc_16_data_out


\ pwm:

h# 6000 constant rst_n		
h# 6002 constant number_1
h# 6004 constant number_2
h# 6006 constant number_3

\ lcd:

h# 6100 constant en
h# 6101 constant reset
h# 6102 constant set
h# 6103 constant off
h# 6104 constant on
h# 6105 constant entry_mode	
h# 6106 constant cursor
h# 6107 constant w_char
h# 6108 constant cursor_pos
h# 6109 constant ascii_char

\ posicion:

h# 6200 constant en_r
h# 6201 constant busy_r
h# 6202 constant w_ram_r
h# 6203 constant w_ram_ref_r
h# 6204 constant w_ram_address_r
h# 6205 constant w_ram_data_up_r 
h# 6206 constant w_ram_data_low_r
h# 6207 constant vX_up_r
h# 6208 constant vX_low_r
h# 6209 constant vY_up_r
h# 6210 constant vY_low_r
h# 6211 constant pX_up_r
h# 6212 constant pX_low_r	
h# 6213 constant pY_up_r
h# 6214 constant pY_low_r
h# 6215 constant theta_up_r
h# 6216 constant theta_low_r



\ timmer:

h# 6300 constant  ena1
h# 6301 constant  ena2
h# 6302 constant  l1
h# 6303 constant salidainterr
h# 6304 constant counter


\ distancia:

h# 6400 constant Done
h# 6401 constant Value

\ direccion

h# 6500 constant MotorUno
h# 6502 constant MotorDos

\ Segunda UART
h# 6600 constant EscribeValor
h# 6602 constant OcupadoEscribiendo
h# 6604 constant LeeValor
h# 6606 constant OcupadoLeyendo

\ constantes 

\ constantes memoria 

b# 00000011 constant cmd_read 
b# 00000010 constant cmd_write  
b# 00000001 constant cmd_write_status

b# 00000001 constant byte_status
b# 10000001 constant page_status
b# 01000001 constant cont_status
 
