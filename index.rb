require "rubygems"
require "sinatra"
require "bundler/setup"
require "Haml"


get '/' do
	@owl_js = "js/owl.carousel.min.js"
	@owl_css = ["css/owl.carousel.css","css/owl.transitions.css"]
	haml :index	
end

get '/test' do
	haml :gallery	
end



