class Tstrangulo
	@palabra = "LAMPARA"
	
	PALABRAS_PLANTAS = {"PLA1"=>"orquidia","PLA2"=>"PLA3"}
	
	PALABRAS = "IGUANODONTE"

	def mostrarEspacios
			@palabra = "_ _ _ _ _ _ _"
	end
	
	def verPalabra 
	    @palabra
	end 
	
	def letraExisteEnPalabra(letra,palabra)
		palabra.include? letra
	end
end