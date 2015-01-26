require "rubygems"
require "sinatra"

get '/' do
	erb :index
end

get '/proyectos' do
	erb :portofolio
end



get '/galeria' do
	erb :gallery
end




get '/about' do
	"Developer, Diego Llamas Velasco"
end