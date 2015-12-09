\ Lista de Palabras Genéricas

: INITIALIZE_STACK
	h# 8000
;

: TOSTRING_POS recursive
	DUP MOD d# 48 + SWAP
	d# 10 dividir
	DUP
	0= IF
		DROP
	ELSE
		TOSTRING_POS
	THEN
;

: TOSTRING_NEG
	d# 45	
	d# 1 SWAP
	invert +
	TOSTRING_POS
;

: TOSTRING
	NEGTEST
	d# 0 =
	IF
		TOSTRING_POS
	ELSE
		TOSTRING_NEG
	THEN
;

: NEGTEST
	DUP
	d# 0 <
	IF
		d# 1
	ELSE
		d# 0
	THEN

: MOD 
	DUP
	d# 10 dividir
	d# 10 multiplicar
	-
;

\ RAM
\ It can store 255 words
\ The first one is used to
\ specify the first unused position

\ Access
\	Write directions are between 0 - 254
\	Read directions are between  0 - 254

\ Pointer Acces
\	Use WRITE_PRAM / READ_PRAM

: WRITE_PRAM
	#h 70000 !
;

: READ_PRAM
	#h 7000 @
;

\ Write STACK on the first unused
\ Needs the relative direction on the RAM
\ and the data to be written
\ So, it's at least 2 words in the stack
: WRITE_RAM
	#d 1 + h# 7000 OR ! \ Writes data on the specified position
	#h 7000 @			\ Reads the Pointer
	#d 1 +				\ Increments it's value
	#h 7000 !			\ Stores it again
;
\ Read the data at the relative position on the RAM
: READ_RAM
	#d 1 + h# 7000 OR @
;
