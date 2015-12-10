# TODO List
* Forth:
	* Rutinas de trabajo único. Estas son para la sustentación individual.
	* Enviar por serial el estado actual de la máquina:
		* ~~Enviar Posición (x,y,z)mm~~
		* ~~Enviar Velocidad (x,y,z)mm/s~~
		* ~~Enviar Dirección (theta)~~
		* ~~Enviar Distancia a Obstáculo~~
		* Enviar Habitación Guardada en SD (Opcional)
	* Recibir peticiones y comandos por serial
		* Petición de Posición
		* Petición de Velocidad
		* Petición de Dirección
		* Petición de Distancia a Obstáculo
		* Petición de Start
		* Petición de Stop
		* Petición de cambio de Velocidad
		* Guardar Información de Habitación en SD
	* Genéricas:
		* Recibir string serial e interpretarla
		* Escribir mensaje en la LCD
		* Encender/Apagar motores
		* Variar velocidad Motores
		* Variar color STATUS LED
* Java:
	* Protocolo de comunicación con ROOMBA
	* Construir habitación virtual a partir de información recibida
	* Mostrar gráficamente la habitación explorada

* Verilog & Xilinx:
	* Módulos J1 faltantes
	* Simulaciones post Place&Route
	* Test Benches para usar con con el J1 (Integradas con el software)
	* Cualquier HW sencillo que pueda facilitarnos el trabajo
	* Máquinas de estados para probar los módulos sin el J1 (Por si todo falla)

* ROOMBA:
	* Movimiento:
		* ~~Montar cajas multiplicadoras~~
		* ~~Acoplar motores~~
		* ~~Acoplar ruedas~~
		* ~~Comprar Motores DC~~
		* ~~Dejarnos de maricadas con las cajas~~
	* ~~Circuitos de Alimentación y Regulación~~
	* ~~Circuitos para recibir y enviar señales (I2C, Serial, US, SD)~~

* Documentación:
	* Documentación Integradores (ángulo, velocidad, posición)
	* Documentación PWM
	* Documentación Ultra-Sonido
	* Documentación I2C
	* Documentación Driver I2C
	* Documentación Módulo de Posición (Integrado)
	* Documentación LCD
	* Documentación Timer/Counter
	* Documentación SD
	* Documentación Multiplicador
	* Documentación Divisor

* Sustentación:
	* Completa: Presentación de todo el proyecto
	* Grupal: Presentación de módulos realizados
	* Individual: Entender los sistemas desarrollados en grupo para sobrevivir el juicio inquisidor de Ferny.
* Música:
	* Juan debe aprender 6AM de Farruko en guitarra, el resto ayudamos con la letra.
