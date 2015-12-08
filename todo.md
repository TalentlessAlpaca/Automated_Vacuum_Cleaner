# TODO List
* Forth:
	* Rutinas de trabajo �nico. Estas son para la sustentaci�n individual.
	* Enviar por serial el estado actual de la m�quina:
		* Enviar Posici�n (x,y,z)mm
		* Enviar Velocidad (x,y,z)mm/s
		* Enviar Direcci�n (theta)
		* Enviar Distancia a Obst�culo
		* Enviar Habitaci�n Guardada en SD (Opcional)
	* Recibir peticiones y comandos por serial
		* Petici�n de Posici�n
		* Petici�n de Velocidad
		* Petici�n de Direcci�n
		* Petici�n de Distancia a Obst�culo
		* Petici�n de Start
		* Petici�n de Stop
		* Petici�n de cambio de Velocidad
		* Guardar Informaci�n de Habitaci�n en SD
	* Gen�ricas:
		* Recibir string serial e interpretarla
		* Escribir mensaje en la LCD
		* Encender/Apagar motores
		* Variar velocidad Motores
		* Variar color STATUS LED
* Java:
	* Protocolo de comunicaci�n con ROOMBA
	* Construir habitaci�n virtual a partir de informaci�n recibida
	* Mostrar gr�ficamente la habitaci�n explorada

* Verilog & Xilinx:
	* M�dulos J1 faltantes
	* Simulaciones post Place&Route
	* Test Benches para usar con con el J1 (Integradas con el software)
	* Cualquier HW sencillo que pueda facilitarnos el trabajo
	* M�quinas de estados para probar los m�dulos sin el J1 (Por si todo falla)

* ROOMBA:
	* Movimiento:
		* Montar cajas multiplicadoras
		* Acoplar motores
		* Acoplar ruedas
	* Circuitos de Alimentaci�n y Regulaci�n
	* Circuitos para recibir y enviar se�ales (I2C, Serial, US, SD)

* Documentaci�n:
	* Documentaci�n Integradores (�ngulo, velocidad, posici�n)
	* Documentaci�n PWM
	* Documentaci�n Ultra-Sonido
	* Documentaci�n I2C
	* Documentaci�n Driver I2C
	* Documentaci�n M�dulo de Posici�n (Integrado)
	* Documentaci�n LCD
	* Documentaci�n Timer/Counter
	* Documentaci�n SD
	* Documentaci�n Multiplicador
	* Documentaci�n Divisor

* Sustentaci�n:
	* Completa: Presentaci�n de todo el proyecto
	* Grupal: Presentaci�n de m�dulos realizados
	* Individual: Entender los sistemas desarrollados en grupo para sobrevivir el juicio inquisidor de Ferny.
* M�sica:
	* Juan debe aprender 6AM de Farruko en guitarra, el resto ayudamos con la letra.