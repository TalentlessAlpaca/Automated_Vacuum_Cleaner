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


\ constantes 

\ constantes memoria 

b# 00000011 constant cmd_read 
b# 00000010 constant cmd_write  
b# 00000001 constant cmd_write_status

b# 00000001 constant byte_status
b# 10000001 constant page_status
b# 01000001 constant cont_status
 
