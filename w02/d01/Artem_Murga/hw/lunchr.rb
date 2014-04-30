require 'sinatra'
require 'sinatra/reloader'


#<a href="http://www.w3schools.com/">Visit W3Schools</a>
dishes = %w[pasta sandwich pizza sushi tom_yum rolls del cheese vegitables tuna]

get '/' do 
	"<a href='http://localhost:4567/suggestion'>Help me pick a lunch!</a>"
end

get '/suggestion' do
	dishes.sample
end




