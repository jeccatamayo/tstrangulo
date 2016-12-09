require "./lib/tstrangulo"
describe Tstrangulo do
	it "Letra existe en palabra" do 
		stran = Tstrangulo.new
		expect(stran.letraExisteEnPalabra("Q","IGUANODONTE")).to eq true
	end
end