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
end