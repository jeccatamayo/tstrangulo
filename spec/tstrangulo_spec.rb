require './lib/tstrangulo.rb'

describe Tstrangulo do
	it "Se deben mostrar 7 espacios en guion bajo" do
		tstrangulo = Tstrangulo.new
		tstrangulo.mostrarEspacios
		expect(tstrangulo.verPalabra).to eq "_ _ _ _ _ _ _ _ _ _ _ "
    end

	it "Letra existe en palabra" do 
		stran = Tstrangulo.new
		expect(stran.letraExisteEnPalabra("U","I G U A N O D O N T E ")).to eq true
	end
	
	it "Ingresa la A para descubrir la palabra" do
	    stran = Tstrangulo.new
		expect(stran.ponerLetraEnPalabra("A","_ _ _ _ _ _ _ _ _ _ _ ")).to eq "_ _ _ A _ _ _ _ _ _ _ "
		expect(stran.ponerLetraEnPalabra("O",stran.ponerLetraEnPalabra("A","_ _ _ _ _ _ _ _ _ _ _ "))).to eq "_ _ _ A _ O _ O _ _ _ "
	end
end