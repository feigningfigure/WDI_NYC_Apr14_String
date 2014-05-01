require 'sinatra'
require 'sinatra/reloader'

get '/tea/:person1/:person2' do
	"#{params[:person1]} and #{params[:person2]} are having a lovely tea ceremony"
end

get '/battle/:fighter1/:fighter2' do
	outcome = rand(0..1)
	if outcome == 0 
		"#{params[:fighter1]} beats #{params[:fighter2]}"
	else
		"#{params[:fighter2]} beats #{params[:fighter1]}"
	end	
end