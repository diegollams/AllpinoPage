require "rubygems"
require "sinatra"

get '/' do
	send_file 'index.html'
end


get '/about' do
	"Developer, Diego Llamas Velasco"
end