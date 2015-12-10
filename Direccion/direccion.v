module direccion (
	input reversa ,
	
	output adelante ,
	output atras
	);
	
	assign adelante = ~reversa ;
	assign atras 	= reversa ;
	
endmodule
