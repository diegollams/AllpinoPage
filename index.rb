require "rubygems"
require "sinatra"

get '/' do
	#send_file 'index.html'
	erb :index
end

get '/proyectos' do
	erb :portofolio
end



get '/about' do
	"Developer, Diego Llamas Velasco"
end