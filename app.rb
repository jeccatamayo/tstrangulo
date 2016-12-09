require 'sinatra'
require 'better_errors'
require './lib/tstrangulo'

configure :development do
  use BetterErrors::Middleware
  BetterErrors.application_root = File.expand_path('..', __FILE__)
end

enable :sessions
set :session_secret, 'thisIsAKleerSecret'

get '/' do
	tstrangulo = Tstrangulo.new
	session["tstrangulo"] = tstrangulo
	session["tstrangulo"].mostrarEspacios
	erb :index
end

post '/validar' do
    letra = params["letra"]
    session["tstrangulo"].ponerLetraEnPalabra letra
    erb :index
end