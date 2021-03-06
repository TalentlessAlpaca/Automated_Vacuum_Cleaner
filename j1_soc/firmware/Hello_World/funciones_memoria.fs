: readbyte \ en pila (16 bits b# address) -( d# n )
 d# 0 do dup readb swap b# 1 + loop
;

: readb \ en pila 16 bits address --> data	
	b# 1 spi_reset !
	b# 0 spi_ss !

	b# cmd_write_status spi_mosi !
	b# 1 spi_start !
	begin spi_busy @ b# 1 = until
	b# 0 spi_start !
	begin spi_avail @ b# 1 = until

	b# byte_status spi_mosi !
	b# 1 spi_start !
	begin spi_busy @ b# 1 = until
	b# 0 spi_start !
	begin spi_avail @ b# 1 = until

	b# cmd_read spi_mosi !
	b# 1 spi_start !
	begin spi_busy @ b# 1 = until
	b# 0 spi_start !
	begin spi_avail @ b# 1 = until

	dup 

	d# 8 rshift  

	spi_mosi !
	b# 1 spi_start !
	begin spi_busy @ b# 1 = until
	b# 0 spi_start !
	begin spi_avail @ b# 1 = until

	spi_mosi !
	b# 1 spi_start !
	begin spi_busy @ b# 1 = until
	b# 0 spi_start !
	begin spi_avail @ b# 1 = until

	b# 00000000 spi_mosi !
	b# 1 spi_start !
	begin spi_busy @ b# 1 = until
	b# 0 spi_start !
	begin spi_avail @ b# 1 = until

	b# 1 spi_ss !
	
	spi_miso @

;



: readpage \ en pila (16 bits b# address)
	b# 1 spi_reset !
	b# 0 spi_ss !

	b# cmd_write_status spi_mosi !
	b# 1 spi_start !
	begin spi_busy @ b# 1 = until
	b# 0 spi_start !
	begin spi_avail @ b# 1 = until
	
	b# page_status spi_mosi !
	b# 1 spi_start !
	begin spi_busy @ b# 1 = until
	b# 0 spi_start !
	begin spi_avail @ b# 1 = until

	b# cmd_read spi_mosi !
	b# 1 spi_start !
	begin spi_busy @ b# 1 = until
	b# 0 spi_start !
	begin spi_avail @ b# 1 = until

	dup
		
	d# 8 rshift  

	spi_mosi !
	b# 1 spi_start !
	begin spi_busy @ b# 1 = until
	b# 0 spi_start !
	begin spi_avail @ b# 1 = until

	spi_mosi !
	b# 1 spi_start !
	begin spi_busy @ b# 1 = until
	b# 0 spi_start !
	begin spi_avail @ b# 1 = until


	d# 16 d# 0 do  
	
	b# 00000000 spi_mosi !
	b# 1 spi_start !
	begin spi_busy @ b# 1 = until
	b# 0 spi_start !
	begin spi_avail @ b# 1 = until
	
	spi_miso @ 

	read_pram 
	write_ram

	loop

	b# 1 spi_ss !

	read_param d# 16 -
	write_pram
;

\ **************************************************************
\ **************************************************************
\ **************************************************************

: writebyte \ 8bit dato - adress 
	b# 1 spi_reset !
	b# 0 spi_ss !

	b# cmd_write_status spi_mosi !
	b# 1 spi_start !
	begin spi_busy @ b# 1 = until
	b# 0 spi_start !
	begin spi_avail @ b# 1 = until

	b# byte_status spi_mosi !
	b# 1 spi_start !
	begin spi_busy @ b# 1 = until
	b# 0 spi_start !
	begin spi_avail @ b# 1 = until

	b# cmd_write spi_mosi !
	b# 1 spi_start !
	begin spi_busy @ b# 1 = until
	b# 0 spi_start !
	begin spi_avail @ b# 1 = until	

	dup 

	d# 8 rshift  

	spi_mosi !
	b# 1 spi_start !
	begin spi_busy @ b# 1 = until
	b# 0 spi_start !
	begin spi_avail @ b# 1 = until

	spi_mosi !
	b# 1 spi_start !
	begin spi_busy @ b# 1 = until
	b# 0 spi_start !
	begin spi_avail @ b# 1 = until

	spi_mosi !
	b# 1 spi_start !
	begin spi_busy @ b# 1 = until
	b# 0 spi_start !
	begin spi_avail @ b# 1 = until

	b# 1 spi_ss !	
	
;

: writepage
	b# 1 spi_reset !
	b# 0 spi_ss !

	b# cmd_write_status spi_mosi !
	b# 1 spi_start !
	begin spi_busy @ b# 1 = until
	b# 0 spi_start !
	begin spi_avail @ b# 1 = until

	b# page_status spi_mosi !
	b# 1 spi_start !
	begin spi_busy @ b# 1 = until
	b# 0 spi_start !
	begin spi_avail @ b# 1 = until

	b# cmd_write spi_mosi !
	b# 1 spi_start !
	begin spi_busy @ b# 1 = until
	b# 0 spi_start !
	begin spi_avail @ b# 1 = until	

	dup 

	d# 8 rshift  

	spi_mosi !
	b# 1 spi_start !
	begin spi_busy @ b# 1 = until
	b# 0 spi_start !
	begin spi_avail @ b# 1 = until

	spi_mosi !
	b# 1 spi_start !
	begin spi_busy @ b# 1 = until
	b# 0 spi_start !
	begin spi_avail @ b# 1 = until

	d# 32 d# 0 do
	

	loop

	 \ falta terminar peripheral uart para terminar 

	
;


: send_ram2
;
