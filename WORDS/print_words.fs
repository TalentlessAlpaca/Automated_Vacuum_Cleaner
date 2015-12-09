: GET_POSX_STRING
	pX_low_r @ \ Obtain Pos X
	TOSTRING
;

: GET_POSY_STRING
	pY_low_r @ \ Obtain Pos Y
	TOSTRING
;

: GET_VELX_STRING
	vX_low_r @ \ Obtain Pos X
	TOSTRING
;

: GET_VELY_STRING
	vY_low_r @ \ Obtain Pos Y
	TOSTRING
;

: GET_THETA_STRING
	theta_low_r @ \ Obtain theta
	TOSTRING
;

: WRITE_STACK
	begin
		emit-uart
		DUP
		h# 8000 =
	until
	d# 10 \ \n
	emit-uart
;

: PRINT_POSX
	GET_POSX_STRING
	WRITE_STAC
;

: PRINT_POSY
	GET_POSY_STRING
	WRITE_STAC
;

: PRINT_THETA
	GET_THETA_STRING
	WRITE_STAC
;

: PRINT_VELX
	GET_VELY_STRING
	WRITE_STAC
;

: PRINT_VELY
	GET_VELY_STRING
	WRITE_STAC
;
