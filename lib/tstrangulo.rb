class Tstrangulo
	
	def initialize
	    @palabra = "LAMPARA"
	    @palabraEspacios = ""
	    @numLetras = 0
	end
	
	@palabra = "LAMPARA"
	
	PALABRAS_PLANTAS = {"PLA1"=>"orquidia","PLA2"=>"PLA3"}
	
	PALABRAS = "IGUANODONTE"

	def mostrarEspacios
	    @numLetras = @palabra.length
	    for i in 0..@numLetras-1
	            @palabraEspacios = @palabraEspacios << "_ "

	    end
	end
	
	def verPalabra 
	    @palabraEspacios
	end 
	
	def letraExisteEnPalabra(letra,palabra)
		palabra.include? letra
	end
end