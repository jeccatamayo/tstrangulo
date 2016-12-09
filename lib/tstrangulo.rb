class Tstrangulo
	
	def initialize(aleatorio = rand(0...PALABRAS.length))
		@indice = aleatorio
	    @palabra = PALABRAS[aleatorio]
	    @palabraEspacios = ""
	    @numLetras = 0
	    @palabraPista = ""
	    @listaLetrasErradas=""
	    @flagJuegoTerminado = false
	    
	    #############################
	    
	    @numIntentos = 0
	    @numFallos = 0
	end
	
	MAX_FALLOS = 5
	PALABRAS = ["I G U A N O D O N T E ", "S A R C O I D O S I S ", "M E N I N G O E N C E F A L I C O ", "A N K Y L O S A U R U S ", "T R I P A N O S O M I A S I S ", "P L U M B A G O ", "V I B O R E R A ", "C A L C E O L A R I A "]
	DEFINICIONES = [
		"Su nombre significa Diente de Iguana. Vivió a principios del Cretácico. Media diez metros de longitud y pesaba aproximadamente cinco toneladas",
		"O enfermedad de Besnier-Boeck, es una enfermedad granulomatosa sistémica, de carácter autoinmune",
		"Relacionado a las capas internas y externas del cerebro",
		"Un género extinto de dinosaurios tireofóros conocido por una sola especie que vivió a finales del período Cretácico, hace aproximadamente 68 a 66 millones de años",
		"También llamada enfermedad del sueño, es una parasitosis transmitida por un vector como la Mosca Tse Tse",
		"Es un género de 10 a 20 especies de fanerógamas pertenecientes a la familia Plumbaginaceae, nativas de regiones templadas cálidas a tropicales",
		"Buglosa, chupamieles, hierba azul, lengua de vaca o paquetequieromañosa (Echium vulgare) es una planta incluida en el género Echium",
		"De nombre común capachito, zapatitos de Venus, topa-topa, o zapatitos de la Virgen, es un género de fanerógamas"
	]

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
	
	def letraExisteEnPalabra(letra)
		palabra = @palabra
		palabra.include? letra.upcase
	end
	
	def ponerLetraEnPalabra(letra)
		letra = letra.upcase
		if letraExisteEnPalabra(letra)
			@numIntentos+=1
		else
			@numFallos+=1
			@listaLetrasErradas = @listaLetrasErradas  + letra
		end
			
		ocurrencias = @palabra.count(letra)
		val = 0
		(1..ocurrencias).each do |n|
    		indice = @palabra[val..@palabra.length].index(letra)
			replacement = '...'
			@palabraEspacios[indice+val] = letra
			val=indice+1
		end
		return @palabraEspacios
	end
	
	def verEstadoJuego
		restante = (MAX_FALLOS - @numFallos)
		mensaje = ""
		if @palabraEspacios.include? "_"
			if restante > 1
				@flagJuegoTerminado = false
				mensaje = "Te quedan #{restante} intentos"
			elsif restante == 1
				@flagJuegoTerminado = false
				mensaje = "Te queda un solo intento! JOJOLETE!"
			else 
				@flagJuegoTerminado = true
				mensaje = "FRITO PESCADITO. ESTAS STRANGULADO!"
			end
		else
			@flagJuegoTerminado = true
			mensaje = "ERES EL PUTO AMO! Eres un CERTIFIED STRANGULADO MASTER, O sea un CSM"
		end
		return mensaje
	end
	
	def mostrarLetrasErradas
		lista=@listaLetrasErradas.split ""
		lista.join ", "
	end
	
	def esJuegoTerminado
		return @flagJuegoTerminado
	end
	
	def pintarDisabled
		mensaje = ""
		if esJuegoTerminado
			mensaje = "disabled"
		else
			mensaje = ""
		end
	end
	
	def regalarPista
		puts @indice
		puts DEFINICIONES[@indice]
		return DEFINICIONES[@indice]
	end
end

