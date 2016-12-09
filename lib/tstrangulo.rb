class Tstrangulo
	
	def initialize
	    @palabra = "LAMPARA"
	    @palabraEspacios = ""
	    @numLetras = 0
	end

	def mostrarEspacios
	    @numLetras = @palabra.length
	    for i in 0..@numLetras-1

	            @palabraEspacios = @palabraEspacios << "_ "

	    end
	end
	
	def verPalabra 
	    @palabraEspacios
	end 
end