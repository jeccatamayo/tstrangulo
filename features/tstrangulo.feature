Feature:
	Como Diana
	Quiero Ver el numero de intentos que me quedan
	Para saber el estado del juego
	
Scenario: Ver que la palabra se complete con la letra ingresada
	Given abro la aplicacion
	And ingreso la letra "A"
	And hago clic en el boton Validar
	Then debo ver que la letra "A", se muestre como parte de la palabra

Scenario: Ver que aun me quedan dos intentos
	Given abro la aplicacion
	Then debo ver el texto "intentos"
	
Scenario: Ver el estado del juego cuando se ingresa una letra incorrecta
	Given abro la aplicacion
	And ingreso la letra "R"
	And hago clic en el boton Validar
	Then debo ver "Te quedan"