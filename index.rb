require "rubygems"
require "sinatra"
require "bundler/setup"
require "haml"


get '/' do
	@owl_js = "js/owl.carousel.min.js"
	@owl_css = ["css/owl.carousel.css","css/owl.transitions.css","css/owl.theme.css"]
	haml :index	
end

get '/proyectos' do
	@photo_swipe_js = ["js/photoswipe.min.js","js/photoswipe-ui-default.min.js"]
	@photo_swipe_css =["css/photoswipe.css","css/default-skin/default-skin.css"]
	haml :gallery	
end

post '/contact' do
	require 'pony'
	Pony.mail({
		from: 'mail',
		to: params[:email],
		subject: 'Mensaje de la pagina',
		body: params[:message],
		via: :smtp,
		via_options:  {
    	 	address:             'smtp.gmail.com',
     		port:                  '587',
     		enable_starttls_auto:  true,
    		user_name:             'mail',
    		password:              'pass',
    		authentication:        :plain, 
    		domain:                "localhost.5000" 
     }
		})
    redirect '/'


end


