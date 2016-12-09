class Tstrangulo
	
	def initialize
	    @palabra = "I G U A N O D O N T E "
	    @palabraEspacios = ""
	    @numLetras = 0
	    @palabraPista = ""
	end
	
	PALABRAS_PLANTAS = {"PLA1"=>"orquidia","PLA2"=>"PLA3"}
	
	PALABRAS = "I G U A N O D O N T E "

	def mostrarEspacios
		tempo = @palabra
		tempo = tempo.split " "
		tempo = tempo.join ""
	    @numLetras = tempo.length
	    for i in 0..@numLetras-1
	            @palabraEspacios = @palabraEspacios << "_ "
	    end
	end
	
	def verPalabra 
	    @palabraEspacios
	end 
	
	def letraExisteEnPalabra(letra,palabra)
		palabra = @palabra
		palabra.include? letra
	end
	
	def ponerLetraEnPalabra(letra,palabraPista)
		ocurrencias = @palabra.count(letra)
		val = 0
		(1..ocurrencias).each do |n|
    		indice = @palabra[val..@palabra.length].index(letra)
			replacement = '...'
			palabraPista[indice+val] = letra
			val=indice+1
		end
		puts palabraPista
		return palabraPista
	end
end

