require "rubygems"
require "sinatra"
require "bundler/setup"
require "haml"


get '/' do
	@owl_js = "js/owl.carousel.min.js"
	@owl_css = ["css/owl.carousel.css","css/owl.transitions.css","css/owl.theme.css"]
	haml :index	
end

get '/test' do
	haml :gallery	
end



