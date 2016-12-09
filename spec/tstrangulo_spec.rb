require './lib/tstrangulo.rb'

describe Tstrangulo do
	it "Se deben mostrar 7 espacios en guion bajo" do
		tstrangulo = Tstrangulo.new
		tstrangulo.mostrarEspacios
		expect(tstrangulo.verPalabra).to eq "_ _ _ _ _ _ _ "
    end

	it "Letra existe en palabra" do 
		stran = Tstrangulo.new
		expect(stran.letraExisteEnPalabra("Q","IGUANODONTE")).to eq true
	end
end