require './lib/tstrangulo.rb'

describe Tstrangulo do
	it "Se deben mostrar 7 espacios en guion bajo" do
		tstrangulo = Tstrangulo.new 0
		tstrangulo.mostrarEspacios
		expect(tstrangulo.verPalabra).to eq "_ _ _ _ _ _ _ _ _ _ _ "
    end

	it "Letra existe en palabra" do 
		stran = Tstrangulo.new 0
		expect(stran.letraExisteEnPalabra("A")).to eq true
	end
	
	it "Ingresa la A para descubrir la palabra" do
	    stran = Tstrangulo.new 0
	    stran.mostrarEspacios
		expect(stran.ponerLetraEnPalabra("A")).to eq "_ _ _ A _ _ _ _ _ _ _ "
		expect(stran.ponerLetraEnPalabra("O")).to eq "_ _ _ A _ O _ O _ _ _ "
	end
	
    it "Ingresa la letra A y O que son correctas, debe quedar 5 intentos" do
	    stran = Tstrangulo.new 0
	    stran.mostrarEspacios
		stran.ponerLetraEnPalabra("A")
		stran.ponerLetraEnPalabra("O")
		expect(stran.verEstadoJuego).to eq "Te quedan 5 intentos"
	end
	
	it "Ingresa la letra R y J que son incorrectas, debe quedar 3 intentos" do
	    stran = Tstrangulo.new 0
	    stran.mostrarEspacios
		stran.ponerLetraEnPalabra("R")
		stran.ponerLetraEnPalabra("J")
		expect(stran.verEstadoJuego).to eq "Te quedan 3 intentos"
	end
	
	it "Ingresa la letra R, J, W, X que son incorrectas, debe quedar 1 intento" do
	    stran = Tstrangulo.new 0
	    stran.mostrarEspacios
		stran.ponerLetraEnPalabra("R")
		stran.ponerLetraEnPalabra("J")
		stran.ponerLetraEnPalabra("W")
		stran.ponerLetraEnPalabra("X")
		expect(stran.verEstadoJuego).to eq "Te queda un solo intento! JOJOLETE!"
	end
	
	it "Ingresa la letra R, J, W, X que son incorrectas, luego O correcta y Z incorrecta PERDISTE" do
	    stran = Tstrangulo.new 0
	    stran.mostrarEspacios
		stran.ponerLetraEnPalabra("R")
		stran.ponerLetraEnPalabra("J")
		stran.ponerLetraEnPalabra("W")
		stran.ponerLetraEnPalabra("X")
		stran.ponerLetraEnPalabra("O")
		stran.ponerLetraEnPalabra("Z")
		expect(stran.verEstadoJuego).to eq "FRITO PESCADITO. ESTAS STRANGULADO!"
	end
	
	it "Ingresa la letra R y J muestra letras erradas" do
	    stran = Tstrangulo.new 0
	    stran.mostrarEspacios
		stran.ponerLetraEnPalabra("R")
		stran.ponerLetraEnPalabra("J")
		expect(stran.mostrarLetrasErradas).to eq "R, J"
	end
	
	it "Ingresa las letras correctas, debe mostrar que ganaste" do
	    stran = Tstrangulo.new 5
	    stran.mostrarEspacios
		stran.ponerLetraEnPalabra("O")
		stran.ponerLetraEnPalabra("g")
		stran.ponerLetraEnPalabra("r")
		stran.ponerLetraEnPalabra("a")
		stran.ponerLetraEnPalabra("b")
		stran.ponerLetraEnPalabra("p")
		stran.ponerLetraEnPalabra("L")
		stran.ponerLetraEnPalabra("u")
		stran.ponerLetraEnPalabra("M")
		expect(stran.verEstadoJuego).to eq "ERES EL PUTO AMO! Eres un CERTIFIED STRANGULADO MASTER, O sea un CSM"
	end
	
	it "Ganaste el juego el flag debe decir terminado" do
	    stran = Tstrangulo.new 5
	    stran.mostrarEspacios
		stran.ponerLetraEnPalabra("O")
		stran.ponerLetraEnPalabra("g")
		stran.ponerLetraEnPalabra("r")
		stran.ponerLetraEnPalabra("a")
		stran.ponerLetraEnPalabra("b")
		stran.ponerLetraEnPalabra("p")
		stran.ponerLetraEnPalabra("L")
		stran.ponerLetraEnPalabra("u")
		stran.ponerLetraEnPalabra("M")
		expect(stran.esJuegoTerminado) == true
	end
	
	it "Estas perdiendo pero aun tienes chance, el juego aun no termina" do
	    stran = Tstrangulo.new 6
	    stran.mostrarEspacios
		stran.ponerLetraEnPalabra("O")
		stran.ponerLetraEnPalabra("g")
		stran.ponerLetraEnPalabra("r")
		stran.ponerLetraEnPalabra("a")
		stran.ponerLetraEnPalabra("b")
		stran.ponerLetraEnPalabra("p")
		stran.ponerLetraEnPalabra("L")
		stran.ponerLetraEnPalabra("u")
		stran.ponerLetraEnPalabra("M")
		expect(stran.esJuegoTerminado) == false
	end
end