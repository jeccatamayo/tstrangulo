Feature:
	Como Diana
	Quiero Ingresar una letra 
	Para Saber si forma parte de la palabra

Scenario: Ver un input que me permita ingresar una sola letra
	Given abro la aplicacion
	Then debo ver un input que me permita ingresar una sola letra

Scenario: Ver los espacios para completar las letras de la palabra LAMPARA
	Given abro la aplicacion
	Then debo ver siete guiones bajos "_" como espacios para cada letra

